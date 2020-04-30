//
//  Team.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 29/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

struct Team: Codable {
    let teams: [TeamList]

}

struct TeamList: Codable {
    let strTeam: String
    let intFormedYear: String?
    let strStadium: String?
    let strDescriptionEN: String?
    let intStadiumCapacity: String?
    let strTeamBadge: String?
}
