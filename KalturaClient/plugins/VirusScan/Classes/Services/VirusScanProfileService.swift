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

/**  Virus scan profile service  */
public final class VirusScanProfileService{

	/**  Allows you to add an virus scan profile object and virus scan profile content
	  associated with Kaltura object  */
	public static func add(virusScanProfile: VirusScanProfile) -> RequestBuilder<VirusScanProfile> {
		let request: RequestBuilder<VirusScanProfile> = RequestBuilder<VirusScanProfile>(service: "virusscan_virusscanprofile", action: "add")
			.setBody(key: "virusScanProfile", value: virusScanProfile)

		return request
	}

	/**  Mark the virus scan profile as deleted  */
	public static func delete(virusScanProfileId: Int) -> RequestBuilder<VirusScanProfile> {
		let request: RequestBuilder<VirusScanProfile> = RequestBuilder<VirusScanProfile>(service: "virusscan_virusscanprofile", action: "delete")
			.setBody(key: "virusScanProfileId", value: virusScanProfileId)

		return request
	}

	/**  Retrieve an virus scan profile object by id  */
	public static func get(virusScanProfileId: Int) -> RequestBuilder<VirusScanProfile> {
		let request: RequestBuilder<VirusScanProfile> = RequestBuilder<VirusScanProfile>(service: "virusscan_virusscanprofile", action: "get")
			.setBody(key: "virusScanProfileId", value: virusScanProfileId)

		return request
	}

	public static func list() -> RequestBuilder<VirusScanProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: VirusScanProfileFilter?) -> RequestBuilder<VirusScanProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List virus scan profile objects by filter and pager  */
	public static func list(filter: VirusScanProfileFilter?, pager: FilterPager?) -> RequestBuilder<VirusScanProfileListResponse> {
		let request: RequestBuilder<VirusScanProfileListResponse> = RequestBuilder<VirusScanProfileListResponse>(service: "virusscan_virusscanprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func scan(flavorAssetId: String) -> RequestBuilder<Int> {
		return scan(flavorAssetId: flavorAssetId, virusScanProfileId: nil)
	}

	/**  Scan flavor asset according to virus scan profile  */
	public static func scan(flavorAssetId: String, virusScanProfileId: Int?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "virusscan_virusscanprofile", action: "scan")
			.setBody(key: "flavorAssetId", value: flavorAssetId)
			.setBody(key: "virusScanProfileId", value: virusScanProfileId)

		return request
	}

	/**  Update exisitng virus scan profile, it is possible to update the virus scan
	  profile id too  */
	public static func update(virusScanProfileId: Int, virusScanProfile: VirusScanProfile) -> RequestBuilder<VirusScanProfile> {
		let request: RequestBuilder<VirusScanProfile> = RequestBuilder<VirusScanProfile>(service: "virusscan_virusscanprofile", action: "update")
			.setBody(key: "virusScanProfileId", value: virusScanProfileId)
			.setBody(key: "virusScanProfile", value: virusScanProfile)

		return request
	}
}
