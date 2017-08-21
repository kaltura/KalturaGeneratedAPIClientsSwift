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

open class AkamaiUniversalProvisionJobData: ProvisionJobData {

	public var streamId: Int? = nil
	public var systemUserName: String? = nil
	public var systemPassword: String? = nil
	public var domainName: String? = nil
	public var dvrEnabled: DVRStatus? = nil
	public var dvrWindow: Int? = nil
	public var primaryContact: String? = nil
	public var secondaryContact: String? = nil
	public var streamType: AkamaiUniversalStreamType? = nil
	public var notificationEmail: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streamId"] != nil {
			streamId = dict["streamId"] as? Int
		}
		if dict["systemUserName"] != nil {
			systemUserName = dict["systemUserName"] as? String
		}
		if dict["systemPassword"] != nil {
			systemPassword = dict["systemPassword"] as? String
		}
		if dict["domainName"] != nil {
			domainName = dict["domainName"] as? String
		}
		if dict["dvrEnabled"] != nil {
			dvrEnabled = DVRStatus(rawValue: (dict["dvrEnabled"] as? Int)!)
		}
		if dict["dvrWindow"] != nil {
			dvrWindow = dict["dvrWindow"] as? Int
		}
		if dict["primaryContact"] != nil {
			primaryContact = dict["primaryContact"] as? String
		}
		if dict["secondaryContact"] != nil {
			secondaryContact = dict["secondaryContact"] as? String
		}
		if dict["streamType"] != nil {
			streamType = AkamaiUniversalStreamType(rawValue: "\(dict["streamType"]!)")
		}
		if dict["notificationEmail"] != nil {
			notificationEmail = dict["notificationEmail"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(streamId != nil) {
			dict["streamId"] = streamId!
		}
		if(systemUserName != nil) {
			dict["systemUserName"] = systemUserName!
		}
		if(systemPassword != nil) {
			dict["systemPassword"] = systemPassword!
		}
		if(domainName != nil) {
			dict["domainName"] = domainName!
		}
		if(dvrEnabled != nil) {
			dict["dvrEnabled"] = dvrEnabled!.rawValue
		}
		if(dvrWindow != nil) {
			dict["dvrWindow"] = dvrWindow!
		}
		if(primaryContact != nil) {
			dict["primaryContact"] = primaryContact!
		}
		if(secondaryContact != nil) {
			dict["secondaryContact"] = secondaryContact!
		}
		if(streamType != nil) {
			dict["streamType"] = streamType!.rawValue
		}
		if(notificationEmail != nil) {
			dict["notificationEmail"] = notificationEmail!
		}
		return dict
	}
}

