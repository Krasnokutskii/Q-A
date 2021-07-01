//
//  HipViewController.swift
//  Cardify
//
//  Created by Ярослав on 6/6/21.
//

import UIKit

class HipViewController: UIViewController {

    var deck = Deck()
    lazy var cards = deck.main
    var cardButton: CardButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        configureCardButton()
    }
    
    func configureCardButton(){
        cardButton = CardButton(frame: CGRect(x: 0, y: 0, width: 250, height: 350), card: Card(frontSideText: "question", backSideText: "ansver"))
        //cardButton.configure(with:Card(frontSideText: "question", backSideText: "ansver") )
        cardButton.center = view.center
        cardButton.addTarget(self, action: #selector(cardButtonTapped), for: .touchUpInside)
        
        //swips
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(moveCardTo))
        swipeGestureRecognizer.direction = .down
        cardButton.addGestureRecognizer(swipeGestureRecognizer)
        cardButton.setNeedsDisplay()
        view.addSubview(cardButton)
        
    }

    
    @IBAction func addCard() {
        if let vc = storyboard?.instantiateViewController(identifier: "AddingCard") as? AddCardViewController{
            vc.rootVC = .hip
            present(vc, animated: false)
        }
    }
    
    @objc func cardButtonTapped() {
        
        cardButton.flipCard()
        UIButton.transition(with: cardButton, duration: 0.35, options: .transitionFlipFromLeft, animations: nil, completion: nil)
    }
    @objc func moveCardTo(sender: UISwipeGestureRecognizer){
        print("move to ")
    }
    
}

enum VC{
    case stack, hip
}
