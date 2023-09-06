//
//  Double.swift
//  CryptoApp
//
//  Created by Jai  on 06/09/23.
//

import Foundation
extension Double {
    private var currencyFormatter2: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
        
        
        func asCurrencywith2decimals() -> String {
           let number = NSNumber(value:self)
            return currencyFormatter2.string(from: number) ?? "$0.00"
        }
    /// convert Double into a currency with 2-6 decimal Places
    ///
    /// ```
    /// Convert 1234.56 to $1,234.56
    /// Convert 12.3456 to $12.3456
    /// Convert 0.123456 to $0.123456
    ///
    ///  ```
    ///
    ///
    private var currencyFormatter6: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
        
        
        func asCurrencywith6decimals() -> String {
           let number = NSNumber(value:self)
            return currencyFormatter6.string(from: number) ?? "$0.00"
        }
    
    func asNumberString() -> String {
        return String (format: "%2f", self)
        
    }
    func asPercentString()  -> String{
        return asNumberString() + "%"
    }
    }
