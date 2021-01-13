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

/**  A Mix is an XML unique format invented by Kaltura, it allows the user to create
  a mix of videos and images, in and out points, transitions, text overlays,
  soundtrack, effects and much more...  Mixing service lets you create a new mix,
  manage its metadata and make basic manipulations.  */
public final class MixingService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func mixEntry<T: MixEntry.MixEntryTokenizer>() -> T {
			return T(self.append("mixEntry"))
		}
	}

	/**  Adds a new mix.   If the dataContent is null, a default timeline will be
	  created.  */
	public static func add(mixEntry: MixEntry) -> RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, AddTokenizer> = RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, AddTokenizer>(service: "mixing", action: "add")
			.setParam(key: "mixEntry", value: mixEntry)

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

	/**  Anonymously rank a mix entry, no validation is done on duplicate rankings  */
	public static func anonymousRank(entryId: String, rank: Int) -> NullRequestBuilder<AnonymousRankTokenizer> {
		let request: NullRequestBuilder<AnonymousRankTokenizer> = NullRequestBuilder<AnonymousRankTokenizer>(service: "mixing", action: "anonymousRank")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "rank", value: rank)

		return request
	}

	public class AppendMediaEntryTokenizer: ClientTokenizer  {
		
		public var mixEntryId: BaseTokenizedObject {
			get {
				return self.append("mixEntryId") 
			}
		}
		
		public var mediaEntryId: BaseTokenizedObject {
			get {
				return self.append("mediaEntryId") 
			}
		}
	}

	/**  Appends a media entry to the end of the mix timeline, this will save the mix
	  timeline as a new version.  */
	public static func appendMediaEntry(mixEntryId: String, mediaEntryId: String) -> RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, AppendMediaEntryTokenizer> {
		let request: RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, AppendMediaEntryTokenizer> = RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, AppendMediaEntryTokenizer>(service: "mixing", action: "appendMediaEntry")
			.setParam(key: "mixEntryId", value: mixEntryId)
			.setParam(key: "mediaEntryId", value: mediaEntryId)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Clones an existing mix.  */
	public static func clone(entryId: String) -> RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, CloneTokenizer> {
		let request: RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, CloneTokenizer> = RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, CloneTokenizer>(service: "mixing", action: "clone")
			.setParam(key: "entryId", value: entryId)

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

	/**  Count mix entries by filter.  */
	public static func count(filter: MediaEntryFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "mixing", action: "count")
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

	/**  Delete a mix entry.  */
	public static func delete(entryId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "mixing", action: "delete")
			.setParam(key: "entryId", value: entryId)

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

	public static func get(entryId: String) -> RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, GetTokenizer> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get mix entry by id.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, GetTokenizer> = RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, GetTokenizer>(service: "mixing", action: "get")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "version", value: version)

		return request
	}

	public class GetMixesByMediaIdTokenizer: ClientTokenizer  {
		
		public var mediaEntryId: BaseTokenizedObject {
			get {
				return self.append("mediaEntryId") 
			}
		}
	}

	/**  Get the mixes in which the media entry is included  */
	public static func getMixesByMediaId(mediaEntryId: String) -> ArrayRequestBuilder<MixEntry, ArrayTokenizedObject<MixEntry.MixEntryTokenizer>, GetMixesByMediaIdTokenizer> {
		let request: ArrayRequestBuilder<MixEntry, ArrayTokenizedObject<MixEntry.MixEntryTokenizer>, GetMixesByMediaIdTokenizer> = ArrayRequestBuilder<MixEntry, ArrayTokenizedObject<MixEntry.MixEntryTokenizer>, GetMixesByMediaIdTokenizer>(service: "mixing", action: "getMixesByMediaId")
			.setParam(key: "mediaEntryId", value: mediaEntryId)

		return request
	}

	public class GetReadyMediaEntriesTokenizer: ClientTokenizer  {
		
		public var mixId: BaseTokenizedObject {
			get {
				return self.append("mixId") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public static func getReadyMediaEntries(mixId: String) -> ArrayRequestBuilder<MediaEntry, ArrayTokenizedObject<MediaEntry.MediaEntryTokenizer>, GetReadyMediaEntriesTokenizer> {
		return getReadyMediaEntries(mixId: mixId, version: -1)
	}

	/**  Get all ready media entries that exist in the given mix id  */
	public static func getReadyMediaEntries(mixId: String, version: Int?) -> ArrayRequestBuilder<MediaEntry, ArrayTokenizedObject<MediaEntry.MediaEntryTokenizer>, GetReadyMediaEntriesTokenizer> {
		let request: ArrayRequestBuilder<MediaEntry, ArrayTokenizedObject<MediaEntry.MediaEntryTokenizer>, GetReadyMediaEntriesTokenizer> = ArrayRequestBuilder<MediaEntry, ArrayTokenizedObject<MediaEntry.MediaEntryTokenizer>, GetReadyMediaEntriesTokenizer>(service: "mixing", action: "getReadyMediaEntries")
			.setParam(key: "mixId", value: mixId)
			.setParam(key: "version", value: version)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: MixEntryFilter.MixEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<MixListResponse, MixListResponse.MixListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: MixEntryFilter?) -> RequestBuilder<MixListResponse, MixListResponse.MixListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List entries by filter with paging support.   Return parameter is an array of
	  mix entries.  */
	public static func list(filter: MixEntryFilter?, pager: FilterPager?) -> RequestBuilder<MixListResponse, MixListResponse.MixListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<MixListResponse, MixListResponse.MixListResponseTokenizer, ListTokenizer> = RequestBuilder<MixListResponse, MixListResponse.MixListResponseTokenizer, ListTokenizer>(service: "mixing", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func mixEntry<T: MixEntry.MixEntryTokenizer>() -> T {
			return T(self.append("mixEntry"))
		}
	}

	/**  Update mix entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, mixEntry: MixEntry) -> RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, UpdateTokenizer> = RequestBuilder<MixEntry, MixEntry.MixEntryTokenizer, UpdateTokenizer>(service: "mixing", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "mixEntry", value: mixEntry)

		return request
	}
}
