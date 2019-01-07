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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class FeedDropFolder: DropFolder {

	public class FeedDropFolderTokenizer: DropFolder.DropFolderTokenizer {
		
		public var itemHandlingLimit: BaseTokenizedObject {
			get {
				return self.append("itemHandlingLimit") 
			}
		}
		
		public func feedItemInfo<T: FeedItemInfo.FeedItemInfoTokenizer>() -> T {
			return T(self.append("feedItemInfo"))
		}
	}

	public var itemHandlingLimit: Int? = nil
	public var feedItemInfo: FeedItemInfo? = nil


	public func setMultiRequestToken(itemHandlingLimit: String) {
		self.dict["itemHandlingLimit"] = itemHandlingLimit
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["itemHandlingLimit"] != nil {
			itemHandlingLimit = dict["itemHandlingLimit"] as? Int
		}
		if dict["feedItemInfo"] != nil {
		feedItemInfo = try JSONParser.parse(object: dict["feedItemInfo"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(itemHandlingLimit != nil) {
			dict["itemHandlingLimit"] = itemHandlingLimit!
		}
		if(feedItemInfo != nil) {
			dict["feedItemInfo"] = feedItemInfo!.toDictionary()
		}
		return dict
	}
}

