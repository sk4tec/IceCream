//
//  ContentView.swift
//  IceCream
//
//  Created by Sunjay Kalsi on 20/06/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var ViewModel = IceCreamViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach($ViewModel.iceCreams) { $iceCream in
                    NavigationLink(destination: IceCreamDetailView(iceCream: $iceCream), label: {
                        HStack {
                            Text(iceCream.name)
                            if iceCream.isLiked {
                                Spacer()
                                Image(systemName: "heart.fill").foregroundColor(.red)
                            }
                        }
                    })
                }
            }
            .navigationTitle("IceCreams")
        }
    }
}

#Preview {
    ContentView()
}
