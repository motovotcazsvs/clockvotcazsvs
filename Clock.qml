import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: clock
    width: 600
    height: 600
    anchors.centerIn: parent

    property int hours
    property int minutes
    property int seconds


    function timeChanged() {
        var date = new Date();
        hours = 0;//date.getHours();
        minutes = 0;//date.getMinutes();
        seconds = 0;//date.getSeconds();
    }

    Timer {
        interval: 100
        repeat: true
        running: true
        onTriggered: timeChanged()
    }

    Image {
        id: clockFace
        source: "images/МЕНЮ Часы 1 страница.png"
    }

    Image {
        id: hourHand
        x: 294; y: 140
        width: 10
        height: 174
        //source: "images/hour.png"
        transform: Rotation {
            id: hourRotation
            angle: hours * 30
            origin.x: 5
            origin.y: 164
/*
            Behavior on angle {
                SpringAnimation {
                    spring: 2
                    damping: 0.2
                    modulus: 360
                }
            }
*/
        }
    }

    Image {
        id: minuteHand
        //source: "images/minute.png"
        x: 295; y: 93
        width: 10
        height: 221
        transform: Rotation {
            id: minuteRotation
            angle: minutes * 6
            origin.x: 5
            origin.y: 211
/*
            Behavior on angle {
                SpringAnimation {
                    spring: 2
                    damping: 0.2
                    modulus: 360
                }
            }
*/
        }
    }

    Image {
        id: secondHand
        //source: "images/second.png"
        source: "images/МЕНЮ Часы 1 страница маленькая стрелка.png"
        x: 305; y: 213
        width: 63
        height: 99
        transform: Rotation {
            id: secondRotation
            angle: seconds * 6
            origin.x: 32
            origin.y: 90
/*
            Behavior on angle {
                SpringAnimation {
                    spring: 2
                    damping: 0.2
                    modulus: 360
                }
            }
*/
        }
    }

    Rectangle {
        x: 305
        y: 285
        color: "black"
        width: 30
        height: 30
        radius: 15
    }

}
