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

/**  Live Channel service lets you manage live channels  */
public final class LiveChannelService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func liveChannel<T: LiveChannel.LiveChannelTokenizer>() -> T {
			return T(self.append("liveChannel"))
		}
	}

	/**  Adds new live channel.  */
	public static func add(liveChannel: LiveChannel) -> RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, AddTokenizer> {
		let request: RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, AddTokenizer> = RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, AddTokenizer>(service: "livechannel", action: "add")
			.setParam(key: "liveChannel", value: liveChannel)

		return request
	}

	public class AppendRecordingTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var mediaServerIndex: BaseTokenizedObject {
			get {
				return self.append("mediaServerIndex") 
			}
		}
		
		public func resource<T: DataCenterContentResource.DataCenterContentResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var isLastChunk: BaseTokenizedObject {
			get {
				return self.append("isLastChunk") 
			}
		}
	}

	public static func appendRecording(entryId: String, assetId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, AppendRecordingTokenizer> {
		return appendRecording(entryId: entryId, assetId: assetId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, isLastChunk: false)
	}

	/**  Append recorded video to live entry  */
	public static func appendRecording(entryId: String, assetId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, isLastChunk: Bool?) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, AppendRecordingTokenizer> {
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, AppendRecordingTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, AppendRecordingTokenizer>(service: "livechannel", action: "appendRecording")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "resource", value: resource)
			.setParam(key: "duration", value: duration)
			.setParam(key: "isLastChunk", value: isLastChunk)

		return request
	}

	public class CreateRecordedEntryTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var mediaServerIndex: BaseTokenizedObject {
			get {
				return self.append("mediaServerIndex") 
			}
		}
		
		public var liveEntryStatus: BaseTokenizedObject {
			get {
				return self.append("liveEntryStatus") 
			}
		}
	}

	/**  Create recorded entry id if it doesn't exist and make sure it happens on the DC
	  that the live entry was created on.  */
	public static func createRecordedEntry(entryId: String, mediaServerIndex: EntryServerNodeType, liveEntryStatus: EntryServerNodeStatus) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, CreateRecordedEntryTokenizer> {
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, CreateRecordedEntryTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, CreateRecordedEntryTokenizer>(service: "livechannel", action: "createRecordedEntry")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "liveEntryStatus", value: liveEntryStatus.rawValue)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete a live channel.  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "livechannel", action: "delete")
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

	/**  Get live channel by ID.  */
	public static func get(id: String) -> RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, GetTokenizer> {
		let request: RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, GetTokenizer> = RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, GetTokenizer>(service: "livechannel", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class IsLiveTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delivering the status of a live channel (on-air/offline)  */
	public static func isLive(id: String) -> RequestBuilder<Bool, BaseTokenizedObject, IsLiveTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, IsLiveTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, IsLiveTokenizer>(service: "livechannel", action: "isLive")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: LiveChannelFilter.LiveChannelFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<LiveChannelListResponse, LiveChannelListResponse.LiveChannelListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: LiveChannelFilter?) -> RequestBuilder<LiveChannelListResponse, LiveChannelListResponse.LiveChannelListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List live channels by filter with paging support.  */
	public static func list(filter: LiveChannelFilter?, pager: FilterPager?) -> RequestBuilder<LiveChannelListResponse, LiveChannelListResponse.LiveChannelListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<LiveChannelListResponse, LiveChannelListResponse.LiveChannelListResponseTokenizer, ListTokenizer> = RequestBuilder<LiveChannelListResponse, LiveChannelListResponse.LiveChannelListResponseTokenizer, ListTokenizer>(service: "livechannel", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RegisterMediaServerTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var hostname: BaseTokenizedObject {
			get {
				return self.append("hostname") 
			}
		}
		
		public var mediaServerIndex: BaseTokenizedObject {
			get {
				return self.append("mediaServerIndex") 
			}
		}
		
		public var applicationName: BaseTokenizedObject {
			get {
				return self.append("applicationName") 
			}
		}
		
		public var liveEntryStatus: BaseTokenizedObject {
			get {
				return self.append("liveEntryStatus") 
			}
		}
		
		public var shouldCreateRecordedEntry: BaseTokenizedObject {
			get {
				return self.append("shouldCreateRecordedEntry") 
			}
		}
	}

	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer> {
		return registerMediaServer(entryId: entryId, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: nil)
	}

	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType, applicationName: String?) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer> {
		return registerMediaServer(entryId: entryId, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: applicationName, liveEntryStatus: EntryServerNodeStatus(rawValue: 1))
	}

	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType, applicationName: String?, liveEntryStatus: EntryServerNodeStatus?) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer> {
		return registerMediaServer(entryId: entryId, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: applicationName, liveEntryStatus: liveEntryStatus, shouldCreateRecordedEntry: true)
	}

	/**  Register media server to live entry  */
	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType, applicationName: String?, liveEntryStatus: EntryServerNodeStatus?, shouldCreateRecordedEntry: Bool?) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer> {
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer>(service: "livechannel", action: "registerMediaServer")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "hostname", value: hostname)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "applicationName", value: applicationName)
			.setParam(key: "liveEntryStatus", value: liveEntryStatus?.rawValue)
			.setParam(key: "shouldCreateRecordedEntry", value: shouldCreateRecordedEntry)

		return request
	}

	public class SetRecordedContentTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var mediaServerIndex: BaseTokenizedObject {
			get {
				return self.append("mediaServerIndex") 
			}
		}
		
		public func resource<T: DataCenterContentResource.DataCenterContentResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var recordedEntryId: BaseTokenizedObject {
			get {
				return self.append("recordedEntryId") 
			}
		}
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
	}

	public static func setRecordedContent(entryId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer> {
		return setRecordedContent(entryId: entryId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, recordedEntryId: nil)
	}

	public static func setRecordedContent(entryId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, recordedEntryId: String?) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer> {
		return setRecordedContent(entryId: entryId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, recordedEntryId: recordedEntryId, flavorParamsId: nil)
	}

	/**  Set recorded video to live entry  */
	public static func setRecordedContent(entryId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, recordedEntryId: String?, flavorParamsId: Int?) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer> {
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer>(service: "livechannel", action: "setRecordedContent")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "resource", value: resource)
			.setParam(key: "duration", value: duration)
			.setParam(key: "recordedEntryId", value: recordedEntryId)
			.setParam(key: "flavorParamsId", value: flavorParamsId)

		return request
	}

	public class UnregisterMediaServerTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var hostname: BaseTokenizedObject {
			get {
				return self.append("hostname") 
			}
		}
		
		public var mediaServerIndex: BaseTokenizedObject {
			get {
				return self.append("mediaServerIndex") 
			}
		}
	}

	/**  Unregister media server from live entry  */
	public static func unregisterMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, UnregisterMediaServerTokenizer> {
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, UnregisterMediaServerTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, UnregisterMediaServerTokenizer>(service: "livechannel", action: "unregisterMediaServer")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "hostname", value: hostname)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func liveChannel<T: LiveChannel.LiveChannelTokenizer>() -> T {
			return T(self.append("liveChannel"))
		}
	}

	/**  Update live channel. Only the properties that were set will be updated.  */
	public static func update(id: String, liveChannel: LiveChannel) -> RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, UpdateTokenizer> = RequestBuilder<LiveChannel, LiveChannel.LiveChannelTokenizer, UpdateTokenizer>(service: "livechannel", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "liveChannel", value: liveChannel)

		return request
	}

	public class ValidateRegisteredMediaServersTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Validates all registered media servers  */
	public static func validateRegisteredMediaServers(entryId: String) -> NullRequestBuilder<ValidateRegisteredMediaServersTokenizer> {
		let request: NullRequestBuilder<ValidateRegisteredMediaServersTokenizer> = NullRequestBuilder<ValidateRegisteredMediaServersTokenizer>(service: "livechannel", action: "validateRegisteredMediaServers")
			.setParam(key: "entryId", value: entryId)

		return request
	}
}
