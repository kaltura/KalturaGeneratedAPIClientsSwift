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

open class PlayReadyLicenseDetails: ObjectBase {

	public class PlayReadyLicenseDetailsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func policy<T: PlayReadyPolicy.PlayReadyPolicyTokenizer>() -> T {
			return T(self.append("policy"))
		}
		
		public var beginDate: BaseTokenizedObject {
			get {
				return self.append("beginDate") 
			}
		}
		
		public var expirationDate: BaseTokenizedObject {
			get {
				return self.append("expirationDate") 
			}
		}
		
		public var removalDate: BaseTokenizedObject {
			get {
				return self.append("removalDate") 
			}
		}
	}

	/**  PlayReady policy object  */
	public var policy: PlayReadyPolicy? = nil
	/**  License begin date  */
	public var beginDate: Int? = nil
	/**  License expiration date  */
	public var expirationDate: Int? = nil
	/**  License removal date  */
	public var removalDate: Int? = nil


	public func setMultiRequestToken(beginDate: String) {
		self.dict["beginDate"] = beginDate
	}
	
	public func setMultiRequestToken(expirationDate: String) {
		self.dict["expirationDate"] = expirationDate
	}
	
	public func setMultiRequestToken(removalDate: String) {
		self.dict["removalDate"] = removalDate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["policy"] != nil {
		policy = try JSONParser.parse(object: dict["policy"] as! [String: Any])		}
		if dict["beginDate"] != nil {
			beginDate = dict["beginDate"] as? Int
		}
		if dict["expirationDate"] != nil {
			expirationDate = dict["expirationDate"] as? Int
		}
		if dict["removalDate"] != nil {
			removalDate = dict["removalDate"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(policy != nil) {
			dict["policy"] = policy!.toDictionary()
		}
		if(beginDate != nil) {
			dict["beginDate"] = beginDate!
		}
		if(expirationDate != nil) {
			dict["expirationDate"] = expirationDate!
		}
		if(removalDate != nil) {
			dict["removalDate"] = removalDate!
		}
		return dict
	}
}

