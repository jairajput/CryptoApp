//
//  MarketDataModel.swift
//  CryptoApp
//
//  Created by Jai  on 23/09/23.
//

import Foundation
//Json Data:
/*

URL : https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10100,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 868,
     "total_market_cap": {
       "btc": 41168508.42478808,
       "eth": 687034695.5909908,
       "ltc": 16878824022.82162,
       "bch": 5257289136.427065,
       "bnb": 5191464605.04947,
       "eos": 1903136718703.209,
       "xrp": 2143352652432.7566,
       "xlm": 9624601009251.986,
       "link": 155857909047.12335,
       "dot": 272659603964.36212,
       "yfi": 211681294.30424976,
       "usd": 1094517718518.8597,
       "aed": 4020032237993.5493,
       "ars": 383108564424563.8,
       "aud": 1699034083187.1658,
       "bdt": 119690920532084.5,
       "bhd": 412557658159.0314,
       "bmd": 1094517718518.8597,
       "brl": 5401992199749.838,
       "cad": 1476778031711.57,
       "chf": 992300708786.3844,
       "clp": 978717743899564.8,
       "cny": 7987352502663.218,
       "czk": 25089520209835.945,
       "dkk": 7663156354437.935,
       "eur": 1026383990541.0593,
       "gbp": 894286647093.0211,
       "hkd": 8559621091790.794,
       "huf": 400276074839531.8,
       "idr": 16808563329180032,
       "ils": 4167244871134.3394,
       "inr": 90953710972400.03,
       "jpy": 162295087301976.5,
       "krw": 1461898063328306.8,
       "kwd": 338195029845.14246,
       "lkr": 353648017656688.7,
       "mmk": 2290347035445011.5,
       "mxn": 18840809103039.938,
       "myr": 5134929876431.235,
       "ngn": 837489298823363.6,
       "nok": 11799667168036.268,
       "nzd": 1836747397048.9258,
       "php": 62215125603943.836,
       "pkr": 320638965640099.94,
       "pln": 4732092630130.364,
       "rub": 105402068333060.88,
       "sar": 4105572081248.9507,
       "sek": 12189534379372.703,
       "sgd": 1495001751724.909,
       "thb": 39281019435868.01,
       "try": 29741001609997.426,
       "twd": 35193122721255.42,
       "uah": 40281141568270.914,
       "vef": 109594059155.29327,
       "vnd": 26676071963597300,
       "zar": 20526629073811.42,
       "xdr": 827028533290.0355,
       "xag": 46468450231.05819,
       "xau": 568459667.4671398,
       "bits": 41168508424788.08,
       "sats": 4116850842478808
     },
     "total_volume": {
       "btc": 920819.06177388,
       "eth": 15366955.666027533,
       "ltc": 377529900.7719889,
       "bch": 117590173.54060724,
       "bnb": 116117871.3964682,
       "eos": 42567599235.35487,
       "xrp": 47940526727.35004,
       "xlm": 215274160041.0065,
       "link": 3486085337.3156824,
       "dot": 6098597455.013189,
       "yfi": 4734691.10916236,
       "usd": 24481158468.558537,
       "aed": 89916357315.99927,
       "ars": 8569017492957.2,
       "aud": 38002420545.80349,
       "bdt": 2677135639940.8687,
       "bhd": 9227707542.712215,
       "bmd": 24481158468.558537,
       "brl": 120826757621.57079,
       "cad": 33031203063.70257,
       "chf": 22194863079.179874,
       "clp": 21891051902585.05,
       "cny": 178653702040.15247,
       "czk": 561179147458.9199,
       "dkk": 171402382901.7655,
       "eur": 22957206353.890736,
       "gbp": 20002575338.320473,
       "hkd": 191453675745.43808,
       "huf": 8953004463536.533,
       "idr": 375958374659576.4,
       "ils": 93209073130.02048,
       "inr": 2034368355984.206,
       "jpy": 3630066177717.859,
       "krw": 32698381714322.53,
       "kwd": 7564433155.199903,
       "lkr": 7910071272359.946,
       "mmk": 51228360924662.75,
       "mxn": 421413765646.07263,
       "myr": 114853354955.2425,
       "ngn": 18732184863998.12,
       "nok": 263924025101.98892,
       "nzd": 41082664385.47596,
       "php": 1391570299211.3582,
       "pkr": 7171755373364.223,
       "pln": 105843064580.88942,
       "rub": 2357535829814.9253,
       "sar": 91829633293.79245,
       "sek": 272644213748.48987,
       "sgd": 33438814352.20407,
       "thb": 878601456463.7148,
       "try": 665219174718.6007,
       "twd": 787167169398.0312,
       "uah": 900971261901.3107,
       "vef": 2451298397.456763,
       "vnd": 596665667453280.2,
       "zar": 459120625165.68524,
       "xdr": 18498208150.427513,
       "xag": 1039363250.7240758,
       "xau": 12714779.273815239,
       "bits": 920819061773.88,
       "sats": 92081906177388
     },
     "market_cap_percentage": {
       "btc": 47.35096739201414,
       "eth": 17.499447731818687,
       "usdt": 7.604508119563569,
       "bnb": 2.9641053646898445,
       "xrp": 2.4856382870775358,
       "usdc": 2.3542576162259365,
       "steth": 1.2687014223884931,
       "doge": 0.7948318872756793,
       "ada": 0.7863879510784538,
       "ton": 0.7375402667159042
     },
     "market_cap_change_percentage_24h_usd": 0.07715364707464736,
     "updated_at": 1695474384
   }
 }
*/

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}

