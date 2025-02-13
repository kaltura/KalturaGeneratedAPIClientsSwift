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

open class Bumper: ObjectBase {

	public class BumperTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var sources: ArrayTokenizedObject<PlaybackSource.PlaybackSourceTokenizer> {
			get {
				return ArrayTokenizedObject<PlaybackSource.PlaybackSourceTokenizer>(self.append("sources"))
			} 
		}
	}

	public var entryId: String? = nil
	public var url: String? = nil
	public var sources: Array<PlaybackSource>? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["sources"] != nil {
			sources = try JSONParser.parse(array: dict["sources"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(url != nil) {
			dict["url"] = url!
		}
		return dict
	}
}

