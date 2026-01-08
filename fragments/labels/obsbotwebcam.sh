obsbotcenter|\
obsbotwebcam)
    name="OBSBOT_Center"
    type="dmg"
    if [[ $(/usr/bin/arch) == "arm64" ]]; then 
        downloadURL=$(curl -fsL "https://www.obsbot.com/download/obsbot-tiny-series" | \
  grep -o 'url:"https:[^"]*MacOS_Apple[^"]*\.dmg"' | \
  sed 's/url:"//g' | sed 's/"//g' | sed 's/\\u002F/\//g')
    else
        downloadURL=$(curl -fsL "https://www.obsbot.com/download/obsbot-tiny-series" | \
  grep -o 'url:"https:[^"]*MacOS_Intel[^"]*\.dmg"' | \
  sed 's/url:"//g' | sed 's/"//g' | sed 's/\\u002F/\//g')
    fi
    appNewVersion=$(echo "$downloadURL" | sed -n 's/.*_\([0-9.]*\)_release.*/\1/p')
    expectedTeamID="7GJANK3822"
    ;;
