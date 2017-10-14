//
//  SignatureTests.swift
//  SwiftFHIR
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRSignature = Models.Signature
#else
    import SwiftFHIR
    typealias SwiftFHIRSignature = SwiftFHIR.Signature
#endif


class SignatureTests: XCTestCase {

    func testResourceTypeIsSignature() {
        XCTAssertEqual(Signature.resourceType, "Signature")
    }
}
