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

open class SchedulerWorker: ObjectBase {

	/**  The id of the Worker  */
	public var id: Int? = nil
	/**  The id as configured in the batch config  */
	public var configuredId: Int? = nil
	/**  The id of the Scheduler  */
	public var schedulerId: Int? = nil
	/**  The id of the scheduler as configured in the batch config  */
	public var schedulerConfiguredId: Int? = nil
	/**  The worker type  */
	public var type: BatchJobType? = nil
	/**  The friendly name of the type  */
	public var typeName: String? = nil
	/**  The scheduler name  */
	public var name: String? = nil
	/**  Array of the last statuses  */
	public var statuses: Array<SchedulerStatus>? = nil
	/**  Array of the last configs  */
	public var configs: Array<SchedulerConfig>? = nil
	/**  Array of jobs that locked to this worker  */
	public var lockedJobs: Array<BatchJob>? = nil
	/**  Avarage time between creation and queue time  */
	public var avgWait: Int? = nil
	/**  Avarage time between queue time end finish time  */
	public var avgWork: Int? = nil
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
		if dict["schedulerId"] != nil {
			schedulerId = dict["schedulerId"] as? Int
		}
		if dict["schedulerConfiguredId"] != nil {
			schedulerConfiguredId = dict["schedulerConfiguredId"] as? Int
		}
		if dict["type"] != nil {
			type = BatchJobType(rawValue: "\(dict["type"]!)")
		}
		if dict["typeName"] != nil {
			typeName = dict["typeName"] as? String
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["statuses"] != nil {
			statuses = try JSONParser.parse(array: dict["statuses"] as! [Any])
		}
		if dict["configs"] != nil {
			configs = try JSONParser.parse(array: dict["configs"] as! [Any])
		}
		if dict["lockedJobs"] != nil {
			lockedJobs = try JSONParser.parse(array: dict["lockedJobs"] as! [Any])
		}
		if dict["avgWait"] != nil {
			avgWait = dict["avgWait"] as? Int
		}
		if dict["avgWork"] != nil {
			avgWork = dict["avgWork"] as? Int
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
		if(schedulerId != nil) {
			dict["schedulerId"] = schedulerId!
		}
		if(schedulerConfiguredId != nil) {
			dict["schedulerConfiguredId"] = schedulerConfiguredId!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(typeName != nil) {
			dict["typeName"] = typeName!
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(statuses != nil) {
			dict["statuses"] = statuses!.map { value in value.toDictionary() }
		}
		if(configs != nil) {
			dict["configs"] = configs!.map { value in value.toDictionary() }
		}
		if(lockedJobs != nil) {
			dict["lockedJobs"] = lockedJobs!.map { value in value.toDictionary() }
		}
		if(avgWait != nil) {
			dict["avgWait"] = avgWait!
		}
		if(avgWork != nil) {
			dict["avgWork"] = avgWork!
		}
		if(lastStatus != nil) {
			dict["lastStatus"] = lastStatus!
		}
		if(lastStatusStr != nil) {
			dict["lastStatusStr"] = lastStatusStr!
		}
		return dict
	}
}

