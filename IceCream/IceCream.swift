import SwiftUI

struct IceCream: Identifiable {
    var id = UUID()
    var name: String
    var isLiked: Bool = false
}
