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

open class AttUverseDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class AttUverseDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var filesForDistribution: ArrayTokenizedObject<AttUverseDistributionFile.AttUverseDistributionFileTokenizer> {
			get {
				return ArrayTokenizedObject<AttUverseDistributionFile.AttUverseDistributionFileTokenizer>(self.append("filesForDistribution"))
			} 
		}
		
		public var remoteAssetFileUrls: BaseTokenizedObject {
			get {
				return self.append("remoteAssetFileUrls") 
			}
		}
		
		public var remoteThumbnailFileUrls: BaseTokenizedObject {
			get {
				return self.append("remoteThumbnailFileUrls") 
			}
		}
		
		public var remoteCaptionFileUrls: BaseTokenizedObject {
			get {
				return self.append("remoteCaptionFileUrls") 
			}
		}
	}

	public var filesForDistribution: Array<AttUverseDistributionFile>? = nil
	/**  The remote URL of the video asset that was distributed  */
	public var remoteAssetFileUrls: String? = nil
	/**  The remote URL of the thumbnail asset that was distributed  */
	public var remoteThumbnailFileUrls: String? = nil
	/**  The remote URL of the caption asset that was distributed  */
	public var remoteCaptionFileUrls: String? = nil


	public func setMultiRequestToken(remoteAssetFileUrls: String) {
		self.dict["remoteAssetFileUrls"] = remoteAssetFileUrls
	}
	
	public func setMultiRequestToken(remoteThumbnailFileUrls: String) {
		self.dict["remoteThumbnailFileUrls"] = remoteThumbnailFileUrls
	}
	
	public func setMultiRequestToken(remoteCaptionFileUrls: String) {
		self.dict["remoteCaptionFileUrls"] = remoteCaptionFileUrls
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filesForDistribution"] != nil {
			filesForDistribution = try JSONParser.parse(array: dict["filesForDistribution"] as! [Any])
		}
		if dict["remoteAssetFileUrls"] != nil {
			remoteAssetFileUrls = dict["remoteAssetFileUrls"] as? String
		}
		if dict["remoteThumbnailFileUrls"] != nil {
			remoteThumbnailFileUrls = dict["remoteThumbnailFileUrls"] as? String
		}
		if dict["remoteCaptionFileUrls"] != nil {
			remoteCaptionFileUrls = dict["remoteCaptionFileUrls"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filesForDistribution != nil) {
			dict["filesForDistribution"] = filesForDistribution!.map { value in value.toDictionary() }
		}
		if(remoteAssetFileUrls != nil) {
			dict["remoteAssetFileUrls"] = remoteAssetFileUrls!
		}
		if(remoteThumbnailFileUrls != nil) {
			dict["remoteThumbnailFileUrls"] = remoteThumbnailFileUrls!
		}
		if(remoteCaptionFileUrls != nil) {
			dict["remoteCaptionFileUrls"] = remoteCaptionFileUrls!
		}
		return dict
	}
}

