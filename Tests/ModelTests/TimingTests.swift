//
//  TimingTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRTiming = Models.Timing
#else
    import SwiftFHIR
    typealias SwiftFHIRTiming = SwiftFHIR.Timing
#endif


class TimingTests: XCTestCase {

    func testResourceTypeIsTiming() {
        XCTAssertEqual(Timing.resourceType, "Timing")
    }
}
