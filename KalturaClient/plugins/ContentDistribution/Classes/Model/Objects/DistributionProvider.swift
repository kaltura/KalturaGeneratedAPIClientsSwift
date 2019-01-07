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

open class DistributionProvider: ObjectBase {

	public class DistributionProviderTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var scheduleUpdateEnabled: BaseTokenizedObject {
			get {
				return self.append("scheduleUpdateEnabled") 
			}
		}
		
		public var availabilityUpdateEnabled: BaseTokenizedObject {
			get {
				return self.append("availabilityUpdateEnabled") 
			}
		}
		
		public var deleteInsteadUpdate: BaseTokenizedObject {
			get {
				return self.append("deleteInsteadUpdate") 
			}
		}
		
		public var intervalBeforeSunrise: BaseTokenizedObject {
			get {
				return self.append("intervalBeforeSunrise") 
			}
		}
		
		public var intervalBeforeSunset: BaseTokenizedObject {
			get {
				return self.append("intervalBeforeSunset") 
			}
		}
		
		public var updateRequiredEntryFields: BaseTokenizedObject {
			get {
				return self.append("updateRequiredEntryFields") 
			}
		}
		
		public var updateRequiredMetadataXPaths: BaseTokenizedObject {
			get {
				return self.append("updateRequiredMetadataXPaths") 
			}
		}
	}

	public var type: DistributionProviderType? = nil
	public var name: String? = nil
	public var scheduleUpdateEnabled: Bool? = nil
	public var availabilityUpdateEnabled: Bool? = nil
	public var deleteInsteadUpdate: Bool? = nil
	public var intervalBeforeSunrise: Int? = nil
	public var intervalBeforeSunset: Int? = nil
	public var updateRequiredEntryFields: String? = nil
	public var updateRequiredMetadataXPaths: String? = nil


	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(scheduleUpdateEnabled: String) {
		self.dict["scheduleUpdateEnabled"] = scheduleUpdateEnabled
	}
	
	public func setMultiRequestToken(availabilityUpdateEnabled: String) {
		self.dict["availabilityUpdateEnabled"] = availabilityUpdateEnabled
	}
	
	public func setMultiRequestToken(deleteInsteadUpdate: String) {
		self.dict["deleteInsteadUpdate"] = deleteInsteadUpdate
	}
	
	public func setMultiRequestToken(intervalBeforeSunrise: String) {
		self.dict["intervalBeforeSunrise"] = intervalBeforeSunrise
	}
	
	public func setMultiRequestToken(intervalBeforeSunset: String) {
		self.dict["intervalBeforeSunset"] = intervalBeforeSunset
	}
	
	public func setMultiRequestToken(updateRequiredEntryFields: String) {
		self.dict["updateRequiredEntryFields"] = updateRequiredEntryFields
	}
	
	public func setMultiRequestToken(updateRequiredMetadataXPaths: String) {
		self.dict["updateRequiredMetadataXPaths"] = updateRequiredMetadataXPaths
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["type"] != nil {
			type = DistributionProviderType(rawValue: "\(dict["type"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["scheduleUpdateEnabled"] != nil {
			scheduleUpdateEnabled = dict["scheduleUpdateEnabled"] as? Bool
		}
		if dict["availabilityUpdateEnabled"] != nil {
			availabilityUpdateEnabled = dict["availabilityUpdateEnabled"] as? Bool
		}
		if dict["deleteInsteadUpdate"] != nil {
			deleteInsteadUpdate = dict["deleteInsteadUpdate"] as? Bool
		}
		if dict["intervalBeforeSunrise"] != nil {
			intervalBeforeSunrise = dict["intervalBeforeSunrise"] as? Int
		}
		if dict["intervalBeforeSunset"] != nil {
			intervalBeforeSunset = dict["intervalBeforeSunset"] as? Int
		}
		if dict["updateRequiredEntryFields"] != nil {
			updateRequiredEntryFields = dict["updateRequiredEntryFields"] as? String
		}
		if dict["updateRequiredMetadataXPaths"] != nil {
			updateRequiredMetadataXPaths = dict["updateRequiredMetadataXPaths"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(scheduleUpdateEnabled != nil) {
			dict["scheduleUpdateEnabled"] = scheduleUpdateEnabled!
		}
		if(availabilityUpdateEnabled != nil) {
			dict["availabilityUpdateEnabled"] = availabilityUpdateEnabled!
		}
		if(deleteInsteadUpdate != nil) {
			dict["deleteInsteadUpdate"] = deleteInsteadUpdate!
		}
		if(intervalBeforeSunrise != nil) {
			dict["intervalBeforeSunrise"] = intervalBeforeSunrise!
		}
		if(intervalBeforeSunset != nil) {
			dict["intervalBeforeSunset"] = intervalBeforeSunset!
		}
		if(updateRequiredEntryFields != nil) {
			dict["updateRequiredEntryFields"] = updateRequiredEntryFields!
		}
		if(updateRequiredMetadataXPaths != nil) {
			dict["updateRequiredMetadataXPaths"] = updateRequiredMetadataXPaths!
		}
		return dict
	}
}

