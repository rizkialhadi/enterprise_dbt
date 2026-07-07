{% docs dim_customers_overview %}

### Ringkasan Tabel Pelanggan
Tabel `dim_customers` adalah kebenaran tunggal (*Single Source of Truth*) untuk profil pelanggan di perusahaan kita.

#### Aturan Bisnis Penting:
1. **Lifetime Value (LTV)** dihitung berdasarkan akumulasi nilai pesanan dalam mata uang USD yang berstatus sukses.
2. Pelanggan yang belum pernah bertransaksi akan memiliki nilai `total_orders` sebesar `0` dan `lifetime_value` sebesar `0`.

#### Konsumsi BI:
Tabel ini dioptimalkan untuk di-query langsung oleh **Apache Superset** untuk kebutuhan dashboard retensi dan profil pengguna.

{% enddocs %}