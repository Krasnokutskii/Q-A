//
//  CardButton.swift
//  Cardify
//
//  Created by Ярослав on 6/24/21.
//

import UIKit
struct CardModel {
    var frontSideText: String
    var backSideText: String
}

final class CardButton: UIButton {

    private let frontLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 34, weight: .light)
        return label
    }()
    
    private let backLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textAlignment = .center
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 34, weight: .light)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(frontLabel)
        addSubview(backLabel)
        clipsToBounds = true
        layer.cornerRadius = 20
        layer.borderWidth = 2
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with card: Card ){
        frontLabel.text = card.frontSideText
        backLabel.text = card.backSideText
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        frontLabel.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height/2)
        backLabel.frame = CGRect(x: 0 , y: frame.size.height/2, width: frame.size.width, height: frame.size.height/2)
    }
}
