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

open class LiveReportExportParams: ObjectBase {

	public class LiveReportExportParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var entryIds: BaseTokenizedObject {
			get {
				return self.append("entryIds") 
			}
		}
		
		public var recpientEmail: BaseTokenizedObject {
			get {
				return self.append("recpientEmail") 
			}
		}
		
		public var timeZoneOffset: BaseTokenizedObject {
			get {
				return self.append("timeZoneOffset") 
			}
		}
		
		public var applicationUrlTemplate: BaseTokenizedObject {
			get {
				return self.append("applicationUrlTemplate") 
			}
		}
	}

	public var entryIds: String? = nil
	public var recpientEmail: String? = nil
	/**  Time zone offset in minutes (between client to UTC)  */
	public var timeZoneOffset: Int? = nil
	/**  Optional argument that allows controlling the prefix of the exported csv url  */
	public var applicationUrlTemplate: String? = nil


	public func setMultiRequestToken(entryIds: String) {
		self.dict["entryIds"] = entryIds
	}
	
	public func setMultiRequestToken(recpientEmail: String) {
		self.dict["recpientEmail"] = recpientEmail
	}
	
	public func setMultiRequestToken(timeZoneOffset: String) {
		self.dict["timeZoneOffset"] = timeZoneOffset
	}
	
	public func setMultiRequestToken(applicationUrlTemplate: String) {
		self.dict["applicationUrlTemplate"] = applicationUrlTemplate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryIds"] != nil {
			entryIds = dict["entryIds"] as? String
		}
		if dict["recpientEmail"] != nil {
			recpientEmail = dict["recpientEmail"] as? String
		}
		if dict["timeZoneOffset"] != nil {
			timeZoneOffset = dict["timeZoneOffset"] as? Int
		}
		if dict["applicationUrlTemplate"] != nil {
			applicationUrlTemplate = dict["applicationUrlTemplate"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryIds != nil) {
			dict["entryIds"] = entryIds!
		}
		if(recpientEmail != nil) {
			dict["recpientEmail"] = recpientEmail!
		}
		if(timeZoneOffset != nil) {
			dict["timeZoneOffset"] = timeZoneOffset!
		}
		if(applicationUrlTemplate != nil) {
			dict["applicationUrlTemplate"] = applicationUrlTemplate!
		}
		return dict
	}
}

