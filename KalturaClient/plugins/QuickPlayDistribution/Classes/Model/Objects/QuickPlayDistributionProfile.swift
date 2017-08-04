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

open class QuickPlayDistributionProfile: ConfigurableDistributionProfile {

	public var sftpHost: String? = nil
	public var sftpLogin: String? = nil
	public var sftpPass: String? = nil
	public var sftpBasePath: String? = nil
	public var channelTitle: String? = nil
	public var channelLink: String? = nil
	public var channelDescription: String? = nil
	public var channelManagingEditor: String? = nil
	public var channelLanguage: String? = nil
	public var channelImageTitle: String? = nil
	public var channelImageWidth: String? = nil
	public var channelImageHeight: String? = nil
	public var channelImageLink: String? = nil
	public var channelImageUrl: String? = nil
	public var channelCopyright: String? = nil
	public var channelGenerator: String? = nil
	public var channelRating: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sftpHost"] != nil {
			sftpHost = dict["sftpHost"] as? String
		}
		if dict["sftpLogin"] != nil {
			sftpLogin = dict["sftpLogin"] as? String
		}
		if dict["sftpPass"] != nil {
			sftpPass = dict["sftpPass"] as? String
		}
		if dict["sftpBasePath"] != nil {
			sftpBasePath = dict["sftpBasePath"] as? String
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
		if dict["channelManagingEditor"] != nil {
			channelManagingEditor = dict["channelManagingEditor"] as? String
		}
		if dict["channelLanguage"] != nil {
			channelLanguage = dict["channelLanguage"] as? String
		}
		if dict["channelImageTitle"] != nil {
			channelImageTitle = dict["channelImageTitle"] as? String
		}
		if dict["channelImageWidth"] != nil {
			channelImageWidth = dict["channelImageWidth"] as? String
		}
		if dict["channelImageHeight"] != nil {
			channelImageHeight = dict["channelImageHeight"] as? String
		}
		if dict["channelImageLink"] != nil {
			channelImageLink = dict["channelImageLink"] as? String
		}
		if dict["channelImageUrl"] != nil {
			channelImageUrl = dict["channelImageUrl"] as? String
		}
		if dict["channelCopyright"] != nil {
			channelCopyright = dict["channelCopyright"] as? String
		}
		if dict["channelGenerator"] != nil {
			channelGenerator = dict["channelGenerator"] as? String
		}
		if dict["channelRating"] != nil {
			channelRating = dict["channelRating"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sftpHost != nil) {
			dict["sftpHost"] = sftpHost!
		}
		if(sftpLogin != nil) {
			dict["sftpLogin"] = sftpLogin!
		}
		if(sftpPass != nil) {
			dict["sftpPass"] = sftpPass!
		}
		if(sftpBasePath != nil) {
			dict["sftpBasePath"] = sftpBasePath!
		}
		if(channelTitle != nil) {
			dict["channelTitle"] = channelTitle!
		}
		if(channelLink != nil) {
			dict["channelLink"] = channelLink!
		}
		if(channelDescription != nil) {
			dict["channelDescription"] = channelDescription!
		}
		if(channelManagingEditor != nil) {
			dict["channelManagingEditor"] = channelManagingEditor!
		}
		if(channelLanguage != nil) {
			dict["channelLanguage"] = channelLanguage!
		}
		if(channelImageTitle != nil) {
			dict["channelImageTitle"] = channelImageTitle!
		}
		if(channelImageWidth != nil) {
			dict["channelImageWidth"] = channelImageWidth!
		}
		if(channelImageHeight != nil) {
			dict["channelImageHeight"] = channelImageHeight!
		}
		if(channelImageLink != nil) {
			dict["channelImageLink"] = channelImageLink!
		}
		if(channelImageUrl != nil) {
			dict["channelImageUrl"] = channelImageUrl!
		}
		if(channelCopyright != nil) {
			dict["channelCopyright"] = channelCopyright!
		}
		if(channelGenerator != nil) {
			dict["channelGenerator"] = channelGenerator!
		}
		if(channelRating != nil) {
			dict["channelRating"] = channelRating!
		}
		return dict
	}
}

