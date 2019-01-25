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
// Copyright (C) 2006-2019  Kaltura Inc.
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

	public class AddTokenizer: ClientTokenizer  {
		
		public func metadataProfile<T: MetadataProfile.MetadataProfileTokenizer>() -> T {
			return T(self.append("metadataProfile"))
		}
		
		public var xsdData: BaseTokenizedObject {
			get {
				return self.append("xsdData") 
			}
		}
		
		public var viewsData: BaseTokenizedObject {
			get {
				return self.append("viewsData") 
			}
		}
	}

	public static func add(metadataProfile: MetadataProfile, xsdData: String) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddTokenizer> {
		return add(metadataProfile: metadataProfile, xsdData: xsdData, viewsData: nil)
	}

	/**  Allows you to add a metadata profile object and metadata profile content
	  associated with Kaltura object type  */
	public static func add(metadataProfile: MetadataProfile, xsdData: String, viewsData: String?) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddTokenizer>(service: "metadata_metadataprofile", action: "add")
			.setParam(key: "metadataProfile", value: metadataProfile)
			.setParam(key: "xsdData", value: xsdData)
			.setParam(key: "viewsData", value: viewsData)

		return request
	}

	public class AddFromFileTokenizer: ClientTokenizer  {
		
		public func metadataProfile<T: MetadataProfile.MetadataProfileTokenizer>() -> T {
			return T(self.append("metadataProfile"))
		}
	}

	public static func addFromFile(metadataProfile: MetadataProfile, xsdFile: RequestFile) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddFromFileTokenizer> {
		return addFromFile(metadataProfile: metadataProfile, xsdFile: xsdFile, viewsFile: nil)
	}

	/**  Allows you to add a metadata profile object and metadata profile file associated
	  with Kaltura object type  */
	public static func addFromFile(metadataProfile: MetadataProfile, xsdFile: RequestFile, viewsFile: RequestFile?) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddFromFileTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddFromFileTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, AddFromFileTokenizer>(service: "metadata_metadataprofile", action: "addFromFile")
			.setParam(key: "metadataProfile", value: metadataProfile)
			.setFile(key: "xsdFile", value: xsdFile)
			.setFile(key: "viewsFile", value: viewsFile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing metadata profile  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "metadata_metadataprofile", action: "delete")
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

	/**  Retrieve a metadata profile object by id  */
	public static func get(id: Int) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, GetTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, GetTokenizer>(service: "metadata_metadataprofile", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MetadataProfileFilter.MetadataProfileFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<MetadataProfileListResponse, MetadataProfileListResponse.MetadataProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: MetadataProfileFilter?) -> RequestBuilder<MetadataProfileListResponse, MetadataProfileListResponse.MetadataProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List metadata profile objects by filter and pager  */
	public static func list(filter: MetadataProfileFilter?, pager: FilterPager?) -> RequestBuilder<MetadataProfileListResponse, MetadataProfileListResponse.MetadataProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MetadataProfileListResponse, MetadataProfileListResponse.MetadataProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<MetadataProfileListResponse, MetadataProfileListResponse.MetadataProfileListResponseTokenizer, ListTokenizer>(service: "metadata_metadataprofile", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListFieldsTokenizer: ClientTokenizer  {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
	}

	/**  List metadata profile fields by metadata profile id  */
	public static func listFields(metadataProfileId: Int) -> RequestBuilder<MetadataProfileFieldListResponse, MetadataProfileFieldListResponse.MetadataProfileFieldListResponseTokenizer, ListFieldsTokenizer> {
		let request: RequestBuilder<MetadataProfileFieldListResponse, MetadataProfileFieldListResponse.MetadataProfileFieldListResponseTokenizer, ListFieldsTokenizer> = RequestBuilder<MetadataProfileFieldListResponse, MetadataProfileFieldListResponse.MetadataProfileFieldListResponseTokenizer, ListFieldsTokenizer>(service: "metadata_metadataprofile", action: "listFields")
			.setParam(key: "metadataProfileId", value: metadataProfileId)

		return request
	}

	public class RevertTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var toVersion: BaseTokenizedObject {
			get {
				return self.append("toVersion") 
			}
		}
	}

	/**  Update an existing metadata object definition file  */
	public static func revert(id: Int, toVersion: Int) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, RevertTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, RevertTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, RevertTokenizer>(service: "metadata_metadataprofile", action: "revert")
			.setParam(key: "id", value: id)
			.setParam(key: "toVersion", value: toVersion)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func metadataProfile<T: MetadataProfile.MetadataProfileTokenizer>() -> T {
			return T(self.append("metadataProfile"))
		}
		
		public var xsdData: BaseTokenizedObject {
			get {
				return self.append("xsdData") 
			}
		}
		
		public var viewsData: BaseTokenizedObject {
			get {
				return self.append("viewsData") 
			}
		}
	}

	public static func update(id: Int, metadataProfile: MetadataProfile) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTokenizer> {
		return update(id: id, metadataProfile: metadataProfile, xsdData: nil)
	}

	public static func update(id: Int, metadataProfile: MetadataProfile, xsdData: String?) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTokenizer> {
		return update(id: id, metadataProfile: metadataProfile, xsdData: xsdData, viewsData: nil)
	}

	/**  Update an existing metadata object  */
	public static func update(id: Int, metadataProfile: MetadataProfile, xsdData: String?, viewsData: String?) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTokenizer>(service: "metadata_metadataprofile", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "metadataProfile", value: metadataProfile)
			.setParam(key: "xsdData", value: xsdData)
			.setParam(key: "viewsData", value: viewsData)

		return request
	}

	public class UpdateDefinitionFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Update an existing metadata object definition file  */
	public static func updateDefinitionFromFile(id: Int, xsdFile: RequestFile) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateDefinitionFromFileTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateDefinitionFromFileTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateDefinitionFromFileTokenizer>(service: "metadata_metadataprofile", action: "updateDefinitionFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "xsdFile", value: xsdFile)

		return request
	}

	public class UpdateTransformationFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Update an existing metadata object XSLT file  */
	public static func updateTransformationFromFile(id: Int, xsltFile: RequestFile) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTransformationFromFileTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTransformationFromFileTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateTransformationFromFileTokenizer>(service: "metadata_metadataprofile", action: "updateTransformationFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "xsltFile", value: xsltFile)

		return request
	}

	public class UpdateViewsFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Update an existing metadata object views file  */
	public static func updateViewsFromFile(id: Int, viewsFile: RequestFile) -> RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateViewsFromFileTokenizer> {
		let request: RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateViewsFromFileTokenizer> = RequestBuilder<MetadataProfile, MetadataProfile.MetadataProfileTokenizer, UpdateViewsFromFileTokenizer>(service: "metadata_metadataprofile", action: "updateViewsFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "viewsFile", value: viewsFile)

		return request
	}
}
