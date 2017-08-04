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

open class FreewheelGenericDistributionProfile: ConfigurableDistributionProfile {

	public var apikey: String? = nil
	public var email: String? = nil
	public var sftpPass: String? = nil
	public var sftpLogin: String? = nil
	public var contentOwner: String? = nil
	public var upstreamVideoId: String? = nil
	public var upstreamNetworkName: String? = nil
	public var upstreamNetworkId: String? = nil
	public var categoryId: String? = nil
	public var replaceGroup: Bool? = nil
	public var replaceAirDates: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["apikey"] != nil {
			apikey = dict["apikey"] as? String
		}
		if dict["email"] != nil {
			email = dict["email"] as? String
		}
		if dict["sftpPass"] != nil {
			sftpPass = dict["sftpPass"] as? String
		}
		if dict["sftpLogin"] != nil {
			sftpLogin = dict["sftpLogin"] as? String
		}
		if dict["contentOwner"] != nil {
			contentOwner = dict["contentOwner"] as? String
		}
		if dict["upstreamVideoId"] != nil {
			upstreamVideoId = dict["upstreamVideoId"] as? String
		}
		if dict["upstreamNetworkName"] != nil {
			upstreamNetworkName = dict["upstreamNetworkName"] as? String
		}
		if dict["upstreamNetworkId"] != nil {
			upstreamNetworkId = dict["upstreamNetworkId"] as? String
		}
		if dict["categoryId"] != nil {
			categoryId = dict["categoryId"] as? String
		}
		if dict["replaceGroup"] != nil {
			replaceGroup = dict["replaceGroup"] as? Bool
		}
		if dict["replaceAirDates"] != nil {
			replaceAirDates = dict["replaceAirDates"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(apikey != nil) {
			dict["apikey"] = apikey!
		}
		if(email != nil) {
			dict["email"] = email!
		}
		if(sftpPass != nil) {
			dict["sftpPass"] = sftpPass!
		}
		if(sftpLogin != nil) {
			dict["sftpLogin"] = sftpLogin!
		}
		if(contentOwner != nil) {
			dict["contentOwner"] = contentOwner!
		}
		if(upstreamVideoId != nil) {
			dict["upstreamVideoId"] = upstreamVideoId!
		}
		if(upstreamNetworkName != nil) {
			dict["upstreamNetworkName"] = upstreamNetworkName!
		}
		if(upstreamNetworkId != nil) {
			dict["upstreamNetworkId"] = upstreamNetworkId!
		}
		if(categoryId != nil) {
			dict["categoryId"] = categoryId!
		}
		if(replaceGroup != nil) {
			dict["replaceGroup"] = replaceGroup!
		}
		if(replaceAirDates != nil) {
			dict["replaceAirDates"] = replaceAirDates!
		}
		return dict
	}
}

