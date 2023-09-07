//
//  CoinModel.swift
//  CryptoApp
//
//  Created by Jai  on 05/09/23.
//

import Foundation
// Coin Geko Api:
/*
 URL:
 https://api.coingecko.com/api/v3/coins/markets?vs_currency=INR&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=1h%2C%2024h%2C%207d%2C%2014d%2C%2030d%2C%20200d%2C%201y%20&locale=en&precision=04
 
 
 JSON Response --
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
     "current_price": 2134455,
     "market_cap": 41586199368952,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 44837593167227,
     "total_volume": 954822476878,
     "high_24h": 2144552,
     "low_24h": 2119530,
     "price_change_24h": -5300.310313208029,
     "price_change_percentage_24h": -0.24771,
     "market_cap_change_24h": -89686048529.92188,
     "market_cap_change_percentage_24h": -0.2152,
     "circulating_supply": 19477187,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 5128383,
     "ath_change_percentage": -58.36653,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 3993.42,
     "atl_change_percentage": 53366.04811,
     "atl_date": "2013-07-05T00:00:00.000Z",
     "roi": null,
     "last_updated": "2023-09-05T17:21:08.514Z",
     "sparkline_in_7d": {
       "price": [
         25964.03690241354,
         25994.330726435695,
         26043.763444277454,
         27315.206401713513,
         27355.528203812377,
         27905.461386522864,
         27913.630010919984,
         27974.418744529936,
         27852.183304185986,
         27635.777456552485,
         27634.193059579487,
         27642.983915634417,
         27730.50373550554,
         27640.700425597443,
         27548.07048925664,
         27434.26174914764,
         27394.142887473416,
         27442.066734254047,
         27453.473637792642,
         27381.046886122396,
         27445.09227499544,
         27458.715020847212,
         27407.54949110439,
         27437.97733688828,
         27374.104152807402,
         27330.19844052409,
         27335.772418672223,
         27171.314570615636,
         27211.516887365517,
         27119.168598219276,
         27212.02563320193,
         27202.6283410135,
         27251.96914888735,
         27255.212940151545,
         27279.739551373113,
         27250.84045367146,
         27303.35348313254,
         27205.948751729404,
         27198.087958842334,
         27189.408711564934,
         27211.36227045807,
         27260.726227638806,
         27244.263975513088,
         27258.707639032906,
         27239.976559977287,
         27228.517683491238,
         27211.118044502797,
         27204.312061052016,
         27357.39988619997,
         27214.77347891216,
         27171.923393528916,
         27161.681085793458,
         26928.550745092398,
         26353.32531308495,
         26287.644991643454,
         26305.35594874886,
         26179.071813839782,
         26031.95523548173,
         25991.00615533169,
         26011.40473601613,
         25927.417005779287,
         26032.563776641902,
         25996.985457063634,
         26067.57675921716,
         26079.22308095293,
         26035.716741357035,
         26016.068844479363,
         25977.52605612233,
         25979.508582031194,
         25958.400103080727,
         26021.928212403087,
         25984.9464261762,
         26041.439909451998,
         26039.624775769025,
         25976.258873007613,
         25794.67177031348,
         25800.007126307337,
         25792.046710370556,
         25461.332422814383,
         25664.791512013526,
         25581.651931065957,
         25758.64187051506,
         25756.08881438104,
         25789.78984311876,
         25812.33049442542,
         25782.18425912031,
         25766.528864744967,
         25769.385851433537,
         25793.198848545635,
         25764.43533909715,
         25786.469765663853,
         25798.397606426508,
         25796.141797318327,
         25773.887394480746,
         25794.334274999826,
         25824.644083232386,
         25798.91734363616,
         25795.438233690857,
         25825.01020718762,
         25862.02881396863,
         25898.432073032756,
         25861.182951188555,
         25815.832717413177,
         25791.936056022405,
         25845.216318279246,
         25845.562761647394,
         25838.89610105248,
         25859.36428638706,
         25853.65684277757,
         25852.496874120287,
         25863.6019089,
         25861.17109121785,
         25850.426267510193,
         25875.5583470379,
         25892.652704479053,
         25909.303712117384,
         25948.82742837482,
         25894.506471703975,
         25900.041715206396,
         25931.476334520765,
         25940.481769471393,
         25980.231275607213,
         25927.60903375676,
         25927.613106412242,
         25870.26909258105,
         25836.905638144235,
         25867.780778036857,
         25928.325279740475,
         25991.657453735366,
         26054.793419062265,
         25965.711747159905,
         25948.197964470794,
         25959.596311463454,
         25905.234164922775,
         25889.495816344996,
         25988.868344717957,
         25998.296229842043,
         25973.57802350052,
         25942.345376705038,
         25965.23324335423,
         25982.970118930814,
         25972.9327001036,
         25934.70132711085,
         25895.451327360344,
         25881.1448617462,
         25847.950276584805,
         25884.759729055186,
         25856.571092465416,
         25804.658557387786,
         25830.620485430598,
         25898.639012149037,
         25920.605857381808,
         25871.536494165204,
         25818.718627977538,
         25659.620573078173,
         25749.106735136127,
         25829.364772941324,
         25749.5169316782,
         25778.9861796218,
         25684.842993789418,
         25652.30731623389,
         25680.781263703244,
         25715.96025384614,
         25700.18282360907,
         25705.04566328197,
         25670.652934087426,
         25735.47814830377,
         25741.401975130753
       ]
     },
     "price_change_percentage_1h_in_currency": -0.2628131363491378
   }

 */
//import Foundation


struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H: Double?
    let priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
    
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
