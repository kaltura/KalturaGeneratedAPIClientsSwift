// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platforms allow them to do with
// text.
//
// Copyright (C) 2006-2023  Kaltura Inc.
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

/**  Generic Distribution Provider service  */
public final class GenericDistributionProviderService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func genericDistributionProvider<T: GenericDistributionProvider.GenericDistributionProviderTokenizer>() -> T {
			return T(self.append("genericDistributionProvider"))
		}
	}

	/**  Add new Generic Distribution Provider  */
	public static func add(genericDistributionProvider: GenericDistributionProvider) -> RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, AddTokenizer> {
		let request: RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, AddTokenizer> = RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, AddTokenizer>(service: "contentdistribution_genericdistributionprovider", action: "add")
			.setParam(key: "genericDistributionProvider", value: genericDistributionProvider)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Generic Distribution Provider by id  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "contentdistribution_genericdistributionprovider", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Generic Distribution Provider by id  */
	public static func get(id: Int) -> RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, GetTokenizer> {
		let request: RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, GetTokenizer> = RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, GetTokenizer>(service: "contentdistribution_genericdistributionprovider", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: GenericDistributionProviderFilter.GenericDistributionProviderFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<GenericDistributionProviderListResponse, GenericDistributionProviderListResponse.GenericDistributionProviderListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: GenericDistributionProviderFilter?) -> RequestBuilder<GenericDistributionProviderListResponse, GenericDistributionProviderListResponse.GenericDistributionProviderListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: GenericDistributionProviderFilter?, pager: FilterPager?) -> RequestBuilder<GenericDistributionProviderListResponse, GenericDistributionProviderListResponse.GenericDistributionProviderListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderListResponse, GenericDistributionProviderListResponse.GenericDistributionProviderListResponseTokenizer, ListTokenizer> = RequestBuilder<GenericDistributionProviderListResponse, GenericDistributionProviderListResponse.GenericDistributionProviderListResponseTokenizer, ListTokenizer>(service: "contentdistribution_genericdistributionprovider", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func genericDistributionProvider<T: GenericDistributionProvider.GenericDistributionProviderTokenizer>() -> T {
			return T(self.append("genericDistributionProvider"))
		}
	}

	/**  Update Generic Distribution Provider by id  */
	public static func update(id: Int, genericDistributionProvider: GenericDistributionProvider) -> RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, UpdateTokenizer> = RequestBuilder<GenericDistributionProvider, GenericDistributionProvider.GenericDistributionProviderTokenizer, UpdateTokenizer>(service: "contentdistribution_genericdistributionprovider", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "genericDistributionProvider", value: genericDistributionProvider)

		return request
	}
}
