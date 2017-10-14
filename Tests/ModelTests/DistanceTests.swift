//
//  DistanceTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRDistance = Models.Distance
#else
    import SwiftFHIR
    typealias SwiftFHIRDistance = SwiftFHIR.Distance
#endif


class DistanceTests: XCTestCase {

    func testResourceTypeIsDistance() {
        XCTAssertEqual(Distance.resourceType, "Distance")
    }
}
