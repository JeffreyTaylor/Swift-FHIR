//
//  Media.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.4746 (http://hl7.org/fhir/StructureDefinition/Media) on 2015-03-19.
//  2015, SMART Platforms.
//

import Foundation


/**
 *  A photo, video, or audio recording acquired or used in healthcare. The actual content may be inline or provided by
 *  direct reference.
 */
public class Media: DomainResource
{
	override public class var resourceName: String {
		get { return "Media" }
	}
	
	/// Actual Media - reference or data
	public var content: Attachment?
	
	/// Name of the device/manufacturer
	public var deviceName: String?
	
	/// Length in seconds (audio / video)
	public var duration: Int?
	
	/// Number of frames if > 1 (photo)
	public var frames: Int?
	
	/// Height of the image in pixels(photo/video)
	public var height: Int?
	
	/// Identifier(s) for the image
	public var identifier: [Identifier]?
	
	/// The person who generated the image
	public var operator_fhir: Reference?
	
	/// Who/What this Media is a record of
	public var subject: Reference?
	
	/// The type of acquisition equipment/process
	public var subtype: CodeableConcept?
	
	/// photo | video | audio
	public var type: String?
	
	/// Imaging view e.g Lateral or Antero-posterior
	public var view: CodeableConcept?
	
	/// Width of the image in pixels (photo/video)
	public var width: Int?
	
	public convenience init(content: Attachment?, type: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: JSONDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["content"] as? JSONDictionary {
				self.content = Attachment(json: val, owner: self)
			}
			if let val = js["deviceName"] as? String {
				self.deviceName = val
			}
			if let val = js["duration"] as? Int {
				self.duration = val
			}
			if let val = js["frames"] as? Int {
				self.frames = val
			}
			if let val = js["height"] as? Int {
				self.height = val
			}
			if let val = js["identifier"] as? [JSONDictionary] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["operator"] as? JSONDictionary {
				self.operator_fhir = Reference(json: val, owner: self)
			}
			if let val = js["subject"] as? JSONDictionary {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["subtype"] as? JSONDictionary {
				self.subtype = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? String {
				self.type = val
			}
			if let val = js["view"] as? JSONDictionary {
				self.view = CodeableConcept(json: val, owner: self)
			}
			if let val = js["width"] as? Int {
				self.width = val
			}
		}
	}
	
	override public func asJSON() -> JSONDictionary {
		var json = super.asJSON()
		
		if let content = self.content {
			json["content"] = content.asJSON()
		}
		if let deviceName = self.deviceName {
			json["deviceName"] = deviceName.asJSON()
		}
		if let duration = self.duration {
			json["duration"] = duration.asJSON()
		}
		if let frames = self.frames {
			json["frames"] = frames.asJSON()
		}
		if let height = self.height {
			json["height"] = height.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let operator_fhir = self.operator_fhir {
			json["operator"] = operator_fhir.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let subtype = self.subtype {
			json["subtype"] = subtype.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let view = self.view {
			json["view"] = view.asJSON()
		}
		if let width = self.width {
			json["width"] = width.asJSON()
		}
		
		return json
	}
}

