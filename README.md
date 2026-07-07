# Enterprise dbt Project

Proyek ini mengimplementasikan transformasi data end-to-end menggunakan dbt dan PostgreSQL, dengan arsitektur layering terstruktur (Staging -> Intermediate -> Marts) dan otomatisasi CI/CD melalui GitHub Actions.

## Cara Memulai (Lokal)
1. Aktifkan Virtual Environment: `source venv/bin/activate`
2. Install dependensi (jika belum): `pip install -r requirements.txt` (atau manual `dbt-postgres`)
3. Unduh paket dbt: `dbt deps`
4. set $env:DBT_PROFILES_DIR="$PWD"
5. Jalankan dbt: `dbt dbt compile` atau `dbt run`