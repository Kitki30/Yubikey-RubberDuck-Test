echo "Running script"
echo "Made by Kitki30"
echo "Yubikey Rubber Duck Test"
sleep 0.5
echo "Clearing history"
echo > $HISTFILE
COMMAND="clear"
if sudo -n $COMMAND; then
    echo "No sudo password, can execute as superuser"
else
    echo "Password is required for sudo! Can't execute"
    zenity \
    --info \
    --text="<span size=\"xx-large\">Cannot execute.</span>\n\nGet your <b>coffee</b>." \
    --title="Sudo is protected by password" \
    --ok-label="Exit"
    clear
    exit 1
fi
clear
curl parrot.live
