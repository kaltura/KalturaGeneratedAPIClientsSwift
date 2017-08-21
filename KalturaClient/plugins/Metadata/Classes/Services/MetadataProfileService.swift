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

/**  Metadata Profile service  */
public final class MetadataProfileService{

	public static func add(metadataProfile: MetadataProfile, xsdData: String) -> RequestBuilder<MetadataProfile> {
		return add(metadataProfile: metadataProfile, xsdData: xsdData, viewsData: nil)
	}

	/**  Allows you to add a metadata profile object and metadata profile content
	  associated with Kaltura object type  */
	public static func add(metadataProfile: MetadataProfile, xsdData: String, viewsData: String?) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "add")
			.setBody(key: "metadataProfile", value: metadataProfile)
			.setBody(key: "xsdData", value: xsdData)
			.setBody(key: "viewsData", value: viewsData)

		return request
	}

	public static func addFromFile(metadataProfile: MetadataProfile, xsdFile: RequestFile) -> RequestBuilder<MetadataProfile> {
		return addFromFile(metadataProfile: metadataProfile, xsdFile: xsdFile, viewsFile: nil)
	}

	/**  Allows you to add a metadata profile object and metadata profile file associated
	  with Kaltura object type  */
	public static func addFromFile(metadataProfile: MetadataProfile, xsdFile: RequestFile, viewsFile: RequestFile?) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "addFromFile")
			.setBody(key: "metadataProfile", value: metadataProfile)
			.setFile(key: "xsdFile", value: xsdFile)
			.setFile(key: "viewsFile", value: viewsFile)

		return request
	}

	/**  Delete an existing metadata profile  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "metadata_metadataprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve a metadata profile object by id  */
	public static func get(id: Int) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<MetadataProfileListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: MetadataProfileFilter?) -> RequestBuilder<MetadataProfileListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List metadata profile objects by filter and pager  */
	public static func list(filter: MetadataProfileFilter?, pager: FilterPager?) -> RequestBuilder<MetadataProfileListResponse> {
		let request: RequestBuilder<MetadataProfileListResponse> = RequestBuilder<MetadataProfileListResponse>(service: "metadata_metadataprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  List metadata profile fields by metadata profile id  */
	public static func listFields(metadataProfileId: Int) -> RequestBuilder<MetadataProfileFieldListResponse> {
		let request: RequestBuilder<MetadataProfileFieldListResponse> = RequestBuilder<MetadataProfileFieldListResponse>(service: "metadata_metadataprofile", action: "listFields")
			.setBody(key: "metadataProfileId", value: metadataProfileId)

		return request
	}

	/**  Update an existing metadata object definition file  */
	public static func revert(id: Int, toVersion: Int) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "revert")
			.setBody(key: "id", value: id)
			.setBody(key: "toVersion", value: toVersion)

		return request
	}

	public static func update(id: Int, metadataProfile: MetadataProfile) -> RequestBuilder<MetadataProfile> {
		return update(id: id, metadataProfile: metadataProfile, xsdData: nil)
	}

	public static func update(id: Int, metadataProfile: MetadataProfile, xsdData: String?) -> RequestBuilder<MetadataProfile> {
		return update(id: id, metadataProfile: metadataProfile, xsdData: xsdData, viewsData: nil)
	}

	/**  Update an existing metadata object  */
	public static func update(id: Int, metadataProfile: MetadataProfile, xsdData: String?, viewsData: String?) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "metadataProfile", value: metadataProfile)
			.setBody(key: "xsdData", value: xsdData)
			.setBody(key: "viewsData", value: viewsData)

		return request
	}

	/**  Update an existing metadata object definition file  */
	public static func updateDefinitionFromFile(id: Int, xsdFile: RequestFile) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "updateDefinitionFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "xsdFile", value: xsdFile)

		return request
	}

	/**  Update an existing metadata object xslt file  */
	public static func updateTransformationFromFile(id: Int, xsltFile: RequestFile) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "updateTransformationFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "xsltFile", value: xsltFile)

		return request
	}

	/**  Update an existing metadata object views file  */
	public static func updateViewsFromFile(id: Int, viewsFile: RequestFile) -> RequestBuilder<MetadataProfile> {
		let request: RequestBuilder<MetadataProfile> = RequestBuilder<MetadataProfile>(service: "metadata_metadataprofile", action: "updateViewsFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "viewsFile", value: viewsFile)

		return request
	}
}
