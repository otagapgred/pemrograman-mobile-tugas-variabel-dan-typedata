import 'dart:io';

void main() {
  // Input data karyawan
  stdout.write("Masukkan Nama Karyawan: ");
  String? nama = stdin.readLineSync();

  stdout.write("Masukkan Jumlah Jam Kerja dalam Seminggu: ");
  int jamKerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Upah per Jam: ");
  double upahPerJam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah karyawan tetap? (ya/tidak): ");
  String? statusInput = stdin.readLineSync();
  bool statusTetap = (statusInput?.toLowerCase() == "ya");

  // Hitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Hitung pajak
  double pajak = statusTetap ? 0.10 * gajiKotor : 0.05 * gajiKotor;

  // Hitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print("\n=== Aplikasi Penghitung Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Jam Kerja     : $jamKerja jam");
  print("Upah per Jam  : Rp $upahPerJam");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("-----------------------------------------");
  print("Gaji Kotor    : Rp $gajiKotor");
  print("Pajak         : Rp $pajak");
  print("Gaji Bersih   : Rp $gajiBersih");
}
