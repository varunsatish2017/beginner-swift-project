//
//  PreWork_for_iOS_DevelopmentUITestsLaunchTests.swift
//  PreWork for iOS DevelopmentUITests
//
//  Created by Varun Satishkumar on 12/30/24.
//

import XCTest

final class PreWork_for_iOS_DevelopmentUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
