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

open class DailymotionDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class DailymotionDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var videoAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("videoAssetFilePath") 
			}
		}
		
		public var accessControlGeoBlockingOperation: BaseTokenizedObject {
			get {
				return self.append("accessControlGeoBlockingOperation") 
			}
		}
		
		public var accessControlGeoBlockingCountryList: BaseTokenizedObject {
			get {
				return self.append("accessControlGeoBlockingCountryList") 
			}
		}
		
		public var captionsInfo: ArrayTokenizedObject<DailymotionDistributionCaptionInfo.DailymotionDistributionCaptionInfoTokenizer> {
			get {
				return ArrayTokenizedObject<DailymotionDistributionCaptionInfo.DailymotionDistributionCaptionInfoTokenizer>(self.append("captionsInfo"))
			} 
		}
	}

	public var videoAssetFilePath: String? = nil
	public var accessControlGeoBlockingOperation: String? = nil
	public var accessControlGeoBlockingCountryList: String? = nil
	public var captionsInfo: Array<DailymotionDistributionCaptionInfo>? = nil


	public func setMultiRequestToken(videoAssetFilePath: String) {
		self.dict["videoAssetFilePath"] = videoAssetFilePath
	}
	
	public func setMultiRequestToken(accessControlGeoBlockingOperation: String) {
		self.dict["accessControlGeoBlockingOperation"] = accessControlGeoBlockingOperation
	}
	
	public func setMultiRequestToken(accessControlGeoBlockingCountryList: String) {
		self.dict["accessControlGeoBlockingCountryList"] = accessControlGeoBlockingCountryList
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["videoAssetFilePath"] != nil {
			videoAssetFilePath = dict["videoAssetFilePath"] as? String
		}
		if dict["accessControlGeoBlockingOperation"] != nil {
			accessControlGeoBlockingOperation = dict["accessControlGeoBlockingOperation"] as? String
		}
		if dict["accessControlGeoBlockingCountryList"] != nil {
			accessControlGeoBlockingCountryList = dict["accessControlGeoBlockingCountryList"] as? String
		}
		if dict["captionsInfo"] != nil {
			captionsInfo = try JSONParser.parse(array: dict["captionsInfo"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(videoAssetFilePath != nil) {
			dict["videoAssetFilePath"] = videoAssetFilePath!
		}
		if(accessControlGeoBlockingOperation != nil) {
			dict["accessControlGeoBlockingOperation"] = accessControlGeoBlockingOperation!
		}
		if(accessControlGeoBlockingCountryList != nil) {
			dict["accessControlGeoBlockingCountryList"] = accessControlGeoBlockingCountryList!
		}
		if(captionsInfo != nil) {
			dict["captionsInfo"] = captionsInfo!.map { value in value.toDictionary() }
		}
		return dict
	}
}

