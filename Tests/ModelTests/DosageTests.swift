//
//  Dosage.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRDosage = Models.Dosage
#else
    import SwiftFHIR
    typealias SwiftFHIRDosage = SwiftFHIR.Dosage
#endif


class DosageTests: XCTestCase {

    func testResourceTypeIsDosage() {
        XCTAssertEqual(Dosage.resourceType, "Dosage")
    }
}
