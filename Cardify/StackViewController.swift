//
//  StackViewController.swift
//  Cardify
//
//  Created by Ярослав on 6/15/21.
//

import UIKit

class StackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        // Do any additional setup after loading the view.
    }
    

    @IBAction func hipStackTapped() {
        dismiss(animated: true)
    }
    
    @IBAction func addCardtoStack() {
        if let vc = storyboard?.instantiateViewController(identifier: "AddingCard") as? AddCardViewController{
            vc.rootVC = .stack
            present(vc, animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
