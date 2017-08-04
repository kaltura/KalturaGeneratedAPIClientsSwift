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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  External media service lets you upload and manage embed codes and external
  playable content  */
public final class ExternalMediaService{

	/**  Add external media entry  */
	public static func add(entry: ExternalMediaEntry) -> RequestBuilder<ExternalMediaEntry> {
		let request: RequestBuilder<ExternalMediaEntry> = RequestBuilder<ExternalMediaEntry>(service: "externalmedia_externalmedia", action: "add")
			.setBody(key: "entry", value: entry)

		return request
	}

	public static func count() -> RequestBuilder<Int> {
		return count(filter: nil)
	}

	/**  Count media entries by filter.  */
	public static func count(filter: ExternalMediaEntryFilter?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "externalmedia_externalmedia", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Delete a external media entry.  */
	public static func delete(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "externalmedia_externalmedia", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get external media entry by ID.  */
	public static func get(id: String) -> RequestBuilder<ExternalMediaEntry> {
		let request: RequestBuilder<ExternalMediaEntry> = RequestBuilder<ExternalMediaEntry>(service: "externalmedia_externalmedia", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<ExternalMediaEntryListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ExternalMediaEntryFilter?) -> RequestBuilder<ExternalMediaEntryListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List media entries by filter with paging support.  */
	public static func list(filter: ExternalMediaEntryFilter?, pager: FilterPager?) -> RequestBuilder<ExternalMediaEntryListResponse> {
		let request: RequestBuilder<ExternalMediaEntryListResponse> = RequestBuilder<ExternalMediaEntryListResponse>(service: "externalmedia_externalmedia", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update external media entry. Only the properties that were set will be updated.  */
	public static func update(id: String, entry: ExternalMediaEntry) -> RequestBuilder<ExternalMediaEntry> {
		let request: RequestBuilder<ExternalMediaEntry> = RequestBuilder<ExternalMediaEntry>(service: "externalmedia_externalmedia", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "entry", value: entry)

		return request
	}
}
