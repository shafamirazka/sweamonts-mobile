# Tugas 7 - Flutter

### 1. Jelaskan apa yang dimaksud dengan Stateless Widget dan Stateful Widget, dan jelaskan perbedaan dari keduanya.

**Stateless Widget**  
Stateless Widget adalah widget yang tidak memiliki status yang dapat berubah selama aplikasi berjalan. Data atau tampilan widget ini bersifat tetap setelah pertama kali dibangun, artinya tampilannya selalu sama tanpa ada perubahan atau interaksi yang mempengaruhi UI setelah aplikasi dijalankan.

**Stateful Widget**  
Stateful Widget memiliki status internal yang dapat berubah. Widget ini digunakan ketika tampilan atau data dalam widget bergantung pada interaksi pengguna atau perubahan dalam aplikasi. Ketika status berubah, widget akan merender ulang bagian tertentu dari UI untuk mencerminkan perubahan tersebut.

**Perbedaan Utama**  
- Stateless Widget tidak mengalami perubahan status selama aplikasi berjalan, sedangkan Stateful Widget memungkinkan perubahan status yang mempengaruhi tampilan.
- Stateless Widget lebih sederhana dan efisien digunakan ketika tampilan tidak berubah, sedangkan Stateful Widget digunakan ketika tampilan bergantung pada input atau data yang berubah.

---

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

Pada proyek Flutter ini, beberapa widget digunakan untuk membangun antarmuka pengguna:

1. **MaterialApp**: Menyediakan struktur dasar aplikasi dengan pengaturan tema dan navigasi. Widget utama yang membungkus aplikasi.
2. **Scaffold**: Struktur halaman terdiri dari `AppBar`, `Body`, dan elemen lainnya. 
3. **AppBar**: Menampilkan bagian atas aplikasi, biasanya berisi judul dan ikon navigasi.
4. **Column**: Menyusun elemen secara vertikal, seperti `Row`, `Text`, dan `GridView`.
5. **Row**: Menyusun elemen secara horizontal, digunakan untuk menampilkan tiga `InfoCard` secara berdampingan.
6. **Text**: Menampilkan teks pada layar, seperti judul aplikasi dan teks informasi.
7. **Card**: Membuat tampilan kartu dengan bayangan, seperti di `InfoCard`.
8. **SizedBox**: Memberikan jarak kosong antara elemen-elemen di antarmuka.
9. **GridView**: Menampilkan item dalam format grid, digunakan untuk `ItemCard`.
10. **Material**: Menerapkan tema material design, berisi `InkWell` untuk efek sentuhan.
11. **InkWell**: Memberikan efek ripple saat pengguna mengetuk area tertentu, digunakan pada `ItemCard`.
12. **SnackBar**: Menampilkan pesan sementara di bagian bawah layar.
13. **Icon**: Menampilkan ikon pada `ItemCard`, seperti ikon mood, tambah, dan logout.
14. **Container**: Widget dasar untuk mengatur ukuran dan penataan elemen dalam `ItemCard` dan `InfoCard`.

---

### 3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

`setState()` adalah metode yang memberi tahu framework bahwa ada perubahan pada *state* suatu widget yang memerlukan render ulang agar UI memperbarui tampilan. `setState()` umumnya digunakan dalam Stateful Widget untuk memperbarui tampilan ketika nilai variabel yang ada di dalam widget berubah. Hanya variabel atau properti dalam Stateful Widget yang digunakan di dalam metode `build()` yang akan terdampak oleh `setState()`.

---

### 4. Jelaskan perbedaan antara `const` dengan `final`.

- **const (Compile-Time Constant)**:  
  Nilai harus sudah diketahui dan tetap sebelum program dijalankan. `const` digunakan untuk nilai yang konstan secara universal, seperti angka matematika tetap (misalnya π) atau teks tetap.  

- **final (Run-Time Constant)**:  
  Variabel `final` hanya bisa diinisialisasi sekali, tetapi inisialisasinya bisa ditunda hingga runtime. `final` digunakan untuk nilai yang ditentukan saat runtime dan tidak akan berubah setelahnya.

---

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. **Membuat Program Flutter Baru dengan Tema E-Commerce**  
   Membuat proyek baru dengan perintah `flutter create sweamonts`, lalu mengubah file `lib/main.dart` untuk menampilkan antarmuka aplikasi bertema E-Commerce.

2. **Membuat Tiga Tombol dengan Ikon dan Teks**  
   Menggunakan `IconButton` atau `ElevatedButton` yang dilengkapi dengan ikon dan teks, mendefinisikan list `items` yang berisi tiga objek `ItemHomepage`.

3. **Mengimplementasikan Warna yang Berbeda untuk Setiap Tombol**  
   Setiap tombol diberikan warna dengan menggunakan objek `Color` pada konstruktor `ItemHomepage`.

4. **Memunculkan Snackbar Ketika Tombol Ditekan**  
   Menggunakan `ScaffoldMessenger.of(context).showSnackBar()` untuk menampilkan `Snackbar` ketika tombol ditekan.

---

# Tugas 8

### 1. **Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?**

**Jawab:**
`const` di Flutter digunakan untuk mendeklarasikan objek atau widget yang nilai dan properti-propertinya tidak berubah selama runtime aplikasi. Dengan menggunakan `const`, Flutter bisa mengoptimalkan penggunaan memori dan kinerja aplikasi. Widget yang diberi `const` akan dipakai kembali (cached) tanpa perlu membuat ulang instansi widget tersebut saat widget tersebut di-rebuild.

Keuntungan menggunakan `const`:
- **Efisiensi**: Menghindari pembuatan ulang objek yang sama dan mengurangi penggunaan memori.
- **Performa**: Meningkatkan kinerja aplikasi karena objek yang dideklarasikan dengan `const` hanya dibuat sekali.

Sebaiknya menggunakan `const` ketika widget atau objek memiliki nilai tetap, seperti warna, ikon, atau teks yang tidak berubah. Tidak perlu menggunakan `const` jika data atau properti widget bersifat dinamis atau berubah sesuai input pengguna.

---

### 2. **Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**

**Jawab:**
- **Column**: Mengatur widget anak secara vertikal (dari atas ke bawah).
  - **Contoh**:
    ```dart
    Column(
      children: <Widget>[
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
      ],
    )
    ```
  Column digunakan pada halaman `MyHomePage` untuk menampilkan informasi seperti NPM, Nama, dan Kelas secara vertikal di dalam `Column` widget.

- **Row**: Mengatur widget anak secara horizontal (dari kiri ke kanan).
  - **Contoh**:
    ```dart
    Row(
      children: <Widget>[
        Icon(Icons.star),
        Icon(Icons.favorite),
        Icon(Icons.home),
      ],
    )
    ```
  Row digunakan dalam `MyHomePage` untuk menampilkan `InfoCard` secara horizontal.

Perbandingan:
- **Column** lebih cocok untuk mengatur widget secara vertikal, seperti daftar data.
- **Row** lebih cocok untuk mengatur widget secara horizontal, seperti menu atau ikon.

---

### 3. **Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**

**Jawab:**
Pada halaman form `ProductEntryFormPage`, elemen input yang digunakan adalah:
- **TextFormField**: Digunakan untuk input teks, seperti `Name`, `Description`, dan `Amount`.
  - `TextFormField` digunakan pada form untuk nama produk, deskripsi produk, dan jumlah produk yang akan ditambahkan.
  - Setiap `TextFormField` dilengkapi dengan validasi untuk memastikan input tidak kosong dan sesuai dengan format yang diinginkan (misalnya, `Amount` harus berupa angka).

Elemen input Flutter lain yang tidak digunakan pada tugas ini:
1. **DropdownButton**: Untuk memilih satu opsi dari daftar.
2. **Switch**: Untuk memilih status biner (On/Off).
3. **Slider**: Untuk memilih nilai dalam rentang tertentu.
4. **Radio**: Untuk memilih satu dari beberapa opsi yang ada.

---

### 4. **Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**

**Jawab:**
Untuk mengatur tema dalam aplikasi Flutter, saya menggunakan properti `theme` dalam widget `MaterialApp`. Tema yang digunakan akan menentukan tampilan aplikasi secara keseluruhan, seperti warna latar belakang, warna teks, dan elemen UI lainnya.

Pada aplikasi yang saya buat, tema diatur dalam kode berikut:
```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
    useMaterial3: true,
  ),
  home: MyHomePage(),
)
```
Tema ini mengatur skema warna aplikasi menggunakan `ColorScheme` dengan `primarySwatch` yang berwarna deep purple. Dengan ini, warna latar belakang dan elemen UI di seluruh aplikasi menjadi konsisten.

---

### 5. **Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**

**Jawab:**
Navigasi antar halaman dalam aplikasi Flutter dapat dilakukan dengan menggunakan `Navigator` dan `MaterialPageRoute`. Untuk berpindah antar halaman, saya menggunakan `Navigator.push()` untuk membuka halaman baru dan `Navigator.pop()` untuk kembali ke halaman sebelumnya.

Contoh implementasi navigasi:
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
);
```
Pada aplikasi yang saya buat, navigasi dilakukan melalui drawer menggunakan `Navigator.pushReplacement()`. Misalnya, pada `LeftDrawer`, ketika item menu "Tambah Produk" dipilih, aplikasi akan menavigasi ke halaman form produk baru (`ProductEntryFormPage`):
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => ProductEntryFormPage(),
  ),
);
```
Dengan ini, aplikasi dapat berpindah antar halaman dengan lancar, seperti dari halaman utama ke halaman form produk dan sebaliknya.

--- 