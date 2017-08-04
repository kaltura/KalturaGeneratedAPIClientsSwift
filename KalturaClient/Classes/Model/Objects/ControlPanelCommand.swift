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

open class ControlPanelCommand: ObjectBase {

	/**  The id of the Category  */
	public var id: Int? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Creator name  */
	public var createdBy: String? = nil
	/**  Update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Updater name  */
	public var updatedBy: String? = nil
	/**  Creator id  */
	public var createdById: Int? = nil
	/**  The id of the scheduler that the command refers to  */
	public var schedulerId: Int? = nil
	/**  The id of the scheduler worker that the command refers to  */
	public var workerId: Int? = nil
	/**  The id of the scheduler worker as configured in the ini file  */
	public var workerConfiguredId: Int? = nil
	/**  The name of the scheduler worker that the command refers to  */
	public var workerName: Int? = nil
	/**  The index of the batch process that the command refers to  */
	public var batchIndex: Int? = nil
	/**  The command type - stop / start / config  */
	public var type: ControlPanelCommandType? = nil
	/**  The command target type - data center / scheduler / job / job type  */
	public var targetType: ControlPanelCommandTargetType? = nil
	/**  The command status  */
	public var status: ControlPanelCommandStatus? = nil
	/**  The reason for the command  */
	public var cause: String? = nil
	/**  Command description  */
	public var description: String? = nil
	/**  Error description  */
	public var errorDescription: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["createdBy"] != nil {
			createdBy = dict["createdBy"] as? String
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["updatedBy"] != nil {
			updatedBy = dict["updatedBy"] as? String
		}
		if dict["createdById"] != nil {
			createdById = dict["createdById"] as? Int
		}
		if dict["schedulerId"] != nil {
			schedulerId = dict["schedulerId"] as? Int
		}
		if dict["workerId"] != nil {
			workerId = dict["workerId"] as? Int
		}
		if dict["workerConfiguredId"] != nil {
			workerConfiguredId = dict["workerConfiguredId"] as? Int
		}
		if dict["workerName"] != nil {
			workerName = dict["workerName"] as? Int
		}
		if dict["batchIndex"] != nil {
			batchIndex = dict["batchIndex"] as? Int
		}
		if dict["type"] != nil {
			type = ControlPanelCommandType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["targetType"] != nil {
			targetType = ControlPanelCommandTargetType(rawValue: (dict["targetType"] as? Int)!)
		}
		if dict["status"] != nil {
			status = ControlPanelCommandStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["cause"] != nil {
			cause = dict["cause"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(createdBy != nil) {
			dict["createdBy"] = createdBy!
		}
		if(updatedBy != nil) {
			dict["updatedBy"] = updatedBy!
		}
		if(createdById != nil) {
			dict["createdById"] = createdById!
		}
		if(schedulerId != nil) {
			dict["schedulerId"] = schedulerId!
		}
		if(workerId != nil) {
			dict["workerId"] = workerId!
		}
		if(workerConfiguredId != nil) {
			dict["workerConfiguredId"] = workerConfiguredId!
		}
		if(workerName != nil) {
			dict["workerName"] = workerName!
		}
		if(batchIndex != nil) {
			dict["batchIndex"] = batchIndex!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(targetType != nil) {
			dict["targetType"] = targetType!.rawValue
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(cause != nil) {
			dict["cause"] = cause!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(errorDescription != nil) {
			dict["errorDescription"] = errorDescription!
		}
		return dict
	}
}

