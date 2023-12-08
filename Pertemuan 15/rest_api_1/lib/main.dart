import 'package:flutter/material.dart';
import 'package:rest_api_1/identitas/repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Rest API https://reqres.in/api/uknown';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: const MyHomePage(title: _title),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int blogCount;
  late List listBlog;
  Repository repository = Repository();

  Future getData() async {
    listBlog = [];
    listBlog = await repository.getData();

    setState(() {
      blogCount = listBlog.length;
      listBlog = listBlog;
    });
  }

  @override
  void initState() {
    // print('Mulai');
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
                " ${listBlog[index].id} | ${listBlog[index].name} | ${listBlog[index].year} | ${listBlog[index].color} | ${listBlog[index].pantone_value}");
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: listBlog.length),
    );
  }
}
