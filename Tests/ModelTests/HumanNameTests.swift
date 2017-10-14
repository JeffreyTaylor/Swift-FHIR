//
//  HumanNameTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRHumanName = Models.HumanName
#else
    import SwiftFHIR
    typealias SwiftFHIRHumanName = SwiftFHIR.HumanName
#endif


class HumanNameTests: XCTestCase {

    func testResourceTypeIsHumanName() {
        XCTAssertEqual(HumanName.resourceType, "HumanName")
    }
}
