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

open class FacebookDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class FacebookDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var videoAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("videoAssetFilePath") 
			}
		}
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
		
		public var captionsInfo: ArrayTokenizedObject<FacebookCaptionDistributionInfo.FacebookCaptionDistributionInfoTokenizer> {
			get {
				return ArrayTokenizedObject<FacebookCaptionDistributionInfo.FacebookCaptionDistributionInfoTokenizer>(self.append("captionsInfo"))
			} 
		}
	}

	public var videoAssetFilePath: String? = nil
	public var thumbAssetId: String? = nil
	public var captionsInfo: Array<FacebookCaptionDistributionInfo>? = nil


	public func setMultiRequestToken(videoAssetFilePath: String) {
		self.dict["videoAssetFilePath"] = videoAssetFilePath
	}
	
	public func setMultiRequestToken(thumbAssetId: String) {
		self.dict["thumbAssetId"] = thumbAssetId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["videoAssetFilePath"] != nil {
			videoAssetFilePath = dict["videoAssetFilePath"] as? String
		}
		if dict["thumbAssetId"] != nil {
			thumbAssetId = dict["thumbAssetId"] as? String
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
		if(thumbAssetId != nil) {
			dict["thumbAssetId"] = thumbAssetId!
		}
		if(captionsInfo != nil) {
			dict["captionsInfo"] = captionsInfo!.map { value in value.toDictionary() }
		}
		return dict
	}
}

