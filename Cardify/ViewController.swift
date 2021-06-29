//
//  ViewController.swift
//  Cardify
//
//  Created by Ярослав on 6/6/21.
//

import UIKit

class ViewController: UIViewController {

    var hipDeck = [Card]()
    var cardButton: CardButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        configureCardButton()
    }
    
    func configureCardButton(){
        cardButton = CardButton(frame: CGRect(x: 0, y: 0, width: 250, height: 350))
        view.addSubview(cardButton)
        cardButton.center = view.center
        cardButton.configure(with:Card(frontSideText: "question", backSideText: "ansver") )
        cardButton.addTarget(self, action: #selector(cardButtonTapped), for: .touchUpInside)
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(moveCardTo))
        swipeGestureRecognizer.direction = .down
        cardButton.addGestureRecognizer(swipeGestureRecognizer)
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
