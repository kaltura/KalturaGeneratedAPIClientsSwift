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

open class YoutubeApiDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class YoutubeApiDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var videoAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("videoAssetFilePath") 
			}
		}
		
		public var thumbAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("thumbAssetFilePath") 
			}
		}
		
		public var captionsInfo: ArrayTokenizedObject<YouTubeApiCaptionDistributionInfo.YouTubeApiCaptionDistributionInfoTokenizer> {
			get {
				return ArrayTokenizedObject<YouTubeApiCaptionDistributionInfo.YouTubeApiCaptionDistributionInfoTokenizer>(self.append("captionsInfo"))
			} 
		}
	}

	public var videoAssetFilePath: String? = nil
	public var thumbAssetFilePath: String? = nil
	public var captionsInfo: Array<YouTubeApiCaptionDistributionInfo>? = nil


	public func setMultiRequestToken(videoAssetFilePath: String) {
		self.dict["videoAssetFilePath"] = videoAssetFilePath
	}
	
	public func setMultiRequestToken(thumbAssetFilePath: String) {
		self.dict["thumbAssetFilePath"] = thumbAssetFilePath
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["videoAssetFilePath"] != nil {
			videoAssetFilePath = dict["videoAssetFilePath"] as? String
		}
		if dict["thumbAssetFilePath"] != nil {
			thumbAssetFilePath = dict["thumbAssetFilePath"] as? String
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
		if(thumbAssetFilePath != nil) {
			dict["thumbAssetFilePath"] = thumbAssetFilePath!
		}
		if(captionsInfo != nil) {
			dict["captionsInfo"] = captionsInfo!.map { value in value.toDictionary() }
		}
		return dict
	}
}

