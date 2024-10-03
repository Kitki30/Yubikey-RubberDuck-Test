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
    echo "Password is required for sudo exiting."
    sleep 0.5
    exit 1
fi
clear
curl parrot.live
