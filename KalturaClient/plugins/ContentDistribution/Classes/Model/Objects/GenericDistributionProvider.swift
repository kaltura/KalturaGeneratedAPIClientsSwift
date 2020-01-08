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

open class GenericDistributionProvider: DistributionProvider {

	public class GenericDistributionProviderTokenizer: DistributionProvider.DistributionProviderTokenizer {
		
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
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var optionalFlavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("optionalFlavorParamsIds") 
			}
		}
		
		public var requiredFlavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("requiredFlavorParamsIds") 
			}
		}
		
		public var optionalThumbDimensions: ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer> {
			get {
				return ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer>(self.append("optionalThumbDimensions"))
			} 
		}
		
		public var requiredThumbDimensions: ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer> {
			get {
				return ArrayTokenizedObject<DistributionThumbDimensions.DistributionThumbDimensionsTokenizer>(self.append("requiredThumbDimensions"))
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
	}

	/**  Auto generated  */
	public var id: Int? = nil
	/**  Generic distribution provider creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Generic distribution provider last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var partnerId: Int? = nil
	public var isDefault: Bool? = nil
	public var status: GenericDistributionProviderStatus? = nil
	public var optionalFlavorParamsIds: String? = nil
	public var requiredFlavorParamsIds: String? = nil
	public var optionalThumbDimensions: Array<DistributionThumbDimensions>? = nil
	public var requiredThumbDimensions: Array<DistributionThumbDimensions>? = nil
	public var editableFields: String? = nil
	public var mandatoryFields: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(optionalFlavorParamsIds: String) {
		self.dict["optionalFlavorParamsIds"] = optionalFlavorParamsIds
	}
	
	public func setMultiRequestToken(requiredFlavorParamsIds: String) {
		self.dict["requiredFlavorParamsIds"] = requiredFlavorParamsIds
	}
	
	public func setMultiRequestToken(editableFields: String) {
		self.dict["editableFields"] = editableFields
	}
	
	public func setMultiRequestToken(mandatoryFields: String) {
		self.dict["mandatoryFields"] = mandatoryFields
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
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["status"] != nil {
			status = GenericDistributionProviderStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["optionalFlavorParamsIds"] != nil {
			optionalFlavorParamsIds = dict["optionalFlavorParamsIds"] as? String
		}
		if dict["requiredFlavorParamsIds"] != nil {
			requiredFlavorParamsIds = dict["requiredFlavorParamsIds"] as? String
		}
		if dict["optionalThumbDimensions"] != nil {
			optionalThumbDimensions = try JSONParser.parse(array: dict["optionalThumbDimensions"] as! [Any])
		}
		if dict["requiredThumbDimensions"] != nil {
			requiredThumbDimensions = try JSONParser.parse(array: dict["requiredThumbDimensions"] as! [Any])
		}
		if dict["editableFields"] != nil {
			editableFields = dict["editableFields"] as? String
		}
		if dict["mandatoryFields"] != nil {
			mandatoryFields = dict["mandatoryFields"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(optionalFlavorParamsIds != nil) {
			dict["optionalFlavorParamsIds"] = optionalFlavorParamsIds!
		}
		if(requiredFlavorParamsIds != nil) {
			dict["requiredFlavorParamsIds"] = requiredFlavorParamsIds!
		}
		if(optionalThumbDimensions != nil) {
			dict["optionalThumbDimensions"] = optionalThumbDimensions!.map { value in value.toDictionary() }
		}
		if(requiredThumbDimensions != nil) {
			dict["requiredThumbDimensions"] = requiredThumbDimensions!.map { value in value.toDictionary() }
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

