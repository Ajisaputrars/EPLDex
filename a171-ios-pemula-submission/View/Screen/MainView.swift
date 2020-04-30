//
//  MainView.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 28/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class MainView: BaseView {
    
    let teamTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(TeamTableViewCell.self, forCellReuseIdentifier: "Team")
        return tableView
    }()
    
    override func setupView() {
        self.backgroundColor = .white
        
        self.addSubview(teamTableView)
        
        self.teamTableView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self)
        }
    }
}
