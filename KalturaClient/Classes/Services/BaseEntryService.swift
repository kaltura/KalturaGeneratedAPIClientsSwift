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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Base Entry Service  */
public final class BaseEntryService{

	public static func add(entry: BaseEntry) -> RequestBuilder<BaseEntry> {
		return add(entry: entry, type: nil)
	}

	/**  Generic add entry, should be used when the uploaded entry type is not known.  */
	public static func add(entry: BaseEntry, type: EntryType?) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "add")
			.setBody(key: "entry", value: entry)
			.setBody(key: "type", value: type?.rawValue)

		return request
	}

	/**  Attach content resource to entry in status NO_MEDIA  */
	public static func addContent(entryId: String, resource: Resource) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "addContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)

		return request
	}

	public static func addFromUploadedFile(entry: BaseEntry, uploadTokenId: String) -> RequestBuilder<BaseEntry> {
		return addFromUploadedFile(entry: entry, uploadTokenId: uploadTokenId, type: nil)
	}

	/**  Generic add entry using an uploaded file, should be used when the uploaded entry
	  type is not known.  */
	public static func addFromUploadedFile(entry: BaseEntry, uploadTokenId: String, type: EntryType?) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "addFromUploadedFile")
			.setBody(key: "entry", value: entry)
			.setBody(key: "uploadTokenId", value: uploadTokenId)
			.setBody(key: "type", value: type?.rawValue)

		return request
	}

	/**  Anonymously rank an entry, no validation is done on duplicate rankings.  */
	public static func anonymousRank(entryId: String, rank: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "baseentry", action: "anonymousRank")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "rank", value: rank)

		return request
	}

	/**  Approve the entry and mark the pending flags (if any) as moderated (this will
	  make the entry playable).  */
	public static func approve(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "baseentry", action: "approve")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func clone(entryId: String) -> RequestBuilder<BaseEntry> {
		return clone(entryId: entryId, cloneOptions: nil)
	}

	/**  Clone an entry with optional attributes to apply to the clone  */
	public static func clone(entryId: String, cloneOptions: Array<BaseEntryCloneOptionItem>?) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "clone")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "cloneOptions", value: cloneOptions)

		return request
	}

	public static func count() -> RequestBuilder<Int> {
		return count(filter: nil)
	}

	/**  Count base entries by filter.  */
	public static func count(filter: BaseEntryFilter?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "baseentry", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Delete an entry.  */
	public static func delete(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "baseentry", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func export(entryId: String, storageProfileId: Int) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "export")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "storageProfileId", value: storageProfileId)

		return request
	}

	/**  Flag inappropriate entry for moderation.  */
	public static func flag(moderationFlag: ModerationFlag) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "baseentry", action: "flag")
			.setBody(key: "moderationFlag", value: moderationFlag)

		return request
	}

	public static func get(entryId: String) -> RequestBuilder<BaseEntry> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get base entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	/**  Get an array of KalturaBaseEntry objects by a comma-separated list of ids.  */
	public static func getByIds(entryIds: String) -> RequestBuilder<Array<BaseEntry>> {
		let request: ArrayRequestBuilder<BaseEntry> = ArrayRequestBuilder<BaseEntry>(service: "baseentry", action: "getByIds")
			.setBody(key: "entryIds", value: entryIds)

		return request
	}

	/**  This action delivers entry-related data, based on the user's context: access
	  control, restriction, playback format and storage information.  */
	public static func getContextData(entryId: String, contextDataParams: EntryContextDataParams) -> RequestBuilder<EntryContextDataResult> {
		let request: RequestBuilder<EntryContextDataResult> = RequestBuilder<EntryContextDataResult>(service: "baseentry", action: "getContextData")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "contextDataParams", value: contextDataParams)

		return request
	}

	/**  This action delivers all data relevant for player  */
	public static func getPlaybackContext(entryId: String, contextDataParams: PlaybackContextOptions) -> RequestBuilder<PlaybackContext> {
		let request: RequestBuilder<PlaybackContext> = RequestBuilder<PlaybackContext>(service: "baseentry", action: "getPlaybackContext")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "contextDataParams", value: contextDataParams)

		return request
	}

	/**  Get remote storage existing paths for the asset.  */
	public static func getRemotePaths(entryId: String) -> RequestBuilder<RemotePathListResponse> {
		let request: RequestBuilder<RemotePathListResponse> = RequestBuilder<RemotePathListResponse>(service: "baseentry", action: "getRemotePaths")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func index(id: String) -> RequestBuilder<Int> {
		return index(id: id, shouldUpdate: true)
	}

	/**  Index an entry by id.  */
	public static func index(id: String, shouldUpdate: Bool?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "baseentry", action: "index")
			.setBody(key: "id", value: id)
			.setBody(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public static func list() -> RequestBuilder<BaseEntryListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: BaseEntryFilter?) -> RequestBuilder<BaseEntryListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List base entries by filter with paging support.  */
	public static func list(filter: BaseEntryFilter?, pager: FilterPager?) -> RequestBuilder<BaseEntryListResponse> {
		let request: RequestBuilder<BaseEntryListResponse> = RequestBuilder<BaseEntryListResponse>(service: "baseentry", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listByReferenceId(refId: String) -> RequestBuilder<BaseEntryListResponse> {
		return listByReferenceId(refId: refId, pager: nil)
	}

	/**  List base entries by filter according to reference id  */
	public static func listByReferenceId(refId: String, pager: FilterPager?) -> RequestBuilder<BaseEntryListResponse> {
		let request: RequestBuilder<BaseEntryListResponse> = RequestBuilder<BaseEntryListResponse>(service: "baseentry", action: "listByReferenceId")
			.setBody(key: "refId", value: refId)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listFlags(entryId: String) -> RequestBuilder<ModerationFlagListResponse> {
		return listFlags(entryId: entryId, pager: nil)
	}

	/**  List all pending flags for the entry.  */
	public static func listFlags(entryId: String, pager: FilterPager?) -> RequestBuilder<ModerationFlagListResponse> {
		let request: RequestBuilder<ModerationFlagListResponse> = RequestBuilder<ModerationFlagListResponse>(service: "baseentry", action: "listFlags")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Reject the entry and mark the pending flags (if any) as moderated (this will
	  make the entry non-playable).  */
	public static func reject(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "baseentry", action: "reject")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Update base entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, baseEntry: BaseEntry) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "baseEntry", value: baseEntry)

		return request
	}

	public static func updateContent(entryId: String, resource: Resource) -> RequestBuilder<BaseEntry> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: nil)
	}

	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?) -> RequestBuilder<BaseEntry> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: conversionProfileId, advancedOptions: nil)
	}

	/**  Update the content resource associated with the entry.  */
	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?, advancedOptions: EntryReplacementOptions?) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "updateContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "advancedOptions", value: advancedOptions)

		return request
	}

	/**  Update entry thumbnail from a different entry by a specified time offset (in
	  seconds).  */
	public static func updateThumbnailFromSourceEntry(entryId: String, sourceEntryId: String, timeOffset: Int) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "updateThumbnailFromSourceEntry")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "timeOffset", value: timeOffset)

		return request
	}

	/**  Update entry thumbnail using url.  */
	public static func updateThumbnailFromUrl(entryId: String, url: String) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "updateThumbnailFromUrl")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "url", value: url)

		return request
	}

	/**  Update entry thumbnail using a raw jpeg file.  */
	public static func updateThumbnailJpeg(entryId: String, fileData: RequestFile) -> RequestBuilder<BaseEntry> {
		let request: RequestBuilder<BaseEntry> = RequestBuilder<BaseEntry>(service: "baseentry", action: "updateThumbnailJpeg")
			.setBody(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	/**  Upload a file to Kaltura, that can be used to create an entry.  */
	public static func upload(fileData: RequestFile) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "baseentry", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
