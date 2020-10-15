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

open class ReportExportJobData: JobData {

	public class ReportExportJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var recipientEmail: BaseTokenizedObject {
			get {
				return self.append("recipientEmail") 
			}
		}
		
		public var reportItems: ArrayTokenizedObject<ReportExportItem.ReportExportItemTokenizer> {
			get {
				return ArrayTokenizedObject<ReportExportItem.ReportExportItemTokenizer>(self.append("reportItems"))
			} 
		}
		
		public var filePaths: BaseTokenizedObject {
			get {
				return self.append("filePaths") 
			}
		}
		
		public var reportsGroup: BaseTokenizedObject {
			get {
				return self.append("reportsGroup") 
			}
		}
		
		public var files: ArrayTokenizedObject<ReportExportFile.ReportExportFileTokenizer> {
			get {
				return ArrayTokenizedObject<ReportExportFile.ReportExportFileTokenizer>(self.append("files"))
			} 
		}
	}

	public var recipientEmail: String? = nil
	public var reportItems: Array<ReportExportItem>? = nil
	public var filePaths: String? = nil
	public var reportsGroup: String? = nil
	public var files: Array<ReportExportFile>? = nil


	public func setMultiRequestToken(recipientEmail: String) {
		self.dict["recipientEmail"] = recipientEmail
	}
	
	public func setMultiRequestToken(filePaths: String) {
		self.dict["filePaths"] = filePaths
	}
	
	public func setMultiRequestToken(reportsGroup: String) {
		self.dict["reportsGroup"] = reportsGroup
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recipientEmail"] != nil {
			recipientEmail = dict["recipientEmail"] as? String
		}
		if dict["reportItems"] != nil {
			reportItems = try JSONParser.parse(array: dict["reportItems"] as! [Any])
		}
		if dict["filePaths"] != nil {
			filePaths = dict["filePaths"] as? String
		}
		if dict["reportsGroup"] != nil {
			reportsGroup = dict["reportsGroup"] as? String
		}
		if dict["files"] != nil {
			files = try JSONParser.parse(array: dict["files"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(recipientEmail != nil) {
			dict["recipientEmail"] = recipientEmail!
		}
		if(reportItems != nil) {
			dict["reportItems"] = reportItems!.map { value in value.toDictionary() }
		}
		if(filePaths != nil) {
			dict["filePaths"] = filePaths!
		}
		if(reportsGroup != nil) {
			dict["reportsGroup"] = reportsGroup!
		}
		if(files != nil) {
			dict["files"] = files!.map { value in value.toDictionary() }
		}
		return dict
	}
}

