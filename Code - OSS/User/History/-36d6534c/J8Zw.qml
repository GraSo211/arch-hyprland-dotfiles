import QtQuick
import QtQuick.Layouts
import Quickshell
import "../../../common"
import "../../../services"
import "../"

StyledOverlayWidget {
    id: root
    title: Translation.tr("Notes")
    showCenterButton: true

    contentItem: NotesContent {
        radius: root.contentRadius
        isClickthrough: root.clickthrough
    }
}
