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

/**  Generic Distribution Provider service  */
public final class GenericDistributionProviderService{

	/**  Add new Generic Distribution Provider  */
	public static func add(genericDistributionProvider: GenericDistributionProvider) -> RequestBuilder<GenericDistributionProvider> {
		let request: RequestBuilder<GenericDistributionProvider> = RequestBuilder<GenericDistributionProvider>(service: "contentdistribution_genericdistributionprovider", action: "add")
			.setBody(key: "genericDistributionProvider", value: genericDistributionProvider)

		return request
	}

	/**  Delete Generic Distribution Provider by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "contentdistribution_genericdistributionprovider", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Generic Distribution Provider by id  */
	public static func get(id: Int) -> RequestBuilder<GenericDistributionProvider> {
		let request: RequestBuilder<GenericDistributionProvider> = RequestBuilder<GenericDistributionProvider>(service: "contentdistribution_genericdistributionprovider", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<GenericDistributionProviderListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: GenericDistributionProviderFilter?) -> RequestBuilder<GenericDistributionProviderListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: GenericDistributionProviderFilter?, pager: FilterPager?) -> RequestBuilder<GenericDistributionProviderListResponse> {
		let request: RequestBuilder<GenericDistributionProviderListResponse> = RequestBuilder<GenericDistributionProviderListResponse>(service: "contentdistribution_genericdistributionprovider", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update Generic Distribution Provider by id  */
	public static func update(id: Int, genericDistributionProvider: GenericDistributionProvider) -> RequestBuilder<GenericDistributionProvider> {
		let request: RequestBuilder<GenericDistributionProvider> = RequestBuilder<GenericDistributionProvider>(service: "contentdistribution_genericdistributionprovider", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "genericDistributionProvider", value: genericDistributionProvider)

		return request
	}
}
