//
//  Card.swift
//  CardsGame
//
//  Created by IvanLyuhtikov on 8/31/19.
//  Copyright © 2019 IvanLyuhtikov. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    
    //MARK: -PlaingCard Description
    var description: String { return "rank - \(rank),\nsuit - \(suit)\n"}
    //------------------------
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomStringConvertible {
        
        //MARK: -Suit Description
        var description: String {
            return self.rawValue
        }
        //------------------------
        
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
    }
    
    enum Rank: CustomStringConvertible {
        
        //MARK: -Rank Description
        var description: String {
            switch self {
            case .face(let face):
                return face
            case .numeric(let num):
                return String(num)
            default:
                return "1"
            }
        }
        //------------------------
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
    }
}
