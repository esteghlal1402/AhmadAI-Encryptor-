#!/bin/bash

while true; do
  clear
  echo "🔐 AhmadAl-Encrypt Menu"
  echo "------------------------"
  echo "1. رمزگذاری متن"
  echo "2. رمزگشایی خودکار"
  echo "3. نصب ابزار"
  echo "4. خروج"
  echo "------------------------"
  read -p "شماره گزینه را وارد کنید: " choice

  case $choice in
    1)
      bash encryptor.sh
      read -p "ادامه با Enter..."
      ;;
    2)
      bash auto-decrypt.sh
      read -p "ادامه با Enter..."
      ;;
    3)
      bash install.sh
      read -p "ادامه با Enter..."
      ;;
    4)
      echo "خروج از برنامه. موفق باشی 💙"
      break
      ;;
    *)
      echo "❌ گزینه نامعتبر بود"
      read -p "ادامه با Enter..."
      ;;
  esac
done
