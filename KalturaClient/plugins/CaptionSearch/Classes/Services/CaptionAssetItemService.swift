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

/**  Search caption asset items  */
public final class CaptionAssetItemService{

	public class ListTokenizer: ClientTokenizer  {
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
		
		public func captionAssetItemFilter<T: CaptionAssetItemFilter.CaptionAssetItemFilterTokenizer>() -> T {
			return T(self.append("captionAssetItemFilter"))
		}
		
		public func captionAssetItemPager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("captionAssetItemPager"))
		}
	}

	public static func list(captionAssetId: String) -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, ListTokenizer> {
		return list(captionAssetId: captionAssetId, captionAssetItemFilter: nil)
	}

	public static func list(captionAssetId: String, captionAssetItemFilter: CaptionAssetItemFilter?) -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, ListTokenizer> {
		return list(captionAssetId: captionAssetId, captionAssetItemFilter: captionAssetItemFilter, captionAssetItemPager: nil)
	}

	/**  List caption asset items by filter and pager  */
	public static func list(captionAssetId: String, captionAssetItemFilter: CaptionAssetItemFilter?, captionAssetItemPager: FilterPager?) -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, ListTokenizer> = RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, ListTokenizer>(service: "captionsearch_captionassetitem", action: "list")
			.setParam(key: "captionAssetId", value: captionAssetId)
			.setParam(key: "captionAssetItemFilter", value: captionAssetItemFilter)
			.setParam(key: "captionAssetItemPager", value: captionAssetItemPager)

		return request
	}

	public class SearchTokenizer: ClientTokenizer  {
		
		public func entryFilter<T: BaseEntryFilter.BaseEntryFilterTokenizer>() -> T {
			return T(self.append("entryFilter"))
		}
		
		public func captionAssetItemFilter<T: CaptionAssetItemFilter.CaptionAssetItemFilterTokenizer>() -> T {
			return T(self.append("captionAssetItemFilter"))
		}
		
		public func captionAssetItemPager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("captionAssetItemPager"))
		}
	}

	public static func search() -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, SearchTokenizer> {
		return search(entryFilter: nil)
	}

	public static func search(entryFilter: BaseEntryFilter?) -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, SearchTokenizer> {
		return search(entryFilter: entryFilter, captionAssetItemFilter: nil)
	}

	public static func search(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?) -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, SearchTokenizer> {
		return search(entryFilter: entryFilter, captionAssetItemFilter: captionAssetItemFilter, captionAssetItemPager: nil)
	}

	/**  Search caption asset items by filter, pager and free text  */
	public static func search(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?, captionAssetItemPager: FilterPager?) -> RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, SearchTokenizer> {
		let request: RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, SearchTokenizer> = RequestBuilder<CaptionAssetItemListResponse, CaptionAssetItemListResponse.CaptionAssetItemListResponseTokenizer, SearchTokenizer>(service: "captionsearch_captionassetitem", action: "search")
			.setParam(key: "entryFilter", value: entryFilter)
			.setParam(key: "captionAssetItemFilter", value: captionAssetItemFilter)
			.setParam(key: "captionAssetItemPager", value: captionAssetItemPager)

		return request
	}

	public class SearchEntriesTokenizer: ClientTokenizer  {
		
		public func entryFilter<T: BaseEntryFilter.BaseEntryFilterTokenizer>() -> T {
			return T(self.append("entryFilter"))
		}
		
		public func captionAssetItemFilter<T: CaptionAssetItemFilter.CaptionAssetItemFilterTokenizer>() -> T {
			return T(self.append("captionAssetItemFilter"))
		}
		
		public func captionAssetItemPager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("captionAssetItemPager"))
		}
	}

	public static func searchEntries() -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, SearchEntriesTokenizer> {
		return searchEntries(entryFilter: nil)
	}

	public static func searchEntries(entryFilter: BaseEntryFilter?) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, SearchEntriesTokenizer> {
		return searchEntries(entryFilter: entryFilter, captionAssetItemFilter: nil)
	}

	public static func searchEntries(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, SearchEntriesTokenizer> {
		return searchEntries(entryFilter: entryFilter, captionAssetItemFilter: captionAssetItemFilter, captionAssetItemPager: nil)
	}

	/**  Search caption asset items by filter, pager and free text  */
	public static func searchEntries(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?, captionAssetItemPager: FilterPager?) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, SearchEntriesTokenizer> {
		let request: RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, SearchEntriesTokenizer> = RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, SearchEntriesTokenizer>(service: "captionsearch_captionassetitem", action: "searchEntries")
			.setParam(key: "entryFilter", value: entryFilter)
			.setParam(key: "captionAssetItemFilter", value: captionAssetItemFilter)
			.setParam(key: "captionAssetItemPager", value: captionAssetItemPager)

		return request
	}
}
