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

/**  UiConf service lets you create and manage your UIConfs for the various flash
  components  This service is used by the KMC-ApplicationStudio  */
public final class UiConfService{

	/**  UIConf Add action allows you to add a UIConf to Kaltura DB  */
	public static func add(uiConf: UiConf) -> RequestBuilder<UiConf> {
		let request: RequestBuilder<UiConf> = RequestBuilder<UiConf>(service: "uiconf", action: "add")
			.setBody(key: "uiConf", value: uiConf)

		return request
	}

	/**  Clone an existing UIConf  */
	public static func clone(id: Int) -> RequestBuilder<UiConf> {
		let request: RequestBuilder<UiConf> = RequestBuilder<UiConf>(service: "uiconf", action: "clone")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Delete an existing UIConf  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "uiconf", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve a UIConf by id  */
	public static func get(id: Int) -> RequestBuilder<UiConf> {
		let request: RequestBuilder<UiConf> = RequestBuilder<UiConf>(service: "uiconf", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve a list of all available versions by object type  */
	public static func getAvailableTypes() -> RequestBuilder<Array<UiConfTypeInfo>> {
		let request: ArrayRequestBuilder<UiConfTypeInfo> = ArrayRequestBuilder<UiConfTypeInfo>(service: "uiconf", action: "getAvailableTypes")

		return request
	}

	public static func list() -> RequestBuilder<UiConfListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: UiConfFilter?) -> RequestBuilder<UiConfListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Retrieve a list of available UIConfs  */
	public static func list(filter: UiConfFilter?, pager: FilterPager?) -> RequestBuilder<UiConfListResponse> {
		let request: RequestBuilder<UiConfListResponse> = RequestBuilder<UiConfListResponse>(service: "uiconf", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listTemplates() -> RequestBuilder<UiConfListResponse> {
		return listTemplates(filter: nil)
	}

	public static func listTemplates(filter: UiConfFilter?) -> RequestBuilder<UiConfListResponse> {
		return listTemplates(filter: filter, pager: nil)
	}

	/**  retrieve a list of available template UIConfs  */
	public static func listTemplates(filter: UiConfFilter?, pager: FilterPager?) -> RequestBuilder<UiConfListResponse> {
		let request: RequestBuilder<UiConfListResponse> = RequestBuilder<UiConfListResponse>(service: "uiconf", action: "listTemplates")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing UIConf  */
	public static func update(id: Int, uiConf: UiConf) -> RequestBuilder<UiConf> {
		let request: RequestBuilder<UiConf> = RequestBuilder<UiConf>(service: "uiconf", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "uiConf", value: uiConf)

		return request
	}
}
