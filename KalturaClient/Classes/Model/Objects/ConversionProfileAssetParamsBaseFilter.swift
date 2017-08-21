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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class ConversionProfileAssetParamsBaseFilter: RelatedFilter {

	public var conversionProfileIdEqual: Int? = nil
	public var conversionProfileIdIn: String? = nil
	public var assetParamsIdEqual: Int? = nil
	public var assetParamsIdIn: String? = nil
	public var readyBehaviorEqual: FlavorReadyBehaviorType? = nil
	public var readyBehaviorIn: String? = nil
	public var originEqual: AssetParamsOrigin? = nil
	public var originIn: String? = nil
	public var systemNameEqual: String? = nil
	public var systemNameIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["conversionProfileIdEqual"] != nil {
			conversionProfileIdEqual = dict["conversionProfileIdEqual"] as? Int
		}
		if dict["conversionProfileIdIn"] != nil {
			conversionProfileIdIn = dict["conversionProfileIdIn"] as? String
		}
		if dict["assetParamsIdEqual"] != nil {
			assetParamsIdEqual = dict["assetParamsIdEqual"] as? Int
		}
		if dict["assetParamsIdIn"] != nil {
			assetParamsIdIn = dict["assetParamsIdIn"] as? String
		}
		if dict["readyBehaviorEqual"] != nil {
			readyBehaviorEqual = FlavorReadyBehaviorType(rawValue: (dict["readyBehaviorEqual"] as? Int)!)
		}
		if dict["readyBehaviorIn"] != nil {
			readyBehaviorIn = dict["readyBehaviorIn"] as? String
		}
		if dict["originEqual"] != nil {
			originEqual = AssetParamsOrigin(rawValue: (dict["originEqual"] as? Int)!)
		}
		if dict["originIn"] != nil {
			originIn = dict["originIn"] as? String
		}
		if dict["systemNameEqual"] != nil {
			systemNameEqual = dict["systemNameEqual"] as? String
		}
		if dict["systemNameIn"] != nil {
			systemNameIn = dict["systemNameIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(conversionProfileIdEqual != nil) {
			dict["conversionProfileIdEqual"] = conversionProfileIdEqual!
		}
		if(conversionProfileIdIn != nil) {
			dict["conversionProfileIdIn"] = conversionProfileIdIn!
		}
		if(assetParamsIdEqual != nil) {
			dict["assetParamsIdEqual"] = assetParamsIdEqual!
		}
		if(assetParamsIdIn != nil) {
			dict["assetParamsIdIn"] = assetParamsIdIn!
		}
		if(readyBehaviorEqual != nil) {
			dict["readyBehaviorEqual"] = readyBehaviorEqual!.rawValue
		}
		if(readyBehaviorIn != nil) {
			dict["readyBehaviorIn"] = readyBehaviorIn!
		}
		if(originEqual != nil) {
			dict["originEqual"] = originEqual!.rawValue
		}
		if(originIn != nil) {
			dict["originIn"] = originIn!
		}
		if(systemNameEqual != nil) {
			dict["systemNameEqual"] = systemNameEqual!
		}
		if(systemNameIn != nil) {
			dict["systemNameIn"] = systemNameIn!
		}
		return dict
	}
}

