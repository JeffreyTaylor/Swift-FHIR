//
//  RelatedArtifactTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRRelatedArtifact = Models.RelatedArtifact
#else
    import SwiftFHIR
    typealias SwiftFHIRRelatedArtifact = SwiftFHIR.RelatedArtifact
#endif


class RelatedArtifactTests: XCTestCase {

    func testResourceTypeIsRelatedArtifact() {
        XCTAssertEqual(RelatedArtifact.resourceType, "RelatedArtifact")
    }
}
