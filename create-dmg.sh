NAME=$1
SRC=$2
DST=$3
TMP_DMG=tmp.dmg

genisoimage -quiet -V "$NAME" -D -R -apple -no-pad -o "$TMP_DMG" "$SRC"
dmg dmg "$TMP_DMG" "$DST"
