//
//  CryptoApp.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/24/21.
//

import SwiftUI

@main
struct CryptoApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
