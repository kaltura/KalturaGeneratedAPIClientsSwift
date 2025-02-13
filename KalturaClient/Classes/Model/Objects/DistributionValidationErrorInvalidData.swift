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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class DistributionValidationErrorInvalidData: DistributionValidationError {

	public class DistributionValidationErrorInvalidDataTokenizer: DistributionValidationError.DistributionValidationErrorTokenizer {
		
		public var fieldName: BaseTokenizedObject {
			get {
				return self.append("fieldName") 
			}
		}
		
		public var validationErrorType: BaseTokenizedObject {
			get {
				return self.append("validationErrorType") 
			}
		}
		
		public var validationErrorParam: BaseTokenizedObject {
			get {
				return self.append("validationErrorParam") 
			}
		}
	}

	public var fieldName: String? = nil
	public var validationErrorType: DistributionValidationErrorType? = nil
	/**  Parameter of the validation error   For example, minimum value for
	  KalturaDistributionValidationErrorType::STRING_TOO_SHORT validation error  */
	public var validationErrorParam: String? = nil


	public func setMultiRequestToken(fieldName: String) {
		self.dict["fieldName"] = fieldName
	}
	
	public func setMultiRequestToken(validationErrorType: String) {
		self.dict["validationErrorType"] = validationErrorType
	}
	
	public func setMultiRequestToken(validationErrorParam: String) {
		self.dict["validationErrorParam"] = validationErrorParam
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fieldName"] != nil {
			fieldName = dict["fieldName"] as? String
		}
		if dict["validationErrorType"] != nil {
			validationErrorType = DistributionValidationErrorType(rawValue: (dict["validationErrorType"] as? Int)!)
		}
		if dict["validationErrorParam"] != nil {
			validationErrorParam = dict["validationErrorParam"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fieldName != nil) {
			dict["fieldName"] = fieldName!
		}
		if(validationErrorType != nil) {
			dict["validationErrorType"] = validationErrorType!.rawValue
		}
		if(validationErrorParam != nil) {
			dict["validationErrorParam"] = validationErrorParam!
		}
		return dict
	}
}

