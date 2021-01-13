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

/**  Metadata service  */
public final class MetadataService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var xmlData: BaseTokenizedObject {
			get {
				return self.append("xmlData") 
			}
		}
	}

	/**  Allows you to add a metadata object and metadata content associated with Kaltura
	  object  */
	public static func add(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, xmlData: String) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddTokenizer>(service: "metadata_metadata", action: "add")
			.setParam(key: "metadataProfileId", value: metadataProfileId)
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)
			.setParam(key: "xmlData", value: xmlData)

		return request
	}

	public class AddFromBulkTokenizer: ClientTokenizer  {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  Allows you to add a metadata XML data from remote URL.   Enables different
	  permissions than addFromUrl action.  */
	public static func addFromBulk(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, url: String) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromBulkTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromBulkTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromBulkTokenizer>(service: "metadata_metadata", action: "addFromBulk")
			.setParam(key: "metadataProfileId", value: metadataProfileId)
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)
			.setParam(key: "url", value: url)

		return request
	}

	public class AddFromFileTokenizer: ClientTokenizer  {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
	}

	/**  Allows you to add a metadata object and metadata file associated with Kaltura
	  object  */
	public static func addFromFile(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, xmlFile: RequestFile) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromFileTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromFileTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromFileTokenizer>(service: "metadata_metadata", action: "addFromFile")
			.setParam(key: "metadataProfileId", value: metadataProfileId)
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)
			.setFile(key: "xmlFile", value: xmlFile)

		return request
	}

	public class AddFromUrlTokenizer: ClientTokenizer  {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  Allows you to add a metadata XML data from remote URL  */
	public static func addFromUrl(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, url: String) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromUrlTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromUrlTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, AddFromUrlTokenizer>(service: "metadata_metadata", action: "addFromUrl")
			.setParam(key: "metadataProfileId", value: metadataProfileId)
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)
			.setParam(key: "url", value: url)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing metadata  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "metadata_metadata", action: "delete")
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

	/**  Retrieve a metadata object by id  */
	public static func get(id: Int) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, GetTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, GetTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, GetTokenizer>(service: "metadata_metadata", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class IndexTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var shouldUpdate: BaseTokenizedObject {
			get {
				return self.append("shouldUpdate") 
			}
		}
	}

	/**  Index metadata by id, will also index the related object  */
	public static func index(id: String, shouldUpdate: Bool) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> = RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer>(service: "metadata_metadata", action: "index")
			.setParam(key: "id", value: id)
			.setParam(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public class InvalidateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public static func invalidate(id: Int) -> NullRequestBuilder<InvalidateTokenizer> {
		return invalidate(id: id, version: nil)
	}

	/**  Mark existing metadata as invalid   Used by batch metadata transform  */
	public static func invalidate(id: Int, version: Int?) -> NullRequestBuilder<InvalidateTokenizer> {
		let request: NullRequestBuilder<InvalidateTokenizer> = NullRequestBuilder<InvalidateTokenizer>(service: "metadata_metadata", action: "invalidate")
			.setParam(key: "id", value: id)
			.setParam(key: "version", value: version)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MetadataFilter.MetadataFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<MetadataListResponse, MetadataListResponse.MetadataListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: MetadataFilter?) -> RequestBuilder<MetadataListResponse, MetadataListResponse.MetadataListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List metadata objects by filter and pager  */
	public static func list(filter: MetadataFilter?, pager: FilterPager?) -> RequestBuilder<MetadataListResponse, MetadataListResponse.MetadataListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MetadataListResponse, MetadataListResponse.MetadataListResponseTokenizer, ListTokenizer> = RequestBuilder<MetadataListResponse, MetadataListResponse.MetadataListResponseTokenizer, ListTokenizer>(service: "metadata_metadata", action: "list")
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
		
		public var xmlData: BaseTokenizedObject {
			get {
				return self.append("xmlData") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public static func update(id: Int) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateTokenizer> {
		return update(id: id, xmlData: nil)
	}

	public static func update(id: Int, xmlData: String?) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateTokenizer> {
		return update(id: id, xmlData: xmlData, version: nil)
	}

	/**  Update an existing metadata object with new XML content  */
	public static func update(id: Int, xmlData: String?, version: Int?) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateTokenizer>(service: "metadata_metadata", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "xmlData", value: xmlData)
			.setParam(key: "version", value: version)

		return request
	}

	public class UpdateFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func updateFromFile(id: Int) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromFileTokenizer> {
		return updateFromFile(id: id, xmlFile: nil)
	}

	/**  Update an existing metadata object with new XML file  */
	public static func updateFromFile(id: Int, xmlFile: RequestFile?) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromFileTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromFileTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromFileTokenizer>(service: "metadata_metadata", action: "updateFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "xmlFile", value: xmlFile)

		return request
	}

	public class UpdateFromXSLTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Action transforms current metadata object XML using a provided XSL.  */
	public static func updateFromXSL(id: Int, xslFile: RequestFile) -> RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromXSLTokenizer> {
		let request: RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromXSLTokenizer> = RequestBuilder<Metadata, Metadata.MetadataTokenizer, UpdateFromXSLTokenizer>(service: "metadata_metadata", action: "updateFromXSL")
			.setParam(key: "id", value: id)
			.setFile(key: "xslFile", value: xslFile)

		return request
	}
}
