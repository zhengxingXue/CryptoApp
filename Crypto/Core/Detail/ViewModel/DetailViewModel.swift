//
//  DetailViewModel.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/26/21.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetail
            .sink { returnedCoinDetail in
                print("Recieved coin detail data")
            }
            .store(in: &cancellables)
        
    }
}
