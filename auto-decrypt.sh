#!/bin/bash
read -p "نام فایل رمزنگاری‌شده را وارد کنید: " file

if grep -q "=" "$file"; then
    echo "🔍 تشخیص داده شد: base64"
    base64 --decode "$file" > decrypted.txt
    echo "✅ رمزگشایی انجام شد و در decrypted.txt ذخیره شد"
else
    echo "🔍 تشخیص داده شد: sha256 (غیرقابل رمزگشایی)"
    echo "❌ sha256 یک الگوریتم یک‌طرفه است و قابل رمزگشایی نیست"
fi
