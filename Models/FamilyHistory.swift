//
//  FamilyHistory.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/FamilyHistory) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  Information about patient's relatives, relevant for patient.
 *
 *  Significant health events and conditions for people related to the subject relevant in the context of care for the
 *  subject.
 */
public class FamilyHistory: DomainResource
{
	override public class var resourceName: String {
		get { return "FamilyHistory" }
	}
	
	/// When history was captured/updated
	public var date: DateTime?
	
	/// External Id(s) for this record
	public var identifier: [Identifier]?
	
	/// Additional details not covered elsewhere
	public var note: String?
	
	/// Patient history is about
	public var patient: Reference?
	
	/// Relative described by history
	public var relation: [FamilyHistoryRelation]?
	
	public convenience init(patient: Reference?) {
		self.init(json: nil)
		if nil != patient {
			self.patient = patient
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["patient"] as? JSONDictionary {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["relation"] as? [JSONDictionary] {
				self.relation = FamilyHistoryRelation.from(val, owner: self) as? [FamilyHistoryRelation]
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let relation = self.relation {
			json["relation"] = FamilyHistoryRelation.asJSONArray(relation)
		}
		
		return json
	}
}


/**
 *  Relative described by history.
 *
 *  The related person. Each FamilyHistory resource contains the entire family history for a single person.
 */
public class FamilyHistoryRelation: FHIRElement
{
	override public class var resourceName: String {
		get { return "FamilyHistoryRelation" }
	}
	
	/// (approximate) age
	public var ageAge: Age?
	
	/// (approximate) age
	public var ageRange: Range?
	
	/// (approximate) age
	public var ageString: String?
	
	/// (approximate) date of birth
	public var bornDate: Date?
	
	/// (approximate) date of birth
	public var bornPeriod: Period?
	
	/// (approximate) date of birth
	public var bornString: String?
	
	/// Condition that the related person had
	public var condition: [FamilyHistoryRelationCondition]?
	
	/// Dead? How old/when?
	public var deceasedAge: Age?
	
	/// Dead? How old/when?
	public var deceasedBoolean: Bool?
	
	/// Dead? How old/when?
	public var deceasedDate: Date?
	
	/// Dead? How old/when?
	public var deceasedRange: Range?
	
	/// Dead? How old/when?
	public var deceasedString: String?
	
	/// The family member described
	public var name: String?
	
	/// General note about related person
	public var note: String?
	
	/// Relationship to the subject
	public var relationship: CodeableConcept?
	
	public convenience init(relationship: CodeableConcept?) {
		self.init(json: nil)
		if nil != relationship {
			self.relationship = relationship
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["ageAge"] as? JSONDictionary {
				self.ageAge = Age(json: val, owner: self)
			}
			if let val = js["ageRange"] as? JSONDictionary {
				self.ageRange = Range(json: val, owner: self)
			}
			if let val = js["ageString"] as? String {
				self.ageString = val
			}
			if let val = js["bornDate"] as? String {
				self.bornDate = Date(string: val)
			}
			if let val = js["bornPeriod"] as? JSONDictionary {
				self.bornPeriod = Period(json: val, owner: self)
			}
			if let val = js["bornString"] as? String {
				self.bornString = val
			}
			if let val = js["condition"] as? [JSONDictionary] {
				self.condition = FamilyHistoryRelationCondition.from(val, owner: self) as? [FamilyHistoryRelationCondition]
			}
			if let val = js["deceasedAge"] as? JSONDictionary {
				self.deceasedAge = Age(json: val, owner: self)
			}
			if let val = js["deceasedBoolean"] as? Bool {
				self.deceasedBoolean = val
			}
			if let val = js["deceasedDate"] as? String {
				self.deceasedDate = Date(string: val)
			}
			if let val = js["deceasedRange"] as? JSONDictionary {
				self.deceasedRange = Range(json: val, owner: self)
			}
			if let val = js["deceasedString"] as? String {
				self.deceasedString = val
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["relationship"] as? JSONDictionary {
				self.relationship = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let ageAge = self.ageAge {
			json["ageAge"] = ageAge.asJSON()
		}
		if let ageRange = self.ageRange {
			json["ageRange"] = ageRange.asJSON()
		}
		if let ageString = self.ageString {
			json["ageString"] = ageString.asJSON()
		}
		if let bornDate = self.bornDate {
			json["bornDate"] = bornDate.asJSON()
		}
		if let bornPeriod = self.bornPeriod {
			json["bornPeriod"] = bornPeriod.asJSON()
		}
		if let bornString = self.bornString {
			json["bornString"] = bornString.asJSON()
		}
		if let condition = self.condition {
			json["condition"] = FamilyHistoryRelationCondition.asJSONArray(condition)
		}
		if let deceasedAge = self.deceasedAge {
			json["deceasedAge"] = deceasedAge.asJSON()
		}
		if let deceasedBoolean = self.deceasedBoolean {
			json["deceasedBoolean"] = deceasedBoolean.asJSON()
		}
		if let deceasedDate = self.deceasedDate {
			json["deceasedDate"] = deceasedDate.asJSON()
		}
		if let deceasedRange = self.deceasedRange {
			json["deceasedRange"] = deceasedRange.asJSON()
		}
		if let deceasedString = self.deceasedString {
			json["deceasedString"] = deceasedString.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let relationship = self.relationship {
			json["relationship"] = relationship.asJSON()
		}
		
		return json
	}
}


/**
 *  Condition that the related person had.
 *
 *  The significant Conditions (or condition) that the family member had. This is a repeating section to allow a system
 *  to represent more than one condition per resource, though there is nothing stopping multiple resources - one per
 *  condition.
 */
public class FamilyHistoryRelationCondition: FHIRElement
{
	override public class var resourceName: String {
		get { return "FamilyHistoryRelationCondition" }
	}
	
	/// Extra information about condition
	public var note: String?
	
	/// When condition first manifested
	public var onsetAge: Age?
	
	/// When condition first manifested
	public var onsetRange: Range?
	
	/// When condition first manifested
	public var onsetString: String?
	
	/// deceased | permanent disability | etc.
	public var outcome: CodeableConcept?
	
	/// Condition suffered by relation
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["onsetAge"] as? JSONDictionary {
				self.onsetAge = Age(json: val, owner: self)
			}
			if let val = js["onsetRange"] as? JSONDictionary {
				self.onsetRange = Range(json: val, owner: self)
			}
			if let val = js["onsetString"] as? String {
				self.onsetString = val
			}
			if let val = js["outcome"] as? JSONDictionary {
				self.outcome = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? JSONDictionary {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let onsetAge = self.onsetAge {
			json["onsetAge"] = onsetAge.asJSON()
		}
		if let onsetRange = self.onsetRange {
			json["onsetRange"] = onsetRange.asJSON()
		}
		if let onsetString = self.onsetString {
			json["onsetString"] = onsetString.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

