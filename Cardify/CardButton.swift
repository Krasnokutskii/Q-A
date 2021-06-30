//
//  CardButton.swift
//  Cardify
//
//  Created by Ярослав on 6/24/21.
//

import UIKit


final class CardButton: UIButton {
    
    var isFaceUp = false
    var label: UILabel!
    var faceText = ""
    var backText = ""
    var faceCardBackgroundColor = UIColor.purple
    var backCardBackgroundColor = UIColor.red
    
//    private let faceLabel: UILabel = {
//        let label = UILabel()
//        label.numberOfLines = 2
//        label.textAlignment = .center
//        label.textColor = .systemYellow
//        label.font = .systemFont(ofSize: 34, weight: .light)
//        return label
//    }()

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        label = UILabel()
        configureLabel()
        addSubview(label)
        clipsToBounds = true
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemGreen
    }
    func configureLabel(){
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 34, weight: .light)
        label.text = backText
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func flipCard(){
        print("flip \(String(describing: label.text))")
    
        
        if isFaceUp{
            isFaceUp.toggle()
            label.text = backText
            
        }else{
            isFaceUp.toggle()
            label.text = faceText
        }
    }
    
    func configure(with card: Card ){
        faceText = card.frontSideText
        backText = card.backSideText
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2)
       // label.center = self.center
//        faceLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2)
//        backLabel.frame = CGRect(x: 0 , y: frame.size.height/2, width: frame.size.width, height: frame.size.height/2)
    }
}
