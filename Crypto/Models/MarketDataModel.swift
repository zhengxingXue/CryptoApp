//
//  MarketDataModel.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/25/21.
//

import Foundation

// JSON data
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 9085,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 638,
     "total_market_cap": {
       "btc": 44292414.66116486,
       "eth": 673072264.5389959,
       "ltc": 12204121039.00772,
       "bch": 3351591403.21011,
       "bnb": 4327953787.842775,
       "eos": 417182124543.6764,
       "xrp": 1869057057957.3752,
       "xlm": 6073128763546.948,
       "link": 82330997096.9314,
       "dot": 83942966171.92671,
       "yfi": 57201384.6573805,
       "usd": 2167527064685.3118,
       "aed": 7961760414002.104,
       "ars": 211134259564160.78,
       "aud": 2979419844831.555,
       "bdt": 185010995790231.6,
       "bhd": 817190216292.3331,
       "bmd": 2167527064685.3118,
       "brl": 11299318588204.523,
       "cad": 2729458456204.981,
       "chf": 1980762095156.7053,
       "clp": 1699276192901344.5,
       "cny": 14036905270902.082,
       "czk": 47058313090557.04,
       "dkk": 13693568983855.924,
       "eur": 1841366262099.7253,
       "gbp": 1574814621320.048,
       "hkd": 16873006058689.607,
       "huf": 641812636311621.1,
       "idr": 31240892712369124,
       "ils": 7000852315685.8125,
       "inr": 160651149670101.8,
       "jpy": 238450374887827.97,
       "krw": 2523390669773007.5,
       "kwd": 652354118077.1438,
       "lkr": 432450934862891.3,
       "mmk": 3567994487700447,
       "mxn": 43820656238765.87,
       "myr": 9114451307001.73,
       "ngn": 892363884915941.9,
       "nok": 19102060546633.086,
       "nzd": 3108903576621.727,
       "php": 105834372863993.39,
       "pkr": 359673239818948.75,
       "pln": 8422864949053.791,
       "rub": 160104386632980.72,
       "sar": 8128159299230.917,
       "sek": 18822657637886.87,
       "sgd": 2932013860399.824,
       "thb": 71113669343694,
       "try": 18158457984401.207,
       "twd": 60466633345173.39,
       "uah": 57939446347117.45,
       "vef": 217034484986.94037,
       "vnd": 49300922113628310,
       "zar": 32420675526150.305,
       "xdr": 1528841372278.0757,
       "xag": 90887422684.87502,
       "xau": 1210498839.8148057,
       "bits": 44292414661164.86,
       "sats": 4429241466116485.5
     },
     "total_volume": {
       "btc": 2742352.006772462,
       "eth": 41673074.034949385,
       "ltc": 755614614.3362386,
       "bch": 207512809.60379356,
       "bnb": 267964003.455326,
       "eos": 25829710237.835613,
       "xrp": 115722125625.17451,
       "xlm": 376016005889.6759,
       "link": 5097499805.227591,
       "dot": 5197304402.955799,
       "yfi": 3541607.1398534463,
       "usd": 134201809520.78766,
       "aed": 492950086731.7582,
       "ars": 13072316441619.955,
       "aud": 184469915514.7987,
       "bdt": 11454902142085.422,
       "bhd": 50596095216.479774,
       "bmd": 134201809520.78766,
       "brl": 699594033031.8656,
       "cad": 168993628639.052,
       "chf": 122638310603.4292,
       "clp": 105210192610011.94,
       "cny": 869090918456.6211,
       "czk": 2913601805782.019,
       "dkk": 847833351828.528,
       "eur": 114007658031.33765,
       "gbp": 97504190505.5187,
       "hkd": 1044687276124.0973,
       "huf": 39737643220077.484,
       "idr": 1934270810894542,
       "ils": 433455740535.0027,
       "inr": 9946669335108.234,
       "jpy": 14763585798871.04,
       "krw": 156235001411885.6,
       "kwd": 40390316006.04287,
       "lkr": 26775074200045.61,
       "mmk": 220911343812499.94,
       "mxn": 2713143220882.7188,
       "myr": 564318609034.9116,
       "ngn": 55250451105258.05,
       "nok": 1182698538209.9426,
       "nzd": 192486863211.95154,
       "php": 6552704498713.015,
       "pkr": 22269064320502.477,
       "pln": 521499240276.5431,
       "rub": 9912816660252.99,
       "sar": 503252625446.8587,
       "sek": 1165399388155.4739,
       "sgd": 181534787738.76965,
       "thb": 4402982210961.35,
       "try": 1124275659260.399,
       "twd": 3743774065275.8066,
       "uah": 3587304015299.405,
       "vef": 13437627187.316475,
       "vnd": 3052452292978821.5,
       "zar": 2007316721614.899,
       "xdr": 94657770125.583,
       "xag": 5627268413.721859,
       "xau": 74947684.56307426,
       "bits": 2742352006772.462,
       "sats": 274235200677246.2
     },
     "market_cap_percentage": {
       "btc": 42.439503792692165,
       "eth": 17.41740147548968,
       "ada": 4.035481525056897,
       "bnb": 3.5725486873595114,
       "usdt": 3.0409089601679993,
       "xrp": 2.4883325029149956,
       "doge": 1.7621720485841381,
       "usdc": 1.2498635796879898,
       "dot": 1.2195527665235997,
       "sol": 0.9563735256879214
     },
     "market_cap_change_percentage_24h_usd": 0.958622312981722,
     "updated_at": 1629933233
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double?

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) { return "$" + item.value.formattedWithAbbreviations() }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) { return "$" + item.value.formattedWithAbbreviations() }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) { return item.value.asPercentString() }
        return ""
    }
}
