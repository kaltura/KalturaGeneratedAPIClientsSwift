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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class PodcastDistributionProfile: DistributionProfile {

	public class PodcastDistributionProfileTokenizer: DistributionProfile.DistributionProfileTokenizer {
		
		public var xsl: BaseTokenizedObject {
			get {
				return self.append("xsl") 
			}
		}
		
		public var feedId: BaseTokenizedObject {
			get {
				return self.append("feedId") 
			}
		}
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
	}

	public var xsl: String? = nil
	public var feedId: String? = nil
	public var metadataProfileId: Int? = nil


	public func setMultiRequestToken(xsl: String) {
		self.dict["xsl"] = xsl
	}
	
	public func setMultiRequestToken(feedId: String) {
		self.dict["feedId"] = feedId
	}
	
	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xsl"] != nil {
			xsl = dict["xsl"] as? String
		}
		if dict["feedId"] != nil {
			feedId = dict["feedId"] as? String
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xsl != nil) {
			dict["xsl"] = xsl!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		return dict
	}
}

