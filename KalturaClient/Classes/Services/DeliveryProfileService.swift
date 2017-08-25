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

/**  delivery service is used to control delivery objects  */
public final class DeliveryProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var delivery: DeliveryProfile.DeliveryProfileTokenizer {
			get {
				return DeliveryProfile.DeliveryProfileTokenizer(self.append("delivery")) 
			}
		}
	}

	/**  Add new delivery.  */
	public static func add(delivery: DeliveryProfile) -> RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, AddTokenizer> = RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, AddTokenizer>(service: "deliveryprofile", action: "add")
			.setBody(key: "delivery", value: delivery)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var deliveryId: BaseTokenizedObject {
			get {
				return self.append("deliveryId") 
			}
		}
	}

	/**  Add delivery based on existing delivery.  Must provide valid sourceDeliveryId  */
	public static func clone(deliveryId: Int) -> RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, CloneTokenizer> {
		let request: RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, CloneTokenizer> = RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, CloneTokenizer>(service: "deliveryprofile", action: "clone")
			.setBody(key: "deliveryId", value: deliveryId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Get delivery by id  */
	public static func get(id: String) -> RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, GetTokenizer> = RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, GetTokenizer>(service: "deliveryprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var filter: DeliveryProfileFilter.DeliveryProfileFilterTokenizer {
			get {
				return DeliveryProfileFilter.DeliveryProfileFilterTokenizer(self.append("filter")) 
			}
		}
		
		public var pager: FilterPager.FilterPagerTokenizer {
			get {
				return FilterPager.FilterPagerTokenizer(self.append("pager")) 
			}
		}
	}

	public static func list() -> RequestBuilder<DeliveryProfileListResponse, DeliveryProfileListResponse.DeliveryProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DeliveryProfileFilter?) -> RequestBuilder<DeliveryProfileListResponse, DeliveryProfileListResponse.DeliveryProfileListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  Retrieve a list of available delivery depends on the filter given  */
	public static func list(filter: DeliveryProfileFilter?, pager: FilterPager?) -> RequestBuilder<DeliveryProfileListResponse, DeliveryProfileListResponse.DeliveryProfileListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DeliveryProfileListResponse, DeliveryProfileListResponse.DeliveryProfileListResponseTokenizer, ListTokenizer> = RequestBuilder<DeliveryProfileListResponse, DeliveryProfileListResponse.DeliveryProfileListResponseTokenizer, ListTokenizer>(service: "deliveryprofile", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var delivery: DeliveryProfile.DeliveryProfileTokenizer {
			get {
				return DeliveryProfile.DeliveryProfileTokenizer(self.append("delivery")) 
			}
		}
	}

	/**  Update exisiting delivery  */
	public static func update(id: String, delivery: DeliveryProfile) -> RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, UpdateTokenizer> = RequestBuilder<DeliveryProfile, DeliveryProfile.DeliveryProfileTokenizer, UpdateTokenizer>(service: "deliveryprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "delivery", value: delivery)

		return request
	}
}
