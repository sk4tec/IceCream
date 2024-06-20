//
//  ContentView.swift
//  IceCream
//
//  Created by Sunjay Kalsi on 20/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var iceCreams = [
        IceCream(name: "Vanilla"),
        IceCream(name: "Chocolate"),
        IceCream(name: "Mint")
    ]

    var body: some View {
        NavigationView {
            List($iceCreams) { $iceCream in
                NavigationLink(destination: {
                    IceCreamDetailView(iceCream: $iceCream)
                }, label: {
                    HStack {
                        Text(iceCream.name)
                        Text(iceCream.isLiked.description)
                    }
                })
            }
            .navigationTitle("IceCreams")
        }
    }
}

#Preview {
    ContentView()
}
