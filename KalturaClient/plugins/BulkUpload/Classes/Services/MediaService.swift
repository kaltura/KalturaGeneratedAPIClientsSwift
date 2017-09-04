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

/**  Media service lets you upload and manage media files (images / videos &amp;
  audio)  */
extension MediaService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func entry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
	}

	/**  Add entry  */
	public static func add(entry: MediaEntry) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddTokenizer>(service: "media", action: "add")
			.setBody(key: "entry", value: entry)

		return request
	}

	public class AddContentTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func resource<T: Resource.ResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
	}

	public static func addContent(entryId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddContentTokenizer> {
		return addContent(entryId: entryId, resource: nil)
	}

	/**  Add content to media entry which is not yet associated with content (therefore
	  is in status NO_CONTENT).      If the requirement is to replace the entry's
	  associated content, use action updateContent.  */
	public static func addContent(entryId: String, resource: Resource?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddContentTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddContentTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddContentTokenizer>(service: "media", action: "addContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)

		return request
	}

	public class AddFromBulkTokenizer: ClientTokenizer  {
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var bulkUploadId: BaseTokenizedObject {
			get {
				return self.append("bulkUploadId") 
			}
		}
	}

	/**  Adds new media entry by importing an HTTP or FTP URL.   The entry will be queued
	  for import and then for conversion.   This action should be exposed only to the
	  batches  */
	public static func addFromBulk(mediaEntry: MediaEntry, url: String, bulkUploadId: Int) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromBulkTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromBulkTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromBulkTokenizer>(service: "media", action: "addFromBulk")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "url", value: url)
			.setBody(key: "bulkUploadId", value: bulkUploadId)

		return request
	}

	public class AddFromEntryTokenizer: ClientTokenizer  {
		
		public var sourceEntryId: BaseTokenizedObject {
			get {
				return self.append("sourceEntryId") 
			}
		}
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
		
		public var sourceFlavorParamsId: BaseTokenizedObject {
			get {
				return self.append("sourceFlavorParamsId") 
			}
		}
	}

	public static func addFromEntry(sourceEntryId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromEntryTokenizer> {
		return addFromEntry(sourceEntryId: sourceEntryId, mediaEntry: nil)
	}

	public static func addFromEntry(sourceEntryId: String, mediaEntry: MediaEntry?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromEntryTokenizer> {
		return addFromEntry(sourceEntryId: sourceEntryId, mediaEntry: mediaEntry, sourceFlavorParamsId: nil)
	}

	/**  Copy entry into new entry  */
	public static func addFromEntry(sourceEntryId: String, mediaEntry: MediaEntry?, sourceFlavorParamsId: Int?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromEntryTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromEntryTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromEntryTokenizer>(service: "media", action: "addFromEntry")
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "sourceFlavorParamsId", value: sourceFlavorParamsId)

		return request
	}

	public class AddFromFlavorAssetTokenizer: ClientTokenizer  {
		
		public var sourceFlavorAssetId: BaseTokenizedObject {
			get {
				return self.append("sourceFlavorAssetId") 
			}
		}
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
	}

	public static func addFromFlavorAsset(sourceFlavorAssetId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromFlavorAssetTokenizer> {
		return addFromFlavorAsset(sourceFlavorAssetId: sourceFlavorAssetId, mediaEntry: nil)
	}

	/**  Copy flavor asset into new entry  */
	public static func addFromFlavorAsset(sourceFlavorAssetId: String, mediaEntry: MediaEntry?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromFlavorAssetTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromFlavorAssetTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromFlavorAssetTokenizer>(service: "media", action: "addFromFlavorAsset")
			.setBody(key: "sourceFlavorAssetId", value: sourceFlavorAssetId)
			.setBody(key: "mediaEntry", value: mediaEntry)

		return request
	}

	public class AddFromRecordedWebcamTokenizer: ClientTokenizer  {
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
		
		public var webcamTokenId: BaseTokenizedObject {
			get {
				return self.append("webcamTokenId") 
			}
		}
	}

	/**  Add new entry after the file was recored on the server and the token id exists  */
	public static func addFromRecordedWebcam(mediaEntry: MediaEntry, webcamTokenId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromRecordedWebcamTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromRecordedWebcamTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromRecordedWebcamTokenizer>(service: "media", action: "addFromRecordedWebcam")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "webcamTokenId", value: webcamTokenId)

		return request
	}

	public class AddFromSearchResultTokenizer: ClientTokenizer  {
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
		
		public func searchResult<T: SearchResult.SearchResultTokenizer>() -> T {
			return T(self.append("searchResult"))
		}
	}

	public static func addFromSearchResult() -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromSearchResultTokenizer> {
		return addFromSearchResult(mediaEntry: nil)
	}

	public static func addFromSearchResult(mediaEntry: MediaEntry?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromSearchResultTokenizer> {
		return addFromSearchResult(mediaEntry: mediaEntry, searchResult: nil)
	}

	/**  Adds new media entry by importing the media file from a search provider.   This
	  action should be used with the search service result.  */
	public static func addFromSearchResult(mediaEntry: MediaEntry?, searchResult: SearchResult?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromSearchResultTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromSearchResultTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromSearchResultTokenizer>(service: "media", action: "addFromSearchResult")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "searchResult", value: searchResult)

		return request
	}

	public class AddFromUploadedFileTokenizer: ClientTokenizer  {
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
	}

	/**  Add new entry after the specific media file was uploaded and the upload token id
	  exists  */
	public static func addFromUploadedFile(mediaEntry: MediaEntry, uploadTokenId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromUploadedFileTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromUploadedFileTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromUploadedFileTokenizer>(service: "media", action: "addFromUploadedFile")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "uploadTokenId", value: uploadTokenId)

		return request
	}

	public class AddFromUrlTokenizer: ClientTokenizer  {
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  Adds new media entry by importing an HTTP or FTP URL.   The entry will be queued
	  for import and then for conversion.  */
	public static func addFromUrl(mediaEntry: MediaEntry, url: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromUrlTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromUrlTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddFromUrlTokenizer>(service: "media", action: "addFromUrl")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "url", value: url)

		return request
	}

	public class AnonymousRankTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var rank: BaseTokenizedObject {
			get {
				return self.append("rank") 
			}
		}
	}

	/**  Anonymously rank a media entry, no validation is done on duplicate rankings  */
	public static func anonymousRank(entryId: String, rank: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "anonymousRank")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "rank", value: rank)

		return request
	}

	public class ApproveTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Approve the media entry and mark the pending flags (if any) as moderated (this
	  will make the entry playable)  */
	public static func approve(entryId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "approve")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class ApproveReplaceTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Approves media replacement  */
	public static func approveReplace(entryId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, ApproveReplaceTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, ApproveReplaceTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, ApproveReplaceTokenizer>(service: "media", action: "approveReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class BulkUploadAddTokenizer: ClientTokenizer  {
		
		public func bulkUploadData<T: BulkUploadJobData.BulkUploadJobDataTokenizer>() -> T {
			return T(self.append("bulkUploadData"))
		}
		
		public func bulkUploadEntryData<T: BulkUploadEntryData.BulkUploadEntryDataTokenizer>() -> T {
			return T(self.append("bulkUploadEntryData"))
		}
	}

	public static func bulkUploadAdd(fileData: RequestFile) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> {
		return bulkUploadAdd(fileData: fileData, bulkUploadData: nil)
	}

	public static func bulkUploadAdd(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> {
		return bulkUploadAdd(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadEntryData: nil)
	}

	/**  Add new bulk upload batch job   Conversion profile id can be specified in the
	  API or in the CSV file, the one in the CSV file will be stronger.   If no
	  conversion profile was specified, partner's default will be used  */
	public static func bulkUploadAdd(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadEntryData: BulkUploadEntryData?) -> RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> {
		let request: RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer> = RequestBuilder<BulkUpload, BulkUpload.BulkUploadTokenizer, BulkUploadAddTokenizer>(service: "media", action: "bulkUploadAdd")
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "bulkUploadData", value: bulkUploadData)
			.setBody(key: "bulkUploadEntryData", value: bulkUploadEntryData)

		return request
	}

	public class CancelReplaceTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Cancels media replacement  */
	public static func cancelReplace(entryId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, CancelReplaceTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, CancelReplaceTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, CancelReplaceTokenizer>(service: "media", action: "cancelReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class ConvertTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var dynamicConversionAttributes: ArrayTokenizedObject<ConversionAttribute.ConversionAttributeTokenizer> {
			get {
				return ArrayTokenizedObject<ConversionAttribute.ConversionAttributeTokenizer>(self.append("dynamicConversionAttributes"))
			} 
		}
	}

	public static func convert(entryId: String) -> RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> {
		return convert(entryId: entryId, conversionProfileId: nil)
	}

	public static func convert(entryId: String, conversionProfileId: Int?) -> RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> {
		return convert(entryId: entryId, conversionProfileId: conversionProfileId, dynamicConversionAttributes: nil)
	}

	/**  Convert entry  */
	public static func convert(entryId: String, conversionProfileId: Int?, dynamicConversionAttributes: Array<ConversionAttribute>?) -> RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> {
		let request: RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> = RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer>(service: "media", action: "convert")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "dynamicConversionAttributes", value: dynamicConversionAttributes)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: MediaEntryFilter.MediaEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Count media entries by filter.  */
	public static func count(filter: MediaEntryFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "media", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete a media entry.  */
	public static func delete(entryId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class FlagTokenizer: ClientTokenizer  {
		
		public func moderationFlag<T: ModerationFlag.ModerationFlagTokenizer>() -> T {
			return T(self.append("moderationFlag"))
		}
	}

	/**  Flag inappropriate media entry for moderation  */
	public static func flag(moderationFlag: ModerationFlag) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "flag")
			.setBody(key: "moderationFlag", value: moderationFlag)

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

	public static func get(entryId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, GetTokenizer> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get media entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, GetTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, GetTokenizer>(service: "media", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	public class GetMrssTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var extendingItemsArray: ArrayTokenizedObject<ExtendingItemMrssParameter.ExtendingItemMrssParameterTokenizer> {
			get {
				return ArrayTokenizedObject<ExtendingItemMrssParameter.ExtendingItemMrssParameterTokenizer>(self.append("extendingItemsArray"))
			} 
		}
		
		public var features: BaseTokenizedObject {
			get {
				return self.append("features") 
			}
		}
	}

	public static func getMrss(entryId: String) -> RequestBuilder<String, BaseTokenizedObject, GetMrssTokenizer> {
		return getMrss(entryId: entryId, extendingItemsArray: nil)
	}

	public static func getMrss(entryId: String, extendingItemsArray: Array<ExtendingItemMrssParameter>?) -> RequestBuilder<String, BaseTokenizedObject, GetMrssTokenizer> {
		return getMrss(entryId: entryId, extendingItemsArray: extendingItemsArray, features: nil)
	}

	/**  Get MRSS by entry id      XML will return as an escaped string  */
	public static func getMrss(entryId: String, extendingItemsArray: Array<ExtendingItemMrssParameter>?, features: String?) -> RequestBuilder<String, BaseTokenizedObject, GetMrssTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetMrssTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetMrssTokenizer>(service: "media", action: "getMrss")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "extendingItemsArray", value: extendingItemsArray)
			.setBody(key: "features", value: features)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MediaEntryFilter.MediaEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<MediaListResponse, MediaListResponse.MediaListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: MediaEntryFilter?) -> RequestBuilder<MediaListResponse, MediaListResponse.MediaListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List media entries by filter with paging support.  */
	public static func list(filter: MediaEntryFilter?, pager: FilterPager?) -> RequestBuilder<MediaListResponse, MediaListResponse.MediaListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MediaListResponse, MediaListResponse.MediaListResponseTokenizer, ListTokenizer> = RequestBuilder<MediaListResponse, MediaListResponse.MediaListResponseTokenizer, ListTokenizer>(service: "media", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ListFlagsTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listFlags(entryId: String) -> RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer> {
		return listFlags(entryId: entryId, pager: nil)
	}

	/**  List all pending flags for the media entry  */
	public static func listFlags(entryId: String, pager: FilterPager?) -> RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer> {
		let request: RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer> = RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer>(service: "media", action: "listFlags")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class RejectTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Reject the media entry and mark the pending flags (if any) as moderated (this
	  will make the entry non playable)  */
	public static func reject(entryId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "reject")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class RequestConversionTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var fileFormat: BaseTokenizedObject {
			get {
				return self.append("fileFormat") 
			}
		}
	}

	/**  Request a new conversion job, this can be used to convert the media entry to a
	  different format  */
	public static func requestConversion(entryId: String, fileFormat: String) -> RequestBuilder<Int, BaseTokenizedObject, RequestConversionTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, RequestConversionTokenizer> = RequestBuilder<Int, BaseTokenizedObject, RequestConversionTokenizer>(service: "media", action: "requestConversion")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "fileFormat", value: fileFormat)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func mediaEntry<T: MediaEntry.MediaEntryTokenizer>() -> T {
			return T(self.append("mediaEntry"))
		}
	}

	/**  Update media entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, mediaEntry: MediaEntry) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateTokenizer>(service: "media", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "mediaEntry", value: mediaEntry)

		return request
	}

	public class UpdateContentTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func resource<T: Resource.ResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public func advancedOptions<T: EntryReplacementOptions.EntryReplacementOptionsTokenizer>() -> T {
			return T(self.append("advancedOptions"))
		}
	}

	public static func updateContent(entryId: String, resource: Resource) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateContentTokenizer> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: nil)
	}

	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateContentTokenizer> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: conversionProfileId, advancedOptions: nil)
	}

	/**  Replace content associated with the media entry.  */
	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?, advancedOptions: EntryReplacementOptions?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateContentTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateContentTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateContentTokenizer>(service: "media", action: "updateContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "advancedOptions", value: advancedOptions)

		return request
	}

	public class UpdateThumbnailTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var timeOffset: BaseTokenizedObject {
			get {
				return self.append("timeOffset") 
			}
		}
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
	}

	public static func updateThumbnail(entryId: String, timeOffset: Int) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailTokenizer> {
		return updateThumbnail(entryId: entryId, timeOffset: timeOffset, flavorParamsId: nil)
	}

	/**  Update media entry thumbnail by a specified time offset (In seconds)   If flavor
	  params id not specified, source flavor will be used by default  */
	public static func updateThumbnail(entryId: String, timeOffset: Int, flavorParamsId: Int?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailTokenizer>(service: "media", action: "updateThumbnail")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "timeOffset", value: timeOffset)
			.setBody(key: "flavorParamsId", value: flavorParamsId)

		return request
	}

	public class UpdateThumbnailFromSourceEntryTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var sourceEntryId: BaseTokenizedObject {
			get {
				return self.append("sourceEntryId") 
			}
		}
		
		public var timeOffset: BaseTokenizedObject {
			get {
				return self.append("timeOffset") 
			}
		}
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
	}

	public static func updateThumbnailFromSourceEntry(entryId: String, sourceEntryId: String, timeOffset: Int) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer> {
		return updateThumbnailFromSourceEntry(entryId: entryId, sourceEntryId: sourceEntryId, timeOffset: timeOffset, flavorParamsId: nil)
	}

	/**  Update media entry thumbnail from a different entry by a specified time offset
	  (In seconds)   If flavor params id not specified, source flavor will be used by
	  default  */
	public static func updateThumbnailFromSourceEntry(entryId: String, sourceEntryId: String, timeOffset: Int, flavorParamsId: Int?) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer>(service: "media", action: "updateThumbnailFromSourceEntry")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "timeOffset", value: timeOffset)
			.setBody(key: "flavorParamsId", value: flavorParamsId)

		return request
	}

	public class UpdateThumbnailFromUrlTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
	}

	/**  Update entry thumbnail using url  */
	public static func updateThumbnailFromUrl(entryId: String, url: String) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromUrlTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromUrlTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromUrlTokenizer>(service: "media", action: "updateThumbnailFromUrl")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "url", value: url)

		return request
	}

	public class UpdateThumbnailJpegTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Update media entry thumbnail using a raw jpeg file  */
	public static func updateThumbnailJpeg(entryId: String, fileData: RequestFile) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailJpegTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailJpegTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, UpdateThumbnailJpegTokenizer>(service: "media", action: "updateThumbnailJpeg")
			.setBody(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	public class UploadTokenizer: ClientTokenizer  {
	}

	/**  Upload a media file to Kaltura, then the file can be used to create a media
	  entry.  */
	public static func upload(fileData: RequestFile) -> RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> = RequestBuilder<String, BaseTokenizedObject, UploadTokenizer>(service: "media", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
