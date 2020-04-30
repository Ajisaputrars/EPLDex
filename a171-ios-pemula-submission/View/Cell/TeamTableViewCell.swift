//
//  TeamTableViewCell.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 29/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit
import SnapKit

class TeamTableViewCell: UITableViewCell {
    
    let teamImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(teamList: TeamList){
        self.teamNameLabel.text = teamList.strTeam
        self.teamImageView.kf.setImage(with: URL(string: teamList.strTeamBadge!))
    }
    
    func setupView(){
        self.backgroundColor = .systemBackground
        
        self.addSubview(teamImageView)
        self.addSubview(teamNameLabel)
        
        self.teamImageView.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.left.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.right.equalTo(self.teamNameLabel.snp.left).offset(-16)
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.size.equalTo(CGSize(width: 50, height: 50)).priority(999)
        }
        
        self.teamNameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(16)
            make.left.equalTo(self.teamImageView.snp.right).offset(16)
            make.right.equalTo(self.safeAreaLayoutGuide).offset(-16)
            make.bottom.equalTo(self.safeAreaLayoutGuide).offset(-16)
        }
    }
}
