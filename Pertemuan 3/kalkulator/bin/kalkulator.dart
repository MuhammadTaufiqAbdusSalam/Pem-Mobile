import 'dart:io';

void main() {
  const int maxSemester = 14;
  const int maxMatkul = 30;

  int jmlsmt = 0,
      jmlmk = 0,
      nilai = 0,
      jumlahnilai = 0,
      jumlahsks = 0,
      totalsks = 0;
  List<List<int>> sks =
      List.generate(maxSemester, (_) => List.filled(maxMatkul, 0));
  List<List<String>> nilaihuruf =
      List.generate(maxSemester, (_) => List.filled(maxMatkul, ''));
  List<List<String>> matkul =
      List.generate(maxSemester, (_) => List.filled(maxMatkul, ''));
  List<int> skssmt = List.filled(maxSemester, 0);
  List<double> nr = List.filled(maxSemester, 0.0);
  double totalnr = 0.0, ipk = 0.0;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  stdout.write("Masukkan jumlah semester: ");
  String? inputJmlSmt = stdin.readLineSync();
  jmlsmt = int.tryParse(inputJmlSmt ?? '0') ?? 0;

  if (jmlsmt < 2 || jmlsmt > maxSemester) {
    print("Jumlah semester salah!");
    return;
  }

  for (int i = 0; i < jmlsmt; i++) {
    jumlahnilai = 0;
    jumlahsks = 0;
    stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
    String? inputJmlMk = stdin.readLineSync();
    jmlmk = int.tryParse(inputJmlMk ?? '0') ?? 0;

    if (jmlmk < 2) {
      print("Jumlah matakuliah kurang dari 2 setiap semester");
      return;
    }

    for (int j = 0; j < jmlmk; j++) {
      stdout.write("Masukkan mata kuliah ke ${j + 1}\n");
      stdout.write("Masukkan nama matkul: ");
      matkul[i][j] = stdin.readLineSync() ?? '';
      stdout.write("Masukkan jumlah sks matkul: ");
      String? inputSks = stdin.readLineSync();
      sks[i][j] = int.tryParse(inputSks ?? '0') ?? 0;
      stdout.write("Masukkan nilai matkul (A/B/C/D/E): ");
      nilaihuruf[i][j] = stdin.readLineSync() ?? '';
      print("--------------------------------------------");

      switch (nilaihuruf[i][j]) {
        case 'A':
          nilai = 4 * sks[i][j];
          break;
        case 'B':
          nilai = 3 * sks[i][j];
          break;
        case 'C':
          nilai = 2 * sks[i][j];
          break;
        case 'D':
          nilai = 1 * sks[i][j];
          break;
        case 'E':
          nilai = 0 * sks[i][j];
          break;
        default:
          print("Input salah!");
          return;
      }

      jumlahnilai += nilai;
      jumlahsks += sks[i][j];
    }

    if (jumlahsks > 24) {
      print("Jumlah SKS semester lebih dari 24");
      return;
    }

    skssmt[i] = jumlahsks;
    nr[i] = jumlahsks > 0 ? jumlahnilai / jumlahsks : 0;
  }

  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (int i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1}:\n");
    print("${"Mata Kuliah".padRight(20)}${"SKS".padRight(10)}${"Nilai"}");

    for (int j = 0; j < jmlmk; j++) {
      print(
          "${matkul[i][j].padRight(20)}${sks[i][j].toString().padRight(10)}${nilaihuruf[i][j]}");
    }

    print("\nSKS\t: ${skssmt[i]}");
    print("NR\t: ${nr[i].toStringAsFixed(2)}");
    totalsks += skssmt[i];
    totalnr += nr[i];
    print("--------------------------------------------");
  }

  ipk = jmlsmt > 0 ? totalnr / jmlsmt : 0;
  print("\nTotal SKS\t: $totalsks");
  print("IPK\t\t: ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}