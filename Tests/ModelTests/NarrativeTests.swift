//
//  NarrativeTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRNarrative = Models.Narrative
#else
    import SwiftFHIR
    typealias SwiftFHIRNarrative = SwiftFHIR.Narrative
#endif


class NarrativeTests: XCTestCase {

    func testResourceTypeIsNarrative() {
        XCTAssertEqual(Narrative.resourceType, "Narrative")
    }
}
