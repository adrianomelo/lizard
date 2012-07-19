// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Item {
    Rectangle {
        anchors.centerIn: parent
        anchors.topMargin: 20
        color: "#ffffff"
        width: 500
        height: parent.height - 20

        TextEdit {
            anchors.fill: parent
            text: "Teste"
            font.pixelSize: 30
        }
    }
}
