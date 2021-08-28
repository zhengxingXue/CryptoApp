//
//  String+.swift
//  Crypto
//
//  Created by Jim's MacBook Pro on 8/28/21.
//

import Foundation

extension String {
    var removingHTMLOccurances: String { self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil) }
}
