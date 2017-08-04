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

open class SynacorHboDistributionProfile: ConfigurableDistributionProfile {

	public var feedUrl: String? = nil
	public var feedTitle: String? = nil
	public var feedSubtitle: String? = nil
	public var feedLink: String? = nil
	public var feedAuthorName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["feedTitle"] != nil {
			feedTitle = dict["feedTitle"] as? String
		}
		if dict["feedSubtitle"] != nil {
			feedSubtitle = dict["feedSubtitle"] as? String
		}
		if dict["feedLink"] != nil {
			feedLink = dict["feedLink"] as? String
		}
		if dict["feedAuthorName"] != nil {
			feedAuthorName = dict["feedAuthorName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(feedTitle != nil) {
			dict["feedTitle"] = feedTitle!
		}
		if(feedSubtitle != nil) {
			dict["feedSubtitle"] = feedSubtitle!
		}
		if(feedLink != nil) {
			dict["feedLink"] = feedLink!
		}
		if(feedAuthorName != nil) {
			dict["feedAuthorName"] = feedAuthorName!
		}
		return dict
	}
}

