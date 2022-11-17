# Tugas 7
### _Stateless Widget_ dan _Stateful Widget_
_Stateless widget_ adalah widget yang tidak dapat berubah sehingga dari awal mulai aplikasi hingga berakhir, widget ini akan tetap sama. Sedangkan _stateful widget_ adalah widget yang dapat berubah. _Stateful widget_ dapat memperbarui tampilan dan value seirig berjalannya aplikasi. Dengan begitu, _stateless widget_ bersifat statis dan _stateful widget_ bersifat dinamis.
### Widget yang dipakai pada _project_ ini
* Stateless widget  
Untuk mengatur widget statis dari aplikasi seperti title dan warna dasar.
* Stateful widget  
Untuk mengatur isi home page sehingga dapat berubah-ubah sesuai yang diinginkan.
* Scaffold  
Untuk mengimplementasikan struktur visual desain material aplikasi.
* AppBar  
Sebagai tempat dari _toolbar_ yang ada pada aplikasi.
* Text  
Untuk mengatur teks yang akan ditampilkan di aplilasi.
* Center  
Untuk mengatur _child widget_ sehingga berada pada posisi tengah.
* Column  
Untuk mengatur _children's widget_ dalam urutan posisi vertikal.
* Row  
Untuk mengatur _children's widget_ dalam urutan posisi horizontal.
* FloatingActionButton  
Untuk membuat _button_ yang dapat mengambang di atas widget lain.
### Fungsi _setState()_ dan _variable_ yang terdampak
_setState()_ digunakan untuk merubah _value_ suatu _variable_ menjadi _value_ yang terbaru sebelum ditampilkan di layar. _setState()_ digunakan oleh _StatefulWidget_ agar _variable_ dapat menjadi _mutable_. _setState()_ akan berdampak terhadap _variable-variable_ di dalam StatefulWidget di mana state tersebut didefinisikan.
### _const_ dan _final_
_const_ dan _final_ merupakan _immutable variable_ yang tidak dapat berubah. Perbedaan keduanya yaitu adalah _const_ memiliki nilai yang sudah harus diinisialisasi dan bersifat konstan dan eksplisit, sehingga ketika dilakukan _compile_, _const_ sudah memiliki nilai. Jika _const_ tidak memiliki nilai pada saat _compile_, maka akan terjadi _error_. Sedangkan _final_ tidak mengharuskan _variable_ untuk memiliki nilai inisial pada saat kompilasi. Apabila _compile_ dijalankan saat _final_ belum memiliki nilai, maka tidak akan menjadi masalah.
### Proses implementasi _checklist_
* Membuat app dengan `flutter create counter_7`
* Mengganti title pada home page
* Menambahkan `FloatingActionButton` dengan icon remove dan mengatur posisi semua button dengan widget row
* Membuat _variable_ String bernama _tipe dengan _initial value_ 'GENAP'
* Membuat _void function_ `_GanjilGenap()` yang akan mengecek apakah suatu angka ganjil atau genap dengan menggunakan logika sisa hasil bagi.
* Membuat _function_ TextStyle yang akan menyesuaikan warna teks untuk GANJIL atau GENAP
* Membuat _void function_ `_decrementCounter()` untuk _decrement_ angka. Jika angka saat ini bernilai 0, maka akan mereturn kosong sehingga counter-- tidak akan bekerja.
* Menyesuaikan _function decrement_ dan _increment_ dengan function _GanjilGenap()
* Menyesuaikan widget text untuk menampilkan text GANJIL atau GENAP beserta style yang sesuai


# Tugas 8

### `Navigator.push` dan `Navigator.pushReplacement`
`Navigator.push` akan menavigasi ke arah page baru dengan cara menambahkan route page baru ke stack berisi route-route yang diatur oleh Navigator. Perbedaannya dengan `Navigator.pushReplacement` adalah `Navigator.pushReplacement` akan mengganti route di stack teratas dengan route page yang baru ditambahkan.

### Widget yang dipakai pada _project_ ini
* Drawer  
Untuk membuat list berisi daftar page yang ada.
* ListView
Untuk menampilkan daftar objek dengan layout scroll.
* ListTile
Untuk membuat isi dari objek di ListView dengan lebih spesifik.
* Navigator
Menavigasi ke page lain.
* Form
Membuat form yang dapat menerima input masukan.
* SingleChildScrollView
Membuat box yang dapat di-scroll
* Container
Untuk membuat suatu kontainer yang dapat menampung berbagai widget lain.
* TextFormField
Untuk menerima input form berupa text
* DropDownButton
Untuk membuat dropdown yang dapat dipilih salah satu value-nya.
* TextButton
Tombol sederhana dengan label.
* Card
Untuk membuat card yang dapat menampung berbagai informasi.

### Jenis event pada flutter
* onChanged
Melakukan sesuatu ketika ada pergantian value.
* onPressed
Melakukan sesuatu ketika button dipencet.
* onSaved
Melakukan sesuatu ketika data disimpan.

### Cara kerja Navigator dalam "mengganti" halaman
Pada Flutter, Navigator mengubah isi stack berisi route-route page dengan `push` dan `pop`. Route adalah suatu map dengan string keys dan value seperti builder yang akan dikirim ke properti `route` yang dimiliki MaterialApp. `push` akan menavigasi ke page baru sedangkan `pop` akan menavigasi ke page sebelumnya. `push` menambahkan route page baru dengan mengambil argumen `BuildContext` dan `PageBuilder` sedangkan `pop` hanya mengambil argumen `BuildContext`. Untuk meng-handle pergantian route dan menavigasi halaman dengan animasi dapat menggunakan MaterialPageRoute

### Proses implementasi _checklist_
* Membuat page form.dart dan data.dart
* Menambahkan drawer berisi main.dart, form.dart, dan data.dart
* Membuat form dengan input judul, nominal, dan dropdown tipe budget.
* Membuat class Data untuk membuat objek data berisi informasi di atas.
* Membuat class ListData yang memiliki static variable List berisi Data.
* Menambahkan Data ke ListData ketika form di-save.
* Menampilkan data di data.dart dengan mengambil data dari ListData.

-----
REFERENSI TUGAS
* https://belajarflutter.com/perbedaan-stateful-dan-stateless-widget-di-flutter/
* https://www.javatpoint.com/flutter-widgets
* https://www.javatpoint.com/flutter-scaffold
* https://medium.com/codechai/playing-with-appbar-in-flutter-3a8abd9b982a
* https://blog.logrocket.com/flutter-floatingactionbutton-a-complete-tutorial-with-examples/
* https://dev.to/nicks101/when-to-use-setstate-in-flutter-380
* https://pusher.com/tutorials/flutter-user-input/
* https://belajarflutter.com/perbedaan-final-dan-const-pada-dart-dan-flutter/
* https://blog.logrocket.com/understanding-flutter-navigation-routing/
