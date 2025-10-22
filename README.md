# aplikasi-kasir-sakpore

Sistem **Point of Sale (POS)** ini merupakan aplikasi kasir digital berbasis database yang dirancang untuk membantu proses transaksi penjualan, pencatatan stok produk, dan pembuatan laporan keuangan secara otomatis.  
Proyek ini dibuat menggunakan **java**, **neatbeans**, dan **phpMyAdmin** sebagai manajemen database.

---

## 🚀 Fitur Utama

### 🧍‍♂️ Manajemen Pengguna
- Login multi-level (Admin, Manager, User)
- Pengaturan status akun (*Active* / *Offline*)
- <img width="1299" height="677" alt="image" src="https://github.com/user-attachments/assets/e0a77f51-97fc-4c00-bfe2-c0c176913e2e" />


### 📦 Manajemen Produk
- Tambah, ubah, dan hapus data produk
- Pengelompokan produk berdasarkan kategori
- Pengaturan harga, stok, dan status produk
- <img width="1290" height="673" alt="image" src="https://github.com/user-attachments/assets/1d705021-b8d2-4b04-b689-4b746ff041f7" />


### 🗂️ Kategori Produk
- Pengelolaan kategori seperti *Makanan*, *Minuman*, *Snack*, dan *Sembako*
- <img width="1294" height="675" alt="image" src="https://github.com/user-attachments/assets/cb8dc458-9455-444d-84d7-e071ed4054ab" />


### 💰 Transaksi Penjualan
- Pencatatan penjualan secara otomatis
- Penghitungan total belanja, pembayaran, dan kembalian
- Penyimpanan data transaksi ke tabel `salestable` dan `productsold`

### 🧾 Struk Invoice & Print Laporan
- Pembuatan struk pembelian otomatis setelah transaksi
- <img width="350" height="554" alt="image" src="https://github.com/user-attachments/assets/eeead84c-bcc6-4731-82dc-c99a635ece1b" />
- Cetak struk langsung ke printer (contoh: EPSON L5190)
- Laporan penjualan dapat dicetak melalui *Print Dialog*
- <img width="1290" height="674" alt="image" src="https://github.com/user-attachments/assets/31f3c295-c90b-4372-b4a8-5b16dff1ebc6" />

cara instalasi
1. Clone repository atau salin file proyek ke folder
   git clone https://github.com/AldrianoAufa/aplikasi-kasir-sakpore
2. masukan connector mysql jika belum punya akses di folder mySQL database Version\src\Connector ada file connector-java.jar
3. buat database dengan nama pos dan import file yang sudah saya cantumkan di folder utama
   untuk passwordnya bisa dilihat di sini
   
   <img width="607" height="147" alt="image" src="https://github.com/user-attachments/assets/ec43d42e-b47d-4e87-8653-90a094007048" />
5. jalankan aplikasi di neatbeans ataupun visual studio code
