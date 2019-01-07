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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class AnalyticsFilter: ObjectBase {

	public class AnalyticsFilterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var from_time: BaseTokenizedObject {
			get {
				return self.append("from_time") 
			}
		}
		
		public var to_time: BaseTokenizedObject {
			get {
				return self.append("to_time") 
			}
		}
		
		public var metrics: BaseTokenizedObject {
			get {
				return self.append("metrics") 
			}
		}
		
		public var utcOffset: BaseTokenizedObject {
			get {
				return self.append("utcOffset") 
			}
		}
		
		public var dimensions: BaseTokenizedObject {
			get {
				return self.append("dimensions") 
			}
		}
		
		public var filters: ArrayTokenizedObject<ReportFilter.ReportFilterTokenizer> {
			get {
				return ArrayTokenizedObject<ReportFilter.ReportFilterTokenizer>(self.append("filters"))
			} 
		}
		
		public var orderBy: BaseTokenizedObject {
			get {
				return self.append("orderBy") 
			}
		}
	}

	/**  Query start time (in local time) MM/dd/yyyy HH:mi  */
	public var from_time: String? = nil
	/**  Query end time (in local time) MM/dd/yyyy HH:mi  */
	public var to_time: String? = nil
	/**  Comma separated metrics list  */
	public var metrics: String? = nil
	/**  Timezone offset from UTC (in minutes)  */
	public var utcOffset: Double? = nil
	/**  Comma separated dimensions list  */
	public var dimensions: String? = nil
	/**  Array of filters  */
	public var filters: Array<ReportFilter>? = nil
	/**  Query order by metric/dimension  */
	public var orderBy: String? = nil


	public func setMultiRequestToken(from_time: String) {
		self.dict["from_time"] = from_time
	}
	
	public func setMultiRequestToken(to_time: String) {
		self.dict["to_time"] = to_time
	}
	
	public func setMultiRequestToken(metrics: String) {
		self.dict["metrics"] = metrics
	}
	
	public func setMultiRequestToken(utcOffset: String) {
		self.dict["utcOffset"] = utcOffset
	}
	
	public func setMultiRequestToken(dimensions: String) {
		self.dict["dimensions"] = dimensions
	}
	
	public func setMultiRequestToken(orderBy: String) {
		self.dict["orderBy"] = orderBy
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["from_time"] != nil {
			from_time = dict["from_time"] as? String
		}
		if dict["to_time"] != nil {
			to_time = dict["to_time"] as? String
		}
		if dict["metrics"] != nil {
			metrics = dict["metrics"] as? String
		}
		if dict["utcOffset"] != nil {
			utcOffset = dict["utcOffset"] as? Double
		}
		if dict["dimensions"] != nil {
			dimensions = dict["dimensions"] as? String
		}
		if dict["filters"] != nil {
			filters = try JSONParser.parse(array: dict["filters"] as! [Any])
		}
		if dict["orderBy"] != nil {
			orderBy = dict["orderBy"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(from_time != nil) {
			dict["from_time"] = from_time!
		}
		if(to_time != nil) {
			dict["to_time"] = to_time!
		}
		if(metrics != nil) {
			dict["metrics"] = metrics!
		}
		if(utcOffset != nil) {
			dict["utcOffset"] = utcOffset!
		}
		if(dimensions != nil) {
			dict["dimensions"] = dimensions!
		}
		if(filters != nil) {
			dict["filters"] = filters!.map { value in value.toDictionary() }
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!
		}
		return dict
	}
}

