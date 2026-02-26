import 'package:flutter/material.dart';

class FormProductPage extends StatefulWidget {
  final Map<String, dynamic>? data;

  const FormProductPage({super.key, this.data});

  @override
  State<FormProductPage> createState() => _FormProductPageState();
}

class _FormProductPageState extends State<FormProductPage> {
  final TextEditingController namaC = TextEditingController();
  final TextEditingController hargaC = TextEditingController();
  final TextEditingController stokC = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.data != null) {
      namaC.text = widget.data!["nama"];
      hargaC.text = widget.data!["harga"];
      stokC.text = widget.data!["stok"];
    }
  }

  void simpanData() {
    if (namaC.text.isEmpty ||
        hargaC.text.isEmpty ||
        stokC.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Semua data harus diisi")),
      );
      return;
    }

    Navigator.pop(context, {
      "nama": namaC.text,
      "harga": hargaC.text,
      "stok": stokC.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    bool modeEdit = widget.data != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(modeEdit ? "Edit Produk" : "Tambah Produk"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: namaC,
              decoration: const InputDecoration(
                labelText: "Nama Produk",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: hargaC,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Harga",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: stokC,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Jumlah Stok",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: simpanData,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 45),
              ),
              child: Text(modeEdit ? "Update" : "Simpan"),
            )
          ],
        ),
      ),
    );
  }
}