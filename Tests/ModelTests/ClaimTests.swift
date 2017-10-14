//
//  ClaimTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRClaim = Models.Claim
#else
import SwiftFHIR
typealias SwiftFHIRClaim = SwiftFHIR.Claim
#endif


class ClaimTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRClaim {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRClaim {
		return try SwiftFHIRClaim(json: json)
	}

    func testResourceTypeIsClaim() {
        XCTAssertEqual(Claim.resourceType, "Claim")
    }

    func testClaimAccidentResourceTypeIsClaimAccident() {
        XCTAssertEqual(ClaimAccident.resourceType, "ClaimAccident")
    }

    func testClaimCareTeamResourceTypeIsClaimCareTeam() {
        XCTAssertEqual(ClaimCareTeam.resourceType, "ClaimCareTeam")
    }

    func testClaimDiagnosisResourceTypeIsClaimDiagnosis() {
        XCTAssertEqual(ClaimCareTeam.resourceType, "ClaimCareTeam")
    }

    func testClaimInformationResourceTypeIsClaimInformation() {
        XCTAssertEqual(ClaimInformation.resourceType, "ClaimInformation")
    }

    func testClaimInsuranceResourceTypeIsClaimInsurance() {
        XCTAssertEqual(ClaimInsurance.resourceType, "ClaimInsurance")
    }

    func testClaimItemResourceTypeIsClaimItem() {
        XCTAssertEqual(ClaimItem.resourceType, "ClaimItem")
    }

    func testClaimItemDetailResourceTypeIsClaimItemDetail() {
        XCTAssertEqual(ClaimItemDetail.resourceType, "ClaimItemDetail")
    }

    func testClaimItemDetailSubDetailResourceTypeIsClaimItemDetailSubDetail() {
        XCTAssertEqual(ClaimItemDetailSubDetail.resourceType, "ClaimItemDetailSubDetail")
    }

    func testClaimPayeeResourceTypeIsClaimPayee() {
        XCTAssertEqual(ClaimPayee.resourceType, "ClaimPayee")
    }

    func testClaimProcedureResourceTypeIsClaimProcedure() {
        XCTAssertEqual(ClaimProcedure.resourceType, "ClaimProcedure")
    }

    func testClaimRelatedResourceTypeIsClaimRelated() {
        XCTAssertEqual(ClaimRelated.resourceType, "ClaimRelated")
    }

	func testClaim1() {
		do {
			let instance = try runClaim1()
			try runClaim1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-institutional-rich.json")
		
		XCTAssertEqual(inst.accident?.date?.description, "2014-07-09")
		XCTAssertEqual(inst.accident?.locationAddress?.text, "Grouse Mountain Ski Hill")
		XCTAssertEqual(inst.accident?.type?.coding?[0].code, "SPT")
		XCTAssertEqual(inst.accident?.type?.coding?[0].display, "Sporting Accident")
		XCTAssertEqual(inst.accident?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActIncidentCode")
		XCTAssertEqual(inst.billablePeriod?.end?.description, "2014-08-16")
		XCTAssertEqual(inst.billablePeriod?.start?.description, "2014-08-15")
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].qualification?.coding?[0].code, "physician")
		XCTAssertEqual(inst.careTeam?[0].qualification?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/provider-qualification")
		XCTAssertEqual(inst.careTeam?[0].responsible, true)
		XCTAssertEqual(inst.careTeam?[0].role?.coding?[0].code, "primary")
		XCTAssertEqual(inst.careTeam?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claim-careteamrole")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].packageCode?.coding?[0].code, "400")
		XCTAssertEqual(inst.diagnosis?[0].packageCode?.coding?[0].display, "Head trauma - concussion")
		XCTAssertEqual(inst.diagnosis?[0].packageCode?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-diagnosisrelatedgroup")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.diagnosis?[0].type?[0].coding?[0].code, "admitting")
		XCTAssertEqual(inst.diagnosis?[0].type?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-diagnosistype")
		XCTAssertEqual(inst.employmentImpacted?.end?.description, "2014-08-16")
		XCTAssertEqual(inst.employmentImpacted?.start?.description, "2014-08-16")
		XCTAssertEqual(inst.enterer?.identifier?.system?.absoluteString, "http://jurisdiction.org/facilities/HOSP1234/users")
		XCTAssertEqual(inst.enterer?.identifier?.value, "UC1234")
		XCTAssertEqual(inst.facility?.identifier?.system?.absoluteString, "http://jurisdiction.org/facilities")
		XCTAssertEqual(inst.facility?.identifier?.value, "HOSP1234")
		XCTAssertEqual(inst.hospitalization?.end?.description, "2014-08-16")
		XCTAssertEqual(inst.hospitalization?.start?.description, "2014-08-15")
		XCTAssertEqual(inst.id, "960151")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyhospital.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "96123451")
		XCTAssertEqual(inst.insurance?[0].businessArrangement, "BA987123")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].preAuthRef?[0], "PA2014G56473")
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "125.0")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "exam")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "125.0")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.provider?.identifier?.system?.absoluteString, "http://npid.org/providerid")
		XCTAssertEqual(inst.provider?.identifier?.value, "NJ12345")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, "125.0")
		XCTAssertEqual(inst.type?.coding?[0].code, "institutional")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim2() {
		do {
			let instance = try runClaim2()
			try runClaim2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-institutional.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.enterer?.identifier?.system?.absoluteString, "http://jurisdiction.org/facilities/HOSP1234/users")
		XCTAssertEqual(inst.enterer?.identifier?.value, "UC1234")
		XCTAssertEqual(inst.facility?.identifier?.system?.absoluteString, "http://jurisdiction.org/facilities")
		XCTAssertEqual(inst.facility?.identifier?.value, "HOSP1234")
		XCTAssertEqual(inst.id, "960150")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyhospital.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "9612345")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].encounter?[0].reference, "Encounter/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "125.0")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "exam")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "125.0")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "emergency")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimsubtype")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, "125.0")
		XCTAssertEqual(inst.type?.coding?[0].code, "institutional")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim3() {
		do {
			let instance = try runClaim3()
			try runClaim3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-average.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.id, "100151")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12346")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].code, "missingtooth")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claiminformationcategory")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].code, "15")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-tooth")
		XCTAssertEqual(inst.information?[0].reason?.coding?[0].code, "e")
		XCTAssertEqual(inst.information?[0].reason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/missingtoothreason")
		XCTAssertEqual(inst.information?[0].sequence, 1)
		XCTAssertEqual(inst.information?[0].timingDate?.description, "2012-04-07")
		XCTAssertEqual(inst.information?[1].category?.coding?[0].code, "exception")
		XCTAssertEqual(inst.information?[1].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claiminformationcategory")
		XCTAssertEqual(inst.information?[1].code?.coding?[0].code, "student")
		XCTAssertEqual(inst.information?[1].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claim-exception")
		XCTAssertEqual(inst.information?[1].sequence, 2)
		XCTAssertEqual(inst.information?[1].valueString, "Happy Valley Community College")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "135.57")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "1200")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "135.57")
		XCTAssertEqual(inst.item?[1].bodySite?.coding?[0].code, "21")
		XCTAssertEqual(inst.item?[1].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[1].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].net?.value, "105.0")
		XCTAssertEqual(inst.item?[1].sequence, 2)
		XCTAssertEqual(inst.item?[1].service?.coding?[0].code, "21211")
		XCTAssertEqual(inst.item?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[1].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[1].subSite?[0].coding?[0].code, "L")
		XCTAssertEqual(inst.item?[1].subSite?[0].coding?[0].system?.absoluteString, "http://fdi.org/fhir/oralsurfacecodes")
		XCTAssertEqual(inst.item?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].unitPrice?.value, "105.0")
		XCTAssertEqual(inst.item?[2].bodySite?.coding?[0].code, "36")
		XCTAssertEqual(inst.item?[2].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[2].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[2].detail?[0].factor, "0.75")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.value, "750.0")
		XCTAssertEqual(inst.item?[2].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[2].detail?[0].service?.coding?[0].code, "27211")
		XCTAssertEqual(inst.item?[2].detail?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.value, "1000.0")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.value, "350.0")
		XCTAssertEqual(inst.item?[2].detail?[1].sequence, 2)
		XCTAssertEqual(inst.item?[2].detail?[1].service?.coding?[0].code, "lab")
		XCTAssertEqual(inst.item?[2].detail?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.value, "350.0")
		XCTAssertEqual(inst.item?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].net?.value, "1100.0")
		XCTAssertEqual(inst.item?[2].sequence, 3)
		XCTAssertEqual(inst.item?[2].service?.coding?[0].code, "27211")
		XCTAssertEqual(inst.item?[2].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].unitPrice?.value, "1100.0")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim4() {
		do {
			let instance = try runClaim4()
			try runClaim4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-bridge.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.contained?[0].id, "device-bridge")
		XCTAssertEqual(inst.contained?[1].id, "referral")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "100156")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "123466")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].code, "prosthesis")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claiminformationcategory")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].code, "2")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].display, "Maryland Bridge")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-oralprostho")
		XCTAssertEqual(inst.information?[0].sequence, 1)
		XCTAssertEqual(inst.information?[0].timingDate?.description, "2001-04-07")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].bodySite?.coding?[0].code, "01")
		XCTAssertEqual(inst.item?[0].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].factor, "0.75")
		XCTAssertEqual(inst.item?[0].informationLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].locationCodeableConcept?.coding?[0].code, "11")
		XCTAssertEqual(inst.item?[0].locationCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-serviceplace")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "1050.0")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "67221")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].display, "Maryland Bridge")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].udi?[0].reference, "#device-bridge")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "1400.0")
		XCTAssertEqual(inst.item?[1].bodySite?.coding?[0].code, "21")
		XCTAssertEqual(inst.item?[1].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[1].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[1].locationCodeableConcept?.coding?[0].code, "11")
		XCTAssertEqual(inst.item?[1].locationCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-serviceplace")
		XCTAssertEqual(inst.item?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].net?.value, "105.0")
		XCTAssertEqual(inst.item?[1].sequence, 2)
		XCTAssertEqual(inst.item?[1].service?.coding?[0].code, "21211")
		XCTAssertEqual(inst.item?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[1].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[1].subSite?[0].coding?[0].code, "L")
		XCTAssertEqual(inst.item?[1].subSite?[0].coding?[0].system?.absoluteString, "http://fdi.org/fhir/oralsurfacecodes")
		XCTAssertEqual(inst.item?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].unitPrice?.value, "105.0")
		XCTAssertEqual(inst.item?[2].bodySite?.coding?[0].code, "24")
		XCTAssertEqual(inst.item?[2].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[2].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[2].detail?[0].factor, "0.75")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.value, "750.0")
		XCTAssertEqual(inst.item?[2].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[2].detail?[0].service?.coding?[0].code, "27211")
		XCTAssertEqual(inst.item?[2].detail?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.value, "1000.0")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.value, "350.0")
		XCTAssertEqual(inst.item?[2].detail?[1].sequence, 2)
		XCTAssertEqual(inst.item?[2].detail?[1].service?.coding?[0].code, "lab")
		XCTAssertEqual(inst.item?[2].detail?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.value, "350.0")
		XCTAssertEqual(inst.item?[2].locationCodeableConcept?.coding?[0].code, "11")
		XCTAssertEqual(inst.item?[2].locationCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-serviceplace")
		XCTAssertEqual(inst.item?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].net?.value, "1100.0")
		XCTAssertEqual(inst.item?[2].procedureLinkId?[0], 1)
		XCTAssertEqual(inst.item?[2].sequence, 3)
		XCTAssertEqual(inst.item?[2].service?.coding?[0].code, "27211")
		XCTAssertEqual(inst.item?[2].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].unitPrice?.value, "1100.0")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.party?.reference, "RelatedPerson/peter")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "other")
		XCTAssertEqual(inst.payee?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payeetype")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.procedure?[0].date?.description, "2014-07-04")
		XCTAssertEqual(inst.procedure?[0].procedureCodeableConcept?.text, "Resection of gum to increase exposed tooth.")
		XCTAssertEqual(inst.procedure?[0].sequence, 1)
		XCTAssertEqual(inst.referral?.reference, "#referral")
		XCTAssertEqual(inst.related?[0].claim?.reference, "Claim/100151")
		XCTAssertEqual(inst.related?[0].reference?.value, "CASE156746B")
		XCTAssertEqual(inst.related?[0].relationship?.coding?[0].code, "associated")
		XCTAssertEqual(inst.related?[0].relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-relatedclaimrelationship")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, "2255.0")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim5() {
		do {
			let instance = try runClaim5()
			try runClaim5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-contained-identifier.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/providerId")
		XCTAssertEqual(inst.careTeam?[0].provider?.identifier?.value, "MD98765")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.contained?[0].id, "patient-1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.id, "100155")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "http://www.jurisdiction.com/nationalplan/123AB345")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "123456")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "135.57")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "1200")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "135.57")
		XCTAssertEqual(inst.organization?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/careorganizations")
		XCTAssertEqual(inst.organization?.identifier?.value, "HOSP12345")
		XCTAssertEqual(inst.patient?.reference, "#patient-1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">This example assumes a national health care scheme where patients, providers and organizations have known business identifiers.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim6() {
		do {
			let instance = try runClaim6()
			try runClaim6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-contained.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "#provider-1")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.contained?[0].id, "org-insurer")
		XCTAssertEqual(inst.contained?[1].id, "org-org")
		XCTAssertEqual(inst.contained?[2].id, "provider-1")
		XCTAssertEqual(inst.contained?[3].id, "patient-1")
		XCTAssertEqual(inst.contained?[4].id, "coverage-1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.id, "100152")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "#coverage-1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "#org-insurer")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "135.57")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "1200")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "135.57")
		XCTAssertEqual(inst.organization?.reference, "#org-org")
		XCTAssertEqual(inst.patient?.reference, "#patient-1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim7() {
		do {
			let instance = try runClaim7()
			try runClaim7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-identifier.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/providerId")
		XCTAssertEqual(inst.careTeam?[0].provider?.identifier?.value, "MD98765")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "123456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.id, "100154")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.insurance?[0].coverage?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/nationalplan")
		XCTAssertEqual(inst.insurance?[0].coverage?.identifier?.value, "123AB345")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "123456")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "135.57")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "1200")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "135.57")
		XCTAssertEqual(inst.organization?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/careorganizations")
		XCTAssertEqual(inst.organization?.identifier?.value, "HOSP12345")
		XCTAssertEqual(inst.patient?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/nationalId")
		XCTAssertEqual(inst.patient?.identifier?.value, "123AB345")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">This example assumes a national health care scheme where patients, providers and organizations have known business identifiers.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim8() {
		do {
			let instance = try runClaim8()
			try runClaim8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-oral-orthoplan.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2015-03-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "123457")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-10")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.fundsReserve?.coding?[0].code, "provider")
		XCTAssertEqual(inst.id, "100153")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "12355")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.value, "1000.0")
		XCTAssertEqual(inst.item?[0].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].code, "ORTHOEXAM")
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].unitPrice?.value, "1000.0")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.value, "1500.0")
		XCTAssertEqual(inst.item?[0].detail?[1].sequence, 2)
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].code, "ORTHODIAG")
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].unitPrice?.value, "1500.0")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.value, "500.0")
		XCTAssertEqual(inst.item?[0].detail?[2].sequence, 3)
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].code, "ORTHOINITIAL")
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].unitPrice?.value, "500.0")
		XCTAssertEqual(inst.item?[0].detail?[3].quantity?.value, "24")
		XCTAssertEqual(inst.item?[0].detail?[3].sequence, 4)
		XCTAssertEqual(inst.item?[0].detail?[3].service?.coding?[0].code, "ORTHOMONTHS")
		XCTAssertEqual(inst.item?[0].detail?[3].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.value, "250.0")
		XCTAssertEqual(inst.item?[0].detail?[4].quantity?.value, "24")
		XCTAssertEqual(inst.item?[0].detail?[4].sequence, 5)
		XCTAssertEqual(inst.item?[0].detail?[4].service?.coding?[0].code, "ORTHOPERIODIC")
		XCTAssertEqual(inst.item?[0].detail?[4].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].detail?[4].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[4].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[4].unitPrice?.value, "250.0")
		XCTAssertEqual(inst.item?[0].diagnosisLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "9000.0")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "ORTHPLAN")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2015-05-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "9000.0")
		XCTAssertEqual(inst.item?[1].bodySite?.coding?[0].code, "21")
		XCTAssertEqual(inst.item?[1].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[1].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].net?.value, "105.0")
		XCTAssertEqual(inst.item?[1].sequence, 2)
		XCTAssertEqual(inst.item?[1].service?.coding?[0].code, "21211")
		XCTAssertEqual(inst.item?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[1].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[1].subSite?[0].coding?[0].code, "L")
		XCTAssertEqual(inst.item?[1].subSite?[0].coding?[0].system?.absoluteString, "http://fdi.org/fhir/oralsurfacecodes")
		XCTAssertEqual(inst.item?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[1].unitPrice?.value, "105.0")
		XCTAssertEqual(inst.item?[2].bodySite?.coding?[0].code, "36")
		XCTAssertEqual(inst.item?[2].bodySite?.coding?[0].system?.absoluteString, "http://fdi.org/fhir/oraltoothcodes")
		XCTAssertEqual(inst.item?[2].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[2].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].net?.value, "750.0")
		XCTAssertEqual(inst.item?[2].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[2].detail?[0].service?.coding?[0].code, "27211")
		XCTAssertEqual(inst.item?[2].detail?[0].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[0].unitPrice?.value, "750.0")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].net?.value, "350.0")
		XCTAssertEqual(inst.item?[2].detail?[1].sequence, 2)
		XCTAssertEqual(inst.item?[2].detail?[1].service?.coding?[0].code, "lab")
		XCTAssertEqual(inst.item?[2].detail?[1].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].detail?[1].unitPrice?.value, "350.0")
		XCTAssertEqual(inst.item?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].net?.value, "1100.0")
		XCTAssertEqual(inst.item?[2].sequence, 3)
		XCTAssertEqual(inst.item?[2].service?.coding?[0].code, "27211")
		XCTAssertEqual(inst.item?[2].service?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.item?[2].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[2].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[2].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[2].unitPrice?.value, "1100.0")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Oral Health Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "proposed")!)
		
		return inst
	}
	
	func testClaim9() {
		do {
			let instance = try runClaim9()
			try runClaim9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-pharmacy-compound.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.id, "760152")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happypharma.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "7612345")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].code, "pharmacyrefill")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].code, "new")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-refill")
		XCTAssertEqual(inst.information?[0].sequence, 1)
		XCTAssertEqual(inst.information?[1].category?.coding?[0].code, "pharmacyinformation")
		XCTAssertEqual(inst.information?[1].code?.coding?[0].code, "refillsremaining")
		XCTAssertEqual(inst.information?[1].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-information")
		XCTAssertEqual(inst.information?[1].sequence, 2)
		XCTAssertEqual(inst.information?[1].valueQuantity?.value, "0")
		XCTAssertEqual(inst.information?[2].category?.coding?[0].code, "pharmacyinformation")
		XCTAssertEqual(inst.information?[2].code?.coding?[0].code, "dayssupply")
		XCTAssertEqual(inst.information?[2].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-information")
		XCTAssertEqual(inst.information?[2].sequence, 3)
		XCTAssertEqual(inst.information?[2].valueQuantity?.value, "10")
		XCTAssertEqual(inst.information?[3].category?.coding?[0].code, "pharmacy")
		XCTAssertEqual(inst.information?[3].code?.coding?[0].code, "capsule")
		XCTAssertEqual(inst.information?[3].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-form")
		XCTAssertEqual(inst.information?[3].sequence, 4)
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.value, "20.0")
		XCTAssertEqual(inst.item?[0].detail?[0].quantity?.unit, "mg")
		XCTAssertEqual(inst.item?[0].detail?[0].quantity?.value, "250")
		XCTAssertEqual(inst.item?[0].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].code, "44001")
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].display, "Acetaminophen 250mg")
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].system?.absoluteString, "http://localdruglist.org")
		XCTAssertEqual(inst.item?[0].detail?[0].subDetail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].subDetail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].subDetail?[0].net?.value, "20.0")
		XCTAssertEqual(inst.item?[0].detail?[0].subDetail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[0].subDetail?[0].service?.coding?[0].code, "drugcost")
		XCTAssertEqual(inst.item?[0].detail?[0].subDetail?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.value, "25.0")
		XCTAssertEqual(inst.item?[0].detail?[1].quantity?.unit, "mg")
		XCTAssertEqual(inst.item?[0].detail?[1].quantity?.value, "50")
		XCTAssertEqual(inst.item?[0].detail?[1].sequence, 2)
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].code, "44035")
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].display, "Phenacetin 50mg")
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].system?.absoluteString, "http://localdruglist.org")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].net?.value, "25.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].service?.coding?[0].code, "drugcost")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.value, "28.0")
		XCTAssertEqual(inst.item?[0].detail?[2].quantity?.unit, "mg")
		XCTAssertEqual(inst.item?[0].detail?[2].quantity?.value, "25")
		XCTAssertEqual(inst.item?[0].detail?[2].sequence, 3)
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].code, "44057")
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].display, "Codeine 25mg")
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].system?.absoluteString, "http://localdruglist.org")
		XCTAssertEqual(inst.item?[0].detail?[2].subDetail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].subDetail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].subDetail?[0].net?.value, "28.0")
		XCTAssertEqual(inst.item?[0].detail?[2].subDetail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[2].subDetail?[0].service?.coding?[0].code, "drugcost")
		XCTAssertEqual(inst.item?[0].detail?[2].subDetail?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].detail?[3].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[3].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[3].net?.value, "22.0")
		XCTAssertEqual(inst.item?[0].detail?[3].sequence, 2)
		XCTAssertEqual(inst.item?[0].detail?[3].service?.coding?[0].code, "markup")
		XCTAssertEqual(inst.item?[0].detail?[3].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[4].net?.value, "60.0")
		XCTAssertEqual(inst.item?[0].detail?[4].sequence, 3)
		XCTAssertEqual(inst.item?[0].detail?[4].service?.coding?[0].code, "compoundfee")
		XCTAssertEqual(inst.item?[0].detail?[4].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].informationLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].informationLinkId?[1], 2)
		XCTAssertEqual(inst.item?[0].informationLinkId?[2], 3)
		XCTAssertEqual(inst.item?[0].informationLinkId?[3], 4)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "155.0")
		XCTAssertEqual(inst.item?[0].quantity?.code, "TAB")
		XCTAssertEqual(inst.item?[0].quantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.item?[0].quantity?.unit, "TAB")
		XCTAssertEqual(inst.item?[0].quantity?.value, "30")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "compound")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].display, "Custom compound")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://localdruglist.org")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.priority?.coding?[0].code, "stat")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Pharmacy Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, "155.0")
		XCTAssertEqual(inst.type?.coding?[0].code, "pharmacy")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
	
	func testClaim10() {
		do {
			let instance = try runClaim10()
			try runClaim10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Claim successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaim10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaim {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claim-example-pharmacy-medication.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis?[0].diagnosisCodeableConcept?.coding?[0].code, "654456")
		XCTAssertEqual(inst.diagnosis?[0].sequence, 1)
		XCTAssertEqual(inst.id, "760151")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happypharma.com/claim")
		XCTAssertEqual(inst.identifier?[0].value, "7612345")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].code, "pharmacyrefill")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].code, "new")
		XCTAssertEqual(inst.information?[0].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-refill")
		XCTAssertEqual(inst.information?[0].sequence, 1)
		XCTAssertEqual(inst.information?[1].category?.coding?[0].code, "pharmacyinformation")
		XCTAssertEqual(inst.information?[1].code?.coding?[0].code, "refillsremaining")
		XCTAssertEqual(inst.information?[1].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-information")
		XCTAssertEqual(inst.information?[1].sequence, 2)
		XCTAssertEqual(inst.information?[1].valueQuantity?.value, "2")
		XCTAssertEqual(inst.information?[2].category?.coding?[0].code, "pharmacyinformation")
		XCTAssertEqual(inst.information?[2].code?.coding?[0].code, "dayssupply")
		XCTAssertEqual(inst.information?[2].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/pharmacy-information")
		XCTAssertEqual(inst.information?[2].sequence, 3)
		XCTAssertEqual(inst.information?[2].valueQuantity?.value, "90")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[0].net?.value, "45.0")
		XCTAssertEqual(inst.item?[0].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].code, "drugcost")
		XCTAssertEqual(inst.item?[0].detail?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[1].net?.value, "9.0")
		XCTAssertEqual(inst.item?[0].detail?[1].sequence, 2)
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].code, "markup")
		XCTAssertEqual(inst.item?[0].detail?[1].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].detail?[2].net?.value, "36.0")
		XCTAssertEqual(inst.item?[0].detail?[2].sequence, 3)
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].code, "dispensefee")
		XCTAssertEqual(inst.item?[0].detail?[2].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item?[0].informationLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].informationLinkId?[1], 2)
		XCTAssertEqual(inst.item?[0].informationLinkId?[2], 3)
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "90.0")
		XCTAssertEqual(inst.item?[0].quantity?.code, "TAB")
		XCTAssertEqual(inst.item?[0].quantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.item?[0].quantity?.unit, "TAB")
		XCTAssertEqual(inst.item?[0].quantity?.value, "90")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "562721")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].display, "Alprazolam 0.25mg (Xanax)")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/RxNorm")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.originalPrescription?.reference, "http://pharmacy.org/MedicationRequest/AB1202B")
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.prescription?.reference, "http://pharmacy.org/MedicationRequest/AB1234G")
		XCTAssertEqual(inst.priority?.coding?[0].code, "stat")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Pharmacy Claim</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, "90.0")
		XCTAssertEqual(inst.type?.coding?[0].code, "pharmacy")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
}
