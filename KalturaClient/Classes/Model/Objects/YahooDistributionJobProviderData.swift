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

open class YahooDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class YahooDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var smallThumbPath: BaseTokenizedObject {
			get {
				return self.append("smallThumbPath") 
			}
		}
		
		public var largeThumbPath: BaseTokenizedObject {
			get {
				return self.append("largeThumbPath") 
			}
		}
		
		public var videoAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("videoAssetFilePath") 
			}
		}
	}

	public var smallThumbPath: String? = nil
	public var largeThumbPath: String? = nil
	public var videoAssetFilePath: String? = nil


	public func setMultiRequestToken(smallThumbPath: String) {
		self.dict["smallThumbPath"] = smallThumbPath
	}
	
	public func setMultiRequestToken(largeThumbPath: String) {
		self.dict["largeThumbPath"] = largeThumbPath
	}
	
	public func setMultiRequestToken(videoAssetFilePath: String) {
		self.dict["videoAssetFilePath"] = videoAssetFilePath
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["smallThumbPath"] != nil {
			smallThumbPath = dict["smallThumbPath"] as? String
		}
		if dict["largeThumbPath"] != nil {
			largeThumbPath = dict["largeThumbPath"] as? String
		}
		if dict["videoAssetFilePath"] != nil {
			videoAssetFilePath = dict["videoAssetFilePath"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(smallThumbPath != nil) {
			dict["smallThumbPath"] = smallThumbPath!
		}
		if(largeThumbPath != nil) {
			dict["largeThumbPath"] = largeThumbPath!
		}
		if(videoAssetFilePath != nil) {
			dict["videoAssetFilePath"] = videoAssetFilePath!
		}
		return dict
	}
}

