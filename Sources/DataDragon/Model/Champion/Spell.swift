//
//  Champion.swift
//
//  Copyright (c) 2021 André Vants
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

public extension Champion {
    
    struct Spell: Codable {
        public let id: String
        /** The name of the spell. */
        public let name: String
        public let descriptionText: String // Original 'description' conflict with CustomStringConvertible
        public let tooltip: String
        public let leveltip: LevelTip?
        /** The maximum rank the spell can be leveled up. */
        public let maximumRank: Int
        public let cooldown: [Double]
        public let cooldownBurn: String
        /** The resource cost of the spell, per rank. */
        public let cost: [Int]
        public let costBurn: String
        // datavalues -> missing documentation
        public let effect: [[Double]?]    //This field is a List of List of Double.
        public let effectBurn: [String?]
        public let vars: [SpellVars]
        public let costType: String
        public let maximumAmmo: String
        public let range: [Double]//AnyObject //    range    object    //This field is either a List of Integer or the String 'self' for spells that target one's own champion.
        public let rangeBurn: String
        public let image: ImageMetadata
        public let resource: String?
    }
}

extension Champion.Spell {
    
    public struct LevelTip: Codable {
        public let effect: [String]
        public let label: [String]
    }
}

extension Champion.Spell {
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case descriptionText = "description"
        case tooltip
        case leveltip
        case maximumRank = "maxrank"
        case cooldown
        case cooldownBurn
        case cost
        case costBurn
        case effect
        case effectBurn
        case vars
        case costType
        case maximumAmmo = "maxammo"
        case range
        case rangeBurn
        case image
        case resource
    }
}
