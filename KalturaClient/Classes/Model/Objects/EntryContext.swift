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

open class EntryContext: Context {

	public class EntryContextTokenizer: Context.ContextTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var followEntryRedirect: BaseTokenizedObject {
			get {
				return self.append("followEntryRedirect") 
			}
		}
	}

	/**  The entry ID in the context of which the playlist should be built  */
	public var entryId: String? = nil
	/**  Is this a redirected entry followup?  */
	public var followEntryRedirect: Bool? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(followEntryRedirect: String) {
		self.dict["followEntryRedirect"] = followEntryRedirect
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["followEntryRedirect"] != nil {
			followEntryRedirect = dict["followEntryRedirect"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(followEntryRedirect != nil) {
			dict["followEntryRedirect"] = followEntryRedirect!
		}
		return dict
	}
}

