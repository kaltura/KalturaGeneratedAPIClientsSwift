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

open class BulkUploadBaseFilter: Filter {

	public class BulkUploadBaseFilterTokenizer: Filter.FilterTokenizer {
		
		public var uploadedOnGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("uploadedOnGreaterThanOrEqual") 
			}
		}
		
		public var uploadedOnLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("uploadedOnLessThanOrEqual") 
			}
		}
		
		public var uploadedOnEqual: BaseTokenizedObject {
			get {
				return self.append("uploadedOnEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var bulkUploadObjectTypeEqual: BaseTokenizedObject {
			get {
				return self.append("bulkUploadObjectTypeEqual") 
			}
		}
		
		public var bulkUploadObjectTypeIn: BaseTokenizedObject {
			get {
				return self.append("bulkUploadObjectTypeIn") 
			}
		}
	}

	public var uploadedOnGreaterThanOrEqual: Int? = nil
	public var uploadedOnLessThanOrEqual: Int? = nil
	public var uploadedOnEqual: Int? = nil
	public var statusIn: String? = nil
	public var statusEqual: BatchJobStatus? = nil
	public var bulkUploadObjectTypeEqual: BulkUploadObjectType? = nil
	public var bulkUploadObjectTypeIn: String? = nil


	public func setMultiRequestToken(uploadedOnGreaterThanOrEqual: String) {
		self.dict["uploadedOnGreaterThanOrEqual"] = uploadedOnGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(uploadedOnLessThanOrEqual: String) {
		self.dict["uploadedOnLessThanOrEqual"] = uploadedOnLessThanOrEqual
	}
	
	public func setMultiRequestToken(uploadedOnEqual: String) {
		self.dict["uploadedOnEqual"] = uploadedOnEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(bulkUploadObjectTypeEqual: String) {
		self.dict["bulkUploadObjectTypeEqual"] = bulkUploadObjectTypeEqual
	}
	
	public func setMultiRequestToken(bulkUploadObjectTypeIn: String) {
		self.dict["bulkUploadObjectTypeIn"] = bulkUploadObjectTypeIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["uploadedOnGreaterThanOrEqual"] != nil {
			uploadedOnGreaterThanOrEqual = dict["uploadedOnGreaterThanOrEqual"] as? Int
		}
		if dict["uploadedOnLessThanOrEqual"] != nil {
			uploadedOnLessThanOrEqual = dict["uploadedOnLessThanOrEqual"] as? Int
		}
		if dict["uploadedOnEqual"] != nil {
			uploadedOnEqual = dict["uploadedOnEqual"] as? Int
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = BatchJobStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["bulkUploadObjectTypeEqual"] != nil {
			bulkUploadObjectTypeEqual = BulkUploadObjectType(rawValue: "\(dict["bulkUploadObjectTypeEqual"]!)")
		}
		if dict["bulkUploadObjectTypeIn"] != nil {
			bulkUploadObjectTypeIn = dict["bulkUploadObjectTypeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(uploadedOnGreaterThanOrEqual != nil) {
			dict["uploadedOnGreaterThanOrEqual"] = uploadedOnGreaterThanOrEqual!
		}
		if(uploadedOnLessThanOrEqual != nil) {
			dict["uploadedOnLessThanOrEqual"] = uploadedOnLessThanOrEqual!
		}
		if(uploadedOnEqual != nil) {
			dict["uploadedOnEqual"] = uploadedOnEqual!
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(bulkUploadObjectTypeEqual != nil) {
			dict["bulkUploadObjectTypeEqual"] = bulkUploadObjectTypeEqual!.rawValue
		}
		if(bulkUploadObjectTypeIn != nil) {
			dict["bulkUploadObjectTypeIn"] = bulkUploadObjectTypeIn!
		}
		return dict
	}
}

