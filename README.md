# Administrasi Kelurahan Kenali Asam Bawah

Aplikasi web berbasis Laravel untuk mengelola sistem administrasi di Kelurahan Kenali Asam Bawah. Proyek ini dirancang untuk membantu aparatur kelurahan dalam mencatat, memproses, dan memantau berbagai layanan administrasi masyarakat secara efisien.

> ⚠️ Proyek ini masih dalam tahap pengembangan.

---

## ⚙️ Instalasi

Ikuti langkah-langkah berikut untuk menjalankan aplikasi ini di komputer lokal Anda:

### 1. Clone Repositori

Pertama, clone repositori ini ke mesin lokal Anda:

```bash
git clone https://github.com/rickyylaa/administrasi-kelurahan-kenali-asam-bawah.git
cd administrasi-kelurahan-kenali-asam-bawah
```

### 2. Install Dependensi

Install semua dependensi PHP dan JavaScript yang diperlukan:

```bash
composer install
npm install && npm run dev
```

### 3. Salin File .env

Salin file konfigurasi .env.example ke .env:

```bash
cp .env.example .env
```

### 4. Generate App Key

Generate aplikasi key untuk keamanan:

```bash
php artisan key:generate
```

### 5. Konfigurasi .env

Buka file .env dan sesuaikan konfigurasi database dan lainnya sesuai lingkungan Anda, misalnya:

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=asam_bawah
DB_USERNAME=root
DB_PASSWORD=
```

### 6. Download dan Import Database

Download file database dengan link berikut (contoh):

```bash
database/asam-bawah.sql
```

### 7. Jalankan Server

Jalankan server lokal Laravel:

```bash
php artisan serve
```

Aplikasi akan berjalan di http://localhost:8000.
