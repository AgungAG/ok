#!/bin/bash

# Input domain
read -p "Masukkan domain : " domain

# Subfinder
echo "Menjalankan Subfinder..."
torsocks subfinder -d $domain > subdomain.txt

# httpx
echo "Menjalankan httpx..."
torsocks httpx -l subdomain.txt > activesubdomain.txt -threads 500000

# nuclei
echo "Menjalankan nuclei..."
cat activesubdomain.txt | torsocks nuclei --severity low,medium,high,critical -ept ssl > hasilnuclei.txt

# Selesai
echo "Selesai!"
