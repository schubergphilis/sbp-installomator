realvncviewer)
    name="RealVNC Connect Viewer"
    appName="RealVNC Connect Viewer.app"
    type="pkg"
    appNewVersion="$(curl -fsL https://realvnc.zendesk.com/api/v2/help_center/en-us/articles/27252822630301.json | sed -n 's/.*RealVNC-Connect-Viewer-\([0-9.]*\)-MacOSX.*/\1/p')"
    downloadURL="https://downloads.realvnc.com/download/file/realvnc-connect-viewer/RealVNC-Connect-Viewer-${appNewVersion}-MacOSX-universal.pkg"
    expectedTeamID="ZNCQ8JEH7X"
    ;;
