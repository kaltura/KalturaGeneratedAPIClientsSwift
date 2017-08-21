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

/**  Live Stream service lets you manage live stream entries  */
public final class LiveStreamService{

	public static func add(liveStreamEntry: LiveStreamEntry) -> RequestBuilder<LiveStreamEntry> {
		return add(liveStreamEntry: liveStreamEntry, sourceType: nil)
	}

	/**  Adds new live stream entry.   The entry will be queued for provision.  */
	public static func add(liveStreamEntry: LiveStreamEntry, sourceType: SourceType?) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "add")
			.setBody(key: "liveStreamEntry", value: liveStreamEntry)
			.setBody(key: "sourceType", value: sourceType?.rawValue)

		return request
	}

	public static func addLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol) -> RequestBuilder<LiveStreamEntry> {
		return addLiveStreamPushPublishConfiguration(entryId: entryId, protocol_: protocol_, url: nil)
	}

	public static func addLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol, url: String?) -> RequestBuilder<LiveStreamEntry> {
		return addLiveStreamPushPublishConfiguration(entryId: entryId, protocol_: protocol_, url: url, liveStreamConfiguration: nil)
	}

	/**  Add new pushPublish configuration to entry  */
	public static func addLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol, url: String?, liveStreamConfiguration: LiveStreamConfiguration?) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "addLiveStreamPushPublishConfiguration")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "protocol", value: protocol_.rawValue)
			.setBody(key: "url", value: url)
			.setBody(key: "liveStreamConfiguration", value: liveStreamConfiguration)

		return request
	}

	public static func appendRecording(entryId: String, assetId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double) -> RequestBuilder<LiveEntry> {
		return appendRecording(entryId: entryId, assetId: assetId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, isLastChunk: false)
	}

	/**  Append recorded video to live entry  */
	public static func appendRecording(entryId: String, assetId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, isLastChunk: Bool?) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livestream", action: "appendRecording")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "resource", value: resource)
			.setBody(key: "duration", value: duration)
			.setBody(key: "isLastChunk", value: isLastChunk)

		return request
	}

	public static func authenticate(entryId: String, token: String) -> RequestBuilder<LiveStreamEntry> {
		return authenticate(entryId: entryId, token: token, hostname: nil)
	}

	public static func authenticate(entryId: String, token: String, hostname: String?) -> RequestBuilder<LiveStreamEntry> {
		return authenticate(entryId: entryId, token: token, hostname: hostname, mediaServerIndex: nil)
	}

	public static func authenticate(entryId: String, token: String, hostname: String?, mediaServerIndex: EntryServerNodeType?) -> RequestBuilder<LiveStreamEntry> {
		return authenticate(entryId: entryId, token: token, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: nil)
	}

	/**  Authenticate live-stream entry against stream token and partner limitations  */
	public static func authenticate(entryId: String, token: String, hostname: String?, mediaServerIndex: EntryServerNodeType?, applicationName: String?) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "authenticate")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "token", value: token)
			.setBody(key: "hostname", value: hostname)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex?.rawValue)
			.setBody(key: "applicationName", value: applicationName)

		return request
	}

	public static func createRecordedEntry(entryId: String, mediaServerIndex: EntryServerNodeType, liveEntryStatus: EntryServerNodeStatus) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livestream", action: "createRecordedEntry")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "liveEntryStatus", value: liveEntryStatus.rawValue)

		return request
	}

	/**  Delete a live stream entry.  */
	public static func delete(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "livestream", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func get(entryId: String) -> RequestBuilder<LiveStreamEntry> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get live stream entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	/**  Delivering the status of a live stream (on-air/offline) if it is possible  */
	public static func isLive(id: String, protocol_: PlaybackProtocol) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "livestream", action: "isLive")
			.setBody(key: "id", value: id)
			.setBody(key: "protocol", value: protocol_.rawValue)

		return request
	}

	public static func list() -> RequestBuilder<LiveStreamListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: LiveStreamEntryFilter?) -> RequestBuilder<LiveStreamListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List live stream entries by filter with paging support.  */
	public static func list(filter: LiveStreamEntryFilter?, pager: FilterPager?) -> RequestBuilder<LiveStreamListResponse> {
		let request: RequestBuilder<LiveStreamListResponse> = RequestBuilder<LiveStreamListResponse>(service: "livestream", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Regenerate new secure token for liveStream  */
	public static func regenerateStreamToken(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "livestream", action: "regenerateStreamToken")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType) -> RequestBuilder<LiveEntry> {
		return registerMediaServer(entryId: entryId, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: nil)
	}

	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType, applicationName: String?) -> RequestBuilder<LiveEntry> {
		return registerMediaServer(entryId: entryId, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: applicationName, liveEntryStatus: EntryServerNodeStatus(rawValue: 1))
	}

	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType, applicationName: String?, liveEntryStatus: EntryServerNodeStatus?) -> RequestBuilder<LiveEntry> {
		return registerMediaServer(entryId: entryId, hostname: hostname, mediaServerIndex: mediaServerIndex, applicationName: applicationName, liveEntryStatus: liveEntryStatus, shouldCreateRecordedEntry: true)
	}

	/**  Register media server to live entry  */
	public static func registerMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType, applicationName: String?, liveEntryStatus: EntryServerNodeStatus?, shouldCreateRecordedEntry: Bool?) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livestream", action: "registerMediaServer")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "hostname", value: hostname)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "applicationName", value: applicationName)
			.setBody(key: "liveEntryStatus", value: liveEntryStatus?.rawValue)
			.setBody(key: "shouldCreateRecordedEntry", value: shouldCreateRecordedEntry)

		return request
	}

	/**  Remove push publish configuration from entry  */
	public static func removeLiveStreamPushPublishConfiguration(entryId: String, protocol_: PlaybackProtocol) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "removeLiveStreamPushPublishConfiguration")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "protocol", value: protocol_.rawValue)

		return request
	}

	public static func setRecordedContent(entryId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double) -> RequestBuilder<LiveEntry> {
		return setRecordedContent(entryId: entryId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, recordedEntryId: nil)
	}

	public static func setRecordedContent(entryId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, recordedEntryId: String?) -> RequestBuilder<LiveEntry> {
		return setRecordedContent(entryId: entryId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, recordedEntryId: recordedEntryId, flavorParamsId: nil)
	}

	/**  Sey recorded video to live entry  */
	public static func setRecordedContent(entryId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, recordedEntryId: String?, flavorParamsId: Int?) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livestream", action: "setRecordedContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "resource", value: resource)
			.setBody(key: "duration", value: duration)
			.setBody(key: "recordedEntryId", value: recordedEntryId)
			.setBody(key: "flavorParamsId", value: flavorParamsId)

		return request
	}

	/**  Unregister media server from live entry  */
	public static func unregisterMediaServer(entryId: String, hostname: String, mediaServerIndex: EntryServerNodeType) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livestream", action: "unregisterMediaServer")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "hostname", value: hostname)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)

		return request
	}

	/**  Update live stream entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, liveStreamEntry: LiveStreamEntry) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "liveStreamEntry", value: liveStreamEntry)

		return request
	}

	/**  Update entry thumbnail using url  */
	public static func updateOfflineThumbnailFromUrl(entryId: String, url: String) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "updateOfflineThumbnailFromUrl")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "url", value: url)

		return request
	}

	/**  Update live stream entry thumbnail using a raw jpeg file  */
	public static func updateOfflineThumbnailJpeg(entryId: String, fileData: RequestFile) -> RequestBuilder<LiveStreamEntry> {
		let request: RequestBuilder<LiveStreamEntry> = RequestBuilder<LiveStreamEntry>(service: "livestream", action: "updateOfflineThumbnailJpeg")
			.setBody(key: "entryId", value: entryId)
			.setFile(key: "fileData", value: fileData)

		return request
	}

	/**  Validates all registered media servers  */
	public static func validateRegisteredMediaServers(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "livestream", action: "validateRegisteredMediaServers")
			.setBody(key: "entryId", value: entryId)

		return request
	}
}
