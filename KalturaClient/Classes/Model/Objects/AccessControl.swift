// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class AccessControl: ObjectBase {

	public class AccessControlTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var restrictions: ArrayTokenizedObject<BaseRestriction.BaseRestrictionTokenizer> {
			get {
				return ArrayTokenizedObject<BaseRestriction.BaseRestrictionTokenizer>(self.append("restrictions"))
			} 
		}
		
		public var containsUnsuportedRestrictions: BaseTokenizedObject {
			get {
				return self.append("containsUnsuportedRestrictions") 
			}
		}
	}

	/**  The id of the Access Control Profile  */
	public var id: Int? = nil
	public var partnerId: Int? = nil
	/**  The name of the Access Control Profile  */
	public var name: String? = nil
	/**  System name of the Access Control Profile  */
	public var systemName: String? = nil
	/**  The description of the Access Control Profile  */
	public var description: String? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  True if this Conversion Profile is the default  */
	public var isDefault: Bool? = nil
	/**  Array of Access Control Restrictions  */
	public var restrictions: Array<BaseRestriction>? = nil
	/**  Indicates that the access control profile is new and should be handled using
	  KalturaAccessControlProfile object and accessControlProfile service  */
	public var containsUnsuportedRestrictions: Bool? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(containsUnsuportedRestrictions: String) {
		self.dict["containsUnsuportedRestrictions"] = containsUnsuportedRestrictions
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["restrictions"] != nil {
			restrictions = try JSONParser.parse(array: dict["restrictions"] as! [Any])
		}
		if dict["containsUnsuportedRestrictions"] != nil {
			containsUnsuportedRestrictions = dict["containsUnsuportedRestrictions"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(restrictions != nil) {
			dict["restrictions"] = restrictions!.map { value in value.toDictionary() }
		}
		return dict
	}
}

