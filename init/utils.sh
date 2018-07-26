download_app()
{
    URL=$1
    NAME=$2

    sudo rm -rf "$APPLICATIONS/$NAME"
    curl -s -o $NAME $URL
    sudo mv $NAME $APPLICATIONS
}

download_zipped_app()
{
    URL=$1
    NAME=$2

    sudo rm -rf "$APPLICATIONS/$NAME"
    curl -s -o "$NAME.zip" $URL
    unzip -q "$NAME.zip" -d $NAME
    sudo mv $NAME $APPLICATIONS
}

download_mountable_app()
{
    URL=$1
    NAME=$2

    sudo rm -rf "$APPLICATIONS/$NAME"
    curl -s -o "$NAME.dmg" $URL
    sudo hdiutil attach "$NAME.dmg" # -quiet
    sudo cp -R "$VOLUMES/$NAME" "$APPLICATIONS/$NAME"
    sudo hdiutil unmount "$VOLUMES/$NAME" # -quiet
}