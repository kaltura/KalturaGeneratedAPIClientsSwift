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

open class FlavorAssetBaseFilter: AssetFilter {

	public class FlavorAssetBaseFilterTokenizer: AssetFilter.AssetFilterTokenizer {
		
		public var flavorParamsIdEqual: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIdEqual") 
			}
		}
		
		public var flavorParamsIdIn: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIdIn") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var statusNotIn: BaseTokenizedObject {
			get {
				return self.append("statusNotIn") 
			}
		}
	}

	public var flavorParamsIdEqual: Int? = nil
	public var flavorParamsIdIn: String? = nil
	public var statusEqual: FlavorAssetStatus? = nil
	public var statusIn: String? = nil
	public var statusNotIn: String? = nil


	public func setMultiRequestToken(flavorParamsIdEqual: String) {
		self.dict["flavorParamsIdEqual"] = flavorParamsIdEqual
	}
	
	public func setMultiRequestToken(flavorParamsIdIn: String) {
		self.dict["flavorParamsIdIn"] = flavorParamsIdIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(statusNotIn: String) {
		self.dict["statusNotIn"] = statusNotIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorParamsIdEqual"] != nil {
			flavorParamsIdEqual = dict["flavorParamsIdEqual"] as? Int
		}
		if dict["flavorParamsIdIn"] != nil {
			flavorParamsIdIn = dict["flavorParamsIdIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = FlavorAssetStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["statusNotIn"] != nil {
			statusNotIn = dict["statusNotIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorParamsIdEqual != nil) {
			dict["flavorParamsIdEqual"] = flavorParamsIdEqual!
		}
		if(flavorParamsIdIn != nil) {
			dict["flavorParamsIdIn"] = flavorParamsIdIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(statusNotIn != nil) {
			dict["statusNotIn"] = statusNotIn!
		}
		return dict
	}
}

