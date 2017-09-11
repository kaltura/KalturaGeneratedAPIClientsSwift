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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class CopyCaptionsJobData: JobData {

	public class CopyCaptionsJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var sourceEntryId: BaseTokenizedObject {
			get {
				return self.append("sourceEntryId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var offset: BaseTokenizedObject {
			get {
				return self.append("offset") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var fullCopy: BaseTokenizedObject {
			get {
				return self.append("fullCopy") 
			}
		}
	}

	/**  source entry Id  */
	public var sourceEntryId: String? = nil
	/**  entry Id  */
	public var entryId: String? = nil
	/**  clip offset  */
	public var offset: Int? = nil
	/**  clip duration  */
	public var duration: Int? = nil
	public var fullCopy: Bool? = nil


	public func setMultiRequestToken(sourceEntryId: String) {
		self.dict["sourceEntryId"] = sourceEntryId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(offset: String) {
		self.dict["offset"] = offset
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(fullCopy: String) {
		self.dict["fullCopy"] = fullCopy
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sourceEntryId"] != nil {
			sourceEntryId = dict["sourceEntryId"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["offset"] != nil {
			offset = dict["offset"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["fullCopy"] != nil {
			fullCopy = dict["fullCopy"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sourceEntryId != nil) {
			dict["sourceEntryId"] = sourceEntryId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(offset != nil) {
			dict["offset"] = offset!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(fullCopy != nil) {
			dict["fullCopy"] = fullCopy!
		}
		return dict
	}
}

