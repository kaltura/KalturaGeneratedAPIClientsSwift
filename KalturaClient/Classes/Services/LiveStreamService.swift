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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Live Stream service lets you manage live stream entries  */
public final class LiveStreamService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func liveStreamEntry<T: LiveStreamEntry.LiveStreamEntryTokenizer>() -> T {
			return T(self.append("liveStreamEntry"))
		}
		
		public var sourceType: BaseTokenizedObject {
			get {
				return self.append("sourceType") 
			}
		}
	}

	public static func add(liveStreamEntry: LiveStreamEntry) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddTokenizer> {
		return add(liveStreamEntry: liveStreamEntry, sourceType: nil)
	}

	/**  Adds new live stream entry.   The entry will be queued for provision.  */
	public static func add(liveStreamEntry: LiveStreamEntry, sourceType: SourceType?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddTokenizer>(service: "livestream", action: "add")
			.setParam(key: "liveStreamEntry", value: liveStreamEntry)
			.setParam(key: "sourceType", value: sourceType?.rawValue)

		return request
	}

	public class AddLiveStreamPushPublishConfigurationTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public func liveStreamConfiguration<T: LiveStreamConfiguration.LiveStreamConfigurationTokenizer>() -> T {
			return T(self.append("liveStreamConfiguration"))
		}
	}

	public static func addLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddLiveStreamPushPublishConfigurationTokenizer> {
		return addLiveStreamPushPublishConfiguration(entryId: entryId, protocol_: protocol_, url: nil)
	}

	public static func addLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol, url: String?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddLiveStreamPushPublishConfigurationTokenizer> {
		return addLiveStreamPushPublishConfiguration(entryId: entryId, protocol_: protocol_, url: url, liveStreamConfiguration: nil)
	}

	/**  Add new pushPublish configuration to entry  */
	public static func addLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol, url: String?, liveStreamConfiguration: LiveStreamConfiguration?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddLiveStreamPushPublishConfigurationTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddLiveStreamPushPublishConfigurationTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AddLiveStreamPushPublishConfigurationTokenizer>(service: "livestream", action: "addLiveStreamPushPublishConfiguration")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "protocol", value: protocol_.rawValue)
			.setParam(key: "url", value: url)
			.setParam(key: "liveStreamConfiguration", value: liveStreamConfiguration)

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
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, AppendRecordingTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, AppendRecordingTokenizer>(service: "livestream", action: "appendRecording")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "assetId", value: assetId)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "resource", value: resource)
			.setParam(key: "duration", value: duration)
			.setParam(key: "isLastChunk", value: isLastChunk)

		return request
	}

	public class AuthenticateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var token: BaseTokenizedObject {
			get {
				return self.append("token") 
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
	}

	public static func authenticate(entryId: String, token: String) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AuthenticateTokenizer> {
		return authenticate(entryId: entryId, token: token, hostname: nil)
	}

	public static func authenticate(entryId: String, token: String, hostname: String?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AuthenticateTokenizer> {
		return authenticate(entryId: entryId, token: token, hostname: hostname, mediaServerIndex: nil)
	}

	public static func authenticate(entryId: String, token: String, hostname: String?, mediaServerIndex: EntryServerNodeType?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AuthenticateTokenizer> {
		return authenticate(entryId: entryId, token: token, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: nil)
	}

	/**  Authenticate live-stream entry against stream token and partner limitations  */
	public static func authenticate(entryId: String, token: String, hostname: String?, mediaServerIndex: EntryServerNodeType?, applicationName: String?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AuthenticateTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AuthenticateTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, AuthenticateTokenizer>(service: "livestream", action: "authenticate")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "token", value: token)
			.setParam(key: "hostname", value: hostname)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex?.rawValue)
			.setParam(key: "applicationName", value: applicationName)

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
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, CreateRecordedEntryTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, CreateRecordedEntryTokenizer>(service: "livestream", action: "createRecordedEntry")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "liveEntryStatus", value: liveEntryStatus.rawValue)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete a live stream entry.  */
	public static func delete(entryId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "livestream", action: "delete")
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

	public static func get(entryId: String) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, GetTokenizer> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get live stream entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, GetTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, GetTokenizer>(service: "livestream", action: "get")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "version", value: version)

		return request
	}

	public class IsLiveTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
	}

	/**  Delivering the status of a live stream (on-air/offline) if it is possible  */
	public static func isLive(id: String, protocol_: PlaybackProtocol) -> RequestBuilder<Bool, BaseTokenizedObject, IsLiveTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, IsLiveTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, IsLiveTokenizer>(service: "livestream", action: "isLive")
			.setParam(key: "id", value: id)
			.setParam(key: "protocol", value: protocol_.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: LiveStreamEntryFilter.LiveStreamEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<LiveStreamListResponse, LiveStreamListResponse.LiveStreamListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: LiveStreamEntryFilter?) -> RequestBuilder<LiveStreamListResponse, LiveStreamListResponse.LiveStreamListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List live stream entries by filter with paging support.  */
	public static func list(filter: LiveStreamEntryFilter?, pager: FilterPager?) -> RequestBuilder<LiveStreamListResponse, LiveStreamListResponse.LiveStreamListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<LiveStreamListResponse, LiveStreamListResponse.LiveStreamListResponseTokenizer, ListTokenizer> = RequestBuilder<LiveStreamListResponse, LiveStreamListResponse.LiveStreamListResponseTokenizer, ListTokenizer>(service: "livestream", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RegenerateStreamTokenTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Regenerate new secure token for liveStream  */
	public static func regenerateStreamToken(entryId: String) -> RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegenerateStreamTokenTokenizer> {
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegenerateStreamTokenTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegenerateStreamTokenTokenizer>(service: "livestream", action: "regenerateStreamToken")
			.setParam(key: "entryId", value: entryId)

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
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, RegisterMediaServerTokenizer>(service: "livestream", action: "registerMediaServer")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "hostname", value: hostname)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setParam(key: "applicationName", value: applicationName)
			.setParam(key: "liveEntryStatus", value: liveEntryStatus?.rawValue)
			.setParam(key: "shouldCreateRecordedEntry", value: shouldCreateRecordedEntry)

		return request
	}

	public class RemoveLiveStreamPushPublishConfigurationTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
	}

	/**  Remove push publish configuration from entry  */
	public static func removeLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, RemoveLiveStreamPushPublishConfigurationTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, RemoveLiveStreamPushPublishConfigurationTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, RemoveLiveStreamPushPublishConfigurationTokenizer>(service: "livestream", action: "removeLiveStreamPushPublishConfiguration")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "protocol", value: protocol_.rawValue)

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
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, SetRecordedContentTokenizer>(service: "livestream", action: "setRecordedContent")
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
		let request: RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, UnregisterMediaServerTokenizer> = RequestBuilder<LiveEntry, LiveEntry.LiveEntryTokenizer, UnregisterMediaServerTokenizer>(service: "livestream", action: "unregisterMediaServer")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "hostname", value: hostname)
			.setParam(key: "mediaServerIndex", value: mediaServerIndex.rawValue)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func liveStreamEntry<T: LiveStreamEntry.LiveStreamEntryTokenizer>() -> T {
			return T(self.append("liveStreamEntry"))
		}
	}

	/**  Update live stream entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, liveStreamEntry: LiveStreamEntry) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateTokenizer>(service: "livestream", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "liveStreamEntry", value: liveStreamEntry)

		return request
	}

	public class UpdateOfflineThumbnailFromUrlTokenizer: ClientTokenizer  {
		
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
	public static func updateOfflineThumbnailFromUrl(entryId: String, url: String) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateOfflineThumbnailFromUrlTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateOfflineThumbnailFromUrlTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateOfflineThumbnailFromUrlTokenizer>(service: "livestream", action: "updateOfflineThumbnailFromUrl")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "url", value: url)

		return request
	}

	public class UpdateOfflineThumbnailJpegTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Update live stream entry thumbnail using a raw jpeg file  */
	public static func updateOfflineThumbnailJpeg(entryId: String, fileData: RequestFile) -> RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateOfflineThumbnailJpegTokenizer> {
		let request: RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateOfflineThumbnailJpegTokenizer> = RequestBuilder<LiveStreamEntry, LiveStreamEntry.LiveStreamEntryTokenizer, UpdateOfflineThumbnailJpegTokenizer>(service: "livestream", action: "updateOfflineThumbnailJpeg")
			.setParam(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

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
		let request: NullRequestBuilder<ValidateRegisteredMediaServersTokenizer> = NullRequestBuilder<ValidateRegisteredMediaServersTokenizer>(service: "livestream", action: "validateRegisteredMediaServers")
			.setParam(key: "entryId", value: entryId)

		return request
	}
}
