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

	/**  This action allows for the creation of new backend event types in the system.
	  This action requires access to the Kaltura server Admin Console. If you're
	  looking to register to existing event types, please use the clone action
	  instead.  */
	public static func add(eventNotificationTemplate: EventNotificationTemplate) -> RequestBuilder<EventNotificationTemplate> {
		let request: RequestBuilder<EventNotificationTemplate> = RequestBuilder<EventNotificationTemplate>(service: "eventnotification_eventnotificationtemplate", action: "add")
			.setBody(key: "eventNotificationTemplate", value: eventNotificationTemplate)

		return request
	}

	public static func clone(id: Int) -> RequestBuilder<EventNotificationTemplate> {
		return clone(id: id, eventNotificationTemplate: nil)
	}

	/**  This action allows registering to various backend event. Use this action to
	  create notifications that will react to events such as new video was uploaded or
	  metadata field was updated. To see the list of available event types, call the
	  listTemplates action.  */
	public static func clone(id: Int, eventNotificationTemplate: EventNotificationTemplate?) -> RequestBuilder<EventNotificationTemplate> {
		let request: RequestBuilder<EventNotificationTemplate> = RequestBuilder<EventNotificationTemplate>(service: "eventnotification_eventnotificationtemplate", action: "clone")
			.setBody(key: "id", value: id)
			.setBody(key: "eventNotificationTemplate", value: eventNotificationTemplate)

		return request
	}

	/**  Delete an event notification template object  */
	public static func delete(id: Int) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "eventnotification_eventnotificationtemplate", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Dispatch event notification object by id  */
	public static func dispatch(id: Int, scope: EventNotificationScope) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "eventnotification_eventnotificationtemplate", action: "dispatch")
			.setBody(key: "id", value: id)
			.setBody(key: "scope", value: scope)

		return request
	}

	/**  Retrieve an event notification template object by id  */
	public static func get(id: Int) -> RequestBuilder<EventNotificationTemplate> {
		let request: RequestBuilder<EventNotificationTemplate> = RequestBuilder<EventNotificationTemplate>(service: "eventnotification_eventnotificationtemplate", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<EventNotificationTemplateListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: EventNotificationTemplateFilter?) -> RequestBuilder<EventNotificationTemplateListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  list event notification template objects  */
	public static func list(filter: EventNotificationTemplateFilter?, pager: FilterPager?) -> RequestBuilder<EventNotificationTemplateListResponse> {
		let request: RequestBuilder<EventNotificationTemplateListResponse> = RequestBuilder<EventNotificationTemplateListResponse>(service: "eventnotification_eventnotificationtemplate", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listByPartner() -> RequestBuilder<EventNotificationTemplateListResponse> {
		return listByPartner(filter: nil)
	}

	public static func listByPartner(filter: PartnerFilter?) -> RequestBuilder<EventNotificationTemplateListResponse> {
		return listByPartner(filter: filter, pager: nil)
	}

	public static func listByPartner(filter: PartnerFilter?, pager: FilterPager?) -> RequestBuilder<EventNotificationTemplateListResponse> {
		let request: RequestBuilder<EventNotificationTemplateListResponse> = RequestBuilder<EventNotificationTemplateListResponse>(service: "eventnotification_eventnotificationtemplate", action: "listByPartner")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func listTemplates() -> RequestBuilder<EventNotificationTemplateListResponse> {
		return listTemplates(filter: nil)
	}

	public static func listTemplates(filter: EventNotificationTemplateFilter?) -> RequestBuilder<EventNotificationTemplateListResponse> {
		return listTemplates(filter: filter, pager: nil)
	}

	/**  Action lists the template partner event notification templates.  */
	public static func listTemplates(filter: EventNotificationTemplateFilter?, pager: FilterPager?) -> RequestBuilder<EventNotificationTemplateListResponse> {
		let request: RequestBuilder<EventNotificationTemplateListResponse> = RequestBuilder<EventNotificationTemplateListResponse>(service: "eventnotification_eventnotificationtemplate", action: "listTemplates")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update an existing event notification template object  */
	public static func update(id: Int, eventNotificationTemplate: EventNotificationTemplate) -> RequestBuilder<EventNotificationTemplate> {
		let request: RequestBuilder<EventNotificationTemplate> = RequestBuilder<EventNotificationTemplate>(service: "eventnotification_eventnotificationtemplate", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "eventNotificationTemplate", value: eventNotificationTemplate)

		return request
	}

	/**  Update event notification template status by id  */
	public static func updateStatus(id: Int, status: EventNotificationTemplateStatus) -> RequestBuilder<EventNotificationTemplate> {
		let request: RequestBuilder<EventNotificationTemplate> = RequestBuilder<EventNotificationTemplate>(service: "eventnotification_eventnotificationtemplate", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
