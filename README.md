# sweamonts

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Jawab:


2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Jawab:

 
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Jawab:

 
4. Jelaskan perbedaan antara const dengan final.
Jawab:
Variabel konstan (const dan final) berguna untuk menyimpan nilai yang tidak akan berubah selama program berjalan.
- Variabel dengan keyword const bersifat compile-time constants, artinya nilai tersebut harus sudah diketahui sebelum program dijalankan.
contoh:
const num pi = 3.14;

void main() {
  var radius = 7;
  print(
      'Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)}');
}

num calculateCircleArea(num radius) => pi * radius * radius;

- Variabel dengan keyword final memiliki sifat di mana nilainya masih bisa diinisialisasi ketika aplikasi berjalan.
contoh:
void main() {
  final firstName = "Achmad";
  final lastName = "Ilham";

  //lastName = 'Angga';       // tidak bisa dilakukan pengubahan nilai

  print('Hello $firstName $lastName');
}

 
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Jawab:

 