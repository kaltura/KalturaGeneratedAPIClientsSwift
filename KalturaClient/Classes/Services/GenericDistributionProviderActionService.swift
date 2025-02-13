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

/**  Generic Distribution Provider Actions service  */
public final class GenericDistributionProviderActionService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func genericDistributionProviderAction<T: GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer>() -> T {
			return T(self.append("genericDistributionProviderAction"))
		}
	}

	/**  Add new Generic Distribution Provider Action  */
	public static func add(genericDistributionProviderAction: GenericDistributionProviderAction) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "add")
			.setParam(key: "genericDistributionProviderAction", value: genericDistributionProviderAction)

		return request
	}

	public class AddMrssTransformTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var xslData: BaseTokenizedObject {
			get {
				return self.append("xslData") 
			}
		}
	}

	/**  Add MRSS transform file to generic distribution provider action  */
	public static func addMrssTransform(id: Int, xslData: String) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssTransformTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssTransformTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssTransformTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssTransform")
			.setParam(key: "id", value: id)
			.setParam(key: "xslData", value: xslData)

		return request
	}

	public class AddMrssTransformFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Add MRSS transform file to generic distribution provider action  */
	public static func addMrssTransformFromFile(id: Int, xslFile: RequestFile) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssTransformFromFileTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssTransformFromFileTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssTransformFromFileTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssTransformFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "xslFile", value: xslFile)

		return request
	}

	public class AddMrssValidateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var xsdData: BaseTokenizedObject {
			get {
				return self.append("xsdData") 
			}
		}
	}

	/**  Add MRSS validate file to generic distribution provider action  */
	public static func addMrssValidate(id: Int, xsdData: String) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssValidateTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssValidateTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssValidateTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssValidate")
			.setParam(key: "id", value: id)
			.setParam(key: "xsdData", value: xsdData)

		return request
	}

	public class AddMrssValidateFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Add MRSS validate file to generic distribution provider action  */
	public static func addMrssValidateFromFile(id: Int, xsdFile: RequestFile) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssValidateFromFileTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssValidateFromFileTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddMrssValidateFromFileTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "addMrssValidateFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "xsdFile", value: xsdFile)

		return request
	}

	public class AddResultsTransformTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var transformData: BaseTokenizedObject {
			get {
				return self.append("transformData") 
			}
		}
	}

	/**  Add results transform file to generic distribution provider action  */
	public static func addResultsTransform(id: Int, transformData: String) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddResultsTransformTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddResultsTransformTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddResultsTransformTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "addResultsTransform")
			.setParam(key: "id", value: id)
			.setParam(key: "transformData", value: transformData)

		return request
	}

	public class AddResultsTransformFromFileTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Add MRSS transform file to generic distribution provider action  */
	public static func addResultsTransformFromFile(id: Int, transformFile: RequestFile) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddResultsTransformFromFileTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddResultsTransformFromFileTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, AddResultsTransformFromFileTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "addResultsTransformFromFile")
			.setParam(key: "id", value: id)
			.setFile(key: "transformFile", value: transformFile)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete Generic Distribution Provider Action by id  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class DeleteByProviderIdTokenizer: ClientTokenizer  {
		
		public var genericDistributionProviderId: BaseTokenizedObject {
			get {
				return self.append("genericDistributionProviderId") 
			}
		}
		
		public var actionType: BaseTokenizedObject {
			get {
				return self.append("actionType") 
			}
		}
	}

	/**  Delete Generic Distribution Provider Action by provider id  */
	public static func deleteByProviderId(genericDistributionProviderId: Int, actionType: DistributionAction) -> NullRequestBuilder<DeleteByProviderIdTokenizer> {
		let request: NullRequestBuilder<DeleteByProviderIdTokenizer> = NullRequestBuilder<DeleteByProviderIdTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "deleteByProviderId")
			.setParam(key: "genericDistributionProviderId", value: genericDistributionProviderId)
			.setParam(key: "actionType", value: actionType.rawValue)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get Generic Distribution Provider Action by id  */
	public static func get(id: Int) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, GetTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, GetTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, GetTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetByProviderIdTokenizer: ClientTokenizer  {
		
		public var genericDistributionProviderId: BaseTokenizedObject {
			get {
				return self.append("genericDistributionProviderId") 
			}
		}
		
		public var actionType: BaseTokenizedObject {
			get {
				return self.append("actionType") 
			}
		}
	}

	/**  Get Generic Distribution Provider Action by provider id  */
	public static func getByProviderId(genericDistributionProviderId: Int, actionType: DistributionAction) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, GetByProviderIdTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, GetByProviderIdTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, GetByProviderIdTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "getByProviderId")
			.setParam(key: "genericDistributionProviderId", value: genericDistributionProviderId)
			.setParam(key: "actionType", value: actionType.rawValue)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: GenericDistributionProviderActionFilter.GenericDistributionProviderActionFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<GenericDistributionProviderActionListResponse, GenericDistributionProviderActionListResponse.GenericDistributionProviderActionListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: GenericDistributionProviderActionFilter?) -> RequestBuilder<GenericDistributionProviderActionListResponse, GenericDistributionProviderActionListResponse.GenericDistributionProviderActionListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List all distribution providers  */
	public static func list(filter: GenericDistributionProviderActionFilter?, pager: FilterPager?) -> RequestBuilder<GenericDistributionProviderActionListResponse, GenericDistributionProviderActionListResponse.GenericDistributionProviderActionListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderActionListResponse, GenericDistributionProviderActionListResponse.GenericDistributionProviderActionListResponseTokenizer, ListTokenizer> = RequestBuilder<GenericDistributionProviderActionListResponse, GenericDistributionProviderActionListResponse.GenericDistributionProviderActionListResponseTokenizer, ListTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func genericDistributionProviderAction<T: GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer>() -> T {
			return T(self.append("genericDistributionProviderAction"))
		}
	}

	/**  Update Generic Distribution Provider Action by id  */
	public static func update(id: Int, genericDistributionProviderAction: GenericDistributionProviderAction) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, UpdateTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, UpdateTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "genericDistributionProviderAction", value: genericDistributionProviderAction)

		return request
	}

	public class UpdateByProviderIdTokenizer: ClientTokenizer  {
		
		public var genericDistributionProviderId: BaseTokenizedObject {
			get {
				return self.append("genericDistributionProviderId") 
			}
		}
		
		public var actionType: BaseTokenizedObject {
			get {
				return self.append("actionType") 
			}
		}
		
		public func genericDistributionProviderAction<T: GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer>() -> T {
			return T(self.append("genericDistributionProviderAction"))
		}
	}

	/**  Update Generic Distribution Provider Action by provider id  */
	public static func updateByProviderId(genericDistributionProviderId: Int, actionType: DistributionAction, genericDistributionProviderAction: GenericDistributionProviderAction) -> RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, UpdateByProviderIdTokenizer> {
		let request: RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, UpdateByProviderIdTokenizer> = RequestBuilder<GenericDistributionProviderAction, GenericDistributionProviderAction.GenericDistributionProviderActionTokenizer, UpdateByProviderIdTokenizer>(service: "contentdistribution_genericdistributionprovideraction", action: "updateByProviderId")
			.setParam(key: "genericDistributionProviderId", value: genericDistributionProviderId)
			.setParam(key: "actionType", value: actionType.rawValue)
			.setParam(key: "genericDistributionProviderAction", value: genericDistributionProviderAction)

		return request
	}
}
