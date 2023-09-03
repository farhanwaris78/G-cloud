wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
clear
echo Downloading Windows files from aank.me
rm -rf ggos-0.9.4 ggos-0.9.4.iso
curl -L -o windows2022.gz https://download2391.mediafire.com/q5b2ansfeusgPjaxam5vAR_8ZUQAnJeZqN9Blpk8crsvLtYVXXAzZdgpksLqpHHYoUYT1BoeADF2cd2AnfopNhhRzJ2mbiEjcmbeLxDbq42AfA9OTxgcCgKJ_s4V0c7Z96177l_FdumUR-dG7CwWwRhZF1HVc8J1BeBE77_OftraOfw/z446hmq6cqzpd58/ggos-0.9.4.iso
echo "Wait.."
mv ggos-0.9.4 ggos-0.9.4.iso
echo "Windows 7 x86 Lite On Gitpod, GCloud and GColab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Don't Close this Tab"
echo "Support YT Channel-> Aank is ME"
echo "LinK: https://aank.me/Youtube"
b='\033[1m'
r='\E[31m'
g='\E[32m'
c='\E[36m'
endc='\E[0m'
enda='\033[0m'
# Branding

printf """$c$b
 
██╗     ██╗███╗   ██╗ ██████╗  ██████╗  █████╗ ██╗  ██╗ ██████╗ ███████╗████████╗██╗███╗   ██╗ ██████╗ 
██║     ██║████╗  ██║██╔════╝ ██╔════╝ ██╔══██╗██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝ 
██║     ██║██╔██╗ ██║██║  ███╗██║  ███╗███████║███████║██║   ██║███████╗   ██║   ██║██╔██╗ ██║██║  ███╗
██║     ██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██╔══██║██║   ██║╚════██║   ██║   ██║██║╚██╗██║██║   ██║
███████╗██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║██║  ██║╚██████╔╝███████║   ██║   ██║██║ ╚████║╚██████╔╝
╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝
    $r  Support YT Channel-> Aank is ME © 2022 $c https://aank.me/Youtube 
          
$endc$enda""";
sudo qemu-system-x86_64 -vnc :0 -hda ggos-0.9.4.iso  -smp cores=4  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1
sleep 43200
