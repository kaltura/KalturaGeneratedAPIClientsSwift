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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class AuditTrailChangeItem: ObjectBase {

	public class AuditTrailChangeItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var descriptor: BaseTokenizedObject {
			get {
				return self.append("descriptor") 
			}
		}
		
		public var oldValue: BaseTokenizedObject {
			get {
				return self.append("oldValue") 
			}
		}
		
		public var newValue: BaseTokenizedObject {
			get {
				return self.append("newValue") 
			}
		}
	}

	public var descriptor: String? = nil
	public var oldValue: String? = nil
	public var newValue: String? = nil


	public func setMultiRequestToken(descriptor: String) {
		self.dict["descriptor"] = descriptor
	}
	
	public func setMultiRequestToken(oldValue: String) {
		self.dict["oldValue"] = oldValue
	}
	
	public func setMultiRequestToken(newValue: String) {
		self.dict["newValue"] = newValue
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["descriptor"] != nil {
			descriptor = dict["descriptor"] as? String
		}
		if dict["oldValue"] != nil {
			oldValue = dict["oldValue"] as? String
		}
		if dict["newValue"] != nil {
			newValue = dict["newValue"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(descriptor != nil) {
			dict["descriptor"] = descriptor!
		}
		if(oldValue != nil) {
			dict["oldValue"] = oldValue!
		}
		if(newValue != nil) {
			dict["newValue"] = newValue!
		}
		return dict
	}
}

