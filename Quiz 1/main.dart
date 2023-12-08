void main() {
  // Tugas 1
  print("Hello World"); // berfungsi untuk menampilkan tulisan di layar

  // Tugas 2
  String name = 'Joko anton jodi'; // berfungsi untuk menampung data string
  print(name);
  print(name);
  print(name);
  // berfungsi untuk menampilkan tulisan di layar sebanyak 3 kali

  // Tugas 3
  String firstName = 'Joko'; // berfungsi untuk menampung data string
  final lastName =
      'anton jodi'; // berfungsi untuk menampung data string yang tidak dapat diubah

  print(firstName);
  print(lastName);

  // Tugas 4
  final array1 = [
    1,
    2,
    3
  ]; // berfungsi untuk menampung data array yang tidak dapat diubah
  const array2 = [
    4,
    5,
    6
  ]; // berfungsi untuk menampung data array yang tidak dapat diubah
  // perbedaan final dan const adalah final dapat diubah nilainya sedangkan const tidak dapat diubah nilainya

  array1[0] = 100;
  array2[0] = 200;

  print(array1);
  print(array2);

  // Tugas 4
  int number1 = 100; // berfungsi untuk menampung data integer
  double number2 = 100.5; // berfungsi untuk menampung data double

  print(number1);
  print(number2);

  // Tugas 5
  num number = 10; // num berfungsi untuk menampung data integer dan double
  print(number);

  number = 10.5;
  print(number);

  // Tugas 6
  String firtsName = 'Joko'; // berfungsi untuk menampung data string
  String LastName = 'anton jodi';

  var fullName = '$firtsName ${LastName}'; 
  // string interpolation berfungsi untuk 
  // menggabungkan string dengan variabel
  print(fullName);

  // Tugas 7
  var text = 'ini \'OPTIMAL\'\$sekali'; 
  // 'ini \'OPTIMAL\'\$sekali' berfungsi untuk menampilkan string dengan tanda petik
  print(text);

  // Tugas 8
  var name1 = firtsName + lastName;
  var name2 = 'joko' ' anton' ' jodi';
  // 'joko' ' anton' ' jodi' berfungsi untuk menggabungkan string tanpa menggunakan operator +
  print(name1);
  print(name2);

  // Tugas 9
  var name1 = firtsName + " " + lastName;
  // first name dan last name digabungkan dengan operator + dan spasi
  var name2 = 'joko' ' anton' ' jodi';
  // 'joko' ' anton' ' jodi' berfungsi untuk menggabungkan string tanpa menggunakan operator +
  print(name1);
  print(name2);

  // Tugas 10
  var kalimat_panjang = '''
  ini 
  saya punya
  proyek dart
  banyak ''';
  // ''' berfungsi untuk menampilkan string dengan baris baru
  print(kalimat_panjang);
}
