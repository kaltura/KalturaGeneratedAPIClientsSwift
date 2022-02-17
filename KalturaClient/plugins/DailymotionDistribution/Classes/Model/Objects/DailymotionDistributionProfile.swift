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

open class DailymotionDistributionProfile: ConfigurableDistributionProfile {

	public class DailymotionDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var user: BaseTokenizedObject {
			get {
				return self.append("user") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var geoBlockingMapping: BaseTokenizedObject {
			get {
				return self.append("geoBlockingMapping") 
			}
		}
	}

	public var user: String? = nil
	public var password: String? = nil
	public var geoBlockingMapping: DailymotionGeoBlockingMapping? = nil


	public func setMultiRequestToken(user: String) {
		self.dict["user"] = user
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(geoBlockingMapping: String) {
		self.dict["geoBlockingMapping"] = geoBlockingMapping
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["user"] != nil {
			user = dict["user"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["geoBlockingMapping"] != nil {
			geoBlockingMapping = DailymotionGeoBlockingMapping(rawValue: (dict["geoBlockingMapping"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(user != nil) {
			dict["user"] = user!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(geoBlockingMapping != nil) {
			dict["geoBlockingMapping"] = geoBlockingMapping!.rawValue
		}
		return dict
	}
}

