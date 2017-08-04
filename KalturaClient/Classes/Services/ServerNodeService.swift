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

/**  Server Node service  */
public final class ServerNodeService{

	/**  Adds a server node to the Kaltura DB.  */
	public static func add(serverNode: ServerNode) -> RequestBuilder<ServerNode> {
		let request: RequestBuilder<ServerNode> = RequestBuilder<ServerNode>(service: "servernode", action: "add")
			.setBody(key: "serverNode", value: serverNode)

		return request
	}

	/**  delete server node by id  */
	public static func delete(serverNodeId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "servernode", action: "delete")
			.setBody(key: "serverNodeId", value: serverNodeId)

		return request
	}

	/**  Disable server node by id  */
	public static func disable(serverNodeId: String) -> RequestBuilder<ServerNode> {
		let request: RequestBuilder<ServerNode> = RequestBuilder<ServerNode>(service: "servernode", action: "disable")
			.setBody(key: "serverNodeId", value: serverNodeId)

		return request
	}

	/**  Enable server node by id  */
	public static func enable(serverNodeId: String) -> RequestBuilder<ServerNode> {
		let request: RequestBuilder<ServerNode> = RequestBuilder<ServerNode>(service: "servernode", action: "enable")
			.setBody(key: "serverNodeId", value: serverNodeId)

		return request
	}

	/**  Get server node by id  */
	public static func get(serverNodeId: Int) -> RequestBuilder<ServerNode> {
		let request: RequestBuilder<ServerNode> = RequestBuilder<ServerNode>(service: "servernode", action: "get")
			.setBody(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public static func list() -> RequestBuilder<ServerNodeListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: ServerNodeFilter?) -> RequestBuilder<ServerNodeListResponse> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: ServerNodeFilter?, pager: FilterPager?) -> RequestBuilder<ServerNodeListResponse> {
		let request: RequestBuilder<ServerNodeListResponse> = RequestBuilder<ServerNodeListResponse>(service: "servernode", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func reportStatus(hostName: String) -> RequestBuilder<ServerNode> {
		return reportStatus(hostName: hostName, serverNode: nil)
	}

	/**  Update server node status  */
	public static func reportStatus(hostName: String, serverNode: ServerNode?) -> RequestBuilder<ServerNode> {
		let request: RequestBuilder<ServerNode> = RequestBuilder<ServerNode>(service: "servernode", action: "reportStatus")
			.setBody(key: "hostName", value: hostName)
			.setBody(key: "serverNode", value: serverNode)

		return request
	}

	/**  Update server node by id  */
	public static func update(serverNodeId: Int, serverNode: ServerNode) -> RequestBuilder<ServerNode> {
		let request: RequestBuilder<ServerNode> = RequestBuilder<ServerNode>(service: "servernode", action: "update")
			.setBody(key: "serverNodeId", value: serverNodeId)
			.setBody(key: "serverNode", value: serverNode)

		return request
	}
}
