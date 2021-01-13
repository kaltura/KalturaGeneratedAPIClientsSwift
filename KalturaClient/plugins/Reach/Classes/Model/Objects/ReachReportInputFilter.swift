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

open class ReachReportInputFilter: ReportInputFilter {

	public class ReachReportInputFilterTokenizer: ReportInputFilter.ReportInputFilterTokenizer {
		
		public var serviceType: BaseTokenizedObject {
			get {
				return self.append("serviceType") 
			}
		}
		
		public var serviceFeature: BaseTokenizedObject {
			get {
				return self.append("serviceFeature") 
			}
		}
		
		public var turnAroundTime: BaseTokenizedObject {
			get {
				return self.append("turnAroundTime") 
			}
		}
	}

	public var serviceType: VendorServiceType? = nil
	public var serviceFeature: VendorServiceFeature? = nil
	public var turnAroundTime: VendorServiceTurnAroundTime? = nil


	public func setMultiRequestToken(serviceType: String) {
		self.dict["serviceType"] = serviceType
	}
	
	public func setMultiRequestToken(serviceFeature: String) {
		self.dict["serviceFeature"] = serviceFeature
	}
	
	public func setMultiRequestToken(turnAroundTime: String) {
		self.dict["turnAroundTime"] = turnAroundTime
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["serviceType"] != nil {
			serviceType = VendorServiceType(rawValue: (dict["serviceType"] as? Int)!)
		}
		if dict["serviceFeature"] != nil {
			serviceFeature = VendorServiceFeature(rawValue: (dict["serviceFeature"] as? Int)!)
		}
		if dict["turnAroundTime"] != nil {
			turnAroundTime = VendorServiceTurnAroundTime(rawValue: (dict["turnAroundTime"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(serviceType != nil) {
			dict["serviceType"] = serviceType!.rawValue
		}
		if(serviceFeature != nil) {
			dict["serviceFeature"] = serviceFeature!.rawValue
		}
		if(turnAroundTime != nil) {
			dict["turnAroundTime"] = turnAroundTime!.rawValue
		}
		return dict
	}
}

