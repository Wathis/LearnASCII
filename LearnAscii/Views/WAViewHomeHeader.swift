//
//  WAHeaderViewHome.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WAViewHomeHeader : UITableViewCell {
    
    fileprivate let imageViewLogo : UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImage(image : UIImage){
        self.imageViewLogo.image = image
    }
    
    fileprivate func setupViews() {
        self.addSubviews([imageViewLogo])
        
        NSLayoutConstraint.activate([
            self.imageViewLogo.widthAnchor.constraint(equalToConstant: 100),
            self.imageViewLogo.heightAnchor.constraint(equalToConstant: 100),
            self.imageViewLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.imageViewLogo.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    
}
