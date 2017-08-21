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

/**  Search caption asset items  */
public final class CaptionAssetItemService{

	public static func search() -> RequestBuilder<CaptionAssetItemListResponse> {
		return search(entryFilter: nil)
	}

	public static func search(entryFilter: BaseEntryFilter?) -> RequestBuilder<CaptionAssetItemListResponse> {
		return search(entryFilter: entryFilter, captionAssetItemFilter: nil)
	}

	public static func search(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?) -> RequestBuilder<CaptionAssetItemListResponse> {
		return search(entryFilter: entryFilter, captionAssetItemFilter: captionAssetItemFilter, captionAssetItemPager: nil)
	}

	/**  Search caption asset items by filter, pager and free text  */
	public static func search(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?, captionAssetItemPager: FilterPager?) -> RequestBuilder<CaptionAssetItemListResponse> {
		let request: RequestBuilder<CaptionAssetItemListResponse> = RequestBuilder<CaptionAssetItemListResponse>(service: "captionsearch_captionassetitem", action: "search")
			.setBody(key: "entryFilter", value: entryFilter)
			.setBody(key: "captionAssetItemFilter", value: captionAssetItemFilter)
			.setBody(key: "captionAssetItemPager", value: captionAssetItemPager)

		return request
	}

	public static func searchEntries() -> RequestBuilder<BaseEntryListResponse> {
		return searchEntries(entryFilter: nil)
	}

	public static func searchEntries(entryFilter: BaseEntryFilter?) -> RequestBuilder<BaseEntryListResponse> {
		return searchEntries(entryFilter: entryFilter, captionAssetItemFilter: nil)
	}

	public static func searchEntries(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?) -> RequestBuilder<BaseEntryListResponse> {
		return searchEntries(entryFilter: entryFilter, captionAssetItemFilter: captionAssetItemFilter, captionAssetItemPager: nil)
	}

	/**  Search caption asset items by filter, pager and free text  */
	public static func searchEntries(entryFilter: BaseEntryFilter?, captionAssetItemFilter: CaptionAssetItemFilter?, captionAssetItemPager: FilterPager?) -> RequestBuilder<BaseEntryListResponse> {
		let request: RequestBuilder<BaseEntryListResponse> = RequestBuilder<BaseEntryListResponse>(service: "captionsearch_captionassetitem", action: "searchEntries")
			.setBody(key: "entryFilter", value: entryFilter)
			.setBody(key: "captionAssetItemFilter", value: captionAssetItemFilter)
			.setBody(key: "captionAssetItemPager", value: captionAssetItemPager)

		return request
	}
}
