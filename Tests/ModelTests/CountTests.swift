//
//  CountTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRCount = Models.Count
#else
    import SwiftFHIR
    typealias SwiftFHIRCount = SwiftFHIR.Count
#endif


class CountTests: XCTestCase {

    func testResourceTypeIsCount() {
        XCTAssertEqual(Contract.resourceType, "Contract")
    }
}
