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

open class BeaconBaseFilter: Filter {

	public class BeaconBaseFilterTokenizer: Filter.FilterTokenizer {
		
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
		
		public var relatedObjectTypeIn: BaseTokenizedObject {
			get {
				return self.append("relatedObjectTypeIn") 
			}
		}
		
		public var relatedObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("relatedObjectTypeEqual") 
			}
		}
		
		public var eventTypeIn: BaseTokenizedObject {
			get {
				return self.append("eventTypeIn") 
			}
		}
		
		public var objectIdIn: BaseTokenizedObject {
			get {
				return self.append("objectIdIn") 
			}
		}
	}

	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var relatedObjectTypeIn: String? = nil
	public var relatedObjectTypeEqual: BeaconObjectTypes? = nil
	public var eventTypeIn: String? = nil
	public var objectIdIn: String? = nil


	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(relatedObjectTypeIn: String) {
		self.dict["relatedObjectTypeIn"] = relatedObjectTypeIn
	}
	
	public func setMultiRequestToken(relatedObjectTypeEqual: String) {
		self.dict["relatedObjectTypeEqual"] = relatedObjectTypeEqual
	}
	
	public func setMultiRequestToken(eventTypeIn: String) {
		self.dict["eventTypeIn"] = eventTypeIn
	}
	
	public func setMultiRequestToken(objectIdIn: String) {
		self.dict["objectIdIn"] = objectIdIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["relatedObjectTypeIn"] != nil {
			relatedObjectTypeIn = dict["relatedObjectTypeIn"] as? String
		}
		if dict["relatedObjectTypeEqual"] != nil {
			relatedObjectTypeEqual = BeaconObjectTypes(rawValue: "\(dict["relatedObjectTypeEqual"]!)")
		}
		if dict["eventTypeIn"] != nil {
			eventTypeIn = dict["eventTypeIn"] as? String
		}
		if dict["objectIdIn"] != nil {
			objectIdIn = dict["objectIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(relatedObjectTypeIn != nil) {
			dict["relatedObjectTypeIn"] = relatedObjectTypeIn!
		}
		if(relatedObjectTypeEqual != nil) {
			dict["relatedObjectTypeEqual"] = relatedObjectTypeEqual!.rawValue
		}
		if(eventTypeIn != nil) {
			dict["eventTypeIn"] = eventTypeIn!
		}
		if(objectIdIn != nil) {
			dict["objectIdIn"] = objectIdIn!
		}
		return dict
	}
}

