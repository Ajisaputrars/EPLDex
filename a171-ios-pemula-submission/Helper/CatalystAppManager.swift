//
//  CatalystAppManager.swift
//  a171-ios-pemula-submission
//
//  Created by Aji Saputra Raka Siwi on 17/10/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

#if targetEnvironment(macCatalyst)
class CatalystAppManager {
    class func configureMacAppWindow() {
        guard let appBundleUrl = Bundle.main.builtInPlugInsURL else {
            return
        }
        
        let helperBundleUrl = appBundleUrl.appendingPathComponent("MacApp.bundle")
        
        guard let bundle = Bundle(url: helperBundleUrl) else {
            return
        }

        bundle.load()
        
        guard let object = NSClassFromString("MacApp") as? NSObjectProtocol else {
            return
        }
        
        let selector = NSSelectorFromString("disableMaximizeButton")
        object.perform(selector)
    }
}
#endif
