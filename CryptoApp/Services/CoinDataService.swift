//
//  CoinDataService.swift
//  CryptoApp
//
//  Created by Jai  on 07/09/23.
//

import Foundation
import Combine
class CoinDataService{
    @Published var allCoins:[CoinModel] = []
    var coinSubscription : AnyCancellable?
    
    init() {
        getCoins()
        
    }
    private func getCoins() {
        guard let url =  URL(string:
                                "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h&locale=en&precision=2"
        ) else
        {return}
        
        
        coinSubscription =  NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
        
            .sink(receiveCompletion: NetworkingManager.handleCompletition, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
        
        
        
    }
}
