#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Quick manifesto creator for my OSS project

echo "=== Open Source Manifesto ==="
echo ""

read -p "1. Tool you use daily: " tool
read -p "2. Freedom means: " freedom  
read -p "3. I will build and share: " build

file="manifesto_$(whoami).txt"
date=$(date "+%B %d, %Y")

cat > "$file" << EOF
MY OPEN SOURCE MANIFESTO
------------------------
Name: $(whoami)
Date: $date

I use $tool every day.
Freedom means $freedom to me.
I will build $build and share it freely.

Why? Because open source is about sharing and growing together.

Signed,
$(whoami)
EOF

echo ""
echo "Saved to: $file"
echo ""
cat "$file"