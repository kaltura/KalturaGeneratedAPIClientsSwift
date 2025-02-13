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

open class AccessControlModifyRequestHostRegexAction: RuleAction {

	public class AccessControlModifyRequestHostRegexActionTokenizer: RuleAction.RuleActionTokenizer {
		
		public var pattern: BaseTokenizedObject {
			get {
				return self.append("pattern") 
			}
		}
		
		public var replacement: BaseTokenizedObject {
			get {
				return self.append("replacement") 
			}
		}
		
		public var replacmenServerNodeId: BaseTokenizedObject {
			get {
				return self.append("replacmenServerNodeId") 
			}
		}
		
		public var checkAliveTimeoutMs: BaseTokenizedObject {
			get {
				return self.append("checkAliveTimeoutMs") 
			}
		}
	}

	/**  Request host regex pattern  */
	public var pattern: String? = nil
	/**  Request host regex replacment  */
	public var replacement: String? = nil
	/**  serverNodeId to generate replacment host from  */
	public var replacmenServerNodeId: Int? = nil
	/**  Set this value if you want to check if the server is accessible before
	  redirecting traffic to it (this value is in milliseconds)  */
	public var checkAliveTimeoutMs: Int? = nil


	public func setMultiRequestToken(pattern: String) {
		self.dict["pattern"] = pattern
	}
	
	public func setMultiRequestToken(replacement: String) {
		self.dict["replacement"] = replacement
	}
	
	public func setMultiRequestToken(replacmenServerNodeId: String) {
		self.dict["replacmenServerNodeId"] = replacmenServerNodeId
	}
	
	public func setMultiRequestToken(checkAliveTimeoutMs: String) {
		self.dict["checkAliveTimeoutMs"] = checkAliveTimeoutMs
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pattern"] != nil {
			pattern = dict["pattern"] as? String
		}
		if dict["replacement"] != nil {
			replacement = dict["replacement"] as? String
		}
		if dict["replacmenServerNodeId"] != nil {
			replacmenServerNodeId = dict["replacmenServerNodeId"] as? Int
		}
		if dict["checkAliveTimeoutMs"] != nil {
			checkAliveTimeoutMs = dict["checkAliveTimeoutMs"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pattern != nil) {
			dict["pattern"] = pattern!
		}
		if(replacement != nil) {
			dict["replacement"] = replacement!
		}
		if(replacmenServerNodeId != nil) {
			dict["replacmenServerNodeId"] = replacmenServerNodeId!
		}
		if(checkAliveTimeoutMs != nil) {
			dict["checkAliveTimeoutMs"] = checkAliveTimeoutMs!
		}
		return dict
	}
}

