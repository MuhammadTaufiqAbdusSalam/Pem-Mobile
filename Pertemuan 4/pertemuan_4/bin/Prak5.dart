void main(List<String> arguments) {
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);
  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }
  // var asli = (1, 2);
  // var swap = tukar(asli);
  // print(swap);
  // Record type annotation in a variable declaration:
  var mahasiswa = ('Muhammad Taufiq Abdus Salam', 2241760040);
  print(mahasiswa);
  var mahasiswa2 = ('Muhammad Taufiq Abdus Salam', a: 2, b: true, '2241760040');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
