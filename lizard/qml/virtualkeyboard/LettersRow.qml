import QtQuick 1.1
import com.adrianomelo 1.0

ScanGroup {
    property string letters: ""

    height: row.height
    width: row.width

    Row {
        id: row
        height: 66

        Repeater {
            model: letters.split("")
            Button {
                value: model.modelData
            }
        }
    }

    Rectangle {
        anchors.centerIn: parent
        width: parent.width - border.width * 2
        height: parent.height - border.width * 2
        border.width: 2
        border.color: "black"
        visible: parent.selected
        color: "transparent"
    }
}
