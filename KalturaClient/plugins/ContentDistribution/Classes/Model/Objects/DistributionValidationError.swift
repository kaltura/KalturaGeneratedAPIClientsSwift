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

open class DistributionValidationError: ObjectBase {

	public class DistributionValidationErrorTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var errorType: BaseTokenizedObject {
			get {
				return self.append("errorType") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
	}

	public var action: DistributionAction? = nil
	public var errorType: DistributionErrorType? = nil
	public var description: String? = nil


	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(errorType: String) {
		self.dict["errorType"] = errorType
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["action"] != nil {
			action = DistributionAction(rawValue: (dict["action"] as? Int)!)
		}
		if dict["errorType"] != nil {
			errorType = DistributionErrorType(rawValue: (dict["errorType"] as? Int)!)
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(errorType != nil) {
			dict["errorType"] = errorType!.rawValue
		}
		if(description != nil) {
			dict["description"] = description!
		}
		return dict
	}
}

