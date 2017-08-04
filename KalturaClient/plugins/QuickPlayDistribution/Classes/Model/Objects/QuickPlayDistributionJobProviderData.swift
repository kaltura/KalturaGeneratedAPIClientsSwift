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

open class QuickPlayDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public var xml: String? = nil
	public var videoFilePaths: Array<StringHolder>? = nil
	public var thumbnailFilePaths: Array<StringHolder>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xml"] != nil {
			xml = dict["xml"] as? String
		}
		if dict["videoFilePaths"] != nil {
			videoFilePaths = try JSONParser.parse(array: dict["videoFilePaths"] as! [Any])
		}
		if dict["thumbnailFilePaths"] != nil {
			thumbnailFilePaths = try JSONParser.parse(array: dict["thumbnailFilePaths"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xml != nil) {
			dict["xml"] = xml!
		}
		if(videoFilePaths != nil) {
			dict["videoFilePaths"] = videoFilePaths!.map { value in value.toDictionary() }
		}
		if(thumbnailFilePaths != nil) {
			dict["thumbnailFilePaths"] = thumbnailFilePaths!.map { value in value.toDictionary() }
		}
		return dict
	}
}

