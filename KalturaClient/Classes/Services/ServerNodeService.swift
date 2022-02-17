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
// Copyright (C) 2006-2022  Kaltura Inc.
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

/**  Server Node service  */
public final class ServerNodeService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func serverNode<T: ServerNode.ServerNodeTokenizer>() -> T {
			return T(self.append("serverNode"))
		}
	}

	/**  Adds a server node to the Kaltura DB.  */
	public static func add(serverNode: ServerNode) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, AddTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, AddTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, AddTokenizer>(service: "servernode", action: "add")
			.setParam(key: "serverNode", value: serverNode)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
	}

	/**  delete server node by id  */
	public static func delete(serverNodeId: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "servernode", action: "delete")
			.setParam(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public class DisableTokenizer: ClientTokenizer  {
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
	}

	/**  Disable server node by id  */
	public static func disable(serverNodeId: String) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, DisableTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, DisableTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, DisableTokenizer>(service: "servernode", action: "disable")
			.setParam(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public class EnableTokenizer: ClientTokenizer  {
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
	}

	/**  Enable server node by id  */
	public static func enable(serverNodeId: String) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, EnableTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, EnableTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, EnableTokenizer>(service: "servernode", action: "enable")
			.setParam(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
	}

	/**  Get server node by id  */
	public static func get(serverNodeId: Int) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, GetTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, GetTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, GetTokenizer>(service: "servernode", action: "get")
			.setParam(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public class GetFullPathTokenizer: ClientTokenizer  {
		
		public var hostName: BaseTokenizedObject {
			get {
				return self.append("hostName") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var deliveryFormat: BaseTokenizedObject {
			get {
				return self.append("deliveryFormat") 
			}
		}
		
		public var deliveryType: BaseTokenizedObject {
			get {
				return self.append("deliveryType") 
			}
		}
	}

	public static func getFullPath(hostName: String) -> RequestBuilder<String, BaseTokenizedObject, GetFullPathTokenizer> {
		return getFullPath(hostName: hostName, protocol_: "http")
	}

	public static func getFullPath(hostName: String, protocol_: String?) -> RequestBuilder<String, BaseTokenizedObject, GetFullPathTokenizer> {
		return getFullPath(hostName: hostName, protocol_: protocol_, deliveryFormat: nil)
	}

	public static func getFullPath(hostName: String, protocol_: String?, deliveryFormat: String?) -> RequestBuilder<String, BaseTokenizedObject, GetFullPathTokenizer> {
		return getFullPath(hostName: hostName, protocol_: protocol_, deliveryFormat: deliveryFormat, deliveryType: nil)
	}

	/**  Get the edge server node full path  */
	public static func getFullPath(hostName: String, protocol_: String?, deliveryFormat: String?, deliveryType: String?) -> RequestBuilder<String, BaseTokenizedObject, GetFullPathTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetFullPathTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetFullPathTokenizer>(service: "servernode", action: "getFullPath")
			.setParam(key: "hostName", value: hostName)
			.setParam(key: "protocol", value: protocol_)
			.setParam(key: "deliveryFormat", value: deliveryFormat)
			.setParam(key: "deliveryType", value: deliveryType)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: ServerNodeFilter.ServerNodeFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<ServerNodeListResponse, ServerNodeListResponse.ServerNodeListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: ServerNodeFilter?) -> RequestBuilder<ServerNodeListResponse, ServerNodeListResponse.ServerNodeListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	public static func list(filter: ServerNodeFilter?, pager: FilterPager?) -> RequestBuilder<ServerNodeListResponse, ServerNodeListResponse.ServerNodeListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<ServerNodeListResponse, ServerNodeListResponse.ServerNodeListResponseTokenizer, ListTokenizer> = RequestBuilder<ServerNodeListResponse, ServerNodeListResponse.ServerNodeListResponseTokenizer, ListTokenizer>(service: "servernode", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class MarkOfflineTokenizer: ClientTokenizer  {
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
	}

	/**  Mark server node offline  */
	public static func markOffline(serverNodeId: String) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, MarkOfflineTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, MarkOfflineTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, MarkOfflineTokenizer>(service: "servernode", action: "markOffline")
			.setParam(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public class ReportStatusTokenizer: ClientTokenizer  {
		
		public var hostName: BaseTokenizedObject {
			get {
				return self.append("hostName") 
			}
		}
		
		public func serverNode<T: ServerNode.ServerNodeTokenizer>() -> T {
			return T(self.append("serverNode"))
		}
		
		public var serverNodeStatus: BaseTokenizedObject {
			get {
				return self.append("serverNodeStatus") 
			}
		}
	}

	public static func reportStatus(hostName: String) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, ReportStatusTokenizer> {
		return reportStatus(hostName: hostName, serverNode: nil)
	}

	public static func reportStatus(hostName: String, serverNode: ServerNode?) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, ReportStatusTokenizer> {
		return reportStatus(hostName: hostName, serverNode: serverNode, serverNodeStatus: ServerNodeStatus(rawValue: 1))
	}

	/**  Update server node status  */
	public static func reportStatus(hostName: String, serverNode: ServerNode?, serverNodeStatus: ServerNodeStatus?) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, ReportStatusTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, ReportStatusTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, ReportStatusTokenizer>(service: "servernode", action: "reportStatus")
			.setParam(key: "hostName", value: hostName)
			.setParam(key: "serverNode", value: serverNode)
			.setParam(key: "serverNodeStatus", value: serverNodeStatus?.rawValue)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
		
		public func serverNode<T: ServerNode.ServerNodeTokenizer>() -> T {
			return T(self.append("serverNode"))
		}
	}

	/**  Update server node by id  */
	public static func update(serverNodeId: Int, serverNode: ServerNode) -> RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, UpdateTokenizer> = RequestBuilder<ServerNode, ServerNode.ServerNodeTokenizer, UpdateTokenizer>(service: "servernode", action: "update")
			.setParam(key: "serverNodeId", value: serverNodeId)
			.setParam(key: "serverNode", value: serverNode)

		return request
	}
}
