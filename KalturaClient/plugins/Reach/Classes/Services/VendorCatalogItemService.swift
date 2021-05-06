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

/**  Vendor Catalog Item Service  */
public final class VendorCatalogItemService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func vendorCatalogItem<T: VendorCatalogItem.VendorCatalogItemTokenizer>() -> T {
			return T(self.append("vendorCatalogItem"))
		}
	}

	/**  Allows you to add an service catalog item  */
	public static func add(vendorCatalogItem: VendorCatalogItem) -> RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, AddTokenizer> {
		let request: RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, AddTokenizer> = RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, AddTokenizer>(service: "reach_vendorcatalogitem", action: "add")
			.setParam(key: "vendorCatalogItem", value: vendorCatalogItem)

		return request
	}

	public class AddFromBulkUploadTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadVendorCatalogItemData<T: BulkUploadVendorCatalogItemData.BulkUploadVendorCatalogItemDataTokenizer>() -> T {
			return T(self.append("bulkUploadVendorCatalogItemData"))
		}
	}

	public static func addFromBulkUpload(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		return addFromBulkUpload(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadVendorCatalogItemData: nil)
	}

	public static func addFromBulkUpload(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadVendorCatalogItemData: BulkUploadVendorCatalogItemData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, AddFromBulkUploadTokenizer>(service: "reach_vendorcatalogitem", action: "addFromBulkUpload")
			.setFile(key: "fileData", value: fileData)
			.setParam(key: "bulkUploadData", value: bulkUploadData)
			.setParam(key: "bulkUploadVendorCatalogItemData", value: bulkUploadVendorCatalogItemData)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete vedor catalog item object  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "reach_vendorcatalogitem", action: "delete")
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

	/**  Retrieve specific catalog item by id  */
	public static func get(id: Int) -> RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, GetTokenizer> {
		let request: RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, GetTokenizer> = RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, GetTokenizer>(service: "reach_vendorcatalogitem", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetServeUrlTokenizer: ClientTokenizer  {
		
		public var vendorPartnerId: BaseTokenizedObject {
			get {
				return self.append("vendorPartnerId") 
			}
		}
	}

	public static func getServeUrl() -> RequestBuilder<String, BaseTokenizedObject, GetServeUrlTokenizer> {
		return getServeUrl(vendorPartnerId: nil)
	}

	public static func getServeUrl(vendorPartnerId: Int?) -> RequestBuilder<String, BaseTokenizedObject, GetServeUrlTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetServeUrlTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetServeUrlTokenizer>(service: "reach_vendorcatalogitem", action: "getServeUrl")
			.setParam(key: "vendorPartnerId", value: vendorPartnerId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: VendorCatalogItemFilter.VendorCatalogItemFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<VendorCatalogItemListResponse, VendorCatalogItemListResponse.VendorCatalogItemListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: VendorCatalogItemFilter?) -> RequestBuilder<VendorCatalogItemListResponse, VendorCatalogItemListResponse.VendorCatalogItemListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List KalturaVendorCatalogItem objects  */
	public static func list(filter: VendorCatalogItemFilter?, pager: FilterPager?) -> RequestBuilder<VendorCatalogItemListResponse, VendorCatalogItemListResponse.VendorCatalogItemListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<VendorCatalogItemListResponse, VendorCatalogItemListResponse.VendorCatalogItemListResponseTokenizer, ListTokenizer> = RequestBuilder<VendorCatalogItemListResponse, VendorCatalogItemListResponse.VendorCatalogItemListResponseTokenizer, ListTokenizer>(service: "reach_vendorcatalogitem", action: "list")
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
		
		public func vendorCatalogItem<T: VendorCatalogItem.VendorCatalogItemTokenizer>() -> T {
			return T(self.append("vendorCatalogItem"))
		}
	}

	/**  Update an existing vedor catalog item object  */
	public static func update(id: Int, vendorCatalogItem: VendorCatalogItem) -> RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, UpdateTokenizer> = RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, UpdateTokenizer>(service: "reach_vendorcatalogitem", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "vendorCatalogItem", value: vendorCatalogItem)

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

	/**  Update vendor catalog item status by id  */
	public static func updateStatus(id: Int, status: VendorCatalogItemStatus) -> RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, UpdateStatusTokenizer> = RequestBuilder<VendorCatalogItem, VendorCatalogItem.VendorCatalogItemTokenizer, UpdateStatusTokenizer>(service: "reach_vendorcatalogitem", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
