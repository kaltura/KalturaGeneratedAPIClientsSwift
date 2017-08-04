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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class TVComDistributionProfile: ConfigurableDistributionProfile {

	public var metadataProfileId: Int? = nil
	public var feedUrl: String? = nil
	public var feedTitle: String? = nil
	public var feedLink: String? = nil
	public var feedDescription: String? = nil
	public var feedLanguage: String? = nil
	public var feedCopyright: String? = nil
	public var feedImageTitle: String? = nil
	public var feedImageUrl: String? = nil
	public var feedImageLink: String? = nil
	public var feedImageWidth: Int? = nil
	public var feedImageHeight: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
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
		if dict["feedLanguage"] != nil {
			feedLanguage = dict["feedLanguage"] as? String
		}
		if dict["feedCopyright"] != nil {
			feedCopyright = dict["feedCopyright"] as? String
		}
		if dict["feedImageTitle"] != nil {
			feedImageTitle = dict["feedImageTitle"] as? String
		}
		if dict["feedImageUrl"] != nil {
			feedImageUrl = dict["feedImageUrl"] as? String
		}
		if dict["feedImageLink"] != nil {
			feedImageLink = dict["feedImageLink"] as? String
		}
		if dict["feedImageWidth"] != nil {
			feedImageWidth = dict["feedImageWidth"] as? Int
		}
		if dict["feedImageHeight"] != nil {
			feedImageHeight = dict["feedImageHeight"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
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
		if(feedLanguage != nil) {
			dict["feedLanguage"] = feedLanguage!
		}
		if(feedCopyright != nil) {
			dict["feedCopyright"] = feedCopyright!
		}
		if(feedImageTitle != nil) {
			dict["feedImageTitle"] = feedImageTitle!
		}
		if(feedImageUrl != nil) {
			dict["feedImageUrl"] = feedImageUrl!
		}
		if(feedImageLink != nil) {
			dict["feedImageLink"] = feedImageLink!
		}
		if(feedImageWidth != nil) {
			dict["feedImageWidth"] = feedImageWidth!
		}
		if(feedImageHeight != nil) {
			dict["feedImageHeight"] = feedImageHeight!
		}
		return dict
	}
}

