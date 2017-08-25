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

/**  Short link service  */
public final class ShortLinkService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var shortLink: ShortLink.ShortLinkTokenizer {
			get {
				return ShortLink.ShortLinkTokenizer(self.append("shortLink")) 
			}
		}
	}

	/**  Allows you to add a short link object  */
	public static func add(shortLink: ShortLink) -> RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, AddTokenizer> {
		let request: RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, AddTokenizer> = RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, AddTokenizer>(service: "shortlink_shortlink", action: "add")
			.setBody(key: "shortLink", value: shortLink)

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
			.setBody(key: "id", value: id)

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
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: ShortLinkFilter.ShortLinkFilterTokenizer {
			get {
				return ShortLinkFilter.ShortLinkFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
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
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var shortLink: ShortLink.ShortLinkTokenizer {
			get {
				return ShortLink.ShortLinkTokenizer(self.append("shortLink")) 
			}
		}
	}

	/**  Update exisitng short link  */
	public static func update(id: String, shortLink: ShortLink) -> RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, UpdateTokenizer> = RequestBuilder<ShortLink, ShortLink.ShortLinkTokenizer, UpdateTokenizer>(service: "shortlink_shortlink", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "shortLink", value: shortLink)

		return request
	}
}
