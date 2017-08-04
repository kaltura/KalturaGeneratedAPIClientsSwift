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

/**  Entry Distribution service  */
public final class EntryDistributionService{

	/**  Add new Entry Distribution  */
	public static func add(entryDistribution: EntryDistribution) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "add")
			.setBody(key: "entryDistribution", value: entryDistribution)

		return request
	}

	/**  Delete Entry Distribution by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "contentdistribution_entrydistribution", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Entry Distribution by id  */
	public static func get(id: Int) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<EntryDistributionListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: EntryDistributionFilter?) -> RequestBuilder<EntryDistributionListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: EntryDistributionFilter?, pager: FilterPager?) -> RequestBuilder<EntryDistributionListResponse> {
		let request: RequestBuilder<EntryDistributionListResponse> = RequestBuilder<EntryDistributionListResponse>(service: "contentdistribution_entrydistribution", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Retries last submit action  */
	public static func retrySubmit(id: Int) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "retrySubmit")
			.setBody(key: "id", value: id)

		return request
	}

	public static func submitAdd(id: Int) -> RequestBuilder<EntryDistribution> {
		return submitAdd(id: id, submitWhenReady: false)
	}

	/**  Submits Entry Distribution to the remote destination  */
	public static func submitAdd(id: Int, submitWhenReady: Bool?) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "submitAdd")
			.setBody(key: "id", value: id)
			.setBody(key: "submitWhenReady", value: submitWhenReady)

		return request
	}

	/**  Deletes Entry Distribution from the remote destination  */
	public static func submitDelete(id: Int) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "submitDelete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Submits Entry Distribution report request  */
	public static func submitFetchReport(id: Int) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "submitFetchReport")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Submits Entry Distribution changes to the remote destination  */
	public static func submitUpdate(id: Int) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "submitUpdate")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Update Entry Distribution by id  */
	public static func update(id: Int, entryDistribution: EntryDistribution) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "entryDistribution", value: entryDistribution)

		return request
	}

	/**  Validates Entry Distribution by id for submission  */
	public static func validate(id: Int) -> RequestBuilder<EntryDistribution> {
		let request: RequestBuilder<EntryDistribution> = RequestBuilder<EntryDistribution>(service: "contentdistribution_entrydistribution", action: "validate")
			.setBody(key: "id", value: id)

		return request
	}
}
