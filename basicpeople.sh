#!/bin/bash
echo "Installing Spotify, Discord, and Steam..."
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
curl "https://dl.discordapp.net/apps/linux/0.0.16/discord-0.0.16.deb" > /tmp/discord.deb
sudo dpkg -i /tmp/discord.deb
sudo apt --fix-broken install
sudo apt install steam-installer discord 
