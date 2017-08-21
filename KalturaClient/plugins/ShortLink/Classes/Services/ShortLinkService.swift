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

	/**  Allows you to add a short link object  */
	public static func add(shortLink: ShortLink) -> RequestBuilder<ShortLink> {
		let request: RequestBuilder<ShortLink> = RequestBuilder<ShortLink>(service: "shortlink_shortlink", action: "add")
			.setBody(key: "shortLink", value: shortLink)

		return request
	}

	/**  Mark the short link as deleted  */
	public static func delete(id: String) -> RequestBuilder<ShortLink> {
		let request: RequestBuilder<ShortLink> = RequestBuilder<ShortLink>(service: "shortlink_shortlink", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve an short link object by id  */
	public static func get(id: String) -> RequestBuilder<ShortLink> {
		let request: RequestBuilder<ShortLink> = RequestBuilder<ShortLink>(service: "shortlink_shortlink", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<ShortLinkListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ShortLinkFilter?) -> RequestBuilder<ShortLinkListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List short link objects by filter and pager  */
	public static func list(filter: ShortLinkFilter?, pager: FilterPager?) -> RequestBuilder<ShortLinkListResponse> {
		let request: RequestBuilder<ShortLinkListResponse> = RequestBuilder<ShortLinkListResponse>(service: "shortlink_shortlink", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update exisitng short link  */
	public static func update(id: String, shortLink: ShortLink) -> RequestBuilder<ShortLink> {
		let request: RequestBuilder<ShortLink> = RequestBuilder<ShortLink>(service: "shortlink_shortlink", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "shortLink", value: shortLink)

		return request
	}
}
