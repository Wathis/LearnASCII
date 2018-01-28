//
//  WALabelPrincipal.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 28/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WALabelPrincipal : UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.textColor = UIColor(rgb: 0xE0E0E0)
        self.textAlignment = .center
        self.font = UIFont(name: "Ubuntu-Regular", size: 15)
    }
    
    func changeFontSize(fontSize: CGFloat) {
        self.font = UIFont(name: "Ubuntu-Regular", size: fontSize)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
