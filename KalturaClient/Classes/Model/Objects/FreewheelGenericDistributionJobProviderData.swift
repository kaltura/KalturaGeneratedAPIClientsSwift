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

open class FreewheelGenericDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class FreewheelGenericDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var videoAssetFilePaths: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("videoAssetFilePaths"))
			} 
		}
		
		public var thumbAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("thumbAssetFilePath") 
			}
		}
		
		public var cuePoints: ArrayTokenizedObject<CuePoint.CuePointTokenizer> {
			get {
				return ArrayTokenizedObject<CuePoint.CuePointTokenizer>(self.append("cuePoints"))
			} 
		}
	}

	/**  Demonstrate passing array of paths to the job  */
	public var videoAssetFilePaths: Array<StringHolder>? = nil
	/**  Demonstrate passing single path to the job  */
	public var thumbAssetFilePath: String? = nil
	public var cuePoints: Array<CuePoint>? = nil


	public func setMultiRequestToken(thumbAssetFilePath: String) {
		self.dict["thumbAssetFilePath"] = thumbAssetFilePath
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["videoAssetFilePaths"] != nil {
			videoAssetFilePaths = try JSONParser.parse(array: dict["videoAssetFilePaths"] as! [Any])
		}
		if dict["thumbAssetFilePath"] != nil {
			thumbAssetFilePath = dict["thumbAssetFilePath"] as? String
		}
		if dict["cuePoints"] != nil {
			cuePoints = try JSONParser.parse(array: dict["cuePoints"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(videoAssetFilePaths != nil) {
			dict["videoAssetFilePaths"] = videoAssetFilePaths!.map { value in value.toDictionary() }
		}
		if(thumbAssetFilePath != nil) {
			dict["thumbAssetFilePath"] = thumbAssetFilePath!
		}
		if(cuePoints != nil) {
			dict["cuePoints"] = cuePoints!.map { value in value.toDictionary() }
		}
		return dict
	}
}

