//
//  WAViewHome.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAViewHome : UIView {
    
    fileprivate let imageView : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    fileprivate let title : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "BodoniSvtyTwoITCTT-Bold", size: 18)
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupText(text : String){
        self.title.text = text
    }
    
    func setImage(image : UIImage){
        self.imageView.image = image
    }
    
    fileprivate func setupViews() {
        self.addSubviews([title,imageView])
        
        NSLayoutConstraint.activate([
            self.imageView.widthAnchor.constraint(equalTo: self.heightAnchor,multiplier : 1/3),
            self.imageView.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier : 1/3),
            self.imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.imageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            
            self.title.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.title.leftAnchor.constraint(equalTo: self.imageView.rightAnchor, constant: 30),
            self.title.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2),
            self.title.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
        
    }
    
}
