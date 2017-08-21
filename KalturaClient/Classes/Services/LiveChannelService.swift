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

	/**  Adds new live channel.  */
	public static func add(liveChannel: LiveChannel) -> RequestBuilder<LiveChannel> {
		let request: RequestBuilder<LiveChannel> = RequestBuilder<LiveChannel>(service: "livechannel", action: "add")
			.setBody(key: "liveChannel", value: liveChannel)

		return request
	}

	public static func appendRecording(entryId: String, assetId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double) -> RequestBuilder<LiveEntry> {
		return appendRecording(entryId: entryId, assetId: assetId, mediaServerIndex: mediaServerIndex, resource: resource, duration: duration, isLastChunk: false)
	}

	/**  Append recorded video to live entry  */
	public static func appendRecording(entryId: String, assetId: String, mediaServerIndex: EntryServerNodeType, resource: DataCenterContentResource, duration: Double, isLastChunk: Bool?) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livechannel", action: "appendRecording")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "assetId", value: assetId)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "resource", value: resource)
			.setBody(key: "duration", value: duration)
			.setBody(key: "isLastChunk", value: isLastChunk)

		return request
	}

	public static func createRecordedEntry(entryId: String, mediaServerIndex: EntryServerNodeType, liveEntryStatus: EntryServerNodeStatus) -> RequestBuilder<LiveEntry> {
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livechannel", action: "createRecordedEntry")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "liveEntryStatus", value: liveEntryStatus.rawValue)

		return request
	}

	/**  Delete a live channel.  */
	public static func delete(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "livechannel", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get live channel by ID.  */
	public static func get(id: String) -> RequestBuilder<LiveChannel> {
		let request: RequestBuilder<LiveChannel> = RequestBuilder<LiveChannel>(service: "livechannel", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Delivering the status of a live channel (on-air/offline)  */
	public static func isLive(id: String) -> RequestBuilder<Bool> {
		let request: RequestBuilder<Bool> = RequestBuilder<Bool>(service: "livechannel", action: "isLive")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<LiveChannelListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: LiveChannelFilter?) -> RequestBuilder<LiveChannelListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List live channels by filter with paging support.  */
	public static func list(filter: LiveChannelFilter?, pager: FilterPager?) -> RequestBuilder<LiveChannelListResponse> {
		let request: RequestBuilder<LiveChannelListResponse> = RequestBuilder<LiveChannelListResponse>(service: "livechannel", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

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
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livechannel", action: "registerMediaServer")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "hostname", value: hostname)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)
			.setBody(key: "applicationName", value: applicationName)
			.setBody(key: "liveEntryStatus", value: liveEntryStatus?.rawValue)
			.setBody(key: "shouldCreateRecordedEntry", value: shouldCreateRecordedEntry)

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
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livechannel", action: "setRecordedContent")
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
		let request: RequestBuilder<LiveEntry> = RequestBuilder<LiveEntry>(service: "livechannel", action: "unregisterMediaServer")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "hostname", value: hostname)
			.setBody(key: "mediaServerIndex", value: mediaServerIndex.rawValue)

		return request
	}

	/**  Update live channel. Only the properties that were set will be updated.  */
	public static func update(id: String, liveChannel: LiveChannel) -> RequestBuilder<LiveChannel> {
		let request: RequestBuilder<LiveChannel> = RequestBuilder<LiveChannel>(service: "livechannel", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "liveChannel", value: liveChannel)

		return request
	}

	/**  Validates all registered media servers  */
	public static func validateRegisteredMediaServers(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "livechannel", action: "validateRegisteredMediaServers")
			.setBody(key: "entryId", value: entryId)

		return request
	}
}
