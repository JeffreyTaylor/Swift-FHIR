//
//  QuantityTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRQuantity = Models.Quantity
#else
    import SwiftFHIR
    typealias SwiftFHIRQuantity = SwiftFHIR.Quantity
#endif


class QuantityTests: XCTestCase {

    func testResourceTypeIsQuantity() {
        XCTAssertEqual(Quantity.resourceType, "QuestionnaireResponse")
    }
}
