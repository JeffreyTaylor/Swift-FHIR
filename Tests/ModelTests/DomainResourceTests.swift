//
//  DomainResourceTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRDomainResource = Models.DomainResource
#else
    import SwiftFHIR
    typealias SwiftFHIRDomainResource = SwiftFHIR.DomainResource
#endif


class DomainResourceTests: XCTestCase {

    func testResourceTypeIsDomainResource() {
        XCTAssertEqual(DomainResource.resourceType, "Dosage")
    }
}
