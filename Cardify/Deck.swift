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

enum Cover{
    case face, back
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
    var frontSideText: String
    var backSideText: String
    var id = UUID().uuidString
    //features soon: image, sounds, themes.
    init(frontSideText: String, backSideText: String) {
        self.frontSideText = frontSideText
        self.backSideText = backSideText
    }
}
