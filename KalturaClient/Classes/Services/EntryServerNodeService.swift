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

/**  Base class for entry server node  */
public final class EntryServerNodeService{

	public static func get(id: String) -> RequestBuilder<EntryServerNode> {
		let request: RequestBuilder<EntryServerNode> = RequestBuilder<EntryServerNode>(service: "entryservernode", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<EntryServerNodeListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: EntryServerNodeFilter?) -> RequestBuilder<EntryServerNodeListResponse> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: EntryServerNodeFilter?, pager: FilterPager?) -> RequestBuilder<EntryServerNodeListResponse> {
		let request: RequestBuilder<EntryServerNodeListResponse> = RequestBuilder<EntryServerNodeListResponse>(service: "entryservernode", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func update(id: Int, entryServerNode: EntryServerNode) -> RequestBuilder<EntryServerNode> {
		let request: RequestBuilder<EntryServerNode> = RequestBuilder<EntryServerNode>(service: "entryservernode", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "entryServerNode", value: entryServerNode)

		return request
	}

	/**  Validates server node still registered on entry  */
	public static func validateRegisteredEntryServerNode(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "entryservernode", action: "validateRegisteredEntryServerNode")
			.setBody(key: "id", value: id)

		return request
	}
}
