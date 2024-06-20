//
//  IceCreamDetailView.swift
//  IceCream
//
//  Created by Sunjay Kalsi on 20/06/2024.
//

import SwiftUI

struct IceCreamDetailView: View {
    @Binding var iceCream: IceCream

    var body: some View {
        VStack {
            Text(iceCream.name)
                .font(.largeTitle)
                .padding()
            Button("Like") {
                iceCream.isLiked.toggle()
            }
        }
    }
}

#Preview {
    IceCreamDetailView(iceCream: .constant(IceCream(name: "Chocolate")))
}
