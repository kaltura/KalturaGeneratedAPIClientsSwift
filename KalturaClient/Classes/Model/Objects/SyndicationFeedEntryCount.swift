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

open class SyndicationFeedEntryCount: ObjectBase {

	public class SyndicationFeedEntryCountTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var totalEntryCount: BaseTokenizedObject {
			get {
				return self.append("totalEntryCount") 
			}
		}
		
		public var actualEntryCount: BaseTokenizedObject {
			get {
				return self.append("actualEntryCount") 
			}
		}
		
		public var requireTranscodingCount: BaseTokenizedObject {
			get {
				return self.append("requireTranscodingCount") 
			}
		}
	}

	/**  the total count of entries that should appear in the feed without flavor
	  filtering  */
	public var totalEntryCount: Int? = nil
	/**  count of entries that will appear in the feed (including all relevant filters)  */
	public var actualEntryCount: Int? = nil
	/**  count of entries that requires transcoding in order to be included in feed  */
	public var requireTranscodingCount: Int? = nil


	public func setMultiRequestToken(totalEntryCount: String) {
		self.dict["totalEntryCount"] = totalEntryCount
	}
	
	public func setMultiRequestToken(actualEntryCount: String) {
		self.dict["actualEntryCount"] = actualEntryCount
	}
	
	public func setMultiRequestToken(requireTranscodingCount: String) {
		self.dict["requireTranscodingCount"] = requireTranscodingCount
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["totalEntryCount"] != nil {
			totalEntryCount = dict["totalEntryCount"] as? Int
		}
		if dict["actualEntryCount"] != nil {
			actualEntryCount = dict["actualEntryCount"] as? Int
		}
		if dict["requireTranscodingCount"] != nil {
			requireTranscodingCount = dict["requireTranscodingCount"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(totalEntryCount != nil) {
			dict["totalEntryCount"] = totalEntryCount!
		}
		if(actualEntryCount != nil) {
			dict["actualEntryCount"] = actualEntryCount!
		}
		if(requireTranscodingCount != nil) {
			dict["requireTranscodingCount"] = requireTranscodingCount!
		}
		return dict
	}
}

