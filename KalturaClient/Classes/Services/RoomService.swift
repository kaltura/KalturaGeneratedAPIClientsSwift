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
// Copyright (C) 2006-2023  Kaltura Inc.
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

public final class RoomService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func entry<T: RoomEntry.RoomEntryTokenizer>() -> T {
			return T(self.append("entry"))
		}
	}

	public static func add(entry: RoomEntry) -> RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, AddTokenizer> = RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, AddTokenizer>(service: "room_room", action: "add")
			.setParam(key: "entry", value: entry)

		return request
	}

	public class AttachRecordedEntryTokenizer: ClientTokenizer  {
		
		public var roomEntryId: BaseTokenizedObject {
			get {
				return self.append("roomEntryId") 
			}
		}
		
		public var mediaEntryId: BaseTokenizedObject {
			get {
				return self.append("mediaEntryId") 
			}
		}
	}

	public static func attachRecordedEntry(roomEntryId: String, mediaEntryId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AttachRecordedEntryTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AttachRecordedEntryTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AttachRecordedEntryTokenizer>(service: "room_room", action: "attachRecordedEntry")
			.setParam(key: "roomEntryId", value: roomEntryId)
			.setParam(key: "mediaEntryId", value: mediaEntryId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var roomId: BaseTokenizedObject {
			get {
				return self.append("roomId") 
			}
		}
	}

	public static func delete(roomId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "room_room", action: "delete")
			.setParam(key: "roomId", value: roomId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var roomId: BaseTokenizedObject {
			get {
				return self.append("roomId") 
			}
		}
	}

	public static func get(roomId: String) -> RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, GetTokenizer> = RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, GetTokenizer>(service: "room_room", action: "get")
			.setParam(key: "roomId", value: roomId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: RoomEntryFilter.RoomEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<RoomEntryListResponse, RoomEntryListResponse.RoomEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: RoomEntryFilter?) -> RequestBuilder<RoomEntryListResponse, RoomEntryListResponse.RoomEntryListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: RoomEntryFilter?, pager: FilterPager?) -> RequestBuilder<RoomEntryListResponse, RoomEntryListResponse.RoomEntryListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<RoomEntryListResponse, RoomEntryListResponse.RoomEntryListResponseTokenizer, ListTokenizer> = RequestBuilder<RoomEntryListResponse, RoomEntryListResponse.RoomEntryListResponseTokenizer, ListTokenizer>(service: "room_room", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var roomId: BaseTokenizedObject {
			get {
				return self.append("roomId") 
			}
		}
		
		public func room<T: RoomEntry.RoomEntryTokenizer>() -> T {
			return T(self.append("room"))
		}
	}

	public static func update(roomId: String, room: RoomEntry) -> RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, UpdateTokenizer> = RequestBuilder<RoomEntry, RoomEntry.RoomEntryTokenizer, UpdateTokenizer>(service: "room_room", action: "update")
			.setParam(key: "roomId", value: roomId)
			.setParam(key: "room", value: room)

		return request
	}
}
