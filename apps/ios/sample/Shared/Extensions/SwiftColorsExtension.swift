//  SwiftColors.swift
//
// Copyright (c) 2014 Doan Truong Thi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit
typealias SWColor = UIColor

public extension SWColor {
    /**
     Create non-autoreleased color with in the given hex string
     Alpha will be set as 1 by default

     - parameter   hexString:
     - returns: color with the given hex string
     */
    convenience init?(hexString: String) {
        self.init(hexString: hexString, alpha: 1.0)
    }

    /**
     Create non-autoreleased color with in the given hex string and alpha

     - parameter   hexString:
     - parameter   alpha:
     - returns: color with the given hex string and alpha
     */
    convenience init?(hexString: String, alpha: Float) {
        var hex = hexString

        // Check for hash and remove the hash
        if hex.hasPrefix("#") {
            hex = String(hex[hex.index(hex.startIndex, offsetBy: 1)...])
        }

        if let _ = hex.range(of: "(^[0-9A-Fa-f]{6}$)|(^[0-9A-Fa-f]{3}$)", options: .regularExpression) {
            // Deal with 3 character Hex strings
            if hex.count == 3 {
                let redHex = String(hex[..<hex.index(hex.startIndex, offsetBy: 1)])
                let greenHex = String(hex[hex.index(hex.startIndex, offsetBy: 1) ..< hex.index(hex.startIndex, offsetBy: 2)])
                let blueHex = String(hex[hex.index(hex.startIndex, offsetBy: 2)...])
                hex = redHex + redHex + greenHex + greenHex + blueHex + blueHex
            }

            let redHex = String(hex[..<hex.index(hex.startIndex, offsetBy: 2)])
            let greenHex = String(hex[hex.index(hex.startIndex, offsetBy: 2) ..< hex.index(hex.startIndex, offsetBy: 4)])
            let blueHex = String(hex[hex.index(hex.startIndex, offsetBy: 4) ..< hex.index(hex.startIndex, offsetBy: 6)])

            var redInt: UInt64 = 0
            var greenInt: UInt64 = 0
            var blueInt: UInt64 = 0

            Scanner(string: redHex).scanHexInt64(&redInt)
            Scanner(string: greenHex).scanHexInt64(&greenInt)
            Scanner(string: blueHex).scanHexInt64(&blueInt)

            self.init(red: CGFloat(redInt) / 255.0, green: CGFloat(greenInt) / 255.0, blue: CGFloat(blueInt) / 255.0, alpha: CGFloat(alpha))
        } else {
            // Note:
            // The swift 1.1 compiler is currently unable to destroy partially initialized classes in all cases,
            // so it disallows formation of a situation where it would have to.  We consider this a bug to be fixed
            // in future releases, not a feature. -- Apple Forum
            self.init()
            return nil
        }
    }

    /**
     Create non-autoreleased color with in the given hex value
     Alpha will be set as 1 by default

     - parameter   hex:
     - returns: color with the given hex value
     */
    convenience init?(hex: Int) {
        self.init(hex: hex, alpha: 1.0)
    }

    /**
     Create non-autoreleased color with in the given hex value and alpha

     - parameter   hex:
     - parameter   alpha:
     - returns: color with the given hex value and alpha
     */
    convenience init?(hex: Int, alpha: Float) {
        let hexString = NSString(format: "%2X", hex)
        self.init(hexString: hexString as String, alpha: alpha)
    }
}
