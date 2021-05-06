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

open class ScheduledTaskJobData: JobData {

	public class ScheduledTaskJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var maxResults: BaseTokenizedObject {
			get {
				return self.append("maxResults") 
			}
		}
		
		public var totalCount: BaseTokenizedObject {
			get {
				return self.append("totalCount") 
			}
		}
		
		public var fileFormat: BaseTokenizedObject {
			get {
				return self.append("fileFormat") 
			}
		}
		
		public var resultsFilePath: BaseTokenizedObject {
			get {
				return self.append("resultsFilePath") 
			}
		}
		
		public var referenceTime: BaseTokenizedObject {
			get {
				return self.append("referenceTime") 
			}
		}
	}

	public var maxResults: Int? = nil
	public var totalCount: Int? = nil
	public var fileFormat: DryRunFileType? = nil
	public var resultsFilePath: String? = nil
	public var referenceTime: Int? = nil


	public func setMultiRequestToken(maxResults: String) {
		self.dict["maxResults"] = maxResults
	}
	
	public func setMultiRequestToken(totalCount: String) {
		self.dict["totalCount"] = totalCount
	}
	
	public func setMultiRequestToken(fileFormat: String) {
		self.dict["fileFormat"] = fileFormat
	}
	
	public func setMultiRequestToken(resultsFilePath: String) {
		self.dict["resultsFilePath"] = resultsFilePath
	}
	
	public func setMultiRequestToken(referenceTime: String) {
		self.dict["referenceTime"] = referenceTime
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["maxResults"] != nil {
			maxResults = dict["maxResults"] as? Int
		}
		if dict["totalCount"] != nil {
			totalCount = dict["totalCount"] as? Int
		}
		if dict["fileFormat"] != nil {
			fileFormat = DryRunFileType(rawValue: (dict["fileFormat"] as? Int)!)
		}
		if dict["resultsFilePath"] != nil {
			resultsFilePath = dict["resultsFilePath"] as? String
		}
		if dict["referenceTime"] != nil {
			referenceTime = dict["referenceTime"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(maxResults != nil) {
			dict["maxResults"] = maxResults!
		}
		if(totalCount != nil) {
			dict["totalCount"] = totalCount!
		}
		if(fileFormat != nil) {
			dict["fileFormat"] = fileFormat!.rawValue
		}
		if(resultsFilePath != nil) {
			dict["resultsFilePath"] = resultsFilePath!
		}
		if(referenceTime != nil) {
			dict["referenceTime"] = referenceTime!
		}
		return dict
	}
}

