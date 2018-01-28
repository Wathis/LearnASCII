//
//  WAViewHome.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAViewHomeCell : UITableViewCell {
    
    fileprivate let imageViewLogo : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    fileprivate let container : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0x394263)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 8
        view.layer.shadowOpacity = 0.7
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        return view
    }()
    
    fileprivate let title : UILabel = WALabelPrincipal()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupText(text : String){
        self.title.text = text
    }
    
    func setImage(image : UIImage){
        self.imageViewLogo.image = image
    }
    
    fileprivate func setupViews() {
        self.addSubviews([container,title,imageViewLogo])
        
        NSLayoutConstraint.activate([
            self.container.widthAnchor.constraint(equalTo: self.widthAnchor),
            self.container.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 7/10),
            self.container.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.container.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.imageViewLogo.widthAnchor.constraint(equalTo: self.heightAnchor,multiplier : 1/3),
            self.imageViewLogo.heightAnchor.constraint(equalTo: self.heightAnchor,multiplier : 1/3),
            self.imageViewLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.imageViewLogo.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            
            self.title.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.title.leftAnchor.constraint(equalTo: self.imageViewLogo.rightAnchor, constant: 30),
            self.title.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/2),
            self.title.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
        
    }
    
}
