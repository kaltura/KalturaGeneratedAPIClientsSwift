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

/**  Generic Distribution Provider Actions service  */
public final class GenericDistributionProviderActionService{

	/**  Add new Generic Distribution Provider Action  */
	public static func add(genericDistributionProviderAction: GenericDistributionProviderAction) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "add")
			.setBody(key: "genericDistributionProviderAction", value: genericDistributionProviderAction)

		return request
	}

	/**  Add MRSS transform file to generic distribution provider action  */
	public static func addMrssTransform(id: Int, xslData: String) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssTransform")
			.setBody(key: "id", value: id)
			.setBody(key: "xslData", value: xslData)

		return request
	}

	/**  Add MRSS transform file to generic distribution provider action  */
	public static func addMrssTransformFromFile(id: Int, xslFile: RequestFile) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssTransformFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "xslFile", value: xslFile)

		return request
	}

	/**  Add MRSS validate file to generic distribution provider action  */
	public static func addMrssValidate(id: Int, xsdData: String) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssValidate")
			.setBody(key: "id", value: id)
			.setBody(key: "xsdData", value: xsdData)

		return request
	}

	/**  Add MRSS validate file to generic distribution provider action  */
	public static func addMrssValidateFromFile(id: Int, xsdFile: RequestFile) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssValidateFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "xsdFile", value: xsdFile)

		return request
	}

	/**  Add results transform file to generic distribution provider action  */
	public static func addResultsTransform(id: Int, transformData: String) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "addResultsTransform")
			.setBody(key: "id", value: id)
			.setBody(key: "transformData", value: transformData)

		return request
	}

	/**  Add MRSS transform file to generic distribution provider action  */
	public static func addResultsTransformFromFile(id: Int, transformFile: RequestFile) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "addResultsTransformFromFile")
			.setBody(key: "id", value: id)
			.setFile(key: "transformFile", value: transformFile)

		return request
	}

	/**  Delete Generic Distribution Provider Action by id  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "contentdistribution_genericdistributionprovideraction", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Delete Generic Distribution Provider Action by provider id  */
	public static func deleteByProviderId(genericDistributionProviderId: Int, actionType: DistributionAction) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "contentdistribution_genericdistributionprovideraction", action: "deleteByProviderId")
			.setBody(key: "genericDistributionProviderId", value: genericDistributionProviderId)
			.setBody(key: "actionType", value: actionType.rawValue)

		return request
	}

	/**  Get Generic Distribution Provider Action by id  */
	public static func get(id: Int) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Get Generic Distribution Provider Action by provider id  */
	public static func getByProviderId(genericDistributionProviderId: Int, actionType: DistributionAction) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "getByProviderId")
			.setBody(key: "genericDistributionProviderId", value: genericDistributionProviderId)
			.setBody(key: "actionType", value: actionType.rawValue)

		return request
	}

	public static func list() -> RequestBuilder<GenericDistributionProviderActionListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: GenericDistributionProviderActionFilter?) -> RequestBuilder<GenericDistributionProviderActionListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: GenericDistributionProviderActionFilter?, pager: FilterPager?) -> RequestBuilder<GenericDistributionProviderActionListResponse> {
		let request: RequestBuilder<GenericDistributionProviderActionListResponse> = RequestBuilder<GenericDistributionProviderActionListResponse>(service: "contentdistribution_genericdistributionprovideraction", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update Generic Distribution Provider Action by id  */
	public static func update(id: Int, genericDistributionProviderAction: GenericDistributionProviderAction) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "genericDistributionProviderAction", value: genericDistributionProviderAction)

		return request
	}

	/**  Update Generic Distribution Provider Action by provider id  */
	public static func updateByProviderId(genericDistributionProviderId: Int, actionType: DistributionAction, genericDistributionProviderAction: GenericDistributionProviderAction) -> RequestBuilder<GenericDistributionProviderAction> {
		let request: RequestBuilder<GenericDistributionProviderAction> = RequestBuilder<GenericDistributionProviderAction>(service: "contentdistribution_genericdistributionprovideraction", action: "updateByProviderId")
			.setBody(key: "genericDistributionProviderId", value: genericDistributionProviderId)
			.setBody(key: "actionType", value: actionType.rawValue)
			.setBody(key: "genericDistributionProviderAction", value: genericDistributionProviderAction)

		return request
	}
}
