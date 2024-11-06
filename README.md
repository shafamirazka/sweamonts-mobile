1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Jawab:
- Stateless Widget adalah widget yang tidak memiliki status yang dapat berubah selama aplikasi berjalan. Ini berarti data atau tampilan widget bersifat tetap setelah pertama kali dibangun. Setiap kali widget dibangun, tampilannya selalu sama, tanpa ada interaksi atau perubahan yang mempengaruhi UI setelah aplikasi dijalankan.

- Stateful Widget, di sisi lain, memiliki status internal yang bisa berubah. Widget ini digunakan ketika tampilan atau data dalam widget bergantung pada interaksi pengguna atau perubahan dalam aplikasi. Ketika status berubah, widget akan merender ulang bagian tertentu dari UI untuk mencerminkan perubahan tersebut.

Perbedaan utama:
- Stateless Widget tidak memiliki perubahan status selama aplikasi berjalan, sedangkan Stateful Widget memungkinkan perubahan status yang dapat mempengaruhi tampilan.
- Stateless Widget lebih sederhana dan lebih efisien untuk digunakan ketika tampilan tidak berubah. Stateful Widget digunakan ketika tampilan bergantung pada input atau data yang berubah.


2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Jawab:
Dalam proyek Flutter ini, beberapa widget digunakan untuk membangun antarmuka pengguna

1. MaterialApp:
   Menyediakan struktur dasar aplikasi dengan pengaturan tema dan navigasi. Ini adalah widget utama yang membungkus aplikasi.

2. Scaffold:
   Menyediakan struktur halaman yang terdiri dari AppBar, Body, dan bagian lainnya. Scaffold adalah widget dasar untuk membuat tampilan layar dengan elemen-elemen seperti toolbar dan area konten.

3. AppBar:
   Untuk menampilkan bagian atas aplikasi, biasanya berisi judul, ikon, atau tombol navigasi.

4. Column:
   Untuk menyusun elemen secara vertikal. Dalam proyek ini, digunakan untuk menyusun beberapa widget seperti Row, Text, dan GridView.

5. Row:
   Untuk menyusun elemen secara horizontal. Dalam proyek ini, Row digunakan untuk menampilkan tiga InfoCard secara berdampingan.

6. Text:
   Untuk menampilkan teks di dalam AppBar dan juga teks yang menunjukkan informasi pada layar, seperti "Welcome to sweamonts".

7. Card:
   Untuk membuat tampilan kartu dengan bayangan, yang digunakan dalam InfoCard untuk menampilkan informasi seperti NPM, Nama, dan Kelas.

8. SizedBox:
   Memberikan ruang kosong dengan ukuran tertentu. Digunakan untuk memberikan jarak antara elemen-elemen di antarmuka pengguna.

9. GridView:
   Menampilkan item dalam format grid. Dalam proyek ini, digunakan untuk menampilkan beberapa ItemCard secara grid dengan 3 kolom.

10. Material:
    Menerapkan tema material design. Di dalamnya terdapat InkWell, yang memberikan efek sentuhan saat item dipilih.

11. InkWell:
    Memberikan efek ripple saat pengguna mengetuk area tertentu. Digunakan dalam ItemCard untuk memberikan respons visual ketika kartu ditekan.

12. SnackBar:
    Menampilkan pesan sementara di bagian bawah layar. Dalam proyek ini, digunakan dalam ItemCard untuk menunjukkan pesan ketika salah satu kartu ditekan.

13. Icon:
    Menampilkan ikon di dalam ItemCard, seperti ikon mood, tambah, dan logout, yang mewakili setiap tindakan atau pilihan.

14. Container:
    Widget dasar yang digunakan untuk mengatur ukuran dan penataan elemen-elemen dalam ItemCard dan InfoCard.

Widget-widget ini bekerja bersama untuk membangun antarmuka pengguna yang interaktif dan responsif pada aplikasi yang sedang dikembangkan.

 
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Jawab:
Dalam Flutter, setState() adalah metode yang digunakan untuk memberi tahu framework bahwa ada perubahan pada state (keadaan) suatu widget sehingga perlu dirender ulang agar tampilan terbaru dapat ditampilkan pada antarmuka pengguna. Metode ini biasanya digunakan dalam stateful widget (widget yang dapat berubah seiring waktu) dan bertujuan memperbarui tampilan ketika nilai dari variabel-variabel yang ada di dalam widget tersebut berubah. Dengan memanggil setState(), kita memberi sinyal kepada Flutter bahwa ada perubahan, sehingga framework akan memanggil ulang metode build() dari widget terkait untuk menggambar ulang antarmuka sesuai perubahan terbaru.

- Variabel yang Terdampak oleh setState()
Hanya variabel atau properti yang ada di dalam stateful widget dan digunakan dalam metode build() yang akan terdampak oleh setState(). Variabel ini biasanya berisi data yang mempengaruhi tampilan langsung, seperti nilai yang ditampilkan di widget Text, Image, atau elemen UI lainnya. Selain itu, variabel yang berubah akibat interaksi pengguna, seperti jumlah klik tombol, status saklar, atau pengaturan aplikasi, juga akan terpengaruh. Saat setState() dipanggil, Flutter akan merender ulang widget terkait, memperbarui tampilan UI agar sesuai dengan perubahan pada variabel yang digunakan dalam build(). Ini memastikan bahwa UI selalu mencerminkan kondisi data terbaru.

Variabel lokal yang hanya digunakan dalam metode lain dan tidak mempengaruhi UI tidak akan dipengaruhi oleh setState().

 
4. Jelaskan perbedaan antara const dengan final.
Jawab:
Dalam Dart, const dan final adalah keyword yang digunakan untuk mendefinisikan variabel konstan, nilainya tidak dapat diubah setelah inisialisasi.

A. const (Compile-Time Constant)
   - Variabel yang dideklarasikan dengan const harus diinisialisasi pada saat compile-time. Nilai variabel tersebut harus sudah diketahui dan tetap sebelum program dijalankan.
   - const digunakan untuk nilai yang bersifat konstan secara universal, seperti angka matematika tetap (pi, e), teks tetap, atau nilai yang benar-benar tidak tergantung pada masukan pengguna atau kondisi runtime lainnya.
   - contoh:
     const num pi = 3.14;

     void main() {
       var radius = 7;
       print(Luas lingkaran dengan radius $radius = ${calculateCircleArea(radius)});
     }

     num calculateCircleArea(num radius) => pi  radius  radius;
    
     Pada contoh ini, pi adalah variabel const, sehingga nilainya ditentukan di awal (compile-time) dan tidak dapat diubah di mana pun dalam program.

   - Pada const, nilai tetap akan selalu sama setiap kali program dijalankan, tanpa dipengaruhi oleh masukan atau kondisi program.

B. final (Run-Time Constant)
   - Variabel yang dideklarasikan dengan final hanya bisa diinisialisasi sekali, tetapi inisialisasinya bisa ditunda hingga run-time (saat program berjalan). Nilai final bisa bergantung pada operasi atau nilai yang baru diketahui saat aplikasi berjalan.
   - Digunakan untuk nilai yang ditentukan saat runtime dan tidak akan berubah setelahnya. Misalnya, nilai yang diambil dari masukan pengguna atau hasil perhitungan yang hanya ingin ditetapkan sekali.
   - contoh:
     void main() {
       final firstName = "Achmad";
       final lastName = "Ilham";

       lastName = Angga; // Ini akan menghasilkan error karena final tidak bisa diubah setelah inisialisasi

       print(Hello $firstName $lastName);
     }
     Dalam contoh ini, firstName dan lastName diinisialisasi sebagai final, sehingga nilainya ditentukan hanya sekali pada saat runtime dan tidak dapat diubah setelahnya.

   - final digunakan ketika nilai variabel tidak dapat ditentukan pada saat kompilasi, tetapi nilai tersebut hanya perlu diatur satu kali saat program berjalan.

 
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Jawab:

1. Membuat Program Flutter Baru dengan Tema E-Commerce
  - mengetik flutter create sweamonts

2. Membuat Tiga Tombol Sederhana dengan Ikon dan Teks
   Menggunakan widget IconButton atau ElevatedButton yang dilengkapi dengan ikon dan teks.

   List<ItemHomepage> items = [
     ItemHomepage("Lihat Daftar Produk", Icons.mood, Color(0xFB9AC1)),
     ItemHomepage("Tambah Produk", Icons.add, Color(0xFFDC90)),
     ItemHomepage("Logout", Icons.logout, Color(0xDF8D7D)),
   ];

   Di atas, kita membuat list items yang berisi tiga objek ItemHomepage. Setiap objek ini memiliki nama, ikon, dan warna khusus untuk masing-masing tombol.

   - Lihat Daftar Produk menggunakan ikon Icons.mood dengan warna Color(0xFB9AC1).
   - Tambah Produk menggunakan ikon Icons.add dengan warna Color(0xFFDC90).
   - Logout menggunakan ikon Icons.logout dengan warna Color(0xDF8D7D).

3. Mengimplementasikan Warna-Warna yang Berbeda untuk Setiap Tombol
   - Setiap tombol diberikan warna yang berbeda dengan menentukan warna khusus menggunakan objek Color. Di bagian kode yang sudah disediakan di atas, setiap tombol memiliki warna masing-masing yang sudah diatur pada konstruktor ItemHomepage.

4. Memunculkan Snackbar Ketika Tombol Ditekan
   - Untuk menampilkan pesan Snackbar ketika tombol ditekan, kita bisa menggunakan ScaffoldMessenger.of(context).showSnackBar(). Berikut adalah implementasi untuk menampilkan Snackbar sesuai dengan tombol yang ditekan:
   
   Pada widget ItemCard, yang bertugas menampilkan setiap tombol, kita menggunakan widget InkWell untuk menangani interaksi pengguna:

   InkWell(
     onTap: () {
       String message;
       if (item.name == "Lihat Daftar Produk") {
         message = "Kamu telah menekan tombol Lihat Daftar Produk!";
       } else if (item.name == "Tambah Produk") {
         message = "Kamu telah menekan tombol Tambah Produk!";
       } else {
         message = "Kamu telah menekan tombol Logout!";
       }
       ScaffoldMessenger.of(context)
         ..hideCurrentSnackBar() // Menyembunyikan snackbar yang sedang aktif
         ..showSnackBar(SnackBar(content: Text(message))); // Menampilkan snackbar baru
     },
     child: Container(
       padding: const EdgeInsets.all(8),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(item.icon, color: Colors.white, size: 30.0),
             Padding(padding: EdgeInsets.all(3)),
             Text(item.name, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
           ],
         ),
       ),
     ),
   );
   
   Pada kode di atas:
   - Ketika pengguna mengetuk tombol, aplikasi memeriksa nama tombol dan menampilkan pesan sesuai dengan tombol yang ditekan.
   - Menggunakan ScaffoldMessenger.of(context).showSnackBar() untuk menampilkan Snackbar dengan pesan yang sesuai.

5. Penjelasan Cara Mengimplementasikan Checklist-Checklist di Atas

 1. Membuat Program Flutter Baru dengan Tema E-Commerce
   - Langkah pertama adalah membuat aplikasi Flutter baru dengan menjalankan perintah flutter create <nama_project>. Dalam kasus ini, nama proyek yang digunakan adalah sweamonts.
   - Setelah proyek berhasil dibuat, buka folder proyek dan ubah file lib/main.dart untuk memulai membangun tampilan aplikasi sesuai tema E-Commerce yang diinginkan.

 2. Membuat Tiga Tombol Sederhana dengan Ikon dan Teks
   - Untuk membuat tombol, kita menggunakan widget ItemHomepage yang berisi nama tombol, ikon, dan warna khusus untuk setiap tombol.
   - Berikut adalah cara mendeklarasikan tiga tombol menggunakan list items:
   
   List<ItemHomepage> items = [
     ItemHomepage("Lihat Daftar Produk", Icons.mood, Color(0xFB9AC1)),
     ItemHomepage("Tambah Produk", Icons.add, Color(0xFFDC90)),
     ItemHomepage("Logout", Icons.logout, Color(0xDF8D7D)),
   ];
   
   Di sini, kita mendefinisikan tiga objek ItemHomepage, di mana setiap objek mewakili tombol dengan ikon dan warna yang berbeda:
   - Lihat Daftar Produk menggunakan ikon Icons.mood dengan warna Color(0xFB9AC1) (merah muda).
   - Tambah Produk menggunakan ikon Icons.add dengan warna Color(0xFFDC90) (kuning lembut).
   - Logout menggunakan ikon Icons.logout dengan warna Color(0xDF8D7D) (merah muda).

 3. Mengimplementasikan Warna-Warna yang Berbeda untuk Setiap Tombol
   - Setiap tombol diberikan warna khusus, yang ditentukan melalui parameter Color pada objek ItemHomepage. Setiap warna ini membuat tombol lebih mudah dibedakan berdasarkan fungsinya.
   - Misalnya, tombol "Lihat Daftar Produk" menggunakan warna Color(0xFB9AC1) yang memberikan kesan cerah dan lembut.

 4. Memunculkan Snackbar Ketika Tombol Ditekan
   - Ketika tombol ditekan, kita ingin menampilkan pesan yang memberi tahu pengguna tombol mana yang mereka pilih. Untuk melakukan ini, kita menggunakan ScaffoldMessenger.of(context).showSnackBar() untuk menampilkan Snackbar dengan pesan yang sesuai.
   
   Berikut adalah implementasi untuk menampilkan Snackbar ketika tombol ditekan:
   
   InkWell(
     onTap: () {
       String message;
       if (item.name == "Lihat Daftar Produk") {
         message = "Kamu telah menekan tombol Lihat Daftar Produk!";
       } else if (item.name == "Tambah Produk") {
         message = "Kamu telah menekan tombol Tambah Produk!";
       } else {
         message = "Kamu telah menekan tombol Logout!";
       }
       ScaffoldMessenger.of(context)
         ..hideCurrentSnackBar() // Menyembunyikan snackbar yang sedang tampil
         ..showSnackBar(SnackBar(content: Text(message))); // Menampilkan snackbar baru
     },
     child: Container(
       padding: const EdgeInsets.all(8),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(item.icon, color: Colors.white, size: 30.0),
             Padding(padding: EdgeInsets.all(3)),
             Text(item.name, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
           ],
         ),
       ),
     ),
   );
   
   - InkWell digunakan untuk menangani interaksi pengguna, yaitu ketika tombol ditekan (tap).
   - ScaffoldMessenger.of(context).showSnackBar() menampilkan pesan dalam bentuk Snackbar yang memberi tahu pengguna tombol mana yang mereka tekan.

 5. Penjelasan Implementasi Langkah-Langkah di Atas
   - Membuat Program Flutter Baru: Dengan perintah flutter create, kita membuat proyek baru dan menyesuaikan file main.dart untuk menampilkan antarmuka pengguna.
   - Membuat Tombol dengan Ikon dan Teks: Tombol-tombol tersebut dibuat dengan mendefinisikan objek ItemHomepage yang menyimpan nama tombol, ikon, dan warna. Tombol kemudian ditampilkan di layar menggunakan ItemCard dan GridView untuk menata tombol-tombol tersebut dalam bentuk grid.
   - Menerapkan Warna yang Berbeda untuk Setiap Tombol: Warna khusus untuk setiap tombol ditentukan pada konstruktor ItemHomepage menggunakan kode warna Color(0xFF...).
   - Memunculkan Snackbar: Saat tombol ditekan, aplikasi akan menampilkan pesan menggunakan ScaffoldMessenger.of(context).showSnackBar() untuk menampilkan Snackbar dengan informasi tombol yang dipilih.