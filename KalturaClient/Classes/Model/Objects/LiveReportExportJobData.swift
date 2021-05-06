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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class LiveReportExportJobData: JobData {

	public class LiveReportExportJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var timeReference: BaseTokenizedObject {
			get {
				return self.append("timeReference") 
			}
		}
		
		public var timeZoneOffset: BaseTokenizedObject {
			get {
				return self.append("timeZoneOffset") 
			}
		}
		
		public var entryIds: BaseTokenizedObject {
			get {
				return self.append("entryIds") 
			}
		}
		
		public var outputPath: BaseTokenizedObject {
			get {
				return self.append("outputPath") 
			}
		}
		
		public var recipientEmail: BaseTokenizedObject {
			get {
				return self.append("recipientEmail") 
			}
		}
	}

	public var timeReference: Int? = nil
	public var timeZoneOffset: Int? = nil
	public var entryIds: String? = nil
	public var outputPath: String? = nil
	public var recipientEmail: String? = nil


	public func setMultiRequestToken(timeReference: String) {
		self.dict["timeReference"] = timeReference
	}
	
	public func setMultiRequestToken(timeZoneOffset: String) {
		self.dict["timeZoneOffset"] = timeZoneOffset
	}
	
	public func setMultiRequestToken(entryIds: String) {
		self.dict["entryIds"] = entryIds
	}
	
	public func setMultiRequestToken(outputPath: String) {
		self.dict["outputPath"] = outputPath
	}
	
	public func setMultiRequestToken(recipientEmail: String) {
		self.dict["recipientEmail"] = recipientEmail
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["timeReference"] != nil {
			timeReference = dict["timeReference"] as? Int
		}
		if dict["timeZoneOffset"] != nil {
			timeZoneOffset = dict["timeZoneOffset"] as? Int
		}
		if dict["entryIds"] != nil {
			entryIds = dict["entryIds"] as? String
		}
		if dict["outputPath"] != nil {
			outputPath = dict["outputPath"] as? String
		}
		if dict["recipientEmail"] != nil {
			recipientEmail = dict["recipientEmail"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(timeReference != nil) {
			dict["timeReference"] = timeReference!
		}
		if(timeZoneOffset != nil) {
			dict["timeZoneOffset"] = timeZoneOffset!
		}
		if(entryIds != nil) {
			dict["entryIds"] = entryIds!
		}
		if(outputPath != nil) {
			dict["outputPath"] = outputPath!
		}
		if(recipientEmail != nil) {
			dict["recipientEmail"] = recipientEmail!
		}
		return dict
	}
}

