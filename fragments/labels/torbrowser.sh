torbrowser)
    name="Tor Browser"
    type="dmg"
    downloadURL="$(curl -fsL https://download.torproject.org/tor-browser-for-desktop/ | grep -oE 'https://dist\.torproject\.org/torbrowser/[0-9.]+/tor-browser-macos-[0-9.]+\.dmg' | head -1)"
    appNewVersion="$(echo "$downloadURL" | cut -d / -f 5)"
    expectedTeamID="MADPSAYN6T"
    ;;
