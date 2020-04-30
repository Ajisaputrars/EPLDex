//
//  Utils.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 29/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class Utils {
    static func teamJsonParser(data: Data) throws -> Team {
        return try JSONDecoder().decode(Team.self, from: data)
    }
    
    static func getWidthAndHeightForImageView(view: UIView) -> CGFloat {
        var width: CGFloat = 0
        if (min(view.frame.size.width, view.frame.size.height) / 2) >= 385 {
            width = 385
        } else {
            width = min(view.frame.size.width, view.frame.size.height)
        }
        return width / 2
    }
}
