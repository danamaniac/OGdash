import QtQuick 2.8
import QtQuick.Controls 2.1
import Qt.labs.settings 1.0
import "qrc:/Translator.js" as Translator

Rectangle {
    id: helpBackground
    anchors.fill: parent
    color: "grey"

    Column {
        anchors.centerIn: parent
        Text {
            id: supportText
            text: Translator.translate("OG Dash support", Dashboard.language)
            font.bold: true
            font.pixelSize: helpBackground.width * 0.02
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: phoneText
            text: "Phone: +61448857469"
            font.family: "Eurostile"
            font.bold: true
            font.pixelSize: helpBackground.width * 0.018
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: emailText
            text: "Email: sales@oginnovations.com.au"
            font.family: "Eurostile"
            font.bold: true
            font.pixelSize: helpBackground.width * 0.018
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
