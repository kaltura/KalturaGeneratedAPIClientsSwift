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

open class ComcastMrssDistributionProfile: ConfigurableDistributionProfile {

	public class ComcastMrssDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
		public var feedTitle: BaseTokenizedObject {
			get {
				return self.append("feedTitle") 
			}
		}
		
		public var feedLink: BaseTokenizedObject {
			get {
				return self.append("feedLink") 
			}
		}
		
		public var feedDescription: BaseTokenizedObject {
			get {
				return self.append("feedDescription") 
			}
		}
		
		public var feedLastBuildDate: BaseTokenizedObject {
			get {
				return self.append("feedLastBuildDate") 
			}
		}
		
		public var itemLink: BaseTokenizedObject {
			get {
				return self.append("itemLink") 
			}
		}
		
		public var cPlatformTvSeries: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("cPlatformTvSeries"))
			} 
		}
		
		public var cPlatformTvSeriesField: BaseTokenizedObject {
			get {
				return self.append("cPlatformTvSeriesField") 
			}
		}
		
		public var shouldIncludeCuePoints: BaseTokenizedObject {
			get {
				return self.append("shouldIncludeCuePoints") 
			}
		}
		
		public var shouldIncludeCaptions: BaseTokenizedObject {
			get {
				return self.append("shouldIncludeCaptions") 
			}
		}
		
		public var shouldAddThumbExtension: BaseTokenizedObject {
			get {
				return self.append("shouldAddThumbExtension") 
			}
		}
	}

	public var metadataProfileId: Int? = nil
	public var feedUrl: String? = nil
	public var feedTitle: String? = nil
	public var feedLink: String? = nil
	public var feedDescription: String? = nil
	public var feedLastBuildDate: String? = nil
	public var itemLink: String? = nil
	public var cPlatformTvSeries: Array<KeyValue>? = nil
	public var cPlatformTvSeriesField: String? = nil
	public var shouldIncludeCuePoints: Bool? = nil
	public var shouldIncludeCaptions: Bool? = nil
	public var shouldAddThumbExtension: Bool? = nil


	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(feedTitle: String) {
		self.dict["feedTitle"] = feedTitle
	}
	
	public func setMultiRequestToken(feedLink: String) {
		self.dict["feedLink"] = feedLink
	}
	
	public func setMultiRequestToken(feedDescription: String) {
		self.dict["feedDescription"] = feedDescription
	}
	
	public func setMultiRequestToken(feedLastBuildDate: String) {
		self.dict["feedLastBuildDate"] = feedLastBuildDate
	}
	
	public func setMultiRequestToken(itemLink: String) {
		self.dict["itemLink"] = itemLink
	}
	
	public func setMultiRequestToken(cPlatformTvSeriesField: String) {
		self.dict["cPlatformTvSeriesField"] = cPlatformTvSeriesField
	}
	
	public func setMultiRequestToken(shouldIncludeCuePoints: String) {
		self.dict["shouldIncludeCuePoints"] = shouldIncludeCuePoints
	}
	
	public func setMultiRequestToken(shouldIncludeCaptions: String) {
		self.dict["shouldIncludeCaptions"] = shouldIncludeCaptions
	}
	
	public func setMultiRequestToken(shouldAddThumbExtension: String) {
		self.dict["shouldAddThumbExtension"] = shouldAddThumbExtension
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["feedTitle"] != nil {
			feedTitle = dict["feedTitle"] as? String
		}
		if dict["feedLink"] != nil {
			feedLink = dict["feedLink"] as? String
		}
		if dict["feedDescription"] != nil {
			feedDescription = dict["feedDescription"] as? String
		}
		if dict["feedLastBuildDate"] != nil {
			feedLastBuildDate = dict["feedLastBuildDate"] as? String
		}
		if dict["itemLink"] != nil {
			itemLink = dict["itemLink"] as? String
		}
		if dict["cPlatformTvSeries"] != nil {
			cPlatformTvSeries = try JSONParser.parse(array: dict["cPlatformTvSeries"] as! [Any])
		}
		if dict["cPlatformTvSeriesField"] != nil {
			cPlatformTvSeriesField = dict["cPlatformTvSeriesField"] as? String
		}
		if dict["shouldIncludeCuePoints"] != nil {
			shouldIncludeCuePoints = dict["shouldIncludeCuePoints"] as? Bool
		}
		if dict["shouldIncludeCaptions"] != nil {
			shouldIncludeCaptions = dict["shouldIncludeCaptions"] as? Bool
		}
		if dict["shouldAddThumbExtension"] != nil {
			shouldAddThumbExtension = dict["shouldAddThumbExtension"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(feedTitle != nil) {
			dict["feedTitle"] = feedTitle!
		}
		if(feedLink != nil) {
			dict["feedLink"] = feedLink!
		}
		if(feedDescription != nil) {
			dict["feedDescription"] = feedDescription!
		}
		if(feedLastBuildDate != nil) {
			dict["feedLastBuildDate"] = feedLastBuildDate!
		}
		if(itemLink != nil) {
			dict["itemLink"] = itemLink!
		}
		if(cPlatformTvSeries != nil) {
			dict["cPlatformTvSeries"] = cPlatformTvSeries!.map { value in value.toDictionary() }
		}
		if(cPlatformTvSeriesField != nil) {
			dict["cPlatformTvSeriesField"] = cPlatformTvSeriesField!
		}
		if(shouldIncludeCuePoints != nil) {
			dict["shouldIncludeCuePoints"] = shouldIncludeCuePoints!
		}
		if(shouldIncludeCaptions != nil) {
			dict["shouldIncludeCaptions"] = shouldIncludeCaptions!
		}
		if(shouldAddThumbExtension != nil) {
			dict["shouldAddThumbExtension"] = shouldAddThumbExtension!
		}
		return dict
	}
}

