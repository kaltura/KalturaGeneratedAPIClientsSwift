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
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class MetadataBaseFilter: RelatedFilter {

	public class MetadataBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var metadataProfileIdEqual: BaseTokenizedObject {
			get {
				return self.append("metadataProfileIdEqual") 
			}
		}
		
		public var metadataProfileIdIn: BaseTokenizedObject {
			get {
				return self.append("metadataProfileIdIn") 
			}
		}
		
		public var metadataProfileVersionEqual: BaseTokenizedObject {
			get {
				return self.append("metadataProfileVersionEqual") 
			}
		}
		
		public var metadataProfileVersionGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("metadataProfileVersionGreaterThanOrEqual") 
			}
		}
		
		public var metadataProfileVersionLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("metadataProfileVersionLessThanOrEqual") 
			}
		}
		
		public var metadataObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("metadataObjectTypeEqual") 
			}
		}
		
		public var objectIdEqual: BaseTokenizedObject {
			get {
				return self.append("objectIdEqual") 
			}
		}
		
		public var objectIdIn: BaseTokenizedObject {
			get {
				return self.append("objectIdIn") 
			}
		}
		
		public var versionEqual: BaseTokenizedObject {
			get {
				return self.append("versionEqual") 
			}
		}
		
		public var versionGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("versionGreaterThanOrEqual") 
			}
		}
		
		public var versionLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("versionLessThanOrEqual") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
	}

	public var partnerIdEqual: Int? = nil
	public var metadataProfileIdEqual: Int? = nil
	public var metadataProfileIdIn: String? = nil
	public var metadataProfileVersionEqual: Int? = nil
	public var metadataProfileVersionGreaterThanOrEqual: Int? = nil
	public var metadataProfileVersionLessThanOrEqual: Int? = nil
	/**  When null, default is KalturaMetadataObjectType::ENTRY  */
	public var metadataObjectTypeEqual: MetadataObjectType? = nil
	public var objectIdEqual: String? = nil
	public var objectIdIn: String? = nil
	public var versionEqual: Int? = nil
	public var versionGreaterThanOrEqual: Int? = nil
	public var versionLessThanOrEqual: Int? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var statusEqual: MetadataStatus? = nil
	public var statusIn: String? = nil


	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(metadataProfileIdEqual: String) {
		self.dict["metadataProfileIdEqual"] = metadataProfileIdEqual
	}
	
	public func setMultiRequestToken(metadataProfileIdIn: String) {
		self.dict["metadataProfileIdIn"] = metadataProfileIdIn
	}
	
	public func setMultiRequestToken(metadataProfileVersionEqual: String) {
		self.dict["metadataProfileVersionEqual"] = metadataProfileVersionEqual
	}
	
	public func setMultiRequestToken(metadataProfileVersionGreaterThanOrEqual: String) {
		self.dict["metadataProfileVersionGreaterThanOrEqual"] = metadataProfileVersionGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(metadataProfileVersionLessThanOrEqual: String) {
		self.dict["metadataProfileVersionLessThanOrEqual"] = metadataProfileVersionLessThanOrEqual
	}
	
	public func setMultiRequestToken(metadataObjectTypeEqual: String) {
		self.dict["metadataObjectTypeEqual"] = metadataObjectTypeEqual
	}
	
	public func setMultiRequestToken(objectIdEqual: String) {
		self.dict["objectIdEqual"] = objectIdEqual
	}
	
	public func setMultiRequestToken(objectIdIn: String) {
		self.dict["objectIdIn"] = objectIdIn
	}
	
	public func setMultiRequestToken(versionEqual: String) {
		self.dict["versionEqual"] = versionEqual
	}
	
	public func setMultiRequestToken(versionGreaterThanOrEqual: String) {
		self.dict["versionGreaterThanOrEqual"] = versionGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(versionLessThanOrEqual: String) {
		self.dict["versionLessThanOrEqual"] = versionLessThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["metadataProfileIdEqual"] != nil {
			metadataProfileIdEqual = dict["metadataProfileIdEqual"] as? Int
		}
		if dict["metadataProfileIdIn"] != nil {
			metadataProfileIdIn = dict["metadataProfileIdIn"] as? String
		}
		if dict["metadataProfileVersionEqual"] != nil {
			metadataProfileVersionEqual = dict["metadataProfileVersionEqual"] as? Int
		}
		if dict["metadataProfileVersionGreaterThanOrEqual"] != nil {
			metadataProfileVersionGreaterThanOrEqual = dict["metadataProfileVersionGreaterThanOrEqual"] as? Int
		}
		if dict["metadataProfileVersionLessThanOrEqual"] != nil {
			metadataProfileVersionLessThanOrEqual = dict["metadataProfileVersionLessThanOrEqual"] as? Int
		}
		if dict["metadataObjectTypeEqual"] != nil {
			metadataObjectTypeEqual = MetadataObjectType(rawValue: "\(dict["metadataObjectTypeEqual"]!)")
		}
		if dict["objectIdEqual"] != nil {
			objectIdEqual = dict["objectIdEqual"] as? String
		}
		if dict["objectIdIn"] != nil {
			objectIdIn = dict["objectIdIn"] as? String
		}
		if dict["versionEqual"] != nil {
			versionEqual = dict["versionEqual"] as? Int
		}
		if dict["versionGreaterThanOrEqual"] != nil {
			versionGreaterThanOrEqual = dict["versionGreaterThanOrEqual"] as? Int
		}
		if dict["versionLessThanOrEqual"] != nil {
			versionLessThanOrEqual = dict["versionLessThanOrEqual"] as? Int
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = MetadataStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(metadataProfileIdEqual != nil) {
			dict["metadataProfileIdEqual"] = metadataProfileIdEqual!
		}
		if(metadataProfileIdIn != nil) {
			dict["metadataProfileIdIn"] = metadataProfileIdIn!
		}
		if(metadataProfileVersionEqual != nil) {
			dict["metadataProfileVersionEqual"] = metadataProfileVersionEqual!
		}
		if(metadataProfileVersionGreaterThanOrEqual != nil) {
			dict["metadataProfileVersionGreaterThanOrEqual"] = metadataProfileVersionGreaterThanOrEqual!
		}
		if(metadataProfileVersionLessThanOrEqual != nil) {
			dict["metadataProfileVersionLessThanOrEqual"] = metadataProfileVersionLessThanOrEqual!
		}
		if(metadataObjectTypeEqual != nil) {
			dict["metadataObjectTypeEqual"] = metadataObjectTypeEqual!.rawValue
		}
		if(objectIdEqual != nil) {
			dict["objectIdEqual"] = objectIdEqual!
		}
		if(objectIdIn != nil) {
			dict["objectIdIn"] = objectIdIn!
		}
		if(versionEqual != nil) {
			dict["versionEqual"] = versionEqual!
		}
		if(versionGreaterThanOrEqual != nil) {
			dict["versionGreaterThanOrEqual"] = versionGreaterThanOrEqual!
		}
		if(versionLessThanOrEqual != nil) {
			dict["versionLessThanOrEqual"] = versionLessThanOrEqual!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		return dict
	}
}

