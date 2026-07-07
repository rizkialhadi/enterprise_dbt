# Claude Developer Guide

## Perintah Utama
- Build Proyek: `dbt build`
- Jalankan Linter: `sqlfluff lint models/`
- Perbaiki Format Otomatis: `sqlfluff fix models/`

## Aturan Coding SQL
- Gunakan HURUF BESAR untuk SQL keywords (`SELECT`, `FROM`, `WHERE`).
- Gunakan *trailing commas* dan alias yang jelas.
- Model di folder `staging/` harus menggunakan fungsi `source()`.