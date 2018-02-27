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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class FlavorParamsOutputBaseFilter: FlavorParamsFilter {

	public class FlavorParamsOutputBaseFilterTokenizer: FlavorParamsFilter.FlavorParamsFilterTokenizer {
		
		public var flavorParamsIdEqual: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIdEqual") 
			}
		}
		
		public var flavorParamsVersionEqual: BaseTokenizedObject {
			get {
				return self.append("flavorParamsVersionEqual") 
			}
		}
		
		public var flavorAssetIdEqual: BaseTokenizedObject {
			get {
				return self.append("flavorAssetIdEqual") 
			}
		}
		
		public var flavorAssetVersionEqual: BaseTokenizedObject {
			get {
				return self.append("flavorAssetVersionEqual") 
			}
		}
	}

	public var flavorParamsIdEqual: Int? = nil
	public var flavorParamsVersionEqual: String? = nil
	public var flavorAssetIdEqual: String? = nil
	public var flavorAssetVersionEqual: String? = nil


	public func setMultiRequestToken(flavorParamsIdEqual: String) {
		self.dict["flavorParamsIdEqual"] = flavorParamsIdEqual
	}
	
	public func setMultiRequestToken(flavorParamsVersionEqual: String) {
		self.dict["flavorParamsVersionEqual"] = flavorParamsVersionEqual
	}
	
	public func setMultiRequestToken(flavorAssetIdEqual: String) {
		self.dict["flavorAssetIdEqual"] = flavorAssetIdEqual
	}
	
	public func setMultiRequestToken(flavorAssetVersionEqual: String) {
		self.dict["flavorAssetVersionEqual"] = flavorAssetVersionEqual
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorParamsIdEqual"] != nil {
			flavorParamsIdEqual = dict["flavorParamsIdEqual"] as? Int
		}
		if dict["flavorParamsVersionEqual"] != nil {
			flavorParamsVersionEqual = dict["flavorParamsVersionEqual"] as? String
		}
		if dict["flavorAssetIdEqual"] != nil {
			flavorAssetIdEqual = dict["flavorAssetIdEqual"] as? String
		}
		if dict["flavorAssetVersionEqual"] != nil {
			flavorAssetVersionEqual = dict["flavorAssetVersionEqual"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorParamsIdEqual != nil) {
			dict["flavorParamsIdEqual"] = flavorParamsIdEqual!
		}
		if(flavorParamsVersionEqual != nil) {
			dict["flavorParamsVersionEqual"] = flavorParamsVersionEqual!
		}
		if(flavorAssetIdEqual != nil) {
			dict["flavorAssetIdEqual"] = flavorAssetIdEqual!
		}
		if(flavorAssetVersionEqual != nil) {
			dict["flavorAssetVersionEqual"] = flavorAssetVersionEqual!
		}
		return dict
	}
}

