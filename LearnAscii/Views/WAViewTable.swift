//
//  WAViewTable.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAViewTable : UIView{
    
    fileprivate let decimalTitle : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(rgb: 0xE0E0E0)
        label.textAlignment = .center
        label.font = UIFont(name: "BodoniSvtyTwoITCTT-Bold", size: 15)
        return label
    }()
    
    fileprivate let hexaTitle : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(rgb: 0xE0E0E0)
        label.textAlignment = .center
        label.font = UIFont(name: "BodoniSvtyTwoITCTT-Bold", size: 15)
        return label
    }()
    
    fileprivate let charTitle : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(rgb: 0xE0E0E0)
        label.textAlignment = .center
        label.font = UIFont(name: "BodoniSvtyTwoITCTT-Bold", size: 15)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTitles(decimal : String, hex: String, char: String) {
        setupDecimal(text: decimal)
        setupHexa(text: hex)
        setupChar(text: char)
    }
    
    func setupHexa(text : String){
        self.hexaTitle.text = text
    }
    
    func setupDecimal(text : String){
        self.decimalTitle.text = text
    }
    
    func setupChar(text : String){
        self.charTitle.text = text
    }
    
    fileprivate func setupViews() {
        self.addSubviews([decimalTitle,hexaTitle,charTitle])
        let screenWidth = CGFloat(UIScreen.main.bounds.width)
        NSLayoutConstraint.activate([
            self.decimalTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.decimalTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -CGFloat(screenWidth / 2)),
            self.decimalTitle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3),
            self.decimalTitle.heightAnchor.constraint(equalTo: self.heightAnchor),
            
            self.hexaTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.hexaTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            self.hexaTitle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3),
            self.hexaTitle.heightAnchor.constraint(equalTo: self.heightAnchor),
            
            self.decimalTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.decimalTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: CGFloat(screenWidth / 2)),
            self.decimalTitle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/3),
            self.decimalTitle.heightAnchor.constraint(equalTo: self.heightAnchor),
        ])
        
    }
    
    
}
