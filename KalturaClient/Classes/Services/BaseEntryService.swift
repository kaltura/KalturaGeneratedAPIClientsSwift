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

/**  Base Entry Service  */
public final class BaseEntryService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func entry<T: BaseEntry.BaseEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	public static func add(entry: BaseEntry) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddTokenizer> {
		return add(entry: entry, type: nil)
	}

	/**  Generic add entry, should be used when the uploaded entry type is not known.  */
	public static func add(entry: BaseEntry, type: EntryType?) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddTokenizer>(service: "baseentry", action: "add")
			.setParam(key: "entry", value: entry)
			.setParam(key: "type", value: type?.rawValue)

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

	/**  Attach content resource to entry in status NO_MEDIA  */
	public static func addContent(entryId: String, resource: Resource) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddContentTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddContentTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddContentTokenizer>(service: "baseentry", action: "addContent")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "resource", value: resource)

		return request
	}

	public class AddFromUploadedFileTokenizer: ClientTokenizer  {
		
		public func entry<T: BaseEntry.BaseEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
	}

	public static func addFromUploadedFile(entry: BaseEntry, uploadTokenId: String) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddFromUploadedFileTokenizer> {
		return addFromUploadedFile(entry: entry, uploadTokenId: uploadTokenId, type: nil)
	}

	/**  Generic add entry using an uploaded file, should be used when the uploaded entry
	  type is not known.  */
	public static func addFromUploadedFile(entry: BaseEntry, uploadTokenId: String, type: EntryType?) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddFromUploadedFileTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddFromUploadedFileTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, AddFromUploadedFileTokenizer>(service: "baseentry", action: "addFromUploadedFile")
			.setParam(key: "entry", value: entry)
			.setParam(key: "uploadTokenId", value: uploadTokenId)
			.setParam(key: "type", value: type?.rawValue)

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

	/**  Anonymously rank an entry, no validation is done on duplicate rankings.  */
	public static func anonymousRank(entryId: String, rank: Int) -> NullRequestBuilder<AnonymousRankTokenizer> {
		let request: NullRequestBuilder<AnonymousRankTokenizer> = NullRequestBuilder<AnonymousRankTokenizer>(service: "baseentry", action: "anonymousRank")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "rank", value: rank)

		return request
	}

	public class ApproveTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Approve the entry and mark the pending flags (if any) as moderated (this will
	  make the entry playable).  */
	public static func approve(entryId: String) -> NullRequestBuilder<ApproveTokenizer> {
		let request: NullRequestBuilder<ApproveTokenizer> = NullRequestBuilder<ApproveTokenizer>(service: "baseentry", action: "approve")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var cloneOptions: ArrayTokenizedObject<BaseEntryCloneOptionItem.BaseEntryCloneOptionItemTokenizer> {
			get {
				return ArrayTokenizedObject<BaseEntryCloneOptionItem.BaseEntryCloneOptionItemTokenizer>(self.append("cloneOptions"))
			} 
		}
	}

	public static func clone(entryId: String) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, CloneTokenizer> {
		return clone(entryId: entryId, cloneOptions: nil)
	}

	/**  Clone an entry with optional attributes to apply to the clone  */
	public static func clone(entryId: String, cloneOptions: Array<BaseEntryCloneOptionItem>?) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, CloneTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, CloneTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, CloneTokenizer>(service: "baseentry", action: "clone")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "cloneOptions", value: cloneOptions)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: BaseEntryFilter.BaseEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  Count base entries by filter.  */
	public static func count(filter: BaseEntryFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "baseentry", action: "count")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete an entry.  */
	public static func delete(entryId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "baseentry", action: "delete")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class ExportTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var storageProfileId: BaseTokenizedObject {
			get {
				return self.append("storageProfileId") 
			}
		}
	}

	public static func export(entryId: String, storageProfileId: Int) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, ExportTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, ExportTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, ExportTokenizer>(service: "baseentry", action: "export")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "storageProfileId", value: storageProfileId)

		return request
	}

	public class FlagTokenizer: ClientTokenizer  {
		
		public func moderationFlag<T: ModerationFlag.ModerationFlagTokenizer>() -> T {
			return T(self.append("moderationFlag"))
		}
	}

	/**  Flag inappropriate entry for moderation.  */
	public static func flag(moderationFlag: ModerationFlag) -> NullRequestBuilder<FlagTokenizer> {
		let request: NullRequestBuilder<FlagTokenizer> = NullRequestBuilder<FlagTokenizer>(service: "baseentry", action: "flag")
			.setParam(key: "moderationFlag", value: moderationFlag)

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

	public static func get(entryId: String) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, GetTokenizer> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get base entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, GetTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, GetTokenizer>(service: "baseentry", action: "get")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "version", value: version)

		return request
	}

	public class GetByIdsTokenizer: ClientTokenizer  {
		
		public var entryIds: BaseTokenizedObject {
			get {
				return self.append("entryIds") 
			}
		}
	}

	/**  Get an array of KalturaBaseEntry objects by a comma-separated list of ids.  */
	public static func getByIds(entryIds: String) -> ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, GetByIdsTokenizer> {
		let request: ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, GetByIdsTokenizer> = ArrayRequestBuilder<BaseEntry, ArrayTokenizedObject<BaseEntry.BaseEntryTokenizer>, GetByIdsTokenizer>(service: "baseentry", action: "getByIds")
			.setParam(key: "entryIds", value: entryIds)

		return request
	}

	public class GetContextDataTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func contextDataParams<T: EntryContextDataParams.EntryContextDataParamsTokenizer>() -> T {
			return T(self.append("contextDataParams"))
		}
	}

	/**  This action delivers entry-related data, based on the user's context: access
	  control, restriction, playback format and storage information.  */
	public static func getContextData(entryId: String, contextDataParams: EntryContextDataParams) -> RequestBuilder<EntryContextDataResult, EntryContextDataResult.EntryContextDataResultTokenizer, GetContextDataTokenizer> {
		let request: RequestBuilder<EntryContextDataResult, EntryContextDataResult.EntryContextDataResultTokenizer, GetContextDataTokenizer> = RequestBuilder<EntryContextDataResult, EntryContextDataResult.EntryContextDataResultTokenizer, GetContextDataTokenizer>(service: "baseentry", action: "getContextData")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "contextDataParams", value: contextDataParams)

		return request
	}

	public class GetPlaybackContextTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func contextDataParams<T: PlaybackContextOptions.PlaybackContextOptionsTokenizer>() -> T {
			return T(self.append("contextDataParams"))
		}
	}

	/**  This action delivers all data relevant for player  */
	public static func getPlaybackContext(entryId: String, contextDataParams: PlaybackContextOptions) -> RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> {
		let request: RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer> = RequestBuilder<PlaybackContext, PlaybackContext.PlaybackContextTokenizer, GetPlaybackContextTokenizer>(service: "baseentry", action: "getPlaybackContext")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "contextDataParams", value: contextDataParams)

		return request
	}

	public class GetRemotePathsTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Get remote storage existing paths for the asset.  */
	public static func getRemotePaths(entryId: String) -> RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> {
		let request: RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer> = RequestBuilder<RemotePathListResponse, RemotePathListResponse.RemotePathListResponseTokenizer, GetRemotePathsTokenizer>(service: "baseentry", action: "getRemotePaths")
			.setParam(key: "entryId", value: entryId)

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

	public static func index(id: String) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		return index(id: id, shouldUpdate: true)
	}

	/**  Index an entry by id.  */
	public static func index(id: String, shouldUpdate: Bool?) -> RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer> = RequestBuilder<Int, BaseTokenizedObject, IndexTokenizer>(service: "baseentry", action: "index")
			.setParam(key: "id", value: id)
			.setParam(key: "shouldUpdate", value: shouldUpdate)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BaseEntryFilter.BaseEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: BaseEntryFilter?) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List base entries by filter with paging support.  */
	public static func list(filter: BaseEntryFilter?, pager: FilterPager?) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListTokenizer> = RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListTokenizer>(service: "baseentry", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class ListByReferenceIdTokenizer: ClientTokenizer  {
		
		public var refId: BaseTokenizedObject {
			get {
				return self.append("refId") 
			}
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listByReferenceId(refId: String) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListByReferenceIdTokenizer> {
		return listByReferenceId(refId: refId, pager: nil)
	}

	/**  List base entries by filter according to reference id  */
	public static func listByReferenceId(refId: String, pager: FilterPager?) -> RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListByReferenceIdTokenizer> {
		let request: RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListByReferenceIdTokenizer> = RequestBuilder<BaseEntryListResponse, BaseEntryListResponse.BaseEntryListResponseTokenizer, ListByReferenceIdTokenizer>(service: "baseentry", action: "listByReferenceId")
			.setParam(key: "refId", value: refId)
			.setParam(key: "pager", value: pager)

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

	/**  List all pending flags for the entry.  */
	public static func listFlags(entryId: String, pager: FilterPager?) -> RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer> {
		let request: RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer> = RequestBuilder<ModerationFlagListResponse, ModerationFlagListResponse.ModerationFlagListResponseTokenizer, ListFlagsTokenizer>(service: "baseentry", action: "listFlags")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RejectTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Reject the entry and mark the pending flags (if any) as moderated (this will
	  make the entry non-playable).  */
	public static func reject(entryId: String) -> NullRequestBuilder<RejectTokenizer> {
		let request: NullRequestBuilder<RejectTokenizer> = NullRequestBuilder<RejectTokenizer>(service: "baseentry", action: "reject")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func baseEntry<T: BaseEntry.BaseEntryTokenizer>() -> T {
			return T(self.append("baseEntry"))
		}
	}

	/**  Update base entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, baseEntry: BaseEntry) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateTokenizer>(service: "baseentry", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "baseEntry", value: baseEntry)

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

	public static func updateContent(entryId: String, resource: Resource) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateContentTokenizer> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: nil)
	}

	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateContentTokenizer> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: conversionProfileId, advancedOptions: nil)
	}

	/**  Update the content resource associated with the entry.  */
	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?, advancedOptions: EntryReplacementOptions?) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateContentTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateContentTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateContentTokenizer>(service: "baseentry", action: "updateContent")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "resource", value: resource)
			.setParam(key: "conversionProfileId", value: conversionProfileId)
			.setParam(key: "advancedOptions", value: advancedOptions)

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
	}

	/**  Update entry thumbnail from a different entry by a specified time offset (in
	  seconds).  */
	public static func updateThumbnailFromSourceEntry(entryId: String, sourceEntryId: String, timeOffset: Int) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromSourceEntryTokenizer>(service: "baseentry", action: "updateThumbnailFromSourceEntry")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "sourceEntryId", value: sourceEntryId)
			.setParam(key: "timeOffset", value: timeOffset)

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

	/**  Update entry thumbnail using url.  */
	public static func updateThumbnailFromUrl(entryId: String, url: String) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromUrlTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromUrlTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailFromUrlTokenizer>(service: "baseentry", action: "updateThumbnailFromUrl")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "url", value: url)

		return request
	}

	public class UpdateThumbnailJpegTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Update entry thumbnail using a raw jpeg file.  */
	public static func updateThumbnailJpeg(entryId: String, fileData: RequestFile) -> RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailJpegTokenizer> {
		let request: RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailJpegTokenizer> = RequestBuilder<BaseEntry, BaseEntry.BaseEntryTokenizer, UpdateThumbnailJpegTokenizer>(service: "baseentry", action: "updateThumbnailJpeg")
			.setParam(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	public class UploadTokenizer: ClientTokenizer  {
	}

	/**  Upload a file to Kaltura, that can be used to create an entry.  */
	public static func upload(fileData: RequestFile) -> RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> = RequestBuilder<String, BaseTokenizedObject, UploadTokenizer>(service: "baseentry", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
