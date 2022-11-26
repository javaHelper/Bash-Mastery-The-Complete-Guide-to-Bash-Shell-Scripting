
echo "Hello, ${USER^}"

echo "I will now backup your home directory, $HOME"

currentdir=$(pwd)

echo "You're running your script from $currentdir"

echo "Therefore, I will save the backup in $currentdir"

tar -cf $currentdir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2>/dev/null
