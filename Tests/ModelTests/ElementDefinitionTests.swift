//
//  ElementDefinitionTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRElementDefinition = Models.ElementDefinition
#else
    import SwiftFHIR
    typealias SwiftFHIRElementDefinition = SwiftFHIR.ElementDefinition
#endif


class ElementDefinitionTests: XCTestCase {

    func testResourceTypeIsDosage() {
        XCTAssertEqual(ElementDefinition.resourceType, "Dosage")
    }
}
