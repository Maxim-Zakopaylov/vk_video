//
//  vk_videoUITests.swift
//  vk_videoUITests
//
//  Created by Maxim Zakopaylov on 13/05/2019.
//  Copyright © 2019 Maxim Zakopaylov. All rights reserved.
//

import XCTest

class vk_videoUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testSearching() {
        let app = XCUIApplication()
        let searchText = app.tables["Empty list"].searchFields["Search"]
        searchText.tap()
        searchText.typeText("test")
        
        sleep(3)
        let tablesQuery = app.tables
        let count = tablesQuery.cells.count
        XCTAssert(count > 0)
    }

}
