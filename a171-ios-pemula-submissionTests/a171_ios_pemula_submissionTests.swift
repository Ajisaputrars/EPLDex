//
//  a171_ios_pemula_submissionTests.swift
//  a171-ios-pemula-submissionTests
//
//  Created by Aji Saputra Raka Siwi on 18/04/20.
//  Copyright © 2020 Aji Saputra Raka Siwi. All rights reserved.
//

import XCTest
@testable import Submission

class a171_ios_pemula_submissionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        if let path = Bundle.main.path(forResource: "Sports", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let teams = try! Utils.teamJsonParser(data: data)
                print(teams)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
