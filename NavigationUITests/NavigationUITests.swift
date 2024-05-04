//
//  NavigationUITests.swift
//  NavigationUITests
//
//  Created by Lucas Gladding on 2024-05-01.
//

import XCTest

final class NavigationUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

        app.staticTexts["Item 1"].tap()
        app.navigationBars["Info"].buttons["Home"].tap()
    }
}
