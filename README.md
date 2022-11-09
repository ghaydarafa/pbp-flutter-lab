# Tugas 7
### _Stateless Widget_ dan _Stateful Widget_
_Stateless widget_ adalah widget yang tidak dapat berubah sehingga dari awal mulai aplikasi hingga berakhir, widget ini akan tetap sama. Sedangkan _stateful widget_ adalah widget yang dapat berubah. _Stateful widget_ dapat memperbarui tampilan dan value seirig berjalannya aplikasi. Dengan begitu, _stateless widget_ bersifat statis dan _stateful widget_ bersifat dinamis.
### Widget yang dipakai pada _project_ ini
* Stateless widget  
Untuk mengatur widget statis dari aplikasi seperti title dan warna dasar.
* Stateful widget  
Untuk mengatur isi home page sehingga dapat berubah-ubah sesuai yang diinginkan.
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
-----
REFERENSI README.md
* https://belajarflutter.com/perbedaan-stateful-dan-stateless-widget-di-flutter/
* https://www.javatpoint.com/flutter-widgets
* https://blog.logrocket.com/flutter-floatingactionbutton-a-complete-tutorial-with-examples/
* https://dev.to/nicks101/when-to-use-setstate-in-flutter-380
* https://pusher.com/tutorials/flutter-user-input/
* https://belajarflutter.com/perbedaan-final-dan-const-pada-dart-dan-flutter/

