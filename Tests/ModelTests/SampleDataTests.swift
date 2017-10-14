//
//  SampleDataTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRSampledData = Models.SampledData
#else
    import SwiftFHIR
    typealias SwiftFHIRSampleData = SwiftFHIR.SampledData
#endif


class SampledDataTests: XCTestCase {

    func testResourceTypeIsSampledData() {
        XCTAssertEqual(SampledData.resourceType, "SampledData")
    }
}
