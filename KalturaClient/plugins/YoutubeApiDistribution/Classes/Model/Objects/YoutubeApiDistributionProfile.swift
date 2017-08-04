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

open class YoutubeApiDistributionProfile: ConfigurableDistributionProfile {

	public var username: String? = nil
	public var defaultCategory: Int? = nil
	public var allowComments: String? = nil
	public var allowEmbedding: String? = nil
	public var allowRatings: String? = nil
	public var allowResponses: String? = nil
	public var apiAuthorizeUrl: String? = nil
	public var googleClientId: String? = nil
	public var googleClientSecret: String? = nil
	public var googleTokenData: String? = nil
	public var assumeSuccess: Bool? = nil
	public var privacyStatus: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["defaultCategory"] != nil {
			defaultCategory = dict["defaultCategory"] as? Int
		}
		if dict["allowComments"] != nil {
			allowComments = dict["allowComments"] as? String
		}
		if dict["allowEmbedding"] != nil {
			allowEmbedding = dict["allowEmbedding"] as? String
		}
		if dict["allowRatings"] != nil {
			allowRatings = dict["allowRatings"] as? String
		}
		if dict["allowResponses"] != nil {
			allowResponses = dict["allowResponses"] as? String
		}
		if dict["apiAuthorizeUrl"] != nil {
			apiAuthorizeUrl = dict["apiAuthorizeUrl"] as? String
		}
		if dict["googleClientId"] != nil {
			googleClientId = dict["googleClientId"] as? String
		}
		if dict["googleClientSecret"] != nil {
			googleClientSecret = dict["googleClientSecret"] as? String
		}
		if dict["googleTokenData"] != nil {
			googleTokenData = dict["googleTokenData"] as? String
		}
		if dict["assumeSuccess"] != nil {
			assumeSuccess = dict["assumeSuccess"] as? Bool
		}
		if dict["privacyStatus"] != nil {
			privacyStatus = dict["privacyStatus"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(username != nil) {
			dict["username"] = username!
		}
		if(defaultCategory != nil) {
			dict["defaultCategory"] = defaultCategory!
		}
		if(allowComments != nil) {
			dict["allowComments"] = allowComments!
		}
		if(allowEmbedding != nil) {
			dict["allowEmbedding"] = allowEmbedding!
		}
		if(allowRatings != nil) {
			dict["allowRatings"] = allowRatings!
		}
		if(allowResponses != nil) {
			dict["allowResponses"] = allowResponses!
		}
		if(apiAuthorizeUrl != nil) {
			dict["apiAuthorizeUrl"] = apiAuthorizeUrl!
		}
		if(googleClientId != nil) {
			dict["googleClientId"] = googleClientId!
		}
		if(googleClientSecret != nil) {
			dict["googleClientSecret"] = googleClientSecret!
		}
		if(googleTokenData != nil) {
			dict["googleTokenData"] = googleTokenData!
		}
		if(assumeSuccess != nil) {
			dict["assumeSuccess"] = assumeSuccess!
		}
		if(privacyStatus != nil) {
			dict["privacyStatus"] = privacyStatus!
		}
		return dict
	}
}

