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

open class ConversionProfileAssetParamsFilter: ConversionProfileAssetParamsBaseFilter {

	public class ConversionProfileAssetParamsFilterTokenizer: ConversionProfileAssetParamsBaseFilter.ConversionProfileAssetParamsBaseFilterTokenizer {
		
		public func conversionProfileIdFilter<T: ConversionProfileFilter.ConversionProfileFilterTokenizer>() -> T {
			return T(self.append("conversionProfileIdFilter"))
		}
		
		public func assetParamsIdFilter<T: AssetParamsFilter.AssetParamsFilterTokenizer>() -> T {
			return T(self.append("assetParamsIdFilter"))
		}
	}

	public var conversionProfileIdFilter: ConversionProfileFilter? = nil
	public var assetParamsIdFilter: AssetParamsFilter? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["conversionProfileIdFilter"] != nil {
		conversionProfileIdFilter = try JSONParser.parse(object: dict["conversionProfileIdFilter"] as! [String: Any])		}
		if dict["assetParamsIdFilter"] != nil {
		assetParamsIdFilter = try JSONParser.parse(object: dict["assetParamsIdFilter"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(conversionProfileIdFilter != nil) {
			dict["conversionProfileIdFilter"] = conversionProfileIdFilter!.toDictionary()
		}
		if(assetParamsIdFilter != nil) {
			dict["assetParamsIdFilter"] = assetParamsIdFilter!.toDictionary()
		}
		return dict
	}
}

