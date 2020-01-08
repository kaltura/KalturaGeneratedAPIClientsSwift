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
// Copyright (C) 2006-2020  Kaltura Inc.
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

/**  Entry Distribution service  */
public final class EntryDistributionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func entryDistribution<T: EntryDistribution.EntryDistributionTokenizer>() -> T {
			return T(self.append("entryDistribution"))
		}
	}

	/**  Add new Entry Distribution  */
	public static func add(entryDistribution: EntryDistribution) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, AddTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, AddTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, AddTokenizer>(service: "contentdistribution_entrydistribution", action: "add")
			.setParam(key: "entryDistribution", value: entryDistribution)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Entry Distribution by id  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "contentdistribution_entrydistribution", action: "delete")
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

	/**  Get Entry Distribution by id  */
	public static func get(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, GetTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, GetTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, GetTokenizer>(service: "contentdistribution_entrydistribution", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EntryDistributionFilter.EntryDistributionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<EntryDistributionListResponse, EntryDistributionListResponse.EntryDistributionListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: EntryDistributionFilter?) -> RequestBuilder<EntryDistributionListResponse, EntryDistributionListResponse.EntryDistributionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: EntryDistributionFilter?, pager: FilterPager?) -> RequestBuilder<EntryDistributionListResponse, EntryDistributionListResponse.EntryDistributionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EntryDistributionListResponse, EntryDistributionListResponse.EntryDistributionListResponseTokenizer, ListTokenizer> = RequestBuilder<EntryDistributionListResponse, EntryDistributionListResponse.EntryDistributionListResponseTokenizer, ListTokenizer>(service: "contentdistribution_entrydistribution", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class RetrySubmitTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Retries last submit action  */
	public static func retrySubmit(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, RetrySubmitTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, RetrySubmitTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, RetrySubmitTokenizer>(service: "contentdistribution_entrydistribution", action: "retrySubmit")
			.setParam(key: "id", value: id)

		return request
	}

	public class SubmitAddTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var submitWhenReady: BaseTokenizedObject {
			get {
				return self.append("submitWhenReady") 
			}
		}
	}

	public static func submitAdd(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitAddTokenizer> {
		return submitAdd(id: id, submitWhenReady: false)
	}

	/**  Submits Entry Distribution to the remote destination  */
	public static func submitAdd(id: Int, submitWhenReady: Bool?) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitAddTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitAddTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitAddTokenizer>(service: "contentdistribution_entrydistribution", action: "submitAdd")
			.setParam(key: "id", value: id)
			.setParam(key: "submitWhenReady", value: submitWhenReady)

		return request
	}

	public class SubmitDeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Deletes Entry Distribution from the remote destination  */
	public static func submitDelete(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitDeleteTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitDeleteTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitDeleteTokenizer>(service: "contentdistribution_entrydistribution", action: "submitDelete")
			.setParam(key: "id", value: id)

		return request
	}

	public class SubmitFetchReportTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Submits Entry Distribution report request  */
	public static func submitFetchReport(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitFetchReportTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitFetchReportTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitFetchReportTokenizer>(service: "contentdistribution_entrydistribution", action: "submitFetchReport")
			.setParam(key: "id", value: id)

		return request
	}

	public class SubmitUpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Submits Entry Distribution changes to the remote destination  */
	public static func submitUpdate(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitUpdateTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitUpdateTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, SubmitUpdateTokenizer>(service: "contentdistribution_entrydistribution", action: "submitUpdate")
			.setParam(key: "id", value: id)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func entryDistribution<T: EntryDistribution.EntryDistributionTokenizer>() -> T {
			return T(self.append("entryDistribution"))
		}
	}

	/**  Update Entry Distribution by id  */
	public static func update(id: Int, entryDistribution: EntryDistribution) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, UpdateTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, UpdateTokenizer>(service: "contentdistribution_entrydistribution", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "entryDistribution", value: entryDistribution)

		return request
	}

	public class ValidateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Validates Entry Distribution by id for submission  */
	public static func validate(id: Int) -> RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, ValidateTokenizer> {
		let request: RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, ValidateTokenizer> = RequestBuilder<EntryDistribution, EntryDistribution.EntryDistributionTokenizer, ValidateTokenizer>(service: "contentdistribution_entrydistribution", action: "validate")
			.setParam(key: "id", value: id)

		return request
	}
}
