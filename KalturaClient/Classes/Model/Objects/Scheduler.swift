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

open class Scheduler: ObjectBase {

	/**  The id of the Scheduler  */
	public var id: Int? = nil
	/**  The id as configured in the batch config  */
	public var configuredId: Int? = nil
	/**  The scheduler name  */
	public var name: String? = nil
	/**  The host name  */
	public var host: String? = nil
	/**  Array of the last statuses  */
	public var statuses: Array<SchedulerStatus>? = nil
	/**  Array of the last configs  */
	public var configs: Array<SchedulerConfig>? = nil
	/**  Array of the workers  */
	public var workers: Array<SchedulerWorker>? = nil
	/**  creation time  */
	public var createdAt: Int? = nil
	/**  last status time  */
	public var lastStatus: Int? = nil
	/**  last status formated  */
	public var lastStatusStr: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["configuredId"] != nil {
			configuredId = dict["configuredId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["host"] != nil {
			host = dict["host"] as? String
		}
		if dict["statuses"] != nil {
			statuses = try JSONParser.parse(array: dict["statuses"] as! [Any])
		}
		if dict["configs"] != nil {
			configs = try JSONParser.parse(array: dict["configs"] as! [Any])
		}
		if dict["workers"] != nil {
			workers = try JSONParser.parse(array: dict["workers"] as! [Any])
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["lastStatus"] != nil {
			lastStatus = dict["lastStatus"] as? Int
		}
		if dict["lastStatusStr"] != nil {
			lastStatusStr = dict["lastStatusStr"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(configuredId != nil) {
			dict["configuredId"] = configuredId!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(host != nil) {
			dict["host"] = host!
		}
		return dict
	}
}

