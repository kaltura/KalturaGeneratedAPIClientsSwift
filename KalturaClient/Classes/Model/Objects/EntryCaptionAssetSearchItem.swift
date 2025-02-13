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

open class EntryCaptionAssetSearchItem: SearchItem {

	public class EntryCaptionAssetSearchItemTokenizer: SearchItem.SearchItemTokenizer {
		
		public var contentLike: BaseTokenizedObject {
			get {
				return self.append("contentLike") 
			}
		}
		
		public var contentMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("contentMultiLikeOr") 
			}
		}
		
		public var contentMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("contentMultiLikeAnd") 
			}
		}
	}

	public var contentLike: String? = nil
	public var contentMultiLikeOr: String? = nil
	public var contentMultiLikeAnd: String? = nil


	public func setMultiRequestToken(contentLike: String) {
		self.dict["contentLike"] = contentLike
	}
	
	public func setMultiRequestToken(contentMultiLikeOr: String) {
		self.dict["contentMultiLikeOr"] = contentMultiLikeOr
	}
	
	public func setMultiRequestToken(contentMultiLikeAnd: String) {
		self.dict["contentMultiLikeAnd"] = contentMultiLikeAnd
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contentLike"] != nil {
			contentLike = dict["contentLike"] as? String
		}
		if dict["contentMultiLikeOr"] != nil {
			contentMultiLikeOr = dict["contentMultiLikeOr"] as? String
		}
		if dict["contentMultiLikeAnd"] != nil {
			contentMultiLikeAnd = dict["contentMultiLikeAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contentLike != nil) {
			dict["contentLike"] = contentLike!
		}
		if(contentMultiLikeOr != nil) {
			dict["contentMultiLikeOr"] = contentMultiLikeOr!
		}
		if(contentMultiLikeAnd != nil) {
			dict["contentMultiLikeAnd"] = contentMultiLikeAnd!
		}
		return dict
	}
}

