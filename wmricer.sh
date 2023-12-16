#!/bin/bash
echo 'hello and welcome. installing packaman packages...\n' 
sudo pacman -Syu && sudo pacman -S alacritty waybar sway git wget starship unzip neofetch paru dmenu  && 
	echo 'package installation finished. starting the git process...\n' &&
		mkdir ~/.wmricer && cd ~/.wmricer && git clone  https://github.com/THT85/dot.git &&  paru -S nwg-drawer nwg-bar nwg-launchers &&
		echo 'starting backing up configs...\n' &&
		mkdir ~/.backupfiles && cp ~/.config/alacritty/alacritty.yml ~/.backupfiles/  && cp ~/.config/sway/config ~/.backupfiles/ &&
		echo 'done. beggining configing process please wait...\n' &&
	cp -a ~/.wmricer/dot/. ~/.config/ &&
	echo 'done. begging setting up fonts...\n' &&
	mkdir ~/.wmricer/terminess && cd ~/.wmricer/terminess &&
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Terminus.zip && unzip Terminus.zip && mkdir ~/.local/share/fonts && 
	cp -r ~/.wmricer/terminess ~/.local/share/fonts/ &&
	echo 'setting up starship shell...\n' &&
	echo "eval "$(starship init bash)"" >> ~/.bashrc &&
	cp ~/.wmricer/dot/starship.toml ~/.config/ &&
	mkdir ~/.wallpapers && cp ~/.wmricer/dot/1.jpg ~/.wallpapers/ &&
	echo 'done. setting up custom neofetch on startup...\n' &&
	mkdir ~/.cstmfetch && cp ~/.wmricer/dot/ascii.txt ~/.cstmfetch/ &&
	echo "neofetch --source ~/cstmfetch/ascii.txt" >> ~/.bashrc &&
	echo "alias neofetch ="neofetch --source ~/.cstmfetch/ascii.txt"" &&
	echo 'done.. BTW you can change the ascii via editing the ~/cstmfetch/ascii.txt...;\n and also i aliased the neofetch with neofetch that reads a ascii file you can remove that via editng the .bashrc!\n)' &&
	rm -r ~/.wmricer
	echo 'done. 3nj0y XD'

	
