//
//  DetailView.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/26/21.
//

import SwiftUI

struct DetailLoadingView: View {
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                Text(coin.name)
            }
        }
    }
}

struct DetailView: View {
    
    let coin: CoinModel
    
    var body: some View {
        ZStack {
            Text(coin.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}
