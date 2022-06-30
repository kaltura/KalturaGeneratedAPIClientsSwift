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

open class PodcastDistributionJobProviderData: DistributionJobProviderData {

	public class PodcastDistributionJobProviderDataTokenizer: DistributionJobProviderData.DistributionJobProviderDataTokenizer {
		
		public var xml: BaseTokenizedObject {
			get {
				return self.append("xml") 
			}
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var distributionProfileId: BaseTokenizedObject {
			get {
				return self.append("distributionProfileId") 
			}
		}
	}

	public var xml: String? = nil
	public var metadataProfileId: Int? = nil
	public var distributionProfileId: Int? = nil


	public func setMultiRequestToken(xml: String) {
		self.dict["xml"] = xml
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(distributionProfileId: String) {
		self.dict["distributionProfileId"] = distributionProfileId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xml"] != nil {
			xml = dict["xml"] as? String
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["distributionProfileId"] != nil {
			distributionProfileId = dict["distributionProfileId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xml != nil) {
			dict["xml"] = xml!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(distributionProfileId != nil) {
			dict["distributionProfileId"] = distributionProfileId!
		}
		return dict
	}
}

