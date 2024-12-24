#!/bin/bash

# ANSI escape sequences for colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RESET='\033[0m'  # Reset text color to default
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'

# License key variable
LICENSE_KEY="lydiaa"

# Function to check license
check_license() {
    if [ "$LICENSE_KEY" == "lydiaa" ]; then
        return 0
    else
        return 1
    fi
}

# Display message if license is valid
display_message() {
    echo -e "${GREEN}𝘾𝙄𝘾𝘼𝘿𝘼𝙎 3301 𝙄𝙎 𝙃𝙀𝙍𝙀! 𝙇𝙀𝙏𝙎 𝘿𝙊 𝙏𝙃𝙀 𝙅𝙊𝙐𝙍𝙉𝙀𝙔!${RESET}"
}

# Software installation function
install_software() {
    echo -e "${RED}𝗟𝗜𝗖𝗘𝗡𝗦𝗘 𝗔𝗡𝗗𝗔 𝗕𝗘𝗡𝗔𝗥!!, 𝗠𝗔𝗦𝗨𝗞𝗔𝗡 𝗨𝗟𝗔𝗡𝗚${RESET}"
}

# Function to animate text with a blinking effect
animate_text() {
    local text="$1"
    local delay="${2:-0.1}"
    for (( i = 0; i < ${#text}; i++ )); do
        echo -en "${text:$i:1}"
        sleep "$delay"
    done
    echo -e "${RESET}"
}

# Function to handle "FIX YARN" choice
fix_yarn() {
    echo "Anda memilih untuk memperbaiki YARN. © Cicada 3301"
    echo "Menjalankan perintah perbaikan YARN... © Cicada 3301"
    
    echo "KAMU HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [[ "$HAS_PTERODACTYL" == "YES" || "$HAS_PTERODACTYL" == "yes" ]]; then
        # Proceed with YARN installation and build commands
        sudo mkdir -p /etc/apt/keyrings
        curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
        echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
        sudo apt update
        sudo apt install -y nodejs
        npm i -g yarn
        cd /var/www/pterodactyl || exit

        echo -e "${RED}𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔 © Cicada 3301${RESET}"
        yarn
        yarn build:production
        echo "Perbaikan YARN selesai. © Cicada 3301"
    
    elif [[ "$HAS_PTERODACTYL" == "NO" || "$HAS_PTERODACTYL" == "no" ]]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl © Cicada 3301"
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan.© Cicada 3301"
        exit 1
    fi
}

# Main script execution
if check_license; then
    display_message
    install_software
    animate_text "𝘾𝙍𝘼𝘾𝙆𝙀𝘿 𝘽𝙔 𝘼𝙃𝙈𝘼𝘿 𝙏𝙃𝙀 𝘾𝙄𝘾𝘼𝘿𝘼𝙎 3301"
else
    echo "Masukkan lisensi Anda:"
    read -r LICENSE_KEY
    if check_license; then
        display_message
        install_software
        animate_text "𝘾𝙍𝘼𝘾𝙆𝙀𝘿 𝘽𝙔 𝘼𝙃𝙈𝘼𝘿 𝙏𝙃𝙀 𝘾𝙄𝘾𝘼𝘿𝘼𝙎 3301"
    else
        echo "𝙇𝙞𝙨𝙚𝙣𝙨𝙞 𝘼𝙣𝙙𝙖 𝙎𝙖𝙡𝙖𝙝! 𝙎𝙞𝙡𝙖𝙝𝙠𝙖𝙣 𝙠𝙪𝙣𝙟𝙪𝙣𝙜𝙞 𝙎𝙖𝙡𝙪𝙧𝙖𝙣 𝙃𝙚𝙧𝙖 𝘼𝙣𝙣𝙤𝙪𝙣𝙘𝙚𝙢𝙚𝙣𝙩!"
        exit 1
    fi
fi


# Fungsi untuk menangani pilihan "FIX YARN"
fix_yarn() {
    echo "Anda memilih untuk memperbaiki YARN.© Cicada 3301"
    echo "Menjalankan perintah perbaikan YARN© Cicada 3301"
# Pemeriksaan apakah pengguna sudah memiliki panel Pterodactyl
    echo "KAMU HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
        # Lanjutkan dengan instalasi tema

    # Perintah untuk memperbaiki YARN
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔 © Cicada 3301"
   yarn
    yarn build:production

    echo "Perbaikan YARN selesai."
elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl."
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan."
        exit 1
    fi
}

installThemeice(){
    echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            apt install git
            cd /var/www/
            tar -cvf IceMinecraftTheme.tar.gz pterodactyl
            echo "Installing theme..."
            cd /var/www/pterodactyl
            rm -r IceMinecraftTheme
            git clone https://github.com/Angelillo15/IceMinecraftTheme.git
            cd IceMinecraftTheme
            rm /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            rm /var/www/pterodactyl/resources/scripts/index.tsx
            rm /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            mv resources/scripts/index.tsx /var/www/pterodactyl/resources/scripts/index.tsx
            mv resources/scripts/IceMinecraftTheme.css /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            mv resources/scripts/components/server/console/Console.tsx /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            cd /var/www/pterodactyl

            sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
            cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
           yarn
            yarn build:production
            sudo php artisan optimize:clear

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
deletefilesptero(){
    echo "PROSES"
    echo "Menjalankan perintah Anda"
    echo "APAKAH ANDA INGIN MENGUNINSTAL FILE PTERODACTYL? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    cd /var/ && rm -r www
    echo "FILE PTERODACTYL TELAH TER UNINSTALL"
    elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl."
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan."
        exit 1
    fi
}
# Fungsi untuk menangani pilihan "INSTALL THEME ENIGMA"
install_theme_enigma() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"

            # Perintah untuk mengunduh dan menginstal tema Enigma
            apt install git
            cd /var/www && git clone https://github.com/neroxkira/Neroxzx.git
            mv /var/www/Neroxzx/enigmarain.zip /var/www/
            rm -r Neroxzx
            apt install unzip
echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
            unzip enigmarain.zip         
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ ʏ"
            sudo mkdir -p /etc/apt/keyrings
            curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
            echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
            sudo apt update
            sudo apt install -y nodejs
            npm i -g yarn
            cd /var/www/pterodactyl
            yarn
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            echo "Tema Enigma telah diinstal."

            # Perintah untuk instalasi tambahan
            echo "Melakukan konfigurasi tambahan..."

            # Pemeriksaan dan instalasi dependensi (contoh)
            # Misalnya:
            # sudo apt update
            # sudo apt install -y package_name

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
installnightcoretheme(){

echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            
    apt install sudo -y > /dev/null 2>&1
    cd /var/www/ > /dev/null 2>&1
    tar -cvf Pterodactyl_Nightcore_Themebackup.tar.gz pterodactyl > /dev/null 2>&1
    echo -e "${GREEN}𝟯𝟬%${RESET}"
    cd /var/www/pterodactyl > /dev/null 2>&1
    echo -e "${GREEN}𝟲𝟬℅${RESET}"
    rm -r Pterodactyl_Nightcore_Theme > /dev/null 2>&1
    echo -e "${GREEN}𝟴𝟬%${RESET}"
    git clone https://github.com/NoPro200/Pterodactyl_Nightcore_Theme.git > /dev/null 2>&1
    cd Pterodactyl_Nightcore_Theme > /dev/null 2>&1
    echo -e "${GREEN}𝟵𝟬%${RESET}"
    rm /var/www/pterodactyl/resources/scripts/Pterodactyl_Nightcore_Theme.css > /dev/null 2>&1
    rm /var/www/pterodactyl/resources/scripts/index.tsx > /dev/null 2>&1
    echo -e "${GREEN}𝟵𝟱%${RESET}"
    echo -e "${GREEN}KEMUNGKINAN AKAN SEDIKIT LAMA,SELAMAT MENUNGGU${RESET}"
    mv index.tsx /var/www/pterodactyl/resources/scripts/index.tsx > /dev/null 2>&1
    mv Pterodactyl_Nightcore_Theme.css /var/www/pterodactyl/resources/scripts/Pterodactyl_Nightcore_Theme.css > /dev/null 2>&1
    cd /var/www/pterodactyl > /dev/null 2>&1
    
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - > /dev/null 2>&1
    apt update -y > /dev/null 2>&1
    apt install nodejs -y > /dev/null 2>&1
    
    NODE_VERSION=$(node -v)
    REQUIRED_VERSION="v16.20.2"
    if [ "$NODE_VERSION" != "$REQUIRED_VERSION" ]; then
        echo -e "${GREEN}Node.js version is not ${YELLOW}${REQUIRED_VERSION}${GREEN}. Version: ${YELLOW}${NODE_VERSION}${RESET}"
        echo -e "${GREEN}Set version to ${YELLOW}v16.20.2${GREEN}... ${RESET}"
        sudo npm install -g n > /dev/null 2>&1
        sudo n 16 > /dev/null 2>&1
        node -v > /dev/null 2>&1
        npm -v > /dev/null  2>&1
        echo -e "${GREEN}Now the default version is ${YELLOW}${REQUIRED_VERSION}"
    else
        echo -e "${GREEN}Node.js Version is compatible: ${YELLOW}${NODE_VERSION} ${RESET}"
    fi

    apt install npm -y > /dev/null 2>&1
    npm i -g yarn > /dev/null 2>&1
    yarn > /dev/null 2>&1

    cd /var/www/pterodactyl > /dev/null 2>&1
    echo -e "${GREEN}𝟵𝟴%${RESET}"
    yarn build:production > /dev/null 2>&1
    echo -e "${GREEN}𝟭𝟬𝟬%${RESET}"
    sudo php artisan optimize:clear > /dev/null 2>&1
    echo -e "${BLUE}𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗖𝗢𝗠𝗣𝗟𝗜𝗖𝗔𝗧𝗘𝗗"
    echo -e "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗖𝗘𝗞 𝗪𝗘𝗕 𝗣𝗔𝗡𝗘𝗟 𝗔𝗡𝗗𝗔${RESET}"
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
install_theme_nooktheme() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"

            # Perintah untuk mengunduh dan menginstal tema
            apt install git
            cd /var/www/pterodactyl
            echo -e "${RED}PROSES PANEL ANDA AKAN DIMATIKAN SEMENTARA, UNTUK INSTALL TEMA${RESET}"
            php artisan down
            echo -e "PANEL ANDA TELAH DIMATIKAN, MOHON TIDAK MENUTUP SESSION INI"
            curl -L https://github.com/Nookure/NookTheme/releases/latest/download/panel.tar.gz | tar -xzv
           chmod -R 755 storage/* bootstrap/cache
           echo -e ${YELLOW} "SILAHKAN KETIK yes"${RESET}
           composer install --no-dev --optimize-autoloader
           php artisan view:clear
           php artisan config:clear
           php artisan migrate --seed --force
           chown -R www-data:www-data /var/www/pterodactyl/*
           php artisan queue:restart
            echo -e ${GREEN}"INSTALL THEME SELESAI"${RESET}
           echo -e ${YELLOW}"PROSES MENGAKTIFKAN KEMBALI PANEL PTERODACTYL ANDA"${RESET}
           php artisan up
           echo -e ${GREEN}"SELESAI, SILAHKAN MASUK KE WEB PANEL PTERODACTYL ANDA"${RESET}

            # Pemeriksaan dan instalasi dependensi (contoh)
            # Misalnya:
            # sudo apt update
            # sudo apt install -y package_name

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu."
        exit 1
    fi
}
installminecraftpurpletheme(){
    echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [[ "$HAS_PTERODACTYL" == "YES" || "$HAS_PTERODACTYL" == "yes" ]]; then
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_CLEARED_THEMES

        if [[ "$HAS_CLEARED_THEMES" == "y" || "$HAS_CLEARED_THEMES" == "Y" ]]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            
            os_name=$(grep '^NAME=' /etc/os-release | sed 's/NAME=//')

            # Check if the OS name contains "Ubuntu"
            if [[ $os_name == *"Ubuntu"* ]]; then
                echo "This is Ubuntu. Proceeding with the script."
    cd /var/www/
    tar -cvf MinecraftPurpleThemebackup.tar.gz pterodactyl
    cd /var/www/pterodactyl
    rm -r MinecraftPurpleTheme
    git clone https://github.com/Angelillo15/MinecraftPurpleTheme.git
    cd MinecraftPurpleTheme
    rm /var/www/pterodactyl/resources/scripts/MinecraftPurpleTheme.css
    rm /var/www/pterodactyl/resources/scripts/index.tsx
    mv index.tsx /var/www/pterodactyl/resources/scripts/index.tsx
    mv MinecraftPurpleTheme.css /var/www/pterodactyl/resources/scripts/MinecraftPurpleTheme.css
    cd /var/www/pterodactyl
               echo -e "${ORANGE}JIKA ADA PILIHAN y/N SILAHKAN PILIH y${RESET}"
                sudo mkdir -p /etc/apt/keyrings
                curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
                echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
                sudo apt update
                sudo apt install -y nodejs
                npm i -g yarn
                
                cd /var/www/pterodactyl || exit
                echo -e "${GREEN}𝟵𝟵%${RESET}"
                yarn build:production
                    sudo php artisan optimize:clear
                echo -e "${BLUE}𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗖𝗢𝗠𝗣𝗟𝗜𝗖𝗔𝗧𝗘𝗗"
                echo -e "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗖𝗘𝗞 𝗪𝗘𝗕 𝗣𝗔𝗡𝗘𝗟 𝗔𝗡𝗗𝗔${RESET}"
            else
                echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
                exit 1
            fi
        elif [[ "$HAS_CLEARED_THEMES" == "NO" || "$HAS_CLEARED_THEMES" == "no" || "$HAS_CLEARED_THEMES" == "n" || "$HAS_CLEARED_THEMES" == "N" ]]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
installthememcube() {
    echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [[ "$HAS_PTERODACTYL" == "YES" || "$HAS_PTERODACTYL" == "yes" ]]; then
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_CLEARED_THEMES

        if [[ "$HAS_CLEARED_THEMES" == "y" || "$HAS_CLEARED_THEMES" == "Y" ]]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            
            os_name=$(grep '^NAME=' /etc/os-release | sed 's/NAME=//')

            # Check if the OS name contains "Ubuntu"
            if [[ $os_name == *"Ubuntu"* ]]; then
                echo "This is Ubuntu. Proceeding with the script."

cd /var/www/
    tar -cvf McubeTheme.tar.gz pterodactyl
    cd /var/www/pterodactyl
    rm -rf McubeTheme
    git clone https://github.com/MBG-Codes-You/McubeTheme.git
    cd McubeTheme
                rm /var/www/pterodactyl/resources/scripts/MineCube.css
                rm /var/www/pterodactyl/resources/scripts/index.tsx
                rm /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
                rm /var/www/pterodactyl/resources/views/admin/index.blade.php
                rm /var/www/pterodactyl/resources/scripts/routers/ServerRouter.tsx
                rm /var/www/pterodactyl/resources/scripts/components/auth/LoginFormContainer.tsx
                rm /var/www/pterodactyl/resources/scripts/components/auth/LoginContainer.tsx
                rm /var/www/pterodactyl/public/themes/pterodactyl/css/pterodactyl.css
                mv resources/scripts/index.tsx /var/www/pterodactyl/resources/scripts/index.tsx
                mv resources/scripts/MineCube.css /var/www/pterodactyl/resources/scripts/MineCube.css
                mv resources/scripts/components/server/console/Console.tsx /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
                mv resources/scripts/index.blade.php /var/www/pterodactyl/resources/views/admin
                mv resources/scripts/routers/ServerRouter.tsx /var/www/pterodactyl/resources/scripts/routers/ServerRouter.tsx
                mv resources/scripts/components/auth/LoginContainer.tsx /var/www/pterodactyl/resources/scripts/components/auth/LoginContainer.tsx
                echo -e "${GREEN}𝟲𝟬%${RESET}"
                mv resources/scripts/components/auth/LoginFormContainer.tsx /var/www/pterodactyl/resources/scripts/components/auth/LoginFormContainer.tsx
                mv public/themes/pterodactyl/pterodactyl.css /var/www/pterodactyl/public/themes/pterodactyl/css/pterodactyl.css
                echo -e "${GREEN}𝟵𝟬%${RESET}"
                apt update
                apt install -y nodejs
                echo -e "${ORANGE}JIKA ADA PILIHAN y/N SILAHKAN PILIH y${RESET}"
                sudo mkdir -p /etc/apt/keyrings
                curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
                echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
                sudo apt update
                sudo apt install -y nodejs
                npm i -g yarn
                
                cd /var/www/pterodactyl || exit
                echo -e "${GREEN}𝟵𝟵%${RESET}"
                yarn build:production
                echo -e "${BLUE}𝗜𝗡𝗦𝗧𝗔𝗟𝗟 𝗖𝗢𝗠𝗣𝗟𝗜𝗖𝗔𝗧𝗘𝗗"
                echo -e "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗖𝗘𝗞 𝗪𝗘𝗕 𝗣𝗔𝗡𝗘𝗟 𝗔𝗡𝗗𝗔${RESET}"
            else
                echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
                exit 1
            fi
        elif [[ "$HAS_CLEARED_THEMES" == "NO" || "$HAS_CLEARED_THEMES" == "no" || "$HAS_CLEARED_THEMES" == "n" || "$HAS_CLEARED_THEMES" == "N" ]]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
install_stellartheme() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
                sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    apt install unzip
    cd /var/www/pterodactyl
    yarn
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan optimize
    php artisan view:clear
    echo -e "${BLUE}𝗞𝗘𝗧𝗜𝗞 yes${RESET}"
    php artisan migrate
    yarn add react-feather
            cd /var/www/
            apt install git
            git clone https://github.com/rainmc0123/Stellar
            mv /var/www/Stellar/stellartheme.zip /var/www/
            echo -e "${BLUE}𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔${RESET}"
            unzip stellartheme.zip
            echo "Installing theme..."
            cd /var/www/pterodactyl
   echo -e ${RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔${RESET}"
            yarn build:production
       echo -e ${BLUE}"𝗧𝗘𝗥𝗗𝗘𝗧𝗜𝗞𝗦𝗜 𝗞𝗘𝗥𝗨𝗦𝗔𝗞𝗔𝗡, SILAHKAN DITUNGGU SAYA AKAN BERUSAHA UNTUK MEMPERBAIKINYA${RESET}"
       echo -e ${BLUE}"𝗣𝗘𝗥𝗕𝗔𝗜𝗞𝗔𝗡 𝗠𝗢𝗗𝗘${RESET}${RESET}"
      sed -i 's/defaultValue={variable.serverValue}/defaultValue={variable.serverValue ?? ""}/g' resources/scripts/components/server/startup/VariableBox.tsx
       echo -e "${BLUE}𝗣𝗘𝗥𝗕𝗔𝗜𝗞𝗔𝗡 𝗕𝗘𝗥𝗛𝗔𝗦𝗜𝗟 KITA COBA SEKALI LAGI${RESET}"
       yarn build:production
            sudo php artisan optimize:clear
      echo -e "${GREEN}𝗕𝗘𝗥𝗛𝗔𝗦𝗜𝗟, 𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗖𝗘𝗞 𝗪𝗘𝗕 𝗣𝗔𝗡𝗘𝗟 𝗔𝗡𝗗𝗔${RESET}"

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
install_register_pterodactyl() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA YAKIN? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"

            # Perintah untuk mengunduh dan menginstal tema Enigma
            apt install git
            cd /var/www && git clone https://github.com/rainmc0123/rainregis
            mv /var/www/rainmc0123/registerrain.zip /var/www/
            rm -r rainmc0123
            apt install unzip
echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
            unzip registerrain.zip       
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ ʏ"
            sudo mkdir -p /etc/apt/keyrings
            curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
            echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
            sudo apt update
            sudo apt install -y nodejs
            npm i -g yarn
            cd /var/www/pterodactyl
            yarn
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            php artisan view:clear
            echo -e ${YELLOW}"REGISTER SUDAH TERPASANG, DAN PASTIKAN EMAIL SMTP ANDA WORK"

            # Perintah untuk instalasi tambahan
            echo "Melakukan konfigurasi tambahan..."

            # Pemeriksaan dan instalasi dependensi (contoh)
            # Misalnya:
            # sudo apt update
            # sudo apt install -y package_name

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}

# Fungsi untuk menangani pilihan "INSTALL BILLING MODULE"
install_billing_module() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then

            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
            
    echo "Anda memilih untuk menginstal Billing Module."
    echo "Menjalankan perintah instalasi Billing Module"
        # Lanjutkan dengan instalasi tema

    # Perintah untuk instalasi Billing Module
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    cd /var/www/
    wget https://download1582.mediafire.com/tp82qkr13zlgXygV6f9r6KZbm0RdsVUhIhCYw5hAMd2fy2FwzVcQBSjA7jaZsW_n77bmtqWKiV1VKDrbOL9QiqJh2kzDR_o8d6LIxzVBCKctI3eCx2DfTpJpBAzg5uyg2vENBPeYcQrbXW0g0KHOWqPmr4h5tdAYJ3bFcD7BSQJwn-az/ajzpzd0n54d3rvm/billmodv11.zip
    apt install unzip
echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
    unzip billmodv11.zip
    cd /var/www/pterodactyl
    yarn
    php artisan billing:install stable
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
    yarn build:production

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
installThemeice() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪ ʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
                sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    apt install unzip
    cd /var/www/pterodactyl
    yarn
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan optimize
    php artisan view:clear
            cd /var/www/
            tar -cvf IceMinecraftTheme.tar.gz pterodactyl
            echo "Installing theme..."
            cd /var/www/pterodactyl
            rm -r IceMinecraftTheme
            git clone https://github.com/Angelillo15/IceMinecraftTheme.git
            cd IceMinecraftTheme
            rm /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            rm /var/www/pterodactyl/resources/scripts/index.tsx
            rm /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            mv resources/scripts/index.tsx /var/www/pterodactyl/resources/scripts/index.tsx
            mv resources/scripts/IceMinecraftTheme.css /var/www/pterodactyl/resources/scripts/IceMinecraftTheme.css
            mv resources/scripts/components/server/console/Console.tsx /var/www/pterodactyl/resources/scripts/components/server/console/Console.tsx
            cd /var/www/pterodactyl

            cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            sudo php artisan optimize:clear

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}
install_futuristic_theme() {
echo "ANDA HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then
    
        echo "APAKAH ANDA SUDAH MENGHAPUS SEMUA THEME DI PANEL PTERODACTYL? (y/n)"
        read -r HAS_PTERODACTYL        
        if [ "$HAS_PTERODACTYL" == "y" ] || [ "$HAS_PTERODACTYL" == "Y" ]; then
            echo "𝗣𝗥𝗢𝗦𝗘𝗦 𝗜𝗡𝗦𝗧𝗔𝗟𝗟"
            echo "ᴊɪᴋᴀ ᴀᴅᴀ ᴘɪʟɪʜᴀɴ ᴅɪʙᴀᴡᴀʜ sɪʟᴀʜᴋᴀɴ ᴘɪʟɪʜ Y"
                sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
    echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_16.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
    sudo apt update
    sudo apt install -y nodejs
    npm i -g yarn
    apt install unzip
    cd /var/www/pterodactyl
    yarn
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan optimize
    php artisan view:clear
            cd /var/www/
            apt install git
            git clone https://github.com/rainmc0123/RainFuturistic
            mv /var/www/RainFuturistic/pterodactyl.zip /var/www/
            echo "𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗣𝗜𝗟𝗜𝗛 𝗔"
            unzip pterodactyl.zip
            echo "Installing theme..."
            cd /var/www/pterodactyl
   echo -e {RED}"𝗦𝗜𝗟𝗔𝗛𝗞𝗔𝗡 𝗗𝗜𝗧𝗨𝗡𝗚𝗚𝗨, 𝗜𝗡𝗜 𝗔𝗞𝗔𝗡 𝗦𝗘𝗗𝗜𝗞𝗜𝗧 𝗟𝗔𝗠𝗔"
            yarn build:production
            sudo php artisan optimize:clear

            echo "Konfigurasi tambahan selesai."
        elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ] || [ "$HAS_PTERODACTYL" == "n" ] || [ "$HAS_PTERODACTYL" == "N" ]; then
            echo "Mengabaikan konfigurasi tambahan untuk Pterodactyl."
            echo "Dibatalkan."
            exit 1
        else
            echo "Pilihan tidak valid. Instalasi dibatalkan."
            exit 1
        fi
    else
        echo "Anda harus memiliki panel Pterodactyl terlebih dahulu. Instalasi dibatalkan."
        exit 1
    fi
}


# Fungsi untuk menangani pilihan "UNINSTALL THEME"
uninstall_theme() {
    echo "Anda memilih untuk menghapus tema."
    echo "Menjalankan perintah uninstall tema..."

# Pemeriksaan apakah pengguna sudah memiliki panel Pterodactyl
    echo "KAMU HARUS MEMILIKI PANEL PTERODACTYL TERLEBIH DAHULU! APAKAH ANDA MEMPUNYAINYA? (YES/NO)"
    read -r HAS_PTERODACTYL

    if [ "$HAS_PTERODACTYL" == "YES" ] || [ "$HAS_PTERODACTYL" == "yes" ]; then

        # Lanjutkan dengan instalasi tema

    # Perintah untuk uninstall tema
    cd /var/www/
    rm -r pterodactyl.zip
    rm -r enigmarain.zip
    rm -r Neroxzx
    rm -r billmodv11.zip
    rm -r IceMinecraftTheme.tar.gz
    rm -r RainFuturistic
    rm -r Pterodactyl_Nightcore_Themebackup.tar.gz
    rm -r McubeTheme.tar.gz
    rm -r Stellar
    rm -r stellartheme.zip
    cd /var/www/pterodactyl
    php artisan down
    curl -L https://github.com/pterodactyl/panel/releases/latest/download/panel.tar.gz | tar -xzv
    chmod -R 755 storage/* bootstrap/cache
    composer install --no-dev --optimize-autoloader
    php artisan view:clear
    php artisan config:clear
    php artisan migrate --seed --force
    chown -R www-data:www-data /var/www/pterodactyl/*
    php artisan up

    echo "Uninstall tema selesai."
   elif [ "$HAS_PTERODACTYL" == "NO" ] || [ "$HAS_PTERODACTYL" == "no" ]; then
        echo "Instalasi tema Enigma dibatalkan karena Anda tidak memiliki panel Pterodactyl."
        exit 1
    else
        echo "Pilihan tidak valid. Instalasi dibatalkan."
        exit 1
    fi
}
LICENSE_FILE="/tmp/license.txt"
LICENSE_TIMESTAMP_FILE="/tmp/license_timestamp.txt"
SKIP_HI_FILE="/tmp/skip_hi.txt"
RESET='\033[0m'
GREEN='\033[1;32m'

trap '' SIGINT
trap 'echo -e "\n𝗞𝗘𝗧𝗜𝗞 𝟭𝟱 𝗟𝗔𝗟𝗨 𝗘𝗡𝗧𝗘𝗥 𝗨𝗡𝗧𝗨𝗞 𝗞𝗘𝗟𝗨𝗔𝗥";' SIGINT

show_menu() {
    if [ "$1" == "first" ]; then
        if [ ! -f "$SKIP_HI_FILE" ]; then
            message="SILAHKAN DIPILIH OPSI DIBAWAH INI."
            for (( i=0; i<${#message}; i++ )); do
                echo -n "${message:$i:1}"
                sleep 0.1
            done
            echo
        else
            echo -e "${YELLOW}(SKIP)${RESET}"
        fi
    fi

    echo -e "\n\033[1;34mPilihan:\033[0m"
    for i in {1..15}; do
        case $i in
            1) echo -e "\033[1;34m1. FIX YARN\033[0m";;
            2) echo -e "\033[1;34m2. INSTALL THEME ENIGMA\033[0m";;
            3) echo -e "\033[1;34m3. INSTALL BILLING MODULE\033[0m";;
            4) echo -e "\033[1;34m4. INSTALL THEME ICE MINECRAFT\033[0m";;
            5) echo -e "\033[1;34m5. UNINSTALL THEME\033[0m";;
            6) echo -e "\033[1;34m6. HAPUS FILE PTERODACTYL\033[0m";;
            7) echo -e "${RED}7. FUTURISTIC THEME (𝗘𝗥𝗥𝗢𝗥)${RESET}";;
            8) echo -e "\033[1;34m8. INSTALL CTRLPANEL PTERODACTYL\033[0m";;
            9) echo -e "\033[1;34m9. INSTALL REGISTER PTERODACTYL\033[0m";;
            10) echo -e "\033[1;34m10. INSTALL NOOKTHEME PTERODACTYL\033[0m";;
            11) echo -e "\033[1;34m11. INSTALL NIGHTCORE THEME PTERODACTYL\033[0m";;
            12) echo -e "\033[1;34m12. INSTALL MCUBE THEME PTERODACTYL\033[0m";;
            13) echo -e "\033[1;34m13. INSTALL MINECRAFT PUPLE THEME PTERODACTYL\033[0m";;
            14) echo -e "\033[1;34m14. INSTALL STELLAR THEME PTERODACTYL\033[0m";;
            15) echo -e "\033[1;34m15. KELUAR DARI INSTALLER\033[0m";;
        esac
        sleep 0.5
    done
}

handle_choice() {
    read -p "PILIH OPSI (1-15): " CHOICE
    case "$CHOICE" in
        1) fix_yarn;;
        2) install_theme_enigma;;
        3) install_billing_module;;
        4) installThemeice;;
        5) uninstall_theme;;
        6) deletefilesptero;;
        7) install_futuristic_theme;;
        8) curl -s https://raw.githubusercontent.com/neroxkira/neroxztkn/main/install2.sh -o /tmp/install2.sh; source /tmp/install2.sh;;
        9) install_register_pterodactyl;;
        10) install_theme_nooktheme;;
        11) installnightcoretheme;;
        12) installthememcube;;
        13) installminecraftpurpletheme;;
        14) install_stellartheme;;
        15) echo -e "${GREEN}TERIMAKASIH${RESET}"; exit 0;;
        *) echo -e "${RESET}Pilihan tidak Benar Silakan coba lagi${RESET}";;
    esac
}

check_license() {
    echo "Masukkan lisensi Anda:"
    read -r LICENSE_KEY
    # Add the logic to verify the license key here.
    # This function should return 0 if the license is valid, and 1 otherwise.
    if [ "$LICENSE_KEY" == "ahmadganteng" ]; then
        return 0
    else
        return 1
    fi
}

# Main program
if check_license; then
    echo -e "${GREEN}(𝗔𝗨𝗧𝗢𝗠𝗔𝗧𝗜𝗖) 𝗟𝗜𝗖𝗘𝗡𝗦𝗘 𝗕𝗘𝗡𝗔𝗥${RESET}"
    install_software
    display_message

    first_run=true

    while true; do
        if [ "$first_run" == true ]; then
            show_menu "first"
            first_run=false
        else
            show_menu
        fi
        handle_choice
    done
else
    echo -e "${RESET}Lisensi tidak Benar Instalasi dibatalkan.${RESET}"
    exit 1
fi
