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

/**  Event notification template service lets you create and manage event
  notification templates  */
public final class EventNotificationTemplateService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func eventNotificationTemplate<T: EventNotificationTemplate.EventNotificationTemplateTokenizer>() -> T {
			return T(self.append("eventNotificationTemplate"))
		}
	}

	/**  This action allows for the creation of new backend event types in the system.
	  This action requires access to the Kaltura server Admin Console. If you're
	  looking to register to existing event types, please use the clone action
	  instead.  */
	public static func add(eventNotificationTemplate: EventNotificationTemplate) -> RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, AddTokenizer> {
		let request: RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, AddTokenizer> = RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, AddTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "add")
			.setBody(key: "eventNotificationTemplate", value: eventNotificationTemplate)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func eventNotificationTemplate<T: EventNotificationTemplate.EventNotificationTemplateTokenizer>() -> T {
			return T(self.append("eventNotificationTemplate"))
		}
	}

	public static func clone(id: Int) -> RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, CloneTokenizer> {
		return clone(id: id, eventNotificationTemplate: nil)
	}

	/**  This action allows registering to various backend event. Use this action to
	  create notifications that will react to events such as new video was uploaded or
	  metadata field was updated. To see the list of available event types, call the
	  listTemplates action.  */
	public static func clone(id: Int, eventNotificationTemplate: EventNotificationTemplate?) -> RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, CloneTokenizer> {
		let request: RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, CloneTokenizer> = RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, CloneTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "clone")
			.setBody(key: "id", value: id)
			.setBody(key: "eventNotificationTemplate", value: eventNotificationTemplate)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an event notification template object  */
	public static func delete(id: Int) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class DispatchTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func scope<T: EventNotificationScope.EventNotificationScopeTokenizer>() -> T {
			return T(self.append("scope"))
		}
	}

	/**  Dispatch event notification object by id  */
	public static func dispatch(id: Int, scope: EventNotificationScope) -> RequestBuilder<Int, BaseTokenizedObject, DispatchTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, DispatchTokenizer> = RequestBuilder<Int, BaseTokenizedObject, DispatchTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "dispatch")
			.setBody(key: "id", value: id)
			.setBody(key: "scope", value: scope)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Retrieve an event notification template object by id  */
	public static func get(id: Int) -> RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, GetTokenizer> {
		let request: RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, GetTokenizer> = RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, GetTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: EventNotificationTemplateFilter.EventNotificationTemplateFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: EventNotificationTemplateFilter?) -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  list event notification template objects  */
	public static func list(filter: EventNotificationTemplateFilter?, pager: FilterPager?) -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTokenizer> = RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ListByPartnerTokenizer: ClientTokenizer  {
		
		public func filter<T: PartnerFilter.PartnerFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listByPartner() -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListByPartnerTokenizer> {
		return listByPartner(filter: nil)
	}

	public static func listByPartner(filter: PartnerFilter?) -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListByPartnerTokenizer> {
		return listByPartner(filter: filter, pager: nil)
	}

	public static func listByPartner(filter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListByPartnerTokenizer> {
		let request: RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListByPartnerTokenizer> = RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListByPartnerTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "listByPartner")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class ListTemplatesTokenizer: ClientTokenizer  {
		
		public func filter<T: EventNotificationTemplateFilter.EventNotificationTemplateFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func listTemplates() -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTemplatesTokenizer> {
		return listTemplates(filter: nil)
	}

	public static func listTemplates(filter: EventNotificationTemplateFilter?) -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTemplatesTokenizer> {
		return listTemplates(filter: filter, pager: nil)
	}

	/**  Action lists the template partner event notification templates.  */
	public static func listTemplates(filter: EventNotificationTemplateFilter?, pager: FilterPager?) -> RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTemplatesTokenizer> {
		let request: RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTemplatesTokenizer> = RequestBuilder<EventNotificationTemplateListResponse, EventNotificationTemplateListResponse.EventNotificationTemplateListResponseTokenizer, ListTemplatesTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "listTemplates")
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
		
		public func eventNotificationTemplate<T: EventNotificationTemplate.EventNotificationTemplateTokenizer>() -> T {
			return T(self.append("eventNotificationTemplate"))
		}
	}

	/**  Update an existing event notification template object  */
	public static func update(id: Int, eventNotificationTemplate: EventNotificationTemplate) -> RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, UpdateTokenizer> = RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, UpdateTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "eventNotificationTemplate", value: eventNotificationTemplate)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update event notification template status by id  */
	public static func updateStatus(id: Int, status: EventNotificationTemplateStatus) -> RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, UpdateStatusTokenizer> = RequestBuilder<EventNotificationTemplate, EventNotificationTemplate.EventNotificationTemplateTokenizer, UpdateStatusTokenizer>(service: "eventnotification_eventnotificationtemplate", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
