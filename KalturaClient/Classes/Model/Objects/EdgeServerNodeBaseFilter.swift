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

open class EdgeServerNodeBaseFilter: DeliveryServerNodeFilter {

	public class EdgeServerNodeBaseFilterTokenizer: DeliveryServerNodeFilter.DeliveryServerNodeFilterTokenizer {
		
		public var playbackDomainLike: BaseTokenizedObject {
			get {
				return self.append("playbackDomainLike") 
			}
		}
		
		public var playbackDomainMultiLikeOr: BaseTokenizedObject {
			get {
				return self.append("playbackDomainMultiLikeOr") 
			}
		}
		
		public var playbackDomainMultiLikeAnd: BaseTokenizedObject {
			get {
				return self.append("playbackDomainMultiLikeAnd") 
			}
		}
	}

	public var playbackDomainLike: String? = nil
	public var playbackDomainMultiLikeOr: String? = nil
	public var playbackDomainMultiLikeAnd: String? = nil


	public func setMultiRequestToken(playbackDomainLike: String) {
		self.dict["playbackDomainLike"] = playbackDomainLike
	}
	
	public func setMultiRequestToken(playbackDomainMultiLikeOr: String) {
		self.dict["playbackDomainMultiLikeOr"] = playbackDomainMultiLikeOr
	}
	
	public func setMultiRequestToken(playbackDomainMultiLikeAnd: String) {
		self.dict["playbackDomainMultiLikeAnd"] = playbackDomainMultiLikeAnd
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["playbackDomainLike"] != nil {
			playbackDomainLike = dict["playbackDomainLike"] as? String
		}
		if dict["playbackDomainMultiLikeOr"] != nil {
			playbackDomainMultiLikeOr = dict["playbackDomainMultiLikeOr"] as? String
		}
		if dict["playbackDomainMultiLikeAnd"] != nil {
			playbackDomainMultiLikeAnd = dict["playbackDomainMultiLikeAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(playbackDomainLike != nil) {
			dict["playbackDomainLike"] = playbackDomainLike!
		}
		if(playbackDomainMultiLikeOr != nil) {
			dict["playbackDomainMultiLikeOr"] = playbackDomainMultiLikeOr!
		}
		if(playbackDomainMultiLikeAnd != nil) {
			dict["playbackDomainMultiLikeAnd"] = playbackDomainMultiLikeAnd!
		}
		return dict
	}
}

