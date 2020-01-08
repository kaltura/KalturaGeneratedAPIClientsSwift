// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2020  Kaltura Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================

/**
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class GenericDistributionProviderAction: ObjectBase {

	public class GenericDistributionProviderActionTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var genericDistributionProviderId: BaseTokenizedObject {
			get {
				return self.append("genericDistributionProviderId") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var resultsParser: BaseTokenizedObject {
			get {
				return self.append("resultsParser") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var serverAddress: BaseTokenizedObject {
			get {
				return self.append("serverAddress") 
			}
		}
		
		public var remotePath: BaseTokenizedObject {
			get {
				return self.append("remotePath") 
			}
		}
		
		public var remoteUsername: BaseTokenizedObject {
			get {
				return self.append("remoteUsername") 
			}
		}
		
		public var remotePassword: BaseTokenizedObject {
			get {
				return self.append("remotePassword") 
			}
		}
		
		public var editableFields: BaseTokenizedObject {
			get {
				return self.append("editableFields") 
			}
		}
		
		public var mandatoryFields: BaseTokenizedObject {
			get {
				return self.append("mandatoryFields") 
			}
		}
		
		public var mrssTransformer: BaseTokenizedObject {
			get {
				return self.append("mrssTransformer") 
			}
		}
		
		public var mrssValidator: BaseTokenizedObject {
			get {
				return self.append("mrssValidator") 
			}
		}
		
		public var resultsTransformer: BaseTokenizedObject {
			get {
				return self.append("resultsTransformer") 
			}
		}
	}

	/**  Auto generated  */
	public var id: Int? = nil
	/**  Generic distribution provider action creation date as Unix timestamp (In
	  seconds)  */
	public var createdAt: Int? = nil
	/**  Generic distribution provider action last update date as Unix timestamp (In
	  seconds)  */
	public var updatedAt: Int? = nil
	public var genericDistributionProviderId: Int? = nil
	public var action: DistributionAction? = nil
	public var status: GenericDistributionProviderStatus? = nil
	public var resultsParser: GenericDistributionProviderParser? = nil
	public var protocol_: DistributionProtocol? = nil
	public var serverAddress: String? = nil
	public var remotePath: String? = nil
	public var remoteUsername: String? = nil
	public var remotePassword: String? = nil
	public var editableFields: String? = nil
	public var mandatoryFields: String? = nil
	public var mrssTransformer: String? = nil
	public var mrssValidator: String? = nil
	public var resultsTransformer: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(genericDistributionProviderId: String) {
		self.dict["genericDistributionProviderId"] = genericDistributionProviderId
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(resultsParser: String) {
		self.dict["resultsParser"] = resultsParser
	}
	
	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(serverAddress: String) {
		self.dict["serverAddress"] = serverAddress
	}
	
	public func setMultiRequestToken(remotePath: String) {
		self.dict["remotePath"] = remotePath
	}
	
	public func setMultiRequestToken(remoteUsername: String) {
		self.dict["remoteUsername"] = remoteUsername
	}
	
	public func setMultiRequestToken(remotePassword: String) {
		self.dict["remotePassword"] = remotePassword
	}
	
	public func setMultiRequestToken(editableFields: String) {
		self.dict["editableFields"] = editableFields
	}
	
	public func setMultiRequestToken(mandatoryFields: String) {
		self.dict["mandatoryFields"] = mandatoryFields
	}
	
	public func setMultiRequestToken(mrssTransformer: String) {
		self.dict["mrssTransformer"] = mrssTransformer
	}
	
	public func setMultiRequestToken(mrssValidator: String) {
		self.dict["mrssValidator"] = mrssValidator
	}
	
	public func setMultiRequestToken(resultsTransformer: String) {
		self.dict["resultsTransformer"] = resultsTransformer
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["genericDistributionProviderId"] != nil {
			genericDistributionProviderId = dict["genericDistributionProviderId"] as? Int
		}
		if dict["action"] != nil {
			action = DistributionAction(rawValue: (dict["action"] as? Int)!)
		}
		if dict["status"] != nil {
			status = GenericDistributionProviderStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["resultsParser"] != nil {
			resultsParser = GenericDistributionProviderParser(rawValue: (dict["resultsParser"] as? Int)!)
		}
		if dict["protocol"] != nil {
			protocol_ = DistributionProtocol(rawValue: (dict["protocol"] as? Int)!)
		}
		if dict["serverAddress"] != nil {
			serverAddress = dict["serverAddress"] as? String
		}
		if dict["remotePath"] != nil {
			remotePath = dict["remotePath"] as? String
		}
		if dict["remoteUsername"] != nil {
			remoteUsername = dict["remoteUsername"] as? String
		}
		if dict["remotePassword"] != nil {
			remotePassword = dict["remotePassword"] as? String
		}
		if dict["editableFields"] != nil {
			editableFields = dict["editableFields"] as? String
		}
		if dict["mandatoryFields"] != nil {
			mandatoryFields = dict["mandatoryFields"] as? String
		}
		if dict["mrssTransformer"] != nil {
			mrssTransformer = dict["mrssTransformer"] as? String
		}
		if dict["mrssValidator"] != nil {
			mrssValidator = dict["mrssValidator"] as? String
		}
		if dict["resultsTransformer"] != nil {
			resultsTransformer = dict["resultsTransformer"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(genericDistributionProviderId != nil) {
			dict["genericDistributionProviderId"] = genericDistributionProviderId!
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(resultsParser != nil) {
			dict["resultsParser"] = resultsParser!.rawValue
		}
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!.rawValue
		}
		if(serverAddress != nil) {
			dict["serverAddress"] = serverAddress!
		}
		if(remotePath != nil) {
			dict["remotePath"] = remotePath!
		}
		if(remoteUsername != nil) {
			dict["remoteUsername"] = remoteUsername!
		}
		if(remotePassword != nil) {
			dict["remotePassword"] = remotePassword!
		}
		if(editableFields != nil) {
			dict["editableFields"] = editableFields!
		}
		if(mandatoryFields != nil) {
			dict["mandatoryFields"] = mandatoryFields!
		}
		return dict
	}
}

