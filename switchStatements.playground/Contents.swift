import UIKit

enum TrafficLight {
    case red, yellow, green
}

var light: TrafficLight = .yellow

switch light {
case .red:
    print("Stop")
case .yellow:
    print("Caution")
case .green:
    print("Go")
}


