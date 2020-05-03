//
//  DetailController.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 29/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    
    private var detailView: DetailView!
    var teamDetail: TeamList!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.detailView = DetailView(frame: self.view.frame)
        self.view = self.detailView
        
        self.detailView.configureView(teamList: self.teamDetail)
        self.title = self.teamDetail.strTeam
        self.navigationItem.largeTitleDisplayMode = .never
    }
}
