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

open class ClipConcatJobData: JobData {

	public class ClipConcatJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var destEntryId: BaseTokenizedObject {
			get {
				return self.append("destEntryId") 
			}
		}
		
		public var tempEntryId: BaseTokenizedObject {
			get {
				return self.append("tempEntryId") 
			}
		}
		
		public var sourceEntryId: BaseTokenizedObject {
			get {
				return self.append("sourceEntryId") 
			}
		}
		
		public var importUrl: BaseTokenizedObject {
			get {
				return self.append("importUrl") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var priority: BaseTokenizedObject {
			get {
				return self.append("priority") 
			}
		}
		
		public var operationAttributes: ArrayTokenizedObject<OperationAttributes.OperationAttributesTokenizer> {
			get {
				return ArrayTokenizedObject<OperationAttributes.OperationAttributesTokenizer>(self.append("operationAttributes"))
			} 
		}
		
		public var resourceOrder: BaseTokenizedObject {
			get {
				return self.append("resourceOrder") 
			}
		}
		
		public var conversionParams: BaseTokenizedObject {
			get {
				return self.append("conversionParams") 
			}
		}
	}

	public var destEntryId: String? = nil
	public var tempEntryId: String? = nil
	public var sourceEntryId: String? = nil
	public var importUrl: String? = nil
	public var partnerId: Int? = nil
	public var priority: Int? = nil
	public var operationAttributes: Array<OperationAttributes>? = nil
	public var resourceOrder: Int? = nil
	public var conversionParams: String? = nil


	public func setMultiRequestToken(destEntryId: String) {
		self.dict["destEntryId"] = destEntryId
	}
	
	public func setMultiRequestToken(tempEntryId: String) {
		self.dict["tempEntryId"] = tempEntryId
	}
	
	public func setMultiRequestToken(sourceEntryId: String) {
		self.dict["sourceEntryId"] = sourceEntryId
	}
	
	public func setMultiRequestToken(importUrl: String) {
		self.dict["importUrl"] = importUrl
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(priority: String) {
		self.dict["priority"] = priority
	}
	
	public func setMultiRequestToken(resourceOrder: String) {
		self.dict["resourceOrder"] = resourceOrder
	}
	
	public func setMultiRequestToken(conversionParams: String) {
		self.dict["conversionParams"] = conversionParams
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["destEntryId"] != nil {
			destEntryId = dict["destEntryId"] as? String
		}
		if dict["tempEntryId"] != nil {
			tempEntryId = dict["tempEntryId"] as? String
		}
		if dict["sourceEntryId"] != nil {
			sourceEntryId = dict["sourceEntryId"] as? String
		}
		if dict["importUrl"] != nil {
			importUrl = dict["importUrl"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["priority"] != nil {
			priority = dict["priority"] as? Int
		}
		if dict["operationAttributes"] != nil {
			operationAttributes = try JSONParser.parse(array: dict["operationAttributes"] as! [Any])
		}
		if dict["resourceOrder"] != nil {
			resourceOrder = dict["resourceOrder"] as? Int
		}
		if dict["conversionParams"] != nil {
			conversionParams = dict["conversionParams"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(destEntryId != nil) {
			dict["destEntryId"] = destEntryId!
		}
		if(tempEntryId != nil) {
			dict["tempEntryId"] = tempEntryId!
		}
		if(sourceEntryId != nil) {
			dict["sourceEntryId"] = sourceEntryId!
		}
		if(importUrl != nil) {
			dict["importUrl"] = importUrl!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(priority != nil) {
			dict["priority"] = priority!
		}
		if(operationAttributes != nil) {
			dict["operationAttributes"] = operationAttributes!.map { value in value.toDictionary() }
		}
		if(resourceOrder != nil) {
			dict["resourceOrder"] = resourceOrder!
		}
		if(conversionParams != nil) {
			dict["conversionParams"] = conversionParams!
		}
		return dict
	}
}

