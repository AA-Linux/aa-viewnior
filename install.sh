#!/usr/bin/env bash

install_viewnior() {
    if [[ `whereis viewnior` ]]; then
        echo -e "\e[0;32m+---Backup your Viewnior Conf---+\e[0m\n"
        if [[ `ls ~/.config/viewnior` ]]; then
            mv ~/.config/viewnior ~/.config/VIEWNIOR.BAK
            mkdir -p ~/.config/viewnior
        fi
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*   "$HOME"/.config/viewnior
        echo -e "\n\e[0;32m+-----------Finished!-----------+\e[0m"
    else
        echo -e "\e[0;32m+---Install Viewnior---+\e[0m"
        sudo pacman -S viewnior
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*   "$HOME"/.config/viewnior
        echo -e "\n\e[0;32m+------Finished!-------+\e[0m"
    fi
}
install_viewnior
