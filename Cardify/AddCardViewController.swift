//
//  AddCardViewController.swift
//  Cardify
//
//  Created by Ярослав on 6/11/21.
//

import UIKit

class AddCardViewController: UIViewController {

    var rootVC: VC!
    var questionField = ""
    var ansverField = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backTapped() {
       dismiss(animated: true)
    }
    
    @IBAction func addTapped() {
       // let clousure: () -> Card = {Card(frontSideText: self.questionField, backSideText: self.ansverField)}
        if rootVC == .hip{
            print("adding to hip")
            
        }else{
            print("adding to stack")
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
