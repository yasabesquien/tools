APP=timew
VER=1.4.3
FILE="$APP"-"$VER".tar.gz

wget -c https://github.com/GothenburgBitFactory/timewarrior/releases/download/v"$VER"/"$FILE"
tar xvzf  "$FILE"
rm "$FILE"
cd "$APP"-"$VER"/ext
cp on-modify.timewarrior ~/.task/hooks
chmox +x ~/.task/hooks/on-modify.timewarrior
