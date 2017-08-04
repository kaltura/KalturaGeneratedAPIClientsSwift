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

open class YahooDistributionProfile: ConfigurableDistributionProfile {

	public var ftpPath: String? = nil
	public var ftpUsername: String? = nil
	public var ftpPassword: String? = nil
	public var ftpHost: String? = nil
	public var contactTelephone: String? = nil
	public var contactEmail: String? = nil
	public var processFeed: YahooDistributionProcessFeedActionStatus? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ftpPath"] != nil {
			ftpPath = dict["ftpPath"] as? String
		}
		if dict["ftpUsername"] != nil {
			ftpUsername = dict["ftpUsername"] as? String
		}
		if dict["ftpPassword"] != nil {
			ftpPassword = dict["ftpPassword"] as? String
		}
		if dict["ftpHost"] != nil {
			ftpHost = dict["ftpHost"] as? String
		}
		if dict["contactTelephone"] != nil {
			contactTelephone = dict["contactTelephone"] as? String
		}
		if dict["contactEmail"] != nil {
			contactEmail = dict["contactEmail"] as? String
		}
		if dict["processFeed"] != nil {
			processFeed = YahooDistributionProcessFeedActionStatus(rawValue: (dict["processFeed"] as? Int)!)
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ftpPath != nil) {
			dict["ftpPath"] = ftpPath!
		}
		if(ftpUsername != nil) {
			dict["ftpUsername"] = ftpUsername!
		}
		if(ftpPassword != nil) {
			dict["ftpPassword"] = ftpPassword!
		}
		if(ftpHost != nil) {
			dict["ftpHost"] = ftpHost!
		}
		if(contactTelephone != nil) {
			dict["contactTelephone"] = contactTelephone!
		}
		if(contactEmail != nil) {
			dict["contactEmail"] = contactEmail!
		}
		if(processFeed != nil) {
			dict["processFeed"] = processFeed!.rawValue
		}
		return dict
	}
}

