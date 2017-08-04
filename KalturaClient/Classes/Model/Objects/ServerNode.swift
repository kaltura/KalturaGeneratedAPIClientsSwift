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

open class ServerNode: ObjectBase {

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var heartbeatTime: Int? = nil
	/**  serverNode name  */
	public var name: String? = nil
	/**  serverNode uniqe system name  */
	public var systemName: String? = nil
	public var description: String? = nil
	/**  serverNode hostName  */
	public var hostName: String? = nil
	public var status: ServerNodeStatus? = nil
	public var type: ServerNodeType? = nil
	/**  serverNode tags  */
	public var tags: String? = nil
	/**  DC where the serverNode is located  */
	public var dc: Int? = nil
	/**  Id of the parent serverNode  */
	public var parentId: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["heartbeatTime"] != nil {
			heartbeatTime = dict["heartbeatTime"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["hostName"] != nil {
			hostName = dict["hostName"] as? String
		}
		if dict["status"] != nil {
			status = ServerNodeStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["type"] != nil {
			type = ServerNodeType(rawValue: "\(dict["type"]!)")
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["dc"] != nil {
			dc = dict["dc"] as? Int
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(hostName != nil) {
			dict["hostName"] = hostName!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(parentId != nil) {
			dict["parentId"] = parentId!
		}
		return dict
	}
}

