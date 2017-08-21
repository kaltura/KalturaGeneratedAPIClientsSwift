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

/**  Add &amp; Manage Conversion Profiles  */
public final class ConversionProfileService{

	/**  Add new Conversion Profile  */
	public static func add(conversionProfile: ConversionProfile) -> RequestBuilder<ConversionProfile> {
		let request: RequestBuilder<ConversionProfile> = RequestBuilder<ConversionProfile>(service: "conversionprofile", action: "add")
			.setBody(key: "conversionProfile", value: conversionProfile)

		return request
	}

	/**  Delete Conversion Profile by ID  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "conversionprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Conversion Profile by ID  */
	public static func get(id: Int) -> RequestBuilder<ConversionProfile> {
		let request: RequestBuilder<ConversionProfile> = RequestBuilder<ConversionProfile>(service: "conversionprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func getDefault() -> RequestBuilder<ConversionProfile> {
		return getDefault(type: nil)
	}

	/**  Get the partner's default conversion profile  */
	public static func getDefault(type: ConversionProfileType?) -> RequestBuilder<ConversionProfile> {
		let request: RequestBuilder<ConversionProfile> = RequestBuilder<ConversionProfile>(service: "conversionprofile", action: "getDefault")
			.setBody(key: "type", value: type?.rawValue)

		return request
	}

	public static func list() -> RequestBuilder<ConversionProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ConversionProfileFilter?) -> RequestBuilder<ConversionProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Conversion Profiles by filter with paging support  */
	public static func list(filter: ConversionProfileFilter?, pager: FilterPager?) -> RequestBuilder<ConversionProfileListResponse> {
		let request: RequestBuilder<ConversionProfileListResponse> = RequestBuilder<ConversionProfileListResponse>(service: "conversionprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Set Conversion Profile to be the partner default  */
	public static func setAsDefault(id: Int) -> RequestBuilder<ConversionProfile> {
		let request: RequestBuilder<ConversionProfile> = RequestBuilder<ConversionProfile>(service: "conversionprofile", action: "setAsDefault")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Update Conversion Profile by ID  */
	public static func update(id: Int, conversionProfile: ConversionProfile) -> RequestBuilder<ConversionProfile> {
		let request: RequestBuilder<ConversionProfile> = RequestBuilder<ConversionProfile>(service: "conversionprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "conversionProfile", value: conversionProfile)

		return request
	}
}
