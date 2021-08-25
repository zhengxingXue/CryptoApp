//
//  ContentView.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack {
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                Text("Secondary")
                    .foregroundColor(Color.theme.secondaryText)
                Text("Red")
                    .foregroundColor(Color.theme.red)
                Text("Green")
                    .foregroundColor(Color.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
