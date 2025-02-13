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

open class MultiClipConcatJobData: JobData {

	public class MultiClipConcatJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var destEntryId: BaseTokenizedObject {
			get {
				return self.append("destEntryId") 
			}
		}
		
		public var multiTempEntryId: BaseTokenizedObject {
			get {
				return self.append("multiTempEntryId") 
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
		
		public var chapterNamePolicy: BaseTokenizedObject {
			get {
				return self.append("chapterNamePolicy") 
			}
		}
		
		public func aspectRatio<T: CropAspectRatio.CropAspectRatioTokenizer>() -> T {
			return T(self.append("aspectRatio"))
		}
		
		public var operationResources: ArrayTokenizedObject<OperationResource.OperationResourceTokenizer> {
			get {
				return ArrayTokenizedObject<OperationResource.OperationResourceTokenizer>(self.append("operationResources"))
			} 
		}
	}

	public var destEntryId: String? = nil
	public var multiTempEntryId: String? = nil
	public var partnerId: Int? = nil
	public var priority: Int? = nil
	public var chapterNamePolicy: ChapterNamePolicy? = nil
	public var aspectRatio: CropAspectRatio? = nil
	public var operationResources: Array<OperationResource>? = nil


	public func setMultiRequestToken(destEntryId: String) {
		self.dict["destEntryId"] = destEntryId
	}
	
	public func setMultiRequestToken(multiTempEntryId: String) {
		self.dict["multiTempEntryId"] = multiTempEntryId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(priority: String) {
		self.dict["priority"] = priority
	}
	
	public func setMultiRequestToken(chapterNamePolicy: String) {
		self.dict["chapterNamePolicy"] = chapterNamePolicy
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["destEntryId"] != nil {
			destEntryId = dict["destEntryId"] as? String
		}
		if dict["multiTempEntryId"] != nil {
			multiTempEntryId = dict["multiTempEntryId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["priority"] != nil {
			priority = dict["priority"] as? Int
		}
		if dict["chapterNamePolicy"] != nil {
			chapterNamePolicy = ChapterNamePolicy(rawValue: (dict["chapterNamePolicy"] as? Int)!)
		}
		if dict["aspectRatio"] != nil {
		aspectRatio = try JSONParser.parse(object: dict["aspectRatio"] as! [String: Any])		}
		if dict["operationResources"] != nil {
			operationResources = try JSONParser.parse(array: dict["operationResources"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(destEntryId != nil) {
			dict["destEntryId"] = destEntryId!
		}
		if(multiTempEntryId != nil) {
			dict["multiTempEntryId"] = multiTempEntryId!
		}
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(priority != nil) {
			dict["priority"] = priority!
		}
		if(chapterNamePolicy != nil) {
			dict["chapterNamePolicy"] = chapterNamePolicy!.rawValue
		}
		if(aspectRatio != nil) {
			dict["aspectRatio"] = aspectRatio!.toDictionary()
		}
		if(operationResources != nil) {
			dict["operationResources"] = operationResources!.map { value in value.toDictionary() }
		}
		return dict
	}
}

