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

/**  Add &amp; Manage Syndication Feeds  */
public final class SyndicationFeedService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func syndicationFeed<T: BaseSyndicationFeed.BaseSyndicationFeedTokenizer>() -> T {
			return T(self.append("syndicationFeed"))
		}
	}

	/**  Add new Syndication Feed  */
	public static func add(syndicationFeed: BaseSyndicationFeed) -> RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, AddTokenizer> {
		let request: RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, AddTokenizer> = RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, AddTokenizer>(service: "syndicationfeed", action: "add")
			.setParam(key: "syndicationFeed", value: syndicationFeed)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Syndication Feed by ID  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "syndicationfeed", action: "delete")
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

	/**  Get Syndication Feed by ID  */
	public static func get(id: String) -> RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, GetTokenizer> {
		let request: RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, GetTokenizer> = RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, GetTokenizer>(service: "syndicationfeed", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetEntryCountTokenizer: ClientTokenizer  {
		
		public var feedId: BaseTokenizedObject {
			get {
				return self.append("feedId") 
			}
		}
	}

	/**  get entry count for a syndication feed  */
	public static func getEntryCount(feedId: String) -> RequestBuilder<SyndicationFeedEntryCount, SyndicationFeedEntryCount.SyndicationFeedEntryCountTokenizer, GetEntryCountTokenizer> {
		let request: RequestBuilder<SyndicationFeedEntryCount, SyndicationFeedEntryCount.SyndicationFeedEntryCountTokenizer, GetEntryCountTokenizer> = RequestBuilder<SyndicationFeedEntryCount, SyndicationFeedEntryCount.SyndicationFeedEntryCountTokenizer, GetEntryCountTokenizer>(service: "syndicationfeed", action: "getEntryCount")
			.setParam(key: "feedId", value: feedId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: BaseSyndicationFeedFilter.BaseSyndicationFeedFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<BaseSyndicationFeedListResponse, BaseSyndicationFeedListResponse.BaseSyndicationFeedListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: BaseSyndicationFeedFilter?) -> RequestBuilder<BaseSyndicationFeedListResponse, BaseSyndicationFeedListResponse.BaseSyndicationFeedListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List Syndication Feeds by filter with paging support  */
	public static func list(filter: BaseSyndicationFeedFilter?, pager: FilterPager?) -> RequestBuilder<BaseSyndicationFeedListResponse, BaseSyndicationFeedListResponse.BaseSyndicationFeedListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<BaseSyndicationFeedListResponse, BaseSyndicationFeedListResponse.BaseSyndicationFeedListResponseTokenizer, ListTokenizer> = RequestBuilder<BaseSyndicationFeedListResponse, BaseSyndicationFeedListResponse.BaseSyndicationFeedListResponseTokenizer, ListTokenizer>(service: "syndicationfeed", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RequestConversionTokenizer: ClientTokenizer  {
		
		public var feedId: BaseTokenizedObject {
			get {
				return self.append("feedId") 
			}
		}
	}

	/**  request conversion for all entries that doesnt have the required flavor param  
	  returns a comma-separated ids of conversion jobs  */
	public static func requestConversion(feedId: String) -> RequestBuilder<String, BaseTokenizedObject, RequestConversionTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, RequestConversionTokenizer> = RequestBuilder<String, BaseTokenizedObject, RequestConversionTokenizer>(service: "syndicationfeed", action: "requestConversion")
			.setParam(key: "feedId", value: feedId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func syndicationFeed<T: BaseSyndicationFeed.BaseSyndicationFeedTokenizer>() -> T {
			return T(self.append("syndicationFeed"))
		}
	}

	/**  Update Syndication Feed by ID  */
	public static func update(id: String, syndicationFeed: BaseSyndicationFeed) -> RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, UpdateTokenizer> = RequestBuilder<BaseSyndicationFeed, BaseSyndicationFeed.BaseSyndicationFeedTokenizer, UpdateTokenizer>(service: "syndicationfeed", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "syndicationFeed", value: syndicationFeed)

		return request
	}
}
