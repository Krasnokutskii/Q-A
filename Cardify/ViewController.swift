//
//  ViewController.swift
//  Cardify
//
//  Created by Ярослав on 6/6/21.
//

import UIKit

class ViewController: UIViewController {

    var hipDeck = [Card]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }

    
    @IBAction func addCard() {
        if let vc = storyboard?.instantiateViewController(identifier: "AddingCard") as? AddCardViewController{
            present(vc, animated: false)
        }
    }
    
}

