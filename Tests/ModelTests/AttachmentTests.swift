//
//  AttachmentTests.swift
//  SwiftFHIR-macOS
//
//  Created by Taylor, Jeffrey on 10/13/17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
    import Models
    typealias SwiftFHIRAttachment = Models.Attachment
#else
    import SwiftFHIR
    typealias SwiftFHIRAttachment = SwiftFHIR.Attachment
#endif


class AttachmentTests: XCTestCase {

    func testResourceTypeIsAttachment() {
        XCTAssertEqual(Attachment.resourceType, "Attachment")
    }
}
