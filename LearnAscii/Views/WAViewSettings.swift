//
//  WAViewSettings.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAViewSettings : UIView {
    
    fileprivate let title : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(rgb: 0xE0E0E0)
        label.textAlignment = .left
        label.font = UIFont(name: "BodoniSvtyTwoITCTT-Bold", size: 15)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        self.layer.borderColor = UIColor(rgb: 0x7DE3EC).cgColor
        self.layer.borderWidth = 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupTitle(text: String) {
        self.title.text = text
    }
    
    fileprivate func setupViews() {
        self.addSubview(title)
        NSLayoutConstraint.activate([
            self.title.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.title.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.title.widthAnchor.constraint(equalTo: self.widthAnchor),
            self.title.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
    }
    
    
}
