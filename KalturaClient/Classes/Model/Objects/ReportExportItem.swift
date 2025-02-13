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

open class ReportExportItem: ObjectBase {

	public class ReportExportItemTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var reportTitle: BaseTokenizedObject {
			get {
				return self.append("reportTitle") 
			}
		}
		
		public var action: BaseTokenizedObject {
			get {
				return self.append("action") 
			}
		}
		
		public var reportType: BaseTokenizedObject {
			get {
				return self.append("reportType") 
			}
		}
		
		public func filter<T: ReportInputFilter.ReportInputFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public var order: BaseTokenizedObject {
			get {
				return self.append("order") 
			}
		}
		
		public var objectIds: BaseTokenizedObject {
			get {
				return self.append("objectIds") 
			}
		}
		
		public func responseOptions<T: ReportResponseOptions.ReportResponseOptionsTokenizer>() -> T {
			return T(self.append("responseOptions"))
		}
	}

	public var reportTitle: String? = nil
	public var action: ReportExportItemType? = nil
	public var reportType: ReportType? = nil
	public var filter: ReportInputFilter? = nil
	public var order: String? = nil
	public var objectIds: String? = nil
	public var responseOptions: ReportResponseOptions? = nil


	public func setMultiRequestToken(reportTitle: String) {
		self.dict["reportTitle"] = reportTitle
	}
	
	public func setMultiRequestToken(action: String) {
		self.dict["action"] = action
	}
	
	public func setMultiRequestToken(reportType: String) {
		self.dict["reportType"] = reportType
	}
	
	public func setMultiRequestToken(order: String) {
		self.dict["order"] = order
	}
	
	public func setMultiRequestToken(objectIds: String) {
		self.dict["objectIds"] = objectIds
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["reportTitle"] != nil {
			reportTitle = dict["reportTitle"] as? String
		}
		if dict["action"] != nil {
			action = ReportExportItemType(rawValue: (dict["action"] as? Int)!)
		}
		if dict["reportType"] != nil {
			reportType = ReportType(rawValue: "\(dict["reportType"]!)")
		}
		if dict["filter"] != nil {
		filter = try JSONParser.parse(object: dict["filter"] as! [String: Any])		}
		if dict["order"] != nil {
			order = dict["order"] as? String
		}
		if dict["objectIds"] != nil {
			objectIds = dict["objectIds"] as? String
		}
		if dict["responseOptions"] != nil {
		responseOptions = try JSONParser.parse(object: dict["responseOptions"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(reportTitle != nil) {
			dict["reportTitle"] = reportTitle!
		}
		if(action != nil) {
			dict["action"] = action!.rawValue
		}
		if(reportType != nil) {
			dict["reportType"] = reportType!.rawValue
		}
		if(filter != nil) {
			dict["filter"] = filter!.toDictionary()
		}
		if(order != nil) {
			dict["order"] = order!
		}
		if(objectIds != nil) {
			dict["objectIds"] = objectIds!
		}
		if(responseOptions != nil) {
			dict["responseOptions"] = responseOptions!.toDictionary()
		}
		return dict
	}
}

