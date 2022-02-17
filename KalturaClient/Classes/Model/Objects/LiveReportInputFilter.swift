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

open class LiveReportInputFilter: ObjectBase {

	public class LiveReportInputFilterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var entryIds: BaseTokenizedObject {
			get {
				return self.append("entryIds") 
			}
		}
		
		public var fromTime: BaseTokenizedObject {
			get {
				return self.append("fromTime") 
			}
		}
		
		public var toTime: BaseTokenizedObject {
			get {
				return self.append("toTime") 
			}
		}
		
		public var live: BaseTokenizedObject {
			get {
				return self.append("live") 
			}
		}
		
		public var orderBy: BaseTokenizedObject {
			get {
				return self.append("orderBy") 
			}
		}
	}

	public var entryIds: String? = nil
	public var fromTime: Int? = nil
	public var toTime: Int? = nil
	public var live: Bool? = nil
	public var orderBy: LiveReportOrderBy? = nil


	public func setMultiRequestToken(entryIds: String) {
		self.dict["entryIds"] = entryIds
	}
	
	public func setMultiRequestToken(fromTime: String) {
		self.dict["fromTime"] = fromTime
	}
	
	public func setMultiRequestToken(toTime: String) {
		self.dict["toTime"] = toTime
	}
	
	public func setMultiRequestToken(live: String) {
		self.dict["live"] = live
	}
	
	public func setMultiRequestToken(orderBy: String) {
		self.dict["orderBy"] = orderBy
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryIds"] != nil {
			entryIds = dict["entryIds"] as? String
		}
		if dict["fromTime"] != nil {
			fromTime = dict["fromTime"] as? Int
		}
		if dict["toTime"] != nil {
			toTime = dict["toTime"] as? Int
		}
		if dict["live"] != nil {
			live = dict["live"] as? Bool
		}
		if dict["orderBy"] != nil {
			orderBy = LiveReportOrderBy(rawValue: "\(dict["orderBy"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryIds != nil) {
			dict["entryIds"] = entryIds!
		}
		if(fromTime != nil) {
			dict["fromTime"] = fromTime!
		}
		if(toTime != nil) {
			dict["toTime"] = toTime!
		}
		if(live != nil) {
			dict["live"] = live!
		}
		if(orderBy != nil) {
			dict["orderBy"] = orderBy!.rawValue
		}
		return dict
	}
}

