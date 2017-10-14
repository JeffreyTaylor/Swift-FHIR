//
//  CodeableConceptTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRCodeableConcept = Models.CodeableConcept
#else
    import SwiftFHIR
    typealias SwiftFHIRCodeableConcept = SwiftFHIR.CodeableConcept
#endif


class CodeableConceptTests: XCTestCase {

    func testResourceTypeIsCodeableConcept() {
        XCTAssertEqual(CodeableConcept.resourceType, "CodeableConcept")
    }
}
