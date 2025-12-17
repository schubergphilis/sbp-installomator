flexoptixapp)
    name="FLEXOPTIX App"
    type="dmg"
    if [[ $(/usr/bin/arch) == "arm64" ]]; then 
        downloadURL="https://flexbox.reconfigure.me/download/electron/mac/arm64/current"
    else
        downloadURL="https://flexbox.reconfigure.me/download/electron/mac/x64/current"
    fi
    appNewVersion=$(curl -fsIL "${downloadURL}" | grep -i ^location | sed -E 's/.*App-(.*)\.dmg/\1/g')
    expectedTeamID="C5JETSFPHL"
    ;;
