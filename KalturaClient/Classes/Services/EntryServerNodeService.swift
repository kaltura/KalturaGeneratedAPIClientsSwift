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
// Copyright (C) 2006-2022  Kaltura Inc.
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

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func get(id: String) -> RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, GetTokenizer> {
		let request: RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, GetTokenizer> = RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, GetTokenizer>(service: "entryservernode", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EntryServerNodeFilter.EntryServerNodeFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<EntryServerNodeListResponse, EntryServerNodeListResponse.EntryServerNodeListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: EntryServerNodeFilter?) -> RequestBuilder<EntryServerNodeListResponse, EntryServerNodeListResponse.EntryServerNodeListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: EntryServerNodeFilter?, pager: FilterPager?) -> RequestBuilder<EntryServerNodeListResponse, EntryServerNodeListResponse.EntryServerNodeListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EntryServerNodeListResponse, EntryServerNodeListResponse.EntryServerNodeListResponseTokenizer, ListTokenizer> = RequestBuilder<EntryServerNodeListResponse, EntryServerNodeListResponse.EntryServerNodeListResponseTokenizer, ListTokenizer>(service: "entryservernode", action: "list")
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
		
		public func entryServerNode<T: EntryServerNode.EntryServerNodeTokenizer>() -> T {
			return T(self.append("entryServerNode"))
		}
	}

	public static func update(id: Int64, entryServerNode: EntryServerNode) -> RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, UpdateTokenizer> = RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, UpdateTokenizer>(service: "entryservernode", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "entryServerNode", value: entryServerNode)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	public static func updateStatus(id: String, status: EntryServerNodeStatus) -> RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, UpdateStatusTokenizer> = RequestBuilder<EntryServerNode, EntryServerNode.EntryServerNodeTokenizer, UpdateStatusTokenizer>(service: "entryservernode", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}

	public class ValidateRegisteredEntryServerNodeTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Validates server node still registered on entry  */
	public static func validateRegisteredEntryServerNode(id: Int64) -> NullRequestBuilder<ValidateRegisteredEntryServerNodeTokenizer> {
		let request: NullRequestBuilder<ValidateRegisteredEntryServerNodeTokenizer> = NullRequestBuilder<ValidateRegisteredEntryServerNodeTokenizer>(service: "entryservernode", action: "validateRegisteredEntryServerNode")
			.setParam(key: "id", value: id)

		return request
	}
}
