import 'package:flutter/material.dart';
import 'form_product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String, dynamic>> daftarProduk = [
    {"nama": "Keripik Pisang", "harga": "12000", "stok": "25"},
    {"nama": "Teh Herbal", "harga": "18000", "stok": "10"},
    {"nama": "Kerupuk Udang", "harga": "10000", "stok": "40"},
    {"nama": "Madu Murni 250ml", "harga": "45000", "stok": "8"},
  ];

  void bukaForm({Map<String, dynamic>? data, int? index}) async {
    final hasil = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FormProductPage(data: data),
      ),
    );

    if (hasil != null) {
      setState(() {
        if (index == null) {
          daftarProduk.add(hasil);
        } else {
          daftarProduk[index] = hasil;
        }
      });
    }
  }

  void hapusProduk(int index) {
    setState(() {
      daftarProduk.removeAt(index);
    });
  }

  Widget cardProduk(Map<String, dynamic> produk, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: const Offset(2, 4),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.shopping_bag,
              size: 30,
              color: Colors.green,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  produk["nama"],
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(Icons.attach_money, size: 18, color: Colors.orange),
                    Text(" Rp ${produk["harga"]}"),
                  ],
                ),

                Row(
                  children: [
                    const Icon(Icons.inventory_2, size: 18, color: Colors.blue),
                    Text(" ${produk["stok"]} pcs"),
                  ],
                ),
              ],
            ),
          ),

          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () {
                  bukaForm(data: produk, index: index);
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  hapusProduk(index);
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Stok Produk UMKM"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: daftarProduk.length,
        itemBuilder: (context, index) {
          return cardProduk(daftarProduk[index], index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => bukaForm(),
        child: const Icon(Icons.add),
      ),
    );
  }
}