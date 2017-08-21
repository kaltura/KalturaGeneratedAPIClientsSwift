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

open class PlayReadyPolicy: DrmPolicy {

	public var gracePeriod: Int? = nil
	public var licenseRemovalPolicy: PlayReadyLicenseRemovalPolicy? = nil
	public var licenseRemovalDuration: Int? = nil
	public var minSecurityLevel: PlayReadyMinimumLicenseSecurityLevel? = nil
	public var rights: Array<PlayReadyRight>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["gracePeriod"] != nil {
			gracePeriod = dict["gracePeriod"] as? Int
		}
		if dict["licenseRemovalPolicy"] != nil {
			licenseRemovalPolicy = PlayReadyLicenseRemovalPolicy(rawValue: (dict["licenseRemovalPolicy"] as? Int)!)
		}
		if dict["licenseRemovalDuration"] != nil {
			licenseRemovalDuration = dict["licenseRemovalDuration"] as? Int
		}
		if dict["minSecurityLevel"] != nil {
			minSecurityLevel = PlayReadyMinimumLicenseSecurityLevel(rawValue: (dict["minSecurityLevel"] as? Int)!)
		}
		if dict["rights"] != nil {
			rights = try JSONParser.parse(array: dict["rights"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(gracePeriod != nil) {
			dict["gracePeriod"] = gracePeriod!
		}
		if(licenseRemovalPolicy != nil) {
			dict["licenseRemovalPolicy"] = licenseRemovalPolicy!.rawValue
		}
		if(licenseRemovalDuration != nil) {
			dict["licenseRemovalDuration"] = licenseRemovalDuration!
		}
		if(minSecurityLevel != nil) {
			dict["minSecurityLevel"] = minSecurityLevel!.rawValue
		}
		if(rights != nil) {
			dict["rights"] = rights!.map { value in value.toDictionary() }
		}
		return dict
	}
}

