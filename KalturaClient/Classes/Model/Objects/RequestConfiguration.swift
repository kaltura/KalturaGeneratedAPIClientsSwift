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

/**  Define client request optional configurations  /  */
open class RequestConfiguration: ObjectBase {

	public class RequestConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var ks: BaseTokenizedObject {
			get {
				return self.append("ks") 
			}
		}
		
		public func responseProfile<T: BaseResponseProfile.BaseResponseProfileTokenizer>() -> T {
			return T(self.append("responseProfile"))
		}
	}

	/**  Impersonated partner id  */
	public var partnerId: Int? = nil
	/**  Kaltura API session  */
	public var ks: String? = nil
	/**  Response profile - this attribute will be automatically unset after every API
	  call.  */
	public var responseProfile: BaseResponseProfile? = nil


	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(ks: String) {
		self.dict["ks"] = ks
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["ks"] != nil {
			ks = dict["ks"] as? String
		}
		if dict["responseProfile"] != nil {
		responseProfile = try JSONParser.parse(object: dict["responseProfile"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(ks != nil) {
			dict["ks"] = ks!
		}
		if(responseProfile != nil) {
			dict["responseProfile"] = responseProfile!.toDictionary()
		}
		return dict
	}
}

