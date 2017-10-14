//
//  BackboneElementTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRBackboneElement = Models.BackboneElement
#else
    import SwiftFHIR
    typealias SwiftFHIRBackboneElement = SwiftFHIR.BackboneElement
#endif


class BackboneElementTests: XCTestCase {

    func instantiateFrom(filename: String) throws -> SwiftFHIRBasic {
        return try instantiateFrom(json: try readJSONFile(filename))
    }

    func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRBasic {
        return try SwiftFHIRBasic(json: json)
    }

    func testResourceTypeIsBackboneElement() {
        XCTAssertEqual(BackboneElement.resourceType, "BackboneElement")
    }
}
