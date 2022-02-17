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

open class ReportExportParams: ObjectBase {

	public class ReportExportParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var recipientEmail: BaseTokenizedObject {
			get {
				return self.append("recipientEmail") 
			}
		}
		
		public var timeZoneOffset: BaseTokenizedObject {
			get {
				return self.append("timeZoneOffset") 
			}
		}
		
		public var reportItems: ArrayTokenizedObject<ReportExportItem.ReportExportItemTokenizer> {
			get {
				return ArrayTokenizedObject<ReportExportItem.ReportExportItemTokenizer>(self.append("reportItems"))
			} 
		}
		
		public var reportsItemsGroup: BaseTokenizedObject {
			get {
				return self.append("reportsItemsGroup") 
			}
		}
		
		public var baseUrl: BaseTokenizedObject {
			get {
				return self.append("baseUrl") 
			}
		}
	}

	public var recipientEmail: String? = nil
	/**  Time zone offset in minutes (between client to UTC)  */
	public var timeZoneOffset: Int? = nil
	public var reportItems: Array<ReportExportItem>? = nil
	public var reportsItemsGroup: String? = nil
	public var baseUrl: String? = nil


	public func setMultiRequestToken(recipientEmail: String) {
		self.dict["recipientEmail"] = recipientEmail
	}
	
	public func setMultiRequestToken(timeZoneOffset: String) {
		self.dict["timeZoneOffset"] = timeZoneOffset
	}
	
	public func setMultiRequestToken(reportsItemsGroup: String) {
		self.dict["reportsItemsGroup"] = reportsItemsGroup
	}
	
	public func setMultiRequestToken(baseUrl: String) {
		self.dict["baseUrl"] = baseUrl
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recipientEmail"] != nil {
			recipientEmail = dict["recipientEmail"] as? String
		}
		if dict["timeZoneOffset"] != nil {
			timeZoneOffset = dict["timeZoneOffset"] as? Int
		}
		if dict["reportItems"] != nil {
			reportItems = try JSONParser.parse(array: dict["reportItems"] as! [Any])
		}
		if dict["reportsItemsGroup"] != nil {
			reportsItemsGroup = dict["reportsItemsGroup"] as? String
		}
		if dict["baseUrl"] != nil {
			baseUrl = dict["baseUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(recipientEmail != nil) {
			dict["recipientEmail"] = recipientEmail!
		}
		if(timeZoneOffset != nil) {
			dict["timeZoneOffset"] = timeZoneOffset!
		}
		if(reportItems != nil) {
			dict["reportItems"] = reportItems!.map { value in value.toDictionary() }
		}
		if(reportsItemsGroup != nil) {
			dict["reportsItemsGroup"] = reportsItemsGroup!
		}
		if(baseUrl != nil) {
			dict["baseUrl"] = baseUrl!
		}
		return dict
	}
}

