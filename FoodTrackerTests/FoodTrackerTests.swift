//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Kohei Yamamoto on 2016/09/21.
//  Copyright © 2016年 Kohei Yamamoto. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    func testMealInitialization() {
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)

        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)

        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
}
