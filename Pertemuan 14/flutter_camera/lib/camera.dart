import 'dart:typed_data';
import 'dart:io' as io;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CameraPage extends StatefulWidget {
  @override
  _CameraPage createState() => _CameraPage();
}

class _CameraPage extends State<CameraPage> {
  List<CameraDescription> cameras = [];
  late CameraController cameraController;
  Future<Widget> initializeAndDisplayCamera() async {
    try {
      final cameraController = CameraController(
        cameras[0],
        ResolutionPreset.medium,
      );
      await cameraController.initialize();
      return CameraPreview(cameraController);
    } catch (e) {
      print("Kesalahan saat mengakses kamera: $e");
      return Text("Tidak dapat mengakses kamera: $e");
    }
  }

  Future<void> captureAndDisplayImage() async {
    try {
      if (kIsWeb) {
        print("Capturing image on Flutter web is not supported.");
        return;
      }
      final XFile imageFile = await cameraController.takePicture();
      final Uint8List imageBytes = io.File(imageFile.path).readAsBytesSync();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Image.memory(imageBytes),
          );
        },
      );
    } catch (e) {
      print("Error capturing image: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    availableCameras().then((value) {
      setState(() {
        cameras = value;
        if (cameras.isNotEmpty) {
          cameraController = CameraController(
            cameras[0],
            ResolutionPreset.medium,
          );
          cameraController.initialize().then((_) {
            if (!mounted) {
              return;
            }
            setState(() {});
          });
        }
      });
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Braman Tyamahendrawan - Kamera',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 48, 48, 48),
          automaticallyImplyLeading: false,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: captureAndDisplayImage,
          tooltip: 'Capture Image',
          child: Icon(Icons.camera),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: cameras.isEmpty
                  ? Container(
                      color: Color(1),
                    )
                  : FutureBuilder<Widget>(
                      future: initializeAndDisplayCamera(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return snapshot.data ??
                              Container(color: Colors.green);
                        } else if (snapshot.hasError) {
                          return Text("Kesalahan: ${snapshot.error}");
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
