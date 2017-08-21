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

/**  Metadata service  */
public final class MetadataService{

	/**  Allows you to add a metadata object and metadata content associated with Kaltura
	  object  */
	public static func add(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, xmlData: String) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "add")
			.setBody(key: "metadataProfileId", value: metadataProfileId)
			.setBody(key: "objectType", value: objectType.rawValue)
			.setBody(key: "objectId", value: objectId)
			.setBody(key: "xmlData", value: xmlData)

		return request
	}

	/**  Allows you to add a metadata xml data from remote URL.   Enables different
	  permissions than addFromUrl action.  */
	public static func addFromBulk(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, url: String) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "addFromBulk")
			.setBody(key: "metadataProfileId", value: metadataProfileId)
			.setBody(key: "objectType", value: objectType.rawValue)
			.setBody(key: "objectId", value: objectId)
			.setBody(key: "url", value: url)

		return request
	}

	/**  Allows you to add a metadata object and metadata file associated with Kaltura
	  object  */
	public static func addFromFile(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, xmlFile: RequestFile) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "addFromFile")
			.setBody(key: "metadataProfileId", value: metadataProfileId)
			.setBody(key: "objectType", value: objectType.rawValue)
			.setBody(key: "objectId", value: objectId)
			.setFile(key: "xmlFile", value: xmlFile)

		return request
	}

	/**  Allows you to add a metadata xml data from remote URL  */
	public static func addFromUrl(metadataProfileId: Int, objectType: MetadataObjectType, objectId: String, url: String) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "addFromUrl")
			.setBody(key: "metadataProfileId", value: metadataProfileId)
			.setBody(key: "objectType", value: objectType.rawValue)
			.setBody(key: "objectId", value: objectId)
			.setBody(key: "url", value: url)

		return request
	}

	/**  Delete an existing metadata  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "metadata_metadata", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve a metadata object by id  */
	public static func get(id: Int) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Index metadata by id, will also index the related object  */
	public static func index(id: String, shouldUpdate: Bool) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "metadata_metadata", action: "index")
			.setBody(key: "id", value: id)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public static func invalidate(id: Int) -> RequestBuilder<Void> {
		return invalidate(id: id, version: nil)
	}

	/**  Mark existing metadata as invalid   Used by batch metadata transform  */
	public static func invalidate(id: Int, version: Int?) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "metadata_metadata", action: "invalidate")
			.setBody(key: "id", value: id)
			.setBody(key: "version", value: version)

		return request
	}

	public static func list() -> RequestBuilder<MetadataListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: MetadataFilter?) -> RequestBuilder<MetadataListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List metadata objects by filter and pager  */
	public static func list(filter: MetadataFilter?, pager: FilterPager?) -> RequestBuilder<MetadataListResponse> {
		let request: RequestBuilder<MetadataListResponse> = RequestBuilder<MetadataListResponse>(service: "metadata_metadata", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func update(id: Int) -> RequestBuilder<Metadata> {
		return update(id: id, xmlData: nil)
	}

	public static func update(id: Int, xmlData: String?) -> RequestBuilder<Metadata> {
		return update(id: id, xmlData: xmlData, version: nil)
	}

	/**  Update an existing metadata object with new XML content  */
	public static func update(id: Int, xmlData: String?, version: Int?) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "xmlData", value: xmlData)
			.setBody(key: "version", value: version)

		return request
	}

	public static func updateFromFile(id: Int) -> RequestBuilder<Metadata> {
		return updateFromFile(id: id, xmlFile: nil)
	}

	/**  Update an existing metadata object with new XML file  */
	public static func updateFromFile(id: Int, xmlFile: RequestFile?) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "updateFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "xmlFile", value: xmlFile)

		return request
	}

	/**  Action transforms current metadata object XML using a provided XSL.  */
	public static func updateFromXSL(id: Int, xslFile: RequestFile) -> RequestBuilder<Metadata> {
		let request: RequestBuilder<Metadata> = RequestBuilder<Metadata>(service: "metadata_metadata", action: "updateFromXSL")
			.setBody(key: "id", value: id)
			.setFile(key: "xslFile", value: xslFile)

		return request
	}
}
