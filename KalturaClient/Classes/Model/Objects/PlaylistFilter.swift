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

open class PlaylistFilter: PlaylistBaseFilter {

	public class PlaylistFilterTokenizer: PlaylistBaseFilter.PlaylistBaseFilterTokenizer {
		
		public var playListTypeEqual: BaseTokenizedObject {
			get {
				return self.append("playListTypeEqual") 
			}
		}
		
		public var playListTypeIn: BaseTokenizedObject {
			get {
				return self.append("playListTypeIn") 
			}
		}
	}

	public var playListTypeEqual: PlaylistType? = nil
	public var playListTypeIn: String? = nil


	public func setMultiRequestToken(playListTypeEqual: String) {
		self.dict["playListTypeEqual"] = playListTypeEqual
	}
	
	public func setMultiRequestToken(playListTypeIn: String) {
		self.dict["playListTypeIn"] = playListTypeIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["playListTypeEqual"] != nil {
			playListTypeEqual = PlaylistType(rawValue: (dict["playListTypeEqual"] as? Int)!)
		}
		if dict["playListTypeIn"] != nil {
			playListTypeIn = dict["playListTypeIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(playListTypeEqual != nil) {
			dict["playListTypeEqual"] = playListTypeEqual!.rawValue
		}
		if(playListTypeIn != nil) {
			dict["playListTypeIn"] = playListTypeIn!
		}
		return dict
	}
}

