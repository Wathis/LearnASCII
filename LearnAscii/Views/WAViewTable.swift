//
//  WAViewTable.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAViewTable : UITableViewCell {
    
    fileprivate let decimalTitle : UILabel = WALabelPrincipal()
    
    fileprivate let hexaTitle : UILabel = WALabelPrincipal()
    
    fileprivate let charTitle : UILabel = WALabelPrincipal()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
    
    func setColorFonts(color : UIColor) {
        charTitle.textColor = color
        decimalTitle.textColor = color
        hexaTitle.textColor = color
    }
    
    func setBackgroundColor(color : UIColor) {
        self.backgroundColor = color
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
        NSLayoutConstraint.activate([
            self.decimalTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.decimalTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            self.decimalTitle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/5),
            self.decimalTitle.heightAnchor.constraint(equalTo: self.heightAnchor),
            
            self.hexaTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.hexaTitle.leftAnchor.constraint(equalTo: self.decimalTitle.rightAnchor),
            self.hexaTitle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/5),
            self.hexaTitle.heightAnchor.constraint(equalTo: self.heightAnchor),
            
            self.charTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.charTitle.leftAnchor.constraint(equalTo: self.hexaTitle.rightAnchor),
            self.charTitle.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 3/5),
            self.charTitle.heightAnchor.constraint(equalTo: self.heightAnchor),
        ])
        
    }
    
    
}
