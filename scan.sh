#!/bin/bash

# Input domain
echo "Masukkan domain : "
read domain

# Subfinder
echo "Menjalankan Subfinder..."
subfinder -d $domain > subdomain.txt

# httpx
echo "Menjalankan httpx..."
httpx -l subdomain.txt > activesubdomain.txt -threads 1000

# nuclei
echo "Menjalankan nuclei..."
cat activesubdomain.txt | nuclei --severity low,medium,high,critical -ept ssl > hasilnuclei.txt

# Selesai
echo "Selesai!"
