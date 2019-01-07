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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class AuditTrailFileSyncCreateInfo: AuditTrailInfo {

	public class AuditTrailFileSyncCreateInfoTokenizer: AuditTrailInfo.AuditTrailInfoTokenizer {
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
		
		public var objectSubType: BaseTokenizedObject {
			get {
				return self.append("objectSubType") 
			}
		}
		
		public var dc: BaseTokenizedObject {
			get {
				return self.append("dc") 
			}
		}
		
		public var original: BaseTokenizedObject {
			get {
				return self.append("original") 
			}
		}
		
		public var fileType: BaseTokenizedObject {
			get {
				return self.append("fileType") 
			}
		}
	}

	public var version: String? = nil
	public var objectSubType: Int? = nil
	public var dc: Int? = nil
	public var original: Bool? = nil
	public var fileType: AuditTrailFileSyncType? = nil


	public func setMultiRequestToken(version: String) {
		self.dict["version"] = version
	}
	
	public func setMultiRequestToken(objectSubType: String) {
		self.dict["objectSubType"] = objectSubType
	}
	
	public func setMultiRequestToken(dc: String) {
		self.dict["dc"] = dc
	}
	
	public func setMultiRequestToken(original: String) {
		self.dict["original"] = original
	}
	
	public func setMultiRequestToken(fileType: String) {
		self.dict["fileType"] = fileType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["version"] != nil {
			version = dict["version"] as? String
		}
		if dict["objectSubType"] != nil {
			objectSubType = dict["objectSubType"] as? Int
		}
		if dict["dc"] != nil {
			dc = dict["dc"] as? Int
		}
		if dict["original"] != nil {
			original = dict["original"] as? Bool
		}
		if dict["fileType"] != nil {
			fileType = AuditTrailFileSyncType(rawValue: (dict["fileType"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(version != nil) {
			dict["version"] = version!
		}
		if(objectSubType != nil) {
			dict["objectSubType"] = objectSubType!
		}
		if(dc != nil) {
			dict["dc"] = dc!
		}
		if(original != nil) {
			dict["original"] = original!
		}
		if(fileType != nil) {
			dict["fileType"] = fileType!.rawValue
		}
		return dict
	}
}

