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

open class LiveReportExportResponse: ObjectBase {

	public class LiveReportExportResponseTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var referenceJobId: BaseTokenizedObject {
			get {
				return self.append("referenceJobId") 
			}
		}
		
		public var reportEmail: BaseTokenizedObject {
			get {
				return self.append("reportEmail") 
			}
		}
	}

	public var referenceJobId: Int64? = nil
	public var reportEmail: String? = nil


	public func setMultiRequestToken(referenceJobId: String) {
		self.dict["referenceJobId"] = referenceJobId
	}
	
	public func setMultiRequestToken(reportEmail: String) {
		self.dict["reportEmail"] = reportEmail
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["referenceJobId"] != nil {
			referenceJobId = Int64("\(dict["referenceJobId"]!)")
		}
		if dict["reportEmail"] != nil {
			reportEmail = dict["reportEmail"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(referenceJobId != nil) {
			dict["referenceJobId"] = referenceJobId!
		}
		if(reportEmail != nil) {
			dict["reportEmail"] = reportEmail!
		}
		return dict
	}
}

