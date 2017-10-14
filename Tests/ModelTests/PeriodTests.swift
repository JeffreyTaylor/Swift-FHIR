//
//  PeriodTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

//
//  PersonTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRPeriod = Models.Period
#else
    import SwiftFHIR
    typealias SwiftFHIRPeriod = SwiftFHIR.Period
#endif


class PeriodTests: XCTestCase {

    func testResourceTypeIsPeriod() {
        XCTAssertEqual(Period.resourceType, "Period")
    }
}
