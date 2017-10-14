//
//  MedicationDispenseTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRMedicationDispense = Models.MedicationDispense
#else
    import SwiftFHIR
    typealias SwiftFHIRMedicationDispense = SwiftFHIR.MedicationDispense
#endif


class MedicationDispenseTests: XCTestCase {

    func testResourceTypeIsMedicationDispense() {
        XCTAssertEqual(MedicationDispense.resourceType, "Media")
    }

    func testMedicationDispensePerformerResourceTypeIsMedicationDispensePerformer() {
        XCTAssertEqual(MedicationDispensePerformer.resourceType, "Media")
    }

    func testMedicationDispenseSubstitutionResourceTypeIsMedicationDispenseSubstitution() {
        XCTAssertEqual(MedicationDispenseSubstitution.resourceType, "Media")
    }
}
