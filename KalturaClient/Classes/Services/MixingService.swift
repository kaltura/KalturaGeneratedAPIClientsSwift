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

/**  A Mix is an XML unique format invented by Kaltura, it allows the user to create
  a mix of videos and images, in and out points, transitions, text overlays,
  soundtrack, effects and much more...  Mixing service lets you create a new mix,
  manage its metadata and make basic manipulations.  */
public final class MixingService{

	/**  Adds a new mix.   If the dataContent is null, a default timeline will be
	  created.  */
	public static func add(mixEntry: MixEntry) -> RequestBuilder<MixEntry> {
		let request: RequestBuilder<MixEntry> = RequestBuilder<MixEntry>(service: "mixing", action: "add")
			.setBody(key: "mixEntry", value: mixEntry)

		return request
	}

	/**  Anonymously rank a mix entry, no validation is done on duplicate rankings  */
	public static func anonymousRank(entryId: String, rank: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "mixing", action: "anonymousRank")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "rank", value: rank)

		return request
	}

	/**  Appends a media entry to a the end of the mix timeline, this will save the mix
	  timeline as a new version.  */
	public static func appendMediaEntry(mixEntryId: String, mediaEntryId: String) -> RequestBuilder<MixEntry> {
		let request: RequestBuilder<MixEntry> = RequestBuilder<MixEntry>(service: "mixing", action: "appendMediaEntry")
			.setBody(key: "mixEntryId", value: mixEntryId)
			.setBody(key: "mediaEntryId", value: mediaEntryId)

		return request
	}

	/**  Clones an existing mix.  */
	public static func clone(entryId: String) -> RequestBuilder<MixEntry> {
		let request: RequestBuilder<MixEntry> = RequestBuilder<MixEntry>(service: "mixing", action: "clone")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func count() -> RequestBuilder<Int> {
		return count(filter: nil)
	}

	/**  Count mix entries by filter.  */
	public static func count(filter: MediaEntryFilter?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "mixing", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  Delete a mix entry.  */
	public static func delete(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "mixing", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func get(entryId: String) -> RequestBuilder<MixEntry> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get mix entry by id.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<MixEntry> {
		let request: RequestBuilder<MixEntry> = RequestBuilder<MixEntry>(service: "mixing", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	/**  Get the mixes in which the media entry is included  */
	public static func getMixesByMediaId(mediaEntryId: String) -> RequestBuilder<Array<MixEntry>> {
		let request: ArrayRequestBuilder<MixEntry> = ArrayRequestBuilder<MixEntry>(service: "mixing", action: "getMixesByMediaId")
			.setBody(key: "mediaEntryId", value: mediaEntryId)

		return request
	}

	public static func getReadyMediaEntries(mixId: String) -> RequestBuilder<Array<MediaEntry>> {
		return getReadyMediaEntries(mixId: mixId, version: -1)
	}

	/**  Get all ready media entries that exist in the given mix id  */
	public static func getReadyMediaEntries(mixId: String, version: Int?) -> RequestBuilder<Array<MediaEntry>> {
		let request: ArrayRequestBuilder<MediaEntry> = ArrayRequestBuilder<MediaEntry>(service: "mixing", action: "getReadyMediaEntries")
			.setBody(key: "mixId", value: mixId)
			.setBody(key: "version", value: version)

		return request
	}

	public static func list() -> RequestBuilder<MixListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: MixEntryFilter?) -> RequestBuilder<MixListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List entries by filter with paging support.   Return parameter is an array of
	  mix entries.  */
	public static func list(filter: MixEntryFilter?, pager: FilterPager?) -> RequestBuilder<MixListResponse> {
		let request: RequestBuilder<MixListResponse> = RequestBuilder<MixListResponse>(service: "mixing", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update mix entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, mixEntry: MixEntry) -> RequestBuilder<MixEntry> {
		let request: RequestBuilder<MixEntry> = RequestBuilder<MixEntry>(service: "mixing", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "mixEntry", value: mixEntry)

		return request
	}
}
