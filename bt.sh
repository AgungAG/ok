#!/bin/bash

# Step 1: Ambil masukan dari pengguna
read -p "Masukkan domain target: " target_domain

# Step 2: Jalankan subfinder dengan httpx
subfinder -d $target_domain | httpx -mc 200,404,401,403 > subs.txt

# Step 3: Jalankan waybackurls dan simpan sebagai subs-wayback.txt
cat subs.txt | waybackurls > subs-wayback.txt

# Step 4: Baca subs-wayback.txt, filter URL valid dengan httpx -mc 200
cat subs-wayback.txt | httpx -mc 200 > valid-wb.txt

# Step 5: Baca valid-wb.txt, jalankan nuklei dan simpan sebagai vulns.txt
nuclei -l valid-wb.txt -t /home/userland/nuclei-templates/http/cves > vulns.txt

echo "Proses selesai. Hasil disimpan dalam vulns.txt"
