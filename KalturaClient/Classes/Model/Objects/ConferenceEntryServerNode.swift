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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ConferenceEntryServerNode: EntryServerNode {

	public class ConferenceEntryServerNodeTokenizer: EntryServerNode.EntryServerNodeTokenizer {
		
		public var confRoomStatus: BaseTokenizedObject {
			get {
				return self.append("confRoomStatus") 
			}
		}
		
		public var registered: BaseTokenizedObject {
			get {
				return self.append("registered") 
			}
		}
	}

	public var confRoomStatus: ConferenceRoomStatus? = nil
	public var registered: Int? = nil


	public func setMultiRequestToken(confRoomStatus: String) {
		self.dict["confRoomStatus"] = confRoomStatus
	}
	
	public func setMultiRequestToken(registered: String) {
		self.dict["registered"] = registered
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["confRoomStatus"] != nil {
			confRoomStatus = ConferenceRoomStatus(rawValue: (dict["confRoomStatus"] as? Int)!)
		}
		if dict["registered"] != nil {
			registered = dict["registered"] as? Int
		}

	}

}

