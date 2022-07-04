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

open class AuthInfo: SessionInfo {

	public class AuthInfoTokenizer: SessionInfo.SessionInfoTokenizer {
		
		public var kuserId: BaseTokenizedObject {
			get {
				return self.append("kuserId") 
			}
		}
		
		public var roleIds: BaseTokenizedObject {
			get {
				return self.append("roleIds") 
			}
		}
		
		public var sessionPermissions: BaseTokenizedObject {
			get {
				return self.append("sessionPermissions") 
			}
		}
	}

	public var kuserId: Int? = nil
	public var roleIds: Int? = nil
	public var sessionPermissions: String? = nil


	public func setMultiRequestToken(kuserId: String) {
		self.dict["kuserId"] = kuserId
	}
	
	public func setMultiRequestToken(roleIds: String) {
		self.dict["roleIds"] = roleIds
	}
	
	public func setMultiRequestToken(sessionPermissions: String) {
		self.dict["sessionPermissions"] = sessionPermissions
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["kuserId"] != nil {
			kuserId = dict["kuserId"] as? Int
		}
		if dict["roleIds"] != nil {
			roleIds = dict["roleIds"] as? Int
		}
		if dict["sessionPermissions"] != nil {
			sessionPermissions = dict["sessionPermissions"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(kuserId != nil) {
			dict["kuserId"] = kuserId!
		}
		if(roleIds != nil) {
			dict["roleIds"] = roleIds!
		}
		if(sessionPermissions != nil) {
			dict["sessionPermissions"] = sessionPermissions!
		}
		return dict
	}
}

