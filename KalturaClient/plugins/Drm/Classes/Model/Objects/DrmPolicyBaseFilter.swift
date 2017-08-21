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

open class DrmPolicyBaseFilter: Filter {

	public var partnerIdEqual: Int? = nil
	public var partnerIdIn: String? = nil
	public var nameLike: String? = nil
	public var systemNameLike: String? = nil
	public var providerEqual: DrmProviderType? = nil
	public var providerIn: String? = nil
	public var statusEqual: DrmPolicyStatus? = nil
	public var statusIn: String? = nil
	public var scenarioEqual: DrmLicenseScenario? = nil
	public var scenarioIn: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerIdEqual"] != nil {
			partnerIdEqual = dict["partnerIdEqual"] as? Int
		}
		if dict["partnerIdIn"] != nil {
			partnerIdIn = dict["partnerIdIn"] as? String
		}
		if dict["nameLike"] != nil {
			nameLike = dict["nameLike"] as? String
		}
		if dict["systemNameLike"] != nil {
			systemNameLike = dict["systemNameLike"] as? String
		}
		if dict["providerEqual"] != nil {
			providerEqual = DrmProviderType(rawValue: "\(dict["providerEqual"]!)")
		}
		if dict["providerIn"] != nil {
			providerIn = dict["providerIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = DrmPolicyStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["scenarioEqual"] != nil {
			scenarioEqual = DrmLicenseScenario(rawValue: "\(dict["scenarioEqual"]!)")
		}
		if dict["scenarioIn"] != nil {
			scenarioIn = dict["scenarioIn"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerIdEqual != nil) {
			dict["partnerIdEqual"] = partnerIdEqual!
		}
		if(partnerIdIn != nil) {
			dict["partnerIdIn"] = partnerIdIn!
		}
		if(nameLike != nil) {
			dict["nameLike"] = nameLike!
		}
		if(systemNameLike != nil) {
			dict["systemNameLike"] = systemNameLike!
		}
		if(providerEqual != nil) {
			dict["providerEqual"] = providerEqual!.rawValue
		}
		if(providerIn != nil) {
			dict["providerIn"] = providerIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(scenarioEqual != nil) {
			dict["scenarioEqual"] = scenarioEqual!.rawValue
		}
		if(scenarioIn != nil) {
			dict["scenarioIn"] = scenarioIn!
		}
		return dict
	}
}

