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
// Copyright (C) 2006-2021  Kaltura Inc.
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

	public class AddTokenizer: ClientTokenizer  {
		
		public func uiConf<T: UiConf.UiConfTokenizer>() -> T {
			return T(self.append("uiConf"))
		}
	}

	/**  UIConf Add action allows you to add a UIConf to Kaltura DB  */
	public static func add(uiConf: UiConf) -> RequestBuilder<UiConf, UiConf.UiConfTokenizer, AddTokenizer> {
		let request: RequestBuilder<UiConf, UiConf.UiConfTokenizer, AddTokenizer> = RequestBuilder<UiConf, UiConf.UiConfTokenizer, AddTokenizer>(service: "uiconf", action: "add")
			.setParam(key: "uiConf", value: uiConf)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Clone an existing UIConf  */
	public static func clone(id: Int) -> RequestBuilder<UiConf, UiConf.UiConfTokenizer, CloneTokenizer> {
		let request: RequestBuilder<UiConf, UiConf.UiConfTokenizer, CloneTokenizer> = RequestBuilder<UiConf, UiConf.UiConfTokenizer, CloneTokenizer>(service: "uiconf", action: "clone")
			.setParam(key: "id", value: id)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing UIConf  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "uiconf", action: "delete")
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

	/**  Retrieve a UIConf by id  */
	public static func get(id: Int) -> RequestBuilder<UiConf, UiConf.UiConfTokenizer, GetTokenizer> {
		let request: RequestBuilder<UiConf, UiConf.UiConfTokenizer, GetTokenizer> = RequestBuilder<UiConf, UiConf.UiConfTokenizer, GetTokenizer>(service: "uiconf", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetAvailableTypesTokenizer: ClientTokenizer  {
	}

	/**  Retrieve a list of all available versions by object type  */
	public static func getAvailableTypes() -> ArrayRequestBuilder<UiConfTypeInfo, ArrayTokenizedObject<UiConfTypeInfo.UiConfTypeInfoTokenizer>, GetAvailableTypesTokenizer> {
		let request: ArrayRequestBuilder<UiConfTypeInfo, ArrayTokenizedObject<UiConfTypeInfo.UiConfTypeInfoTokenizer>, GetAvailableTypesTokenizer> = ArrayRequestBuilder<UiConfTypeInfo, ArrayTokenizedObject<UiConfTypeInfo.UiConfTypeInfoTokenizer>, GetAvailableTypesTokenizer>(service: "uiconf", action: "getAvailableTypes")

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: UiConfFilter.UiConfFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: UiConfFilter?) -> RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Retrieve a list of available UIConfs  */
	public static func list(filter: UiConfFilter?, pager: FilterPager?) -> RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTokenizer> = RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTokenizer>(service: "uiconf", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListTemplatesTokenizer: ClientTokenizer  {
		
		public func filter<T: UiConfFilter.UiConfFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listTemplates() -> RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTemplatesTokenizer> {
		return listTemplates(filter: nil)
	}

	public static func listTemplates(filter: UiConfFilter?) -> RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTemplatesTokenizer> {
		return listTemplates(filter: filter, pager: nil)
	}

	/**  retrieve a list of available template UIConfs  */
	public static func listTemplates(filter: UiConfFilter?, pager: FilterPager?) -> RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTemplatesTokenizer> {
		let request: RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTemplatesTokenizer> = RequestBuilder<UiConfListResponse, UiConfListResponse.UiConfListResponseTokenizer, ListTemplatesTokenizer>(service: "uiconf", action: "listTemplates")
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
		
		public func uiConf<T: UiConf.UiConfTokenizer>() -> T {
			return T(self.append("uiConf"))
		}
	}

	/**  Update an existing UIConf  */
	public static func update(id: Int, uiConf: UiConf) -> RequestBuilder<UiConf, UiConf.UiConfTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<UiConf, UiConf.UiConfTokenizer, UpdateTokenizer> = RequestBuilder<UiConf, UiConf.UiConfTokenizer, UpdateTokenizer>(service: "uiconf", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "uiConf", value: uiConf)

		return request
	}
}
