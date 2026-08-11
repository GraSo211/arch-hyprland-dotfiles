import QtQuick
import Quickshell

import "../common"

LazyLoader {
    property bool extraCondition: true
    active: Config.ready && extraCondition
}