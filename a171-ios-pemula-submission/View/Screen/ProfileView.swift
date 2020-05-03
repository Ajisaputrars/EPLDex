//
//  ProfileView.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 30/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ProfileView: BaseView {
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "profileimage"))
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = Utils.getWidthAndHeightForImageView(view: self) / 2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let profileNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Aji Saputra Raka Siwi"
        label.textAlignment = .center
        return label
    }()
    
    let profileEmailLabel: UILabel = {
        let label = UILabel()
        label.text = "ajisaputrars@hotmail.com"
        label.textAlignment = .center
        return label
    }()
        
    override func setupView() {
        self.backgroundColor = .systemBackground
        
        self.addSubview(profileImageView)
        self.addSubview(profileNameLabel)
        self.addSubview(profileEmailLabel)
        
        self.profileImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.size.equalTo(CGSize(width: Utils.getWidthAndHeightForImageView(view: self), height: Utils.getWidthAndHeightForImageView(view: self)))
            make.centerX.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.profileNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileImageView.snp.bottom).offset(16)
            make.left.right.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.profileEmailLabel.snp.makeConstraints { (make) in
            make.top.equalTo(profileNameLabel.snp.bottom).offset(8)
            make.left.right.equalTo(self.safeAreaLayoutGuide)
        }
    }
}
