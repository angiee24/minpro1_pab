# Angela Caroline Budiman (2409116008) Sistem Informasi A'2024

# 📱 Aplikasi Stok Produk UMKM

## 📌 Deskripsi Aplikasi
Aplikasi Stok Produk UMKM adalah aplikasi mobile berbasis Flutter yang digunakan untuk mencatat dan mengelola stok produk secara sederhana.
Aplikasi ini dibuat menggunakan konsep StatefulWidget dan state management dasar menggunakan setState(). Data produk disimpan sementara dalam bentuk List di dalam aplikasi (tanpa database).

Aplikasi memiliki dua halaman utama:
1. HomePage (Halaman utama untuk menampilkan daftar produk)
2. FormProductPage (Halaman untuk menambah dan mengedit produk)
---
## Fitur Aplikasi
- ✅ Create (Tambah Data Produk)
- ✅ Read (Menampilkan Daftar Produk)
- ✅ Delete (Menghapus Produk)
- ✅ Update (Mengedit Produk)
- ✅ Multi Page Navigation (Navigasi antar halaman menggunakan Navigator)

Setiap produk memiliki 3 input utama:
- Nama Produk
- Harga Produk
- Jumlah Stok
---
## Widget yang Digunakan
Berikut widget yang digunakan dalam aplikasi:
- MaterialApp
- Scaffold
- AppBar
- ListView
- Container
- Column
- Row
- Text
- TextField
- ElevatedButton
- FloatingActionButton
- Icon
- IconButton
- Navigator
- SnackBar
---
## Platform dan Tools yang Digunakan
- Flutter
- Dart
- Material Design
- Visual Studio Code
---
## 📂 Struktur File

<img width="240" height="109" alt="image" src="https://github.com/user-attachments/assets/44ce413d-7797-40c1-9fa9-b662fb23d476" />

Struktur proyek ini berada di dalam folder lib yang berisi tiga file utama, yaitu main.dart, home_page.dart, dan form_product_page.dart. File main.dart berfungsi sebagai titik awal aplikasi dan menjalankan MaterialApp. File home_page.dart merupakan halaman utama yang menampilkan daftar produk serta mengelola proses tambah, edit, dan hapus data menggunakan setState(). Sedangkan form_product_page.dart digunakan sebagai halaman form untuk menambahkan dan mengedit produk dengan tiga input utama, yaitu nama, harga, dan stok. Struktur ini sederhana dan sudah mendukung navigasi antar halaman (multi page).

## Output

<img width="1919" height="960" alt="image" src="https://github.com/user-attachments/assets/5a3849a9-f262-4d82-af87-a6ae3f13bd8a" />

Tampilan tersebut adalah halaman utama aplikasi Stok Produk UMKM yang menampilkan daftar produk dalam bentuk list. Setiap produk menampilkan nama, harga, dan jumlah stok, serta memiliki tombol edit dan delete di sisi kanan. Di pojok kanan bawah terdapat tombol tambah (+) untuk menambahkan produk baru. Halaman ini sudah mendukung fitur CRUD dan navigasi ke halaman form.

<img width="1919" height="950" alt="image" src="https://github.com/user-attachments/assets/b4a0d846-3758-4da0-983e-a6754c9dc150" />

Tampilan tersebut adalah halaman Tambah Produk (FormProductPage) yang digunakan untuk menambahkan data produk baru. Pada halaman ini terdapat tiga TextField, yaitu untuk mengisi Nama Produk, Harga, dan Jumlah Stok. Di bagian bawah terdapat tombol Simpan yang berfungsi untuk menyimpan data dan kembali ke halaman utama. Halaman ini mendukung proses Create dan menggunakan navigasi untuk kembali setelah data disimpan.

