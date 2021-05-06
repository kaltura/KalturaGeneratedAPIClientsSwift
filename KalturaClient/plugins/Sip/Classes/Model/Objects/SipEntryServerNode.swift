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

open class SipEntryServerNode: EntryServerNode {

	public class SipEntryServerNodeTokenizer: EntryServerNode.EntryServerNodeTokenizer {
		
		public var sipRoomId: BaseTokenizedObject {
			get {
				return self.append("sipRoomId") 
			}
		}
		
		public var sipPrimaryAdpId: BaseTokenizedObject {
			get {
				return self.append("sipPrimaryAdpId") 
			}
		}
		
		public var sipSecondaryAdpId: BaseTokenizedObject {
			get {
				return self.append("sipSecondaryAdpId") 
			}
		}
	}

	public var sipRoomId: String? = nil
	public var sipPrimaryAdpId: String? = nil
	public var sipSecondaryAdpId: String? = nil


	public func setMultiRequestToken(sipRoomId: String) {
		self.dict["sipRoomId"] = sipRoomId
	}
	
	public func setMultiRequestToken(sipPrimaryAdpId: String) {
		self.dict["sipPrimaryAdpId"] = sipPrimaryAdpId
	}
	
	public func setMultiRequestToken(sipSecondaryAdpId: String) {
		self.dict["sipSecondaryAdpId"] = sipSecondaryAdpId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sipRoomId"] != nil {
			sipRoomId = dict["sipRoomId"] as? String
		}
		if dict["sipPrimaryAdpId"] != nil {
			sipPrimaryAdpId = dict["sipPrimaryAdpId"] as? String
		}
		if dict["sipSecondaryAdpId"] != nil {
			sipSecondaryAdpId = dict["sipSecondaryAdpId"] as? String
		}

	}

}

