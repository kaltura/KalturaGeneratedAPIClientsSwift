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

open class PartnerPublicInfo: ObjectBase {

	public class PartnerPublicInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var analyticsUrl: BaseTokenizedObject {
			get {
				return self.append("analyticsUrl") 
			}
		}
		
		public var ottEnvironmentUrl: BaseTokenizedObject {
			get {
				return self.append("ottEnvironmentUrl") 
			}
		}
		
		public var analyticsPersistentSessionId: BaseTokenizedObject {
			get {
				return self.append("analyticsPersistentSessionId") 
			}
		}
	}

	public var analyticsUrl: String? = nil
	public var ottEnvironmentUrl: String? = nil
	public var analyticsPersistentSessionId: Bool? = nil


	public func setMultiRequestToken(analyticsUrl: String) {
		self.dict["analyticsUrl"] = analyticsUrl
	}
	
	public func setMultiRequestToken(ottEnvironmentUrl: String) {
		self.dict["ottEnvironmentUrl"] = ottEnvironmentUrl
	}
	
	public func setMultiRequestToken(analyticsPersistentSessionId: String) {
		self.dict["analyticsPersistentSessionId"] = analyticsPersistentSessionId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["analyticsUrl"] != nil {
			analyticsUrl = dict["analyticsUrl"] as? String
		}
		if dict["ottEnvironmentUrl"] != nil {
			ottEnvironmentUrl = dict["ottEnvironmentUrl"] as? String
		}
		if dict["analyticsPersistentSessionId"] != nil {
			analyticsPersistentSessionId = dict["analyticsPersistentSessionId"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(analyticsUrl != nil) {
			dict["analyticsUrl"] = analyticsUrl!
		}
		if(ottEnvironmentUrl != nil) {
			dict["ottEnvironmentUrl"] = ottEnvironmentUrl!
		}
		if(analyticsPersistentSessionId != nil) {
			dict["analyticsPersistentSessionId"] = analyticsPersistentSessionId!
		}
		return dict
	}
}

