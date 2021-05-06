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

open class ThumbParamsOutputBaseFilter: ThumbParamsFilter {

	public class ThumbParamsOutputBaseFilterTokenizer: ThumbParamsFilter.ThumbParamsFilterTokenizer {
		
		public var thumbParamsIdEqual: BaseTokenizedObject {
			get {
				return self.append("thumbParamsIdEqual") 
			}
		}
		
		public var thumbParamsVersionEqual: BaseTokenizedObject {
			get {
				return self.append("thumbParamsVersionEqual") 
			}
		}
		
		public var thumbAssetIdEqual: BaseTokenizedObject {
			get {
				return self.append("thumbAssetIdEqual") 
			}
		}
		
		public var thumbAssetVersionEqual: BaseTokenizedObject {
			get {
				return self.append("thumbAssetVersionEqual") 
			}
		}
	}

	public var thumbParamsIdEqual: Int? = nil
	public var thumbParamsVersionEqual: String? = nil
	public var thumbAssetIdEqual: String? = nil
	public var thumbAssetVersionEqual: String? = nil


	public func setMultiRequestToken(thumbParamsIdEqual: String) {
		self.dict["thumbParamsIdEqual"] = thumbParamsIdEqual
	}
	
	public func setMultiRequestToken(thumbParamsVersionEqual: String) {
		self.dict["thumbParamsVersionEqual"] = thumbParamsVersionEqual
	}
	
	public func setMultiRequestToken(thumbAssetIdEqual: String) {
		self.dict["thumbAssetIdEqual"] = thumbAssetIdEqual
	}
	
	public func setMultiRequestToken(thumbAssetVersionEqual: String) {
		self.dict["thumbAssetVersionEqual"] = thumbAssetVersionEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["thumbParamsIdEqual"] != nil {
			thumbParamsIdEqual = dict["thumbParamsIdEqual"] as? Int
		}
		if dict["thumbParamsVersionEqual"] != nil {
			thumbParamsVersionEqual = dict["thumbParamsVersionEqual"] as? String
		}
		if dict["thumbAssetIdEqual"] != nil {
			thumbAssetIdEqual = dict["thumbAssetIdEqual"] as? String
		}
		if dict["thumbAssetVersionEqual"] != nil {
			thumbAssetVersionEqual = dict["thumbAssetVersionEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(thumbParamsIdEqual != nil) {
			dict["thumbParamsIdEqual"] = thumbParamsIdEqual!
		}
		if(thumbParamsVersionEqual != nil) {
			dict["thumbParamsVersionEqual"] = thumbParamsVersionEqual!
		}
		if(thumbAssetIdEqual != nil) {
			dict["thumbAssetIdEqual"] = thumbAssetIdEqual!
		}
		if(thumbAssetVersionEqual != nil) {
			dict["thumbAssetVersionEqual"] = thumbAssetVersionEqual!
		}
		return dict
	}
}

