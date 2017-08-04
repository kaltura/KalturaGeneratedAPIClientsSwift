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

open class ScheduledTaskProfile: ObjectBase {

	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var name: String? = nil
	public var systemName: String? = nil
	public var description: String? = nil
	public var status: ScheduledTaskProfileStatus? = nil
	/**  The type of engine to use to list objects using the given "objectFilter"  */
	public var objectFilterEngineType: ObjectFilterEngineType? = nil
	/**  A filter object (inherits KalturaFilter) that is used to list objects for
	  scheduled tasks  */
	public var objectFilter: Filter? = nil
	/**  A list of tasks to execute on the founded objects  */
	public var objectTasks: Array<ObjectTask>? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var lastExecutionStartedAt: Int? = nil
	/**  The maximum number of result count allowed to be processed by this profile per
	  execution  */
	public var maxTotalCountAllowed: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
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
		if dict["status"] != nil {
			status = ScheduledTaskProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["objectFilterEngineType"] != nil {
			objectFilterEngineType = ObjectFilterEngineType(rawValue: "\(dict["objectFilterEngineType"]!)")
		}
		if dict["objectFilter"] != nil {
		objectFilter = try JSONParser.parse(object: dict["objectFilter"] as! [String: Any])		}
		if dict["objectTasks"] != nil {
			objectTasks = try JSONParser.parse(array: dict["objectTasks"] as! [Any])
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["lastExecutionStartedAt"] != nil {
			lastExecutionStartedAt = dict["lastExecutionStartedAt"] as? Int
		}
		if dict["maxTotalCountAllowed"] != nil {
			maxTotalCountAllowed = dict["maxTotalCountAllowed"] as? Int
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
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(objectFilterEngineType != nil) {
			dict["objectFilterEngineType"] = objectFilterEngineType!.rawValue
		}
		if(objectFilter != nil) {
			dict["objectFilter"] = objectFilter!.toDictionary()
		}
		if(objectTasks != nil) {
			dict["objectTasks"] = objectTasks!.map { value in value.toDictionary() }
		}
		if(lastExecutionStartedAt != nil) {
			dict["lastExecutionStartedAt"] = lastExecutionStartedAt!
		}
		if(maxTotalCountAllowed != nil) {
			dict["maxTotalCountAllowed"] = maxTotalCountAllowed!
		}
		return dict
	}
}

