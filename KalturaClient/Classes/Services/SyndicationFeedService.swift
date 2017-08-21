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

/**  Add &amp; Manage Syndication Feeds  */
public final class SyndicationFeedService{

	/**  Add new Syndication Feed  */
	public static func add(syndicationFeed: BaseSyndicationFeed) -> RequestBuilder<BaseSyndicationFeed> {
		let request: RequestBuilder<BaseSyndicationFeed> = RequestBuilder<BaseSyndicationFeed>(service: "syndicationfeed", action: "add")
			.setBody(key: "syndicationFeed", value: syndicationFeed)

		return request
	}

	/**  Delete Syndication Feed by ID  */
	public static func delete(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "syndicationfeed", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Syndication Feed by ID  */
	public static func get(id: String) -> RequestBuilder<BaseSyndicationFeed> {
		let request: RequestBuilder<BaseSyndicationFeed> = RequestBuilder<BaseSyndicationFeed>(service: "syndicationfeed", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  get entry count for a syndication feed  */
	public static func getEntryCount(feedId: String) -> RequestBuilder<SyndicationFeedEntryCount> {
		let request: RequestBuilder<SyndicationFeedEntryCount> = RequestBuilder<SyndicationFeedEntryCount>(service: "syndicationfeed", action: "getEntryCount")
			.setBody(key: "feedId", value: feedId)

		return request
	}

	public static func list() -> RequestBuilder<BaseSyndicationFeedListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: BaseSyndicationFeedFilter?) -> RequestBuilder<BaseSyndicationFeedListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List Syndication Feeds by filter with paging support  */
	public static func list(filter: BaseSyndicationFeedFilter?, pager: FilterPager?) -> RequestBuilder<BaseSyndicationFeedListResponse> {
		let request: RequestBuilder<BaseSyndicationFeedListResponse> = RequestBuilder<BaseSyndicationFeedListResponse>(service: "syndicationfeed", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  request conversion for all entries that doesnt have the required flavor param  
	  returns a comma-separated ids of conversion jobs  */
	public static func requestConversion(feedId: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "syndicationfeed", action: "requestConversion")
			.setBody(key: "feedId", value: feedId)

		return request
	}

	/**  Update Syndication Feed by ID  */
	public static func update(id: String, syndicationFeed: BaseSyndicationFeed) -> RequestBuilder<BaseSyndicationFeed> {
		let request: RequestBuilder<BaseSyndicationFeed> = RequestBuilder<BaseSyndicationFeed>(service: "syndicationfeed", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "syndicationFeed", value: syndicationFeed)

		return request
	}
}
