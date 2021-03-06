//
//  DocumentManifest.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b (http://hl7.org/fhir/StructureDefinition/DocumentManifest) on 2019-03-01.
//  2019, SMART Health IT.
//

import Foundation


/**
A list that defines a set of documents.

A collection of documents compiled for a purpose together with metadata that applies to the collection.
*/
open class DocumentManifest: DomainResource {
	override open class var resourceType: String {
		get { return "DocumentManifest" }
	}
	
	/// Who and/or what authored the DocumentManifest.
	public var author: [Reference]?
	
	/// Items in manifest.
	public var content: [Reference]?
	
	/// When this document manifest created.
	public var created: DateTime?
	
	/// Human-readable description (title).
	public var description_fhir: FHIRString?
	
	/// Other identifiers for the manifest.
	public var identifier: [Identifier]?
	
	/// Unique Identifier for the set of documents.
	public var masterIdentifier: Identifier?
	
	/// Intended to get notified about this set of documents.
	public var recipient: [Reference]?
	
	/// Related things.
	public var related: [DocumentManifestRelated]?
	
	/// The source system/application/software.
	public var source: FHIRURL?
	
	/// The status of this document manifest.
	public var status: DocumentReferenceStatus?
	
	/// The subject of the set of documents.
	public var subject: Reference?
	
	/// Kind of document set.
	public var type: CodeableConcept?
	
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(content: [Reference], status: DocumentReferenceStatus) {
		self.init()
		self.content = content
		self.status = status
	}
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		author = createInstances(of: Reference.self, for: "author", in: json, context: &instCtx, owner: self) ?? author
		content = createInstances(of: Reference.self, for: "content", in: json, context: &instCtx, owner: self) ?? content
		if (nil == content || content!.isEmpty) && !instCtx.containsKey("content") {
			instCtx.addError(FHIRValidationError(missing: "content"))
		}
		created = createInstance(type: DateTime.self, for: "created", in: json, context: &instCtx, owner: self) ?? created
		description_fhir = createInstance(type: FHIRString.self, for: "description", in: json, context: &instCtx, owner: self) ?? description_fhir
		identifier = createInstances(of: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		masterIdentifier = createInstance(type: Identifier.self, for: "masterIdentifier", in: json, context: &instCtx, owner: self) ?? masterIdentifier
		recipient = createInstances(of: Reference.self, for: "recipient", in: json, context: &instCtx, owner: self) ?? recipient
		related = createInstances(of: DocumentManifestRelated.self, for: "related", in: json, context: &instCtx, owner: self) ?? related
		source = createInstance(type: FHIRURL.self, for: "source", in: json, context: &instCtx, owner: self) ?? source
		status = createEnum(type: DocumentReferenceStatus.self, for: "status", in: json, context: &instCtx) ?? status
		if nil == status && !instCtx.containsKey("status") {
			instCtx.addError(FHIRValidationError(missing: "status"))
		}
		subject = createInstance(type: Reference.self, for: "subject", in: json, context: &instCtx, owner: self) ?? subject
		type = createInstance(type: CodeableConcept.self, for: "type", in: json, context: &instCtx, owner: self) ?? type
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		arrayDecorate(json: &json, withKey: "author", using: self.author, errors: &errors)
		arrayDecorate(json: &json, withKey: "content", using: self.content, errors: &errors)
		if nil == content || self.content!.isEmpty {
			errors.append(FHIRValidationError(missing: "content"))
		}
		self.created?.decorate(json: &json, withKey: "created", errors: &errors)
		self.description_fhir?.decorate(json: &json, withKey: "description", errors: &errors)
		arrayDecorate(json: &json, withKey: "identifier", using: self.identifier, errors: &errors)
		self.masterIdentifier?.decorate(json: &json, withKey: "masterIdentifier", errors: &errors)
		arrayDecorate(json: &json, withKey: "recipient", using: self.recipient, errors: &errors)
		arrayDecorate(json: &json, withKey: "related", using: self.related, errors: &errors)
		self.source?.decorate(json: &json, withKey: "source", errors: &errors)
		self.status?.decorate(json: &json, withKey: "status", errors: &errors)
		if nil == self.status {
			errors.append(FHIRValidationError(missing: "status"))
		}
		self.subject?.decorate(json: &json, withKey: "subject", errors: &errors)
		self.type?.decorate(json: &json, withKey: "type", errors: &errors)
	}
}


/**
Related things.

Related identifiers or resources associated with the DocumentManifest.
*/
open class DocumentManifestRelated: BackboneElement {
	override open class var resourceType: String {
		get { return "DocumentManifestRelated" }
	}
	
	/// Identifiers of things that are related.
	public var identifier: Identifier?
	
	/// Related Resource.
	public var ref: Reference?
	
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		
		identifier = createInstance(type: Identifier.self, for: "identifier", in: json, context: &instCtx, owner: self) ?? identifier
		ref = createInstance(type: Reference.self, for: "ref", in: json, context: &instCtx, owner: self) ?? ref
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		
		self.identifier?.decorate(json: &json, withKey: "identifier", errors: &errors)
		self.ref?.decorate(json: &json, withKey: "ref", errors: &errors)
	}
}

