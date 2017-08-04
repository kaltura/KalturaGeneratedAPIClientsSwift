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

open class UverseDistributionProfile: ConfigurableDistributionProfile {

	public var feedUrl: String? = nil
	public var channelTitle: String? = nil
	public var channelLink: String? = nil
	public var channelDescription: String? = nil
	public var channelLanguage: String? = nil
	public var channelCopyright: String? = nil
	public var channelImageTitle: String? = nil
	public var channelImageUrl: String? = nil
	public var channelImageLink: String? = nil
	public var ftpHost: String? = nil
	public var ftpLogin: String? = nil
	public var ftpPassword: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["channelTitle"] != nil {
			channelTitle = dict["channelTitle"] as? String
		}
		if dict["channelLink"] != nil {
			channelLink = dict["channelLink"] as? String
		}
		if dict["channelDescription"] != nil {
			channelDescription = dict["channelDescription"] as? String
		}
		if dict["channelLanguage"] != nil {
			channelLanguage = dict["channelLanguage"] as? String
		}
		if dict["channelCopyright"] != nil {
			channelCopyright = dict["channelCopyright"] as? String
		}
		if dict["channelImageTitle"] != nil {
			channelImageTitle = dict["channelImageTitle"] as? String
		}
		if dict["channelImageUrl"] != nil {
			channelImageUrl = dict["channelImageUrl"] as? String
		}
		if dict["channelImageLink"] != nil {
			channelImageLink = dict["channelImageLink"] as? String
		}
		if dict["ftpHost"] != nil {
			ftpHost = dict["ftpHost"] as? String
		}
		if dict["ftpLogin"] != nil {
			ftpLogin = dict["ftpLogin"] as? String
		}
		if dict["ftpPassword"] != nil {
			ftpPassword = dict["ftpPassword"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(channelTitle != nil) {
			dict["channelTitle"] = channelTitle!
		}
		if(channelLink != nil) {
			dict["channelLink"] = channelLink!
		}
		if(channelDescription != nil) {
			dict["channelDescription"] = channelDescription!
		}
		if(channelLanguage != nil) {
			dict["channelLanguage"] = channelLanguage!
		}
		if(channelCopyright != nil) {
			dict["channelCopyright"] = channelCopyright!
		}
		if(channelImageTitle != nil) {
			dict["channelImageTitle"] = channelImageTitle!
		}
		if(channelImageUrl != nil) {
			dict["channelImageUrl"] = channelImageUrl!
		}
		if(channelImageLink != nil) {
			dict["channelImageLink"] = channelImageLink!
		}
		if(ftpHost != nil) {
			dict["ftpHost"] = ftpHost!
		}
		if(ftpLogin != nil) {
			dict["ftpLogin"] = ftpLogin!
		}
		if(ftpPassword != nil) {
			dict["ftpPassword"] = ftpPassword!
		}
		return dict
	}
}

