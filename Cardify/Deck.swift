//
//  Deck.swift
//  Cardify
//
//  Created by Ярослав on 6/10/21.
//

import Foundation

enum DeckTypes{
    case main, wellknown, midleKnown, unkowned
}

struct Deck {
    var main       = [Card]()
    
    var wellknown  = [Card]()
    var midleKnown = [Card]()
    var unknown    = [Card]()
    
    init(deckType: DeckTypes, card: Card ) {
        switch deckType {
        case .main:
            main.append(card)
        default:
            print("default")
        }
    }
}

struct Card {
    var questionString: String
    var ansverString: String
    var id = UUID().uuidString
    
    init(questionString: String = "", ansveringString: String = "") {
        self.questionString = questionString
        self.ansverString = ansveringString
    }
}
