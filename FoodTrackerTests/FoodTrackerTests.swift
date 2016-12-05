//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by carmen cheng on 2016-12-02.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

import XCTest

class FoodTrackerTests: XCTestCase {

    //MARK: FoodTrackerTests

    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success Case.
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //Failure Case.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
 

    
}


