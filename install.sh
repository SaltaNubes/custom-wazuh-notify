#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

function packagesVerification() {
    # Check is python3 is installed
    if ! command -v python3 &> /dev/null; then
        echo -e "\n${redColour}[*]${endColour} ${grayColour}Python 3 is not installed. Installing...${endColour}"
        apt-get update
        apt-get install python3 -y
        echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Python 3 installed successfully${endColour}\n"
    else
        echo -e "\n${yellowColour}[+]${endColour} ${greenColour}Python 3 is already installed${endColour}"
    fi

    # Check if pip is installed
    if ! command -v pip3 &> /dev/null; then
        echo -e "\n${redColour}[*]${endColour} ${grayColour}pip is not installed. Installing...${endColour}"
        apt-get install python3-pip -y
        echo -e "\n${yellowColour}[+]${endColour} ${grayColour}pip installed successfully${endColour}\n"
    else
        echo -e "\n${yellowColour}[+]${endColour} ${greenColour}pip is already installed${endColour}"
    fi
}

function customWazuhNotify() {
    packagesVerification
    echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Modifying permissions in files...${endColour}"
    chmod 755 -R custom-wazuh-notify config.yaml templates/ utils/
    echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Installing requirements...${endColour}"
    pip install -r requirements.txt
    echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Copying files to integration...${endColour}\n"
    integrations_path=/var/ossec/integrations

    # Verifying custom_wazuh_notify file
    custom_wazuh_notify_file=$integrations_path/custom-wazuh-notify
    if [ -f "$custom_wazuh_notify_file" ]; then
        read -p "File custom_wazuh_notify already exists in integrations path, do you want to overwrite? (y/n): " custom_wazuh_notify_file_confirm
        case $custom_wazuh_notify_file_confirm in
        [yY]* )
            echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Overwriting custom-wazuh-notify content...${endColour}"
            cp ./custom-wazuh-notify $integrations_path ;;
        [nN]* )
            echo -e "\n${redColour}[!] custom-wazuh-notify file without changes${endColour}" ;;
        * ) echo -e "\n${redColour}Invalid response${endColour}" ;;
        esac
    else
        cp ./custom-wazuh-notify* $integrations_path
        chmod --reference=/var/ossec/integrations/slack /var/ossec/integrations/custom-wazuh*
        chown --reference=/var/ossec/integrations/slack /var/ossec/integrations/custom-wazuh*
    fi

    # Verifying config.yaml file
    config_file=$integrations_path/config.yaml
    if [ -f "$config_file" ]; then
        read -p "File config.yaml already exists in integrations path, do you want to overwrite? (y/n): " config_file_confirm
        case $config_file_confirm in
        [yY]* )
            echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Overwriting config.yaml content...${endColour}"
            cp ./config.yaml $integrations_path ;;
        [nN]* )
            echo -e "\n${redColour}[!] config.yaml file without changes${endColour}" ;;
        * ) echo -e "\n${redColour}Invalid response${endColour}" ;;
        esac
    else
        cp ./config.yaml $integrations_path
    fi

    # Verifying templates/ directory
    templates_directory=$integrations_path/templates/
    if [ -d "$templates_directory" ]; then
        read -p "Directory templates/ already exists in integrations path, do you want to overwrite? (y/n): " templates_directory_confirm
        case $templates_directory_confirm in
        [yY]* )
            echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Overwriting templates/ directory...${endColour}"
            cp -r ./templates/ $integrations_path ;;
        [nN]* )
            echo -e "\n${redColour}[!] templates/ directory without changes${endColour}" ;;
        * ) echo -e "\n${redColour}Invalid response${endColour}" ;;
        esac
    else
        cp -r ./templates/ $integrations_path
    fi

    # Verifying utils/ directory
    utils_directory=$integrations_path/utils/
    if [ -d "$utils_directory" ]; then
        read -p "Directory utils/ already exists in integrations path, do you want to overwrite? (y/n): " utils_directory_confirm
        case $utils_directory_confirm in
        [yY]* )
            echo -e "\n${yellowColour}[+]${endColour} ${grayColour}Overwriting utils/ directory...${endColour}"
            cp -r ./utils $integrations_path ;;
        [nN]* )
            echo -e "\n${redColour}[!] utils/ directory without changes${endColour}\n" ;;
        * ) echo -e "${redColour}Invalid response${endColour}\n" ;;
        esac
    else
        cp -r ./utils $integrations_path
    fi
}

customWazuhNotify
