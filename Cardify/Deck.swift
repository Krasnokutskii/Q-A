//
//  Deck.swift
//  Cardify
//
//  Created by Ярослав on 6/10/21.
//

import Foundation



enum Cover{
    case face, back
}
enum DeckType{
    case main, wellknown, midleKnown, unkowned
}
final class Deck {
    private(set) var main       = [Card]()
    private(set) var wellknown  = [Card]()
    private(set) var midleKnown = [Card]()
    private(set) var unknown    = [Card]()
    
    
    
    
    
    func addToMain(card: Card){
        main.append(card)
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
