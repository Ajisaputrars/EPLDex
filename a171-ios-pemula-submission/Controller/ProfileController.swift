//
//  ProfileController.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 30/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    private var profileView: ProfileView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.profileView = ProfileView(frame: self.view.frame)
        self.view = self.profileView

        setupNavigationController()
    }
    
    private func setupNavigationController(){
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 87/255, green: 22/255, blue: 99/255, alpha: 1)
        self.navigationController?.navigationBar.barStyle = .black
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "closebutton3"), style: .plain, target: self, action: #selector(closeButtonPressed))
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        self.navigationController?.navigationBar.tintColor = .white
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        self.title = "Profile"
    }
    
    @objc private func closeButtonPressed(){
        self.dismiss(animated: true, completion: nil)
    }
}
