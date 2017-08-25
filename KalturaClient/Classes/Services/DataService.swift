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

/**  Data service lets you manage data content (textual content)  */
public final class DataService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var dataEntry: DataEntry.DataEntryTokenizer {
			get {
				return DataEntry.DataEntryTokenizer(self.append("dataEntry")) 
			}
		}
	}

	/**  Adds a new data entry  */
	public static func add(dataEntry: DataEntry) -> RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, AddTokenizer> = RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, AddTokenizer>(service: "data", action: "add")
			.setBody(key: "dataEntry", value: dataEntry)

		return request
	}

	public class AddContentTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var resource: GenericDataCenterContentResource.GenericDataCenterContentResourceTokenizer {
			get {
				return GenericDataCenterContentResource.GenericDataCenterContentResourceTokenizer(self.append("resource")) 
			}
		}
	}

	/**  Update the dataContent of data entry using a resource  */
	public static func addContent(entryId: String, resource: GenericDataCenterContentResource) -> RequestBuilder<String, BaseTokenizedObject, AddContentTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, AddContentTokenizer> = RequestBuilder<String, BaseTokenizedObject, AddContentTokenizer>(service: "data", action: "addContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete a data entry.  */
	public static func delete(entryId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "data", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public static func get(entryId: String) -> RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, GetTokenizer> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get data entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, GetTokenizer> = RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, GetTokenizer>(service: "data", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: DataEntryFilter.DataEntryFilterTokenizer {
			get {
				return DataEntryFilter.DataEntryFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<DataListResponse, DataListResponse.DataListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DataEntryFilter?) -> RequestBuilder<DataListResponse, DataListResponse.DataListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List data entries by filter with paging support.  */
	public static func list(filter: DataEntryFilter?, pager: FilterPager?) -> RequestBuilder<DataListResponse, DataListResponse.DataListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DataListResponse, DataListResponse.DataListResponseTokenizer, ListTokenizer> = RequestBuilder<DataListResponse, DataListResponse.DataListResponseTokenizer, ListTokenizer>(service: "data", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var documentEntry: DataEntry.DataEntryTokenizer {
			get {
				return DataEntry.DataEntryTokenizer(self.append("documentEntry")) 
			}
		}
	}

	/**  Update data entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, documentEntry: DataEntry) -> RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, UpdateTokenizer> = RequestBuilder<DataEntry, DataEntry.DataEntryTokenizer, UpdateTokenizer>(service: "data", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "documentEntry", value: documentEntry)

		return request
	}
}
