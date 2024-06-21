import SwiftUI
import Combine

class IceCreamViewModel: ObservableObject {
    @Published var iceCreams = [
        IceCream(name: "Vanilla"),
        IceCream(name: "Chocolate"),
        IceCream(name: "Strawberry"),
    ]
}
