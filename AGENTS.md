# Agent Instructions

Anda beroperasi dalam proyek dbt tingkat enterprise. 
Setiap kali membuat model baru:
1. Tentukan layer yang tepat (staging, intermediate, marts).
2. Buat file `.yml` pendamping di folder yang sama untuk mendokumentasikan kolom dan menambahkan *data test* (`unique`, `not_null`).