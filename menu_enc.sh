#!/bin/bash

# Warna untuk mempercantik tampilan
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Fungsi efek ketikan
typing_effect() {
    local str="$1"
    local delay=0.05
    for (( i=0; i<${#str}; i++ )); do
        echo -n "${str:$i:1}"
        sleep $delay
    done
    echo
}


show_menu() {
    clear
    echo -e "${CYAN}╭─────────────────────────≼ Enkripsi Menu ≽─────────────────────────╮${RESET}"
    echo -e "${WHITE}1.${CYAN} Enkripsi Tingkat Hard"
    echo -e "${WHITE}2.${CYAN} Enkripsi Tingkat Easy"
    echo -e "${WHITE}3.${RED} Keluar"
    echo -e "${CYAN}╰────────────────────────────────────────────────────────────────╯${RESET}"
    echo -n -e "${CYAN}Pilih menu: ${RESET} "
}

# Menu utama
while true; do
    show_menu
    read -r choice
    case $choice in
        1)
            chmod +x enc_ren1.sh
            ./enc_ren.sh
            ;;
        2)
            chmod +x enc_ren2.sh
            ./enc_ren2.sh
            ;;
        3)
            echo -e "${RED}Keluar dari script...${RESET}"
            sleep 1.5
            break
            ;;
        *)
            echo -e "${RED}Pilihan tidak valid, coba lagi.${RESET}"
            read -p "Tekan enter untuk kembali ke menu awal."
            ;;
    esac
done