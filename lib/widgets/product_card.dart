import 'package:flutter/material.dart';
import 'package:sweamonts/widgets/left_drawer.dart';
import 'package:sweamonts/screens/productentry_form.dart';

class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color;
  final Color iconColor;

  ItemHomepage(this.name, this.icon, this.color, this.iconColor);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warnaka latar belakang dari tema aplikasi.
      color: item.color,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            // Navigasi ke ProductEntryFormPage saat "Tambah Produk" ditekan.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProductEntryFormPage(), // Halaman yang ingin dituju
              ),
            );
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: item.iconColor,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: item.iconColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
