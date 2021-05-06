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

open class FileSyncBaseFilter: Filter {

	public class FileSyncBaseFilterTokenizer: Filter.FilterTokenizer {
		
		public var partnerIdEqual: BaseTokenizedObject {
			get {
				return self.append("partnerIdEqual") 
			}
		}
		
		public var fileObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("fileObjectTypeEqual") 
			}
		}
		
		public var fileObjectTypeIn: BaseTokenizedObject {
			get {
				return self.append("fileObjectTypeIn") 
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
		
		public var versionIn: BaseTokenizedObject {
			get {
				return self.append("versionIn") 
			}
		}
		
		public var objectSubTypeEqual: BaseTokenizedObject {
			get {
				return self.append("objectSubTypeEqual") 
			}
		}
		
		public var objectSubTypeIn: BaseTokenizedObject {
			get {
				return self.append("objectSubTypeIn") 
			}
		}
		
		public var dcEqual: BaseTokenizedObject {
			get {
				return self.append("dcEqual") 
			}
		}
		
		public var dcIn: BaseTokenizedObject {
			get {
				return self.append("dcIn") 
			}
		}
		
		public var originalEqual: BaseTokenizedObject {
			get {
				return self.append("originalEqual") 
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
		
		public var readyAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("readyAtGreaterThanOrEqual") 
			}
		}
		
		public var readyAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("readyAtLessThanOrEqual") 
			}
		}
		
		public var syncTimeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("syncTimeGreaterThanOrEqual") 
			}
		}
		
		public var syncTimeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("syncTimeLessThanOrEqual") 
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
		
		public var fileTypeEqual: BaseTokenizedObject {
			get {
				return self.append("fileTypeEqual") 
			}
		}
		
		public var fileTypeIn: BaseTokenizedObject {
			get {
				return self.append("fileTypeIn") 
			}
		}
		
		public var linkedIdEqual: BaseTokenizedObject {
			get {
				return self.append("linkedIdEqual") 
			}
		}
		
		public var linkCountGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("linkCountGreaterThanOrEqual") 
			}
		}
		
		public var linkCountLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("linkCountLessThanOrEqual") 
			}
		}
		
		public var fileSizeGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("fileSizeGreaterThanOrEqual") 
			}
		}
		
		public var fileSizeLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("fileSizeLessThanOrEqual") 
			}
		}
	}

	public var partnerIdEqual: Int? = nil
	public var fileObjectTypeEqual: FileSyncObjectType? = nil
	public var fileObjectTypeIn: String? = nil
	public var objectIdEqual: String? = nil
	public var objectIdIn: String? = nil
	public var versionEqual: String? = nil
	public var versionIn: String? = nil
	public var objectSubTypeEqual: Int? = nil
	public var objectSubTypeIn: String? = nil
	public var dcEqual: String? = nil
	public var dcIn: String? = nil
	public var originalEqual: Int? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var readyAtGreaterThanOrEqual: Int? = nil
	public var readyAtLessThanOrEqual: Int? = nil
	public var syncTimeGreaterThanOrEqual: Int? = nil
	public var syncTimeLessThanOrEqual: Int? = nil
	public var statusEqual: FileSyncStatus? = nil
	public var statusIn: String? = nil
	public var fileTypeEqual: FileSyncType? = nil
	public var fileTypeIn: String? = nil
	public var linkedIdEqual: Int? = nil
	public var linkCountGreaterThanOrEqual: Int? = nil
	public var linkCountLessThanOrEqual: Int? = nil
	public var fileSizeGreaterThanOrEqual: Double? = nil
	public var fileSizeLessThanOrEqual: Double? = nil


	public func setMultiRequestToken(partnerIdEqual: String) {
		self.dict["partnerIdEqual"] = partnerIdEqual
	}
	
	public func setMultiRequestToken(fileObjectTypeEqual: String) {
		self.dict["fileObjectTypeEqual"] = fileObjectTypeEqual
	}
	
	public func setMultiRequestToken(fileObjectTypeIn: String) {
		self.dict["fileObjectTypeIn"] = fileObjectTypeIn
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
	
	public func setMultiRequestToken(versionIn: String) {
		self.dict["versionIn"] = versionIn
	}
	
	public func setMultiRequestToken(objectSubTypeEqual: String) {
		self.dict["objectSubTypeEqual"] = objectSubTypeEqual
	}
	
	public func setMultiRequestToken(objectSubTypeIn: String) {
		self.dict["objectSubTypeIn"] = objectSubTypeIn
	}
	
	public func setMultiRequestToken(dcEqual: String) {
		self.dict["dcEqual"] = dcEqual
	}
	
	public func setMultiRequestToken(dcIn: String) {
		self.dict["dcIn"] = dcIn
	}
	
	public func setMultiRequestToken(originalEqual: String) {
		self.dict["originalEqual"] = originalEqual
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
	
	public func setMultiRequestToken(readyAtGreaterThanOrEqual: String) {
		self.dict["readyAtGreaterThanOrEqual"] = readyAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(readyAtLessThanOrEqual: String) {
		self.dict["readyAtLessThanOrEqual"] = readyAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(syncTimeGreaterThanOrEqual: String) {
		self.dict["syncTimeGreaterThanOrEqual"] = syncTimeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(syncTimeLessThanOrEqual: String) {
		self.dict["syncTimeLessThanOrEqual"] = syncTimeLessThanOrEqual
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(fileTypeEqual: String) {
		self.dict["fileTypeEqual"] = fileTypeEqual
	}
	
	public func setMultiRequestToken(fileTypeIn: String) {
		self.dict["fileTypeIn"] = fileTypeIn
	}
	
	public func setMultiRequestToken(linkedIdEqual: String) {
		self.dict["linkedIdEqual"] = linkedIdEqual
	}
	
	public func setMultiRequestToken(linkCountGreaterThanOrEqual: String) {
		self.dict["linkCountGreaterThanOrEqual"] = linkCountGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(linkCountLessThanOrEqual: String) {
		self.dict["linkCountLessThanOrEqual"] = linkCountLessThanOrEqual
	}
	
	public func setMultiRequestToken(fileSizeGreaterThanOrEqual: String) {
		self.dict["fileSizeGreaterThanOrEqual"] = fileSizeGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(fileSizeLessThanOrEqual: String) {
		self.dict["fileSizeLessThanOrEqual"] = fileSizeLessThanOrEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["fileObjectTypeEqual"] != nil {
			fileObjectTypeEqual = FileSyncObjectType(rawValue: "\(dict["fileObjectTypeEqual"]!)")
		}
		if dict["fileObjectTypeIn"] != nil {
			fileObjectTypeIn = dict["fileObjectTypeIn"] as? String
		}
		if dict["objectIdEqual"] != nil {
			objectIdEqual = dict["objectIdEqual"] as? String
		}
		if dict["objectIdIn"] != nil {
			objectIdIn = dict["objectIdIn"] as? String
		}
		if dict["versionEqual"] != nil {
			versionEqual = dict["versionEqual"] as? String
		}
		if dict["versionIn"] != nil {
			versionIn = dict["versionIn"] as? String
		}
		if dict["objectSubTypeEqual"] != nil {
			objectSubTypeEqual = dict["objectSubTypeEqual"] as? Int
		}
		if dict["objectSubTypeIn"] != nil {
			objectSubTypeIn = dict["objectSubTypeIn"] as? String
		}
		if dict["dcEqual"] != nil {
			dcEqual = dict["dcEqual"] as? String
		}
		if dict["dcIn"] != nil {
			dcIn = dict["dcIn"] as? String
		}
		if dict["originalEqual"] != nil {
			originalEqual = dict["originalEqual"] as? Int
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
		if dict["readyAtGreaterThanOrEqual"] != nil {
			readyAtGreaterThanOrEqual = dict["readyAtGreaterThanOrEqual"] as? Int
		}
		if dict["readyAtLessThanOrEqual"] != nil {
			readyAtLessThanOrEqual = dict["readyAtLessThanOrEqual"] as? Int
		}
		if dict["syncTimeGreaterThanOrEqual"] != nil {
			syncTimeGreaterThanOrEqual = dict["syncTimeGreaterThanOrEqual"] as? Int
		}
		if dict["syncTimeLessThanOrEqual"] != nil {
			syncTimeLessThanOrEqual = dict["syncTimeLessThanOrEqual"] as? Int
		}
		if dict["statusEqual"] != nil {
			statusEqual = FileSyncStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["fileTypeEqual"] != nil {
			fileTypeEqual = FileSyncType(rawValue: (dict["fileTypeEqual"] as? Int)!)
		}
		if dict["fileTypeIn"] != nil {
			fileTypeIn = dict["fileTypeIn"] as? String
		}
		if dict["linkedIdEqual"] != nil {
			linkedIdEqual = dict["linkedIdEqual"] as? Int
		}
		if dict["linkCountGreaterThanOrEqual"] != nil {
			linkCountGreaterThanOrEqual = dict["linkCountGreaterThanOrEqual"] as? Int
		}
		if dict["linkCountLessThanOrEqual"] != nil {
			linkCountLessThanOrEqual = dict["linkCountLessThanOrEqual"] as? Int
		}
		if dict["fileSizeGreaterThanOrEqual"] != nil {
			fileSizeGreaterThanOrEqual = dict["fileSizeGreaterThanOrEqual"] as? Double
		}
		if dict["fileSizeLessThanOrEqual"] != nil {
			fileSizeLessThanOrEqual = dict["fileSizeLessThanOrEqual"] as? Double
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(fileObjectTypeEqual != nil) {
			dict["fileObjectTypeEqual"] = fileObjectTypeEqual!.rawValue
		}
		if(fileObjectTypeIn != nil) {
			dict["fileObjectTypeIn"] = fileObjectTypeIn!
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
		if(versionIn != nil) {
			dict["versionIn"] = versionIn!
		}
		if(objectSubTypeEqual != nil) {
			dict["objectSubTypeEqual"] = objectSubTypeEqual!
		}
		if(objectSubTypeIn != nil) {
			dict["objectSubTypeIn"] = objectSubTypeIn!
		}
		if(dcEqual != nil) {
			dict["dcEqual"] = dcEqual!
		}
		if(dcIn != nil) {
			dict["dcIn"] = dcIn!
		}
		if(originalEqual != nil) {
			dict["originalEqual"] = originalEqual!
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
		if(readyAtGreaterThanOrEqual != nil) {
			dict["readyAtGreaterThanOrEqual"] = readyAtGreaterThanOrEqual!
		}
		if(readyAtLessThanOrEqual != nil) {
			dict["readyAtLessThanOrEqual"] = readyAtLessThanOrEqual!
		}
		if(syncTimeGreaterThanOrEqual != nil) {
			dict["syncTimeGreaterThanOrEqual"] = syncTimeGreaterThanOrEqual!
		}
		if(syncTimeLessThanOrEqual != nil) {
			dict["syncTimeLessThanOrEqual"] = syncTimeLessThanOrEqual!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(fileTypeEqual != nil) {
			dict["fileTypeEqual"] = fileTypeEqual!.rawValue
		}
		if(fileTypeIn != nil) {
			dict["fileTypeIn"] = fileTypeIn!
		}
		if(linkedIdEqual != nil) {
			dict["linkedIdEqual"] = linkedIdEqual!
		}
		if(linkCountGreaterThanOrEqual != nil) {
			dict["linkCountGreaterThanOrEqual"] = linkCountGreaterThanOrEqual!
		}
		if(linkCountLessThanOrEqual != nil) {
			dict["linkCountLessThanOrEqual"] = linkCountLessThanOrEqual!
		}
		if(fileSizeGreaterThanOrEqual != nil) {
			dict["fileSizeGreaterThanOrEqual"] = fileSizeGreaterThanOrEqual!
		}
		if(fileSizeLessThanOrEqual != nil) {
			dict["fileSizeLessThanOrEqual"] = fileSizeLessThanOrEqual!
		}
		return dict
	}
}

