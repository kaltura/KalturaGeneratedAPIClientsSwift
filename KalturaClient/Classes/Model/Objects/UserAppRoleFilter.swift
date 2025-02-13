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
// Copyright (C) 2006-2023  Kaltura Inc.
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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class UserAppRoleFilter: UserAppRoleBaseFilter {

	public class UserAppRoleFilterTokenizer: UserAppRoleBaseFilter.UserAppRoleBaseFilterTokenizer {
		
		public var userIdEqual: BaseTokenizedObject {
			get {
				return self.append("userIdEqual") 
			}
		}
		
		public var userIdIn: BaseTokenizedObject {
			get {
				return self.append("userIdIn") 
			}
		}
		
		public var userStatusEqual: BaseTokenizedObject {
			get {
				return self.append("userStatusEqual") 
			}
		}
		
		public var userStatusIn: BaseTokenizedObject {
			get {
				return self.append("userStatusIn") 
			}
		}
	}

	/**  The User Id to search for  */
	public var userIdEqual: String? = nil
	/**  Users Ids csv list  */
	public var userIdIn: String? = nil
	/**  User Status  */
	public var userStatusEqual: UserStatus? = nil
	/**  User Status csv list (0 = Blocked | 1 = Active)  */
	public var userStatusIn: String? = nil


	public func setMultiRequestToken(userIdEqual: String) {
		self.dict["userIdEqual"] = userIdEqual
	}
	
	public func setMultiRequestToken(userIdIn: String) {
		self.dict["userIdIn"] = userIdIn
	}
	
	public func setMultiRequestToken(userStatusEqual: String) {
		self.dict["userStatusEqual"] = userStatusEqual
	}
	
	public func setMultiRequestToken(userStatusIn: String) {
		self.dict["userStatusIn"] = userStatusIn
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["userIdEqual"] != nil {
			userIdEqual = dict["userIdEqual"] as? String
		}
		if dict["userIdIn"] != nil {
			userIdIn = dict["userIdIn"] as? String
		}
		if dict["userStatusEqual"] != nil {
			userStatusEqual = UserStatus(rawValue: (dict["userStatusEqual"] as? Int)!)
		}
		if dict["userStatusIn"] != nil {
			userStatusIn = dict["userStatusIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(userIdEqual != nil) {
			dict["userIdEqual"] = userIdEqual!
		}
		if(userIdIn != nil) {
			dict["userIdIn"] = userIdIn!
		}
		if(userStatusEqual != nil) {
			dict["userStatusEqual"] = userStatusEqual!.rawValue
		}
		if(userStatusIn != nil) {
			dict["userStatusIn"] = userStatusIn!
		}
		return dict
	}
}

