//
//  ViewController.swift
//  Cardify
//
//  Created by Ярослав on 6/6/21.
//

import UIKit

class ViewController: UIViewController {

    var isHipStyleActive = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        navigationBarConfigurations()
    }
    override func viewWillAppear(_ animated: Bool) {
        //title = isHipStyleActive ?  "hip style": "stack style"
    }
    func navigationBarConfigurations(){
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "square.stack"), style: .plain, target: self, action: #selector(someAction))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus.square"), style: .plain, target: self, action: #selector(someAction))
        navigationItem.leftBarButtonItem?.tintColor = .systemPurple
        navigationItem.rightBarButtonItem?.tintColor = .systemPurple
    }
    @objc func someAction(){
        isHipStyleActive.toggle()
        print(isHipStyleActive)
        if let vc = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "cardTableViewController") as? CardTableViewController{
            navigationController?.pushViewController(vc, animated: true)}
    }

}

