//
//  DetailView.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 29/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class DetailView: BaseView {
    
    let teamDetailScrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    let teamLogoImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
        return label
    }()
    
    let teamYearLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        return label
    }()
    
    let teamStadiumLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        return label
    }()
    
    let teamDescriptionTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.medium)
        return label
    }()
    
    let teamDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.regular)
        return label
    }()
    
    func configureView(teamList: TeamList){
        self.teamLogoImageView.kf.setImage(with: URL(string: teamList.strTeamBadge!))
        self.teamNameLabel.text = teamList.strTeam
        self.teamYearLabel.text = teamList.intFormedYear
        self.teamDescriptionLabel.text = teamList.strDescriptionEN
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.locale = Locale(identifier: "id-ID")
        let formattedNumberOfStadiumCapacity = numberFormatter.string(from: Int(teamList.intStadiumCapacity!)! as NSNumber)
        self.teamStadiumLabel.text = teamList.strStadium! + " (" + formattedNumberOfStadiumCapacity! + ")"
    }
    
    override func setupView() {
        self.backgroundColor = .systemBackground
        
        self.addSubview(teamDetailScrollView)
        self.teamDetailScrollView.addSubview(teamLogoImageView)
        self.teamDetailScrollView.addSubview(teamNameLabel)
        self.teamDetailScrollView.addSubview(teamYearLabel)
        self.teamDetailScrollView.addSubview(teamStadiumLabel)
        self.teamDetailScrollView.addSubview(teamDescriptionTitleLabel)
        self.teamDetailScrollView.addSubview(teamDescriptionLabel)
        
        self.teamDetailScrollView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self.safeAreaLayoutGuide)
        }
        
        self.teamLogoImageView.snp.makeConstraints { (make) in
            make.top.equalTo(teamDetailScrollView).offset(16)
            make.size.equalTo(CGSize(width: Utils.getWidthAndHeightForImageView(view: self), height: Utils.getWidthAndHeightForImageView(view: self)))
            make.centerX.equalTo(teamDetailScrollView)
        }
        
        self.teamNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(teamLogoImageView.snp.bottom).offset(16)
            make.left.right.equalTo(teamDetailScrollView)
            make.centerX.equalTo(teamDetailScrollView)
        }
        
        self.teamYearLabel.snp.makeConstraints { (make) in
            make.top.equalTo(teamNameLabel.snp.bottom).offset(0)
            make.left.right.equalTo(teamDetailScrollView)
        }
        
        self.teamStadiumLabel.snp.makeConstraints { (make) in
            make.top.equalTo(teamYearLabel.snp.bottom)
            make.left.right.equalTo(teamDetailScrollView)
        }
        
        self.teamDescriptionTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(teamStadiumLabel.snp.bottom).offset(16)
            make.left.equalTo(teamDetailScrollView).offset(16)
        }
        
        self.teamDescriptionLabel.snp.makeConstraints { (make) in
            make.top.equalTo(teamDescriptionTitleLabel.snp.bottom).offset(8)
            make.left.equalTo(teamDetailScrollView).offset(16)
            make.right.bottom.equalTo(teamDetailScrollView).offset(-16)
        }
    }
}
