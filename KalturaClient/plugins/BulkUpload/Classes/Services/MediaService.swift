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

	/**  Add entry  */
	public static func add(entry: MediaEntry) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "add")
			.setBody(key: "entry", value: entry)

		return request
	}

	public static func addContent(entryId: String) -> RequestBuilder<MediaEntry> {
		return addContent(entryId: entryId, resource: nil)
	}

	/**  Add content to media entry which is not yet associated with content (therefore
	  is in status NO_CONTENT).      If the requirement is to replace the entry's
	  associated content, use action updateContent.  */
	public static func addContent(entryId: String, resource: Resource?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)

		return request
	}

	/**  Adds new media entry by importing an HTTP or FTP URL.   The entry will be queued
	  for import and then for conversion.   This action should be exposed only to the
	  batches  */
	public static func addFromBulk(mediaEntry: MediaEntry, url: String, bulkUploadId: Int) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromBulk")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "url", value: url)
			.setBody(key: "bulkUploadId", value: bulkUploadId)

		return request
	}

	public static func addFromEntry(sourceEntryId: String) -> RequestBuilder<MediaEntry> {
		return addFromEntry(sourceEntryId: sourceEntryId, mediaEntry: nil)
	}

	public static func addFromEntry(sourceEntryId: String, mediaEntry: MediaEntry?) -> RequestBuilder<MediaEntry> {
		return addFromEntry(sourceEntryId: sourceEntryId, mediaEntry: mediaEntry, sourceFlavorParamsId: nil)
	}

	/**  Copy entry into new entry  */
	public static func addFromEntry(sourceEntryId: String, mediaEntry: MediaEntry?, sourceFlavorParamsId: Int?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromEntry")
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "sourceFlavorParamsId", value: sourceFlavorParamsId)

		return request
	}

	public static func addFromFlavorAsset(sourceFlavorAssetId: String) -> RequestBuilder<MediaEntry> {
		return addFromFlavorAsset(sourceFlavorAssetId: sourceFlavorAssetId, mediaEntry: nil)
	}

	/**  Copy flavor asset into new entry  */
	public static func addFromFlavorAsset(sourceFlavorAssetId: String, mediaEntry: MediaEntry?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromFlavorAsset")
			.setBody(key: "sourceFlavorAssetId", value: sourceFlavorAssetId)
			.setBody(key: "mediaEntry", value: mediaEntry)

		return request
	}

	/**  Add new entry after the file was recored on the server and the token id exists  */
	public static func addFromRecordedWebcam(mediaEntry: MediaEntry, webcamTokenId: String) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromRecordedWebcam")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "webcamTokenId", value: webcamTokenId)

		return request
	}

	public static func addFromSearchResult() -> RequestBuilder<MediaEntry> {
		return addFromSearchResult(mediaEntry: nil)
	}

	public static func addFromSearchResult(mediaEntry: MediaEntry?) -> RequestBuilder<MediaEntry> {
		return addFromSearchResult(mediaEntry: mediaEntry, searchResult: nil)
	}

	/**  Adds new media entry by importing the media file from a search provider.   This
	  action should be used with the search service result.  */
	public static func addFromSearchResult(mediaEntry: MediaEntry?, searchResult: SearchResult?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromSearchResult")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "searchResult", value: searchResult)

		return request
	}

	/**  Add new entry after the specific media file was uploaded and the upload token id
	  exists  */
	public static func addFromUploadedFile(mediaEntry: MediaEntry, uploadTokenId: String) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromUploadedFile")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "uploadTokenId", value: uploadTokenId)

		return request
	}

	/**  Adds new media entry by importing an HTTP or FTP URL.   The entry will be queued
	  for import and then for conversion.  */
	public static func addFromUrl(mediaEntry: MediaEntry, url: String) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "addFromUrl")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "url", value: url)

		return request
	}

	/**  Anonymously rank a media entry, no validation is done on duplicate rankings  */
	public static func anonymousRank(entryId: String, rank: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "anonymousRank")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "rank", value: rank)

		return request
	}

	/**  Approve the media entry and mark the pending flags (if any) as moderated (this
	  will make the entry playable)  */
	public static func approve(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "approve")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Approves media replacement  */
	public static func approveReplace(entryId: String) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "approveReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func bulkUploadAdd(fileData: RequestFile) -> RequestBuilder<BulkUpload> {
		return bulkUploadAdd(fileData: fileData, bulkUploadData: nil)
	}

	public static func bulkUploadAdd(fileData: RequestFile, bulkUploadData: BulkUploadJobData?) -> RequestBuilder<BulkUpload> {
		return bulkUploadAdd(fileData: fileData, bulkUploadData: bulkUploadData, bulkUploadEntryData: nil)
	}

	/**  Add new bulk upload batch job   Conversion profile id can be specified in the
	  API or in the CSV file, the one in the CSV file will be stronger.   If no
	  conversion profile was specified, partner's default will be used  */
	public static func bulkUploadAdd(fileData: RequestFile, bulkUploadData: BulkUploadJobData?, bulkUploadEntryData: BulkUploadEntryData?) -> RequestBuilder<BulkUpload> {
		let request: RequestBuilder<BulkUpload> = RequestBuilder<BulkUpload>(service: "media", action: "bulkUploadAdd")
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "bulkUploadData", value: bulkUploadData)
			.setBody(key: "bulkUploadEntryData", value: bulkUploadEntryData)

		return request
	}

	/**  Cancels media replacement  */
	public static func cancelReplace(entryId: String) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "cancelReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func convert(entryId: String) -> RequestBuilder<Int64> {
		return convert(entryId: entryId, conversionProfileId: nil)
	}

	public static func convert(entryId: String, conversionProfileId: Int?) -> RequestBuilder<Int64> {
		return convert(entryId: entryId, conversionProfileId: conversionProfileId, dynamicConversionAttributes: nil)
	}

	/**  Convert entry  */
	public static func convert(entryId: String, conversionProfileId: Int?, dynamicConversionAttributes: Array<ConversionAttribute>?) -> RequestBuilder<Int64> {
		let request: RequestBuilder<Int64> = RequestBuilder<Int64>(service: "media", action: "convert")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "dynamicConversionAttributes", value: dynamicConversionAttributes)

		return request
	}

	public static func count() -> RequestBuilder<Int> {
		return count(filter: nil)
	}

	/**  Count media entries by filter.  */
	public static func count(filter: MediaEntryFilter?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "media", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Delete a media entry.  */
	public static func delete(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Flag inappropriate media entry for moderation  */
	public static func flag(moderationFlag: ModerationFlag) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "flag")
			.setBody(key: "moderationFlag", value: moderationFlag)

		return request
	}

	public static func get(entryId: String) -> RequestBuilder<MediaEntry> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get media entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	public static func getMrss(entryId: String) -> RequestBuilder<String> {
		return getMrss(entryId: entryId, extendingItemsArray: nil)
	}

	public static func getMrss(entryId: String, extendingItemsArray: Array<ExtendingItemMrssParameter>?) -> RequestBuilder<String> {
		return getMrss(entryId: entryId, extendingItemsArray: extendingItemsArray, features: nil)
	}

	/**  Get MRSS by entry id      XML will return as an escaped string  */
	public static func getMrss(entryId: String, extendingItemsArray: Array<ExtendingItemMrssParameter>?, features: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "media", action: "getMrss")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "extendingItemsArray", value: extendingItemsArray)
			.setBody(key: "features", value: features)

		return request
	}

	public static func list() -> RequestBuilder<MediaListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: MediaEntryFilter?) -> RequestBuilder<MediaListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List media entries by filter with paging support.  */
	public static func list(filter: MediaEntryFilter?, pager: FilterPager?) -> RequestBuilder<MediaListResponse> {
		let request: RequestBuilder<MediaListResponse> = RequestBuilder<MediaListResponse>(service: "media", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listFlags(entryId: String) -> RequestBuilder<ModerationFlagListResponse> {
		return listFlags(entryId: entryId, pager: nil)
	}

	/**  List all pending flags for the media entry  */
	public static func listFlags(entryId: String, pager: FilterPager?) -> RequestBuilder<ModerationFlagListResponse> {
		let request: RequestBuilder<ModerationFlagListResponse> = RequestBuilder<ModerationFlagListResponse>(service: "media", action: "listFlags")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Reject the media entry and mark the pending flags (if any) as moderated (this
	  will make the entry non playable)  */
	public static func reject(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "media", action: "reject")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Request a new conversion job, this can be used to convert the media entry to a
	  different format  */
	public static func requestConversion(entryId: String, fileFormat: String) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "media", action: "requestConversion")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "fileFormat", value: fileFormat)

		return request
	}

	/**  Update media entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, mediaEntry: MediaEntry) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "mediaEntry", value: mediaEntry)

		return request
	}

	public static func updateContent(entryId: String, resource: Resource) -> RequestBuilder<MediaEntry> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: nil)
	}

	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?) -> RequestBuilder<MediaEntry> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: conversionProfileId, advancedOptions: nil)
	}

	/**  Replace content associated with the media entry.  */
	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?, advancedOptions: EntryReplacementOptions?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "updateContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "advancedOptions", value: advancedOptions)

		return request
	}

	public static func updateThumbnail(entryId: String, timeOffset: Int) -> RequestBuilder<MediaEntry> {
		return updateThumbnail(entryId: entryId, timeOffset: timeOffset, flavorParamsId: nil)
	}

	/**  Update media entry thumbnail by a specified time offset (In seconds)   If flavor
	  params id not specified, source flavor will be used by default  */
	public static func updateThumbnail(entryId: String, timeOffset: Int, flavorParamsId: Int?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "updateThumbnail")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "timeOffset", value: timeOffset)
			.setBody(key: "flavorParamsId", value: flavorParamsId)

		return request
	}

	public static func updateThumbnailFromSourceEntry(entryId: String, sourceEntryId: String, timeOffset: Int) -> RequestBuilder<MediaEntry> {
		return updateThumbnailFromSourceEntry(entryId: entryId, sourceEntryId: sourceEntryId, timeOffset: timeOffset, flavorParamsId: nil)
	}

	/**  Update media entry thumbnail from a different entry by a specified time offset
	  (In seconds)   If flavor params id not specified, source flavor will be used by
	  default  */
	public static func updateThumbnailFromSourceEntry(entryId: String, sourceEntryId: String, timeOffset: Int, flavorParamsId: Int?) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "updateThumbnailFromSourceEntry")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "timeOffset", value: timeOffset)
			.setBody(key: "flavorParamsId", value: flavorParamsId)

		return request
	}

	/**  Update entry thumbnail using url  */
	public static func updateThumbnailFromUrl(entryId: String, url: String) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "media", action: "updateThumbnailFromUrl")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "url", value: url)

		return request
	}

	/**  Update media entry thumbnail using a raw jpeg file  */
	public static func updateThumbnailJpeg(entryId: String, fileData: RequestFile) -> RequestBuilder<MediaEntry> {
		let request: RequestBuilder<MediaEntry> = RequestBuilder<MediaEntry>(service: "media", action: "updateThumbnailJpeg")
			.setBody(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	/**  Upload a media file to Kaltura, then the file can be used to create a media
	  entry.  */
	public static func upload(fileData: RequestFile) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "media", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
