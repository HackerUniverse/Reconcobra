#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {
clear
echo "                                                                                               ";
echo " .########..########..######...#######..##....##.... ######...#...#####...#####...#######..	 "; 
echo " .##.....##.##.......##....##.##.....##.###...##....##......##.##.##. ##..##..##..##...##...	 "; 
echo " .##.....##.##.......##.......##.....##.####..##....##......##.##.##.##   ##..##. ##...##......	 "; 
echo " .########..######...##.......##.....##.##.##.##....##......##.##.##. ##..##.##...#######.	 "; 
echo " .##...##...##.......##.......##.....##.##..####....##......##.##.##.  ##.##..##..##...##...	 "; 
echo " .##....##..##.......##....##.##.....##.##...###....##......##.##.##.##...##...##.##...##...	 "; 
echo " .##.....##.########..######...#######..##....##.....######.. #.....#.....##....#.##...##......	 ";  
echo "                                                                                               ";   
}


echo "y" | apt-get install xdg-utils
echo "y" | apt-get install hping3
echo "y" | apt-get install python3
echo "y" | git clone https://github.com/haroonawanofficial/cobra.git
echo "y" | git clone https://github.com/exiftool/exiftool.git
echo "y" | git clone https://github.com/sensepost/BiLE-suite.git
echo "y" | git clone https://github.com/haroonawanofficial/ShaheenX.git
echo "y" | git clone https://github.com/haroonawanofficial/maahro.git
echo "y" | git clone https://github.com/haroonawanofficial/panthera.git
echo "y" | git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/setup
chmod u+x setup.sh
./setup.sh

function linux() {
echo -e "$red [$green+$red]$off Installing Perl ...";
sudo apt-get install -y perl
echo -e "$red [$green+$red]$off Installing JSON Module ...";
cpan install JSON
echo -e "$red [$green+$red]$off Installing Extra Perl Modules ...";
echo "y" | cpan install WWW::Mechanize
echo "y" | cpan install use HTML::TokeParser
echo "y" | cpan install Term::ANSIColor
echo "y" | cpan install Mojo::DOM
echo "y" | cpan install Data::Dumper
echo "y" | cpan install Win32::Console::ANSI
echo "y" | cpan install HTML::TableExtract
echo -e "$red [$green+$red]$off Checking directories..."
if [ -d "/usr/share/ReconCobra" ]; then
    echo -e "$red [$green+$red]$off A Directory ReconCobra Was Found! Do You Want To Replace It? [Y/n]:" ;
    read replace
    if [ "$replace" = "y" ]; then
      sudo rm -r "/usr/share/ReconCobra"
      sudo rm "/usr/share/icons/ReconCobra.png"
      sudo rm "/usr/share/applications/ReconCobra.desktop"
      sudo rm "/usr/local/bin/ReconCobra"

else
echo -e "$red [$green✘$red]$off If You Want To Install You Must Remove Previous Installations";
echo -e "$red [$green✘$red]$off Installation Failed";
        exit
    fi
fi 

echo -e "$red [$green+$red]$off Installing ...";
echo -e "$red [$green+$red]$off Creating Symbolic Link ...";
echo -e "#!/bin/bash
perl /usr/share/ReconCobra/ReconCobra.pl" '${1+"$@"}' > "reconcobra";
    chmod +x "reconcobra";
    sudo mkdir "/usr/share/ReconCobra"
    sudo cp "install.sh" "/usr/share/ReconCobra"
    sudo cp "reconcobra.pl" "/usr/share/ReconCobra"
    sudo cp "config/ReconCobra.jpeg" "/usr/share/icons"
    sudo cp "config/ReconCobra.desktop" "/usr/share/applications"
    sudo cp "reconcobra" "/usr/local/bin/"
    rm "reconcobra";

if [ -d "/usr/share/ReconCobra" ] ;
then
echo -e "$red [$green+$red]$off ReconCobra Successfully Installed And Will Start In 5s!";
echo -e "$red [$green+$red]$off You can execute ReconCobra by typing reconcobra"
sleep 5;
reconcobra
else
echo -e "$red [$green✘$red]$off ReconCobra Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi 
}

if [ -d "/usr/bin/" ];then
banner
echo -e "$red [$green+$red]$off ReconCobra Will Be Installed In Your System";
linux
else
echo -e "$red [$green✘$red]$off ReconCobra Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi
