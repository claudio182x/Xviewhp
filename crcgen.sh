#!/usr/bin/env bash

   while true; do
       clear
       echo "┌──────────────────────────────┐"
       echo "│   GENERADOR CRC32 EXACTO     │"
       echo "└──────────────────────────────┘"
       echo -e "\nIngresa la cadena (Presiona Ctrl + C para salir):"
       
       read -p "» " cadena
       
       resultado=$(python3 -c "import binascii; crc = binascii.crc32('$cadena'.encode('utf-8'), 0xFFFFFFFF) ^ 0xFFFFFFFF; print(f'{crc & 0xFFFFFFFF:08X}')")
       
       echo -e "\n═════════ RESULTADO ═════════"
       echo "Cadena ingresada: $cadena"
       echo "CRC32 exacto:     $resultado"
       echo -e "══════════════════════════════\n"
       
       read -p "Presiona Enter para continuar..."
   done