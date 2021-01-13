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

open class IdeticDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class IdeticDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var thumbnailUrl: BaseTokenizedObject {
			get {
				return self.append("thumbnailUrl") 
			}
		}
		
		public var flavorAssetUrl: BaseTokenizedObject {
			get {
				return self.append("flavorAssetUrl") 
			}
		}
	}

	public var thumbnailUrl: String? = nil
	public var flavorAssetUrl: String? = nil


	public func setMultiRequestToken(thumbnailUrl: String) {
		self.dict["thumbnailUrl"] = thumbnailUrl
	}
	
	public func setMultiRequestToken(flavorAssetUrl: String) {
		self.dict["flavorAssetUrl"] = flavorAssetUrl
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["thumbnailUrl"] != nil {
			thumbnailUrl = dict["thumbnailUrl"] as? String
		}
		if dict["flavorAssetUrl"] != nil {
			flavorAssetUrl = dict["flavorAssetUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(thumbnailUrl != nil) {
			dict["thumbnailUrl"] = thumbnailUrl!
		}
		if(flavorAssetUrl != nil) {
			dict["flavorAssetUrl"] = flavorAssetUrl!
		}
		return dict
	}
}

