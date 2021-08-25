//
//  Double+.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/24/21.
//

import Foundation

extension Double {
    
    /**
     Converts a Double into a Currency with 2 decimal places
     ```
     Convert 1234.56 to $1,234.56
     convert 12.3456 to $12.34
     ```
     */
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /**
     Converts a Double into a Currency as a String with 2 decimal places
     ```
     Convert 1234.56 to "$1,234.56"
     convert 12.3456 to "$12.34"
     ```
     */
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /**
     Converts a Double into a Currency with 2-6 decimal places
     ```
     Convert 1234.56 to $1,234.56
     convert 12.3456 to $12.3456
     ```
     */
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /**
     Converts a Double into a Currency as a String with 2-6 decimal places
     ```
     Convert 1234.56 to "$1,234.56"
     convert 12.3456 to "$12.3456"
     ```
     */
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /**
     Converts a Double into a String representation
     ```
     Convert 1.2346 to "1.23"
     ```
     */
    func asNumberString() -> String { String(format: "%.2f", self) }
    
    /**
     Converts a Double into a String representation with percent symbol
     ```
     Convert 1.2346 to "1.23%"
     ```
     */
    func asPercentString() -> String { asNumberString() + "%" }
}
