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

/**  Short link service  */
public final class ShortLinkService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func shortLink<T: ShortLink.ShortLinkTokenizer>() -> T {
			return T(self.append("shortLink"))
		}
	}

	/**  Allows you to add a short link object  */
	public static func add(shortLink: ShortLink) -> RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, AddTokenizer> {
		let request: RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, AddTokenizer> = RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, AddTokenizer>(service: "shortlink_shortlink", action: "add")
			.setParam(key: "shortLink", value: shortLink)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Mark the short link as deleted  */
	public static func delete(id: String) -> RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, DeleteTokenizer> = RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, DeleteTokenizer>(service: "shortlink_shortlink", action: "delete")
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

	/**  Retrieve an short link object by id  */
	public static func get(id: String) -> RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, GetTokenizer> {
		let request: RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, GetTokenizer> = RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, GetTokenizer>(service: "shortlink_shortlink", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ShortLinkFilter.ShortLinkFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ShortLinkListResponse, ShortLinkListResponse.ShortLinkListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ShortLinkFilter?) -> RequestBuilder<ShortLinkListResponse, ShortLinkListResponse.ShortLinkListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List short link objects by filter and pager  */
	public static func list(filter: ShortLinkFilter?, pager: FilterPager?) -> RequestBuilder<ShortLinkListResponse, ShortLinkListResponse.ShortLinkListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ShortLinkListResponse, ShortLinkListResponse.ShortLinkListResponseTokenizer, ListTokenizer> = RequestBuilder<ShortLinkListResponse, ShortLinkListResponse.ShortLinkListResponseTokenizer, ListTokenizer>(service: "shortlink_shortlink", action: "list")
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
		
		public func shortLink<T: ShortLink.ShortLinkTokenizer>() -> T {
			return T(self.append("shortLink"))
		}
	}

	/**  Update existing short link  */
	public static func update(id: String, shortLink: ShortLink) -> RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, UpdateTokenizer> = RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, UpdateTokenizer>(service: "shortlink_shortlink", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "shortLink", value: shortLink)

		return request
	}
}
