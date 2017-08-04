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

/**  widget service for full widget management  */
public final class WidgetService{

	/**  Add new widget, can be attached to entry or kshow   SourceWidget is ignored.  */
	public static func add(widget: Widget) -> RequestBuilder<Widget> {
		let request: RequestBuilder<Widget> = RequestBuilder<Widget>(service: "widget", action: "add")
			.setBody(key: "widget", value: widget)

		return request
	}

	/**  Add widget based on existing widget.   Must provide valid sourceWidgetId  */
	public static func clone(widget: Widget) -> RequestBuilder<Widget> {
		let request: RequestBuilder<Widget> = RequestBuilder<Widget>(service: "widget", action: "clone")
			.setBody(key: "widget", value: widget)

		return request
	}

	/**  Get widget by id  */
	public static func get(id: String) -> RequestBuilder<Widget> {
		let request: RequestBuilder<Widget> = RequestBuilder<Widget>(service: "widget", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<WidgetListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: WidgetFilter?) -> RequestBuilder<WidgetListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  Retrieve a list of available widget depends on the filter given  */
	public static func list(filter: WidgetFilter?, pager: FilterPager?) -> RequestBuilder<WidgetListResponse> {
		let request: RequestBuilder<WidgetListResponse> = RequestBuilder<WidgetListResponse>(service: "widget", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update exisiting widget  */
	public static func update(id: String, widget: Widget) -> RequestBuilder<Widget> {
		let request: RequestBuilder<Widget> = RequestBuilder<Widget>(service: "widget", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "widget", value: widget)

		return request
	}
}
