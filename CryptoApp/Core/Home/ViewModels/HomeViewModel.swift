//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Jai  on 07/09/23.
//

import Foundation
import Combine
class HomeViewModel : ObservableObject {
    
    
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataServivice = CoinDataService()
    
    private var cancellables = Set<AnyCancellable>()
    init() {
      addSubscriber()
        }
    func addSubscriber() {
        dataServivice.$allCoins
            .sink { [weak self](returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
