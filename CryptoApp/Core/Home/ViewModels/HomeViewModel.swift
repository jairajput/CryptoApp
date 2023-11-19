//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Jai  on 07/09/23.
//

import Foundation
import Combine
class HomeViewModel : ObservableObject {
    @Published var  statistic:[StatisticModel] = []
    
    
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText:String = ""
    
    
    private let coinDataService = CoinDataService()
    private let marketDataService = MarketDataService()
    private let portfolioDataService = PortfolioDataService()
    
    private var cancellables = Set<AnyCancellable>()
    init() {
      addSubscriber()
        }
    func addSubscriber() {
        
        //add Subscriber update the coin
        $searchText
            .combineLatest(coinDataService.$allCoins)
        //publish after specific time
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
       
            .map(filterCoins)
        
            .sink{[weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        // Updates MarketData
        
        marketDataService.$marketData
            .map(mapGlobalMarketData)
            .sink {[weak self] (returnedStats) in
                self?.statistic = returnedStats
            }
            .store(in: &cancellables)
        
        
        //update portfoliocoin
        $allCoins.combineLatest(portfolioDataService.$savedEntities)
        
            .map{(CoinModels,portfolioEntities) -> [CoinModel] in
                CoinModels.compactMap{(coin) -> CoinModel? in
                    guard let entity = portfolioEntities.first(where:{$0.coinId == coin.id}) else {
                        return nil
                    }
                    
                    return coin.updateHoldings(amount: entity.amount)
                }
                
                
                
            }
            .sink { [weak self] (returnedCoins) in
                self?.portfolioCoins = returnedCoins
            }
            .store(in: &cancellables)
        
        
    }
    
      func updatePortfolio(coin: CoinModel, amount: Double) {
          portfolioDataService.updatePortfolio(coin: coin, amount: amount)
      }
    
     
    private func filterCoins(text: String, coins:[CoinModel]) -> [CoinModel]{
        guard !text.isEmpty else{
            return coins
        }
        let lowercasedText = text.lowercased()
        return coins.filter{(coin)->Bool in
            return coin.name.lowercased().contains(lowercasedText) ||
            coin.symbol.lowercased().contains(lowercasedText) ||
            coin.id.lowercased().contains(lowercasedText)
        }
    }
    private func mapGlobalMarketData(marketDataModel:MarketDataModel?) -> [StatisticModel] {
        var stats:[StatisticModel ] = []
        
        guard let data = marketDataModel else
        {
            return stats
        }
        
        let marketCap = StatisticModel(title: "Market Cap", value: data.marketCap, PercentageChange: data.marketCapChangePercentage24HUsd)
        let volume = StatisticModel(title: "24h Volume", value: data.volume )
        
        let btcDominance = StatisticModel(title: "BTC Dominance ", value: data.btcDominance)
        
        let portfolio = StatisticModel(title: "Portfolio Value", value: "$ 0.00", PercentageChange: 0)
        
        
        stats.append(contentsOf: [
        marketCap,
        volume,
        btcDominance,
        portfolio
        ])
        return stats
    }
}
