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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class SchedulerConfig: ObjectBase {

	public class SchedulerConfigTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var createdBy: BaseTokenizedObject {
			get {
				return self.append("createdBy") 
			}
		}
		
		public var updatedBy: BaseTokenizedObject {
			get {
				return self.append("updatedBy") 
			}
		}
		
		public var commandId: BaseTokenizedObject {
			get {
				return self.append("commandId") 
			}
		}
		
		public var commandStatus: BaseTokenizedObject {
			get {
				return self.append("commandStatus") 
			}
		}
		
		public var schedulerId: BaseTokenizedObject {
			get {
				return self.append("schedulerId") 
			}
		}
		
		public var schedulerConfiguredId: BaseTokenizedObject {
			get {
				return self.append("schedulerConfiguredId") 
			}
		}
		
		public var schedulerName: BaseTokenizedObject {
			get {
				return self.append("schedulerName") 
			}
		}
		
		public var workerId: BaseTokenizedObject {
			get {
				return self.append("workerId") 
			}
		}
		
		public var workerConfiguredId: BaseTokenizedObject {
			get {
				return self.append("workerConfiguredId") 
			}
		}
		
		public var workerName: BaseTokenizedObject {
			get {
				return self.append("workerName") 
			}
		}
		
		public var variable: BaseTokenizedObject {
			get {
				return self.append("variable") 
			}
		}
		
		public var variablePart: BaseTokenizedObject {
			get {
				return self.append("variablePart") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
	}

	/**  The id of the Category  */
	public var id: Int? = nil
	/**  Creator name  */
	public var createdBy: String? = nil
	/**  Updater name  */
	public var updatedBy: String? = nil
	/**  Id of the control panel command that created this config item  */
	public var commandId: String? = nil
	/**  The status of the control panel command  */
	public var commandStatus: String? = nil
	/**  The id of the scheduler  */
	public var schedulerId: Int? = nil
	/**  The configured id of the scheduler  */
	public var schedulerConfiguredId: Int? = nil
	/**  The name of the scheduler  */
	public var schedulerName: String? = nil
	/**  The id of the job worker  */
	public var workerId: Int? = nil
	/**  The configured id of the job worker  */
	public var workerConfiguredId: Int? = nil
	/**  The name of the job worker  */
	public var workerName: String? = nil
	/**  The name of the variable  */
	public var variable: String? = nil
	/**  The part of the variable  */
	public var variablePart: String? = nil
	/**  The value of the variable  */
	public var value: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(createdBy: String) {
		self.dict["createdBy"] = createdBy
	}
	
	public func setMultiRequestToken(updatedBy: String) {
		self.dict["updatedBy"] = updatedBy
	}
	
	public func setMultiRequestToken(commandId: String) {
		self.dict["commandId"] = commandId
	}
	
	public func setMultiRequestToken(commandStatus: String) {
		self.dict["commandStatus"] = commandStatus
	}
	
	public func setMultiRequestToken(schedulerId: String) {
		self.dict["schedulerId"] = schedulerId
	}
	
	public func setMultiRequestToken(schedulerConfiguredId: String) {
		self.dict["schedulerConfiguredId"] = schedulerConfiguredId
	}
	
	public func setMultiRequestToken(schedulerName: String) {
		self.dict["schedulerName"] = schedulerName
	}
	
	public func setMultiRequestToken(workerId: String) {
		self.dict["workerId"] = workerId
	}
	
	public func setMultiRequestToken(workerConfiguredId: String) {
		self.dict["workerConfiguredId"] = workerConfiguredId
	}
	
	public func setMultiRequestToken(workerName: String) {
		self.dict["workerName"] = workerName
	}
	
	public func setMultiRequestToken(variable: String) {
		self.dict["variable"] = variable
	}
	
	public func setMultiRequestToken(variablePart: String) {
		self.dict["variablePart"] = variablePart
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdBy"] != nil {
			createdBy = dict["createdBy"] as? String
		}
		if dict["updatedBy"] != nil {
			updatedBy = dict["updatedBy"] as? String
		}
		if dict["commandId"] != nil {
			commandId = dict["commandId"] as? String
		}
		if dict["commandStatus"] != nil {
			commandStatus = dict["commandStatus"] as? String
		}
		if dict["schedulerId"] != nil {
			schedulerId = dict["schedulerId"] as? Int
		}
		if dict["schedulerConfiguredId"] != nil {
			schedulerConfiguredId = dict["schedulerConfiguredId"] as? Int
		}
		if dict["schedulerName"] != nil {
			schedulerName = dict["schedulerName"] as? String
		}
		if dict["workerId"] != nil {
			workerId = dict["workerId"] as? Int
		}
		if dict["workerConfiguredId"] != nil {
			workerConfiguredId = dict["workerConfiguredId"] as? Int
		}
		if dict["workerName"] != nil {
			workerName = dict["workerName"] as? String
		}
		if dict["variable"] != nil {
			variable = dict["variable"] as? String
		}
		if dict["variablePart"] != nil {
			variablePart = dict["variablePart"] as? String
		}
		if dict["value"] != nil {
			value = dict["value"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(createdBy != nil) {
			dict["createdBy"] = createdBy!
		}
		if(updatedBy != nil) {
			dict["updatedBy"] = updatedBy!
		}
		if(commandId != nil) {
			dict["commandId"] = commandId!
		}
		if(commandStatus != nil) {
			dict["commandStatus"] = commandStatus!
		}
		if(schedulerId != nil) {
			dict["schedulerId"] = schedulerId!
		}
		if(schedulerConfiguredId != nil) {
			dict["schedulerConfiguredId"] = schedulerConfiguredId!
		}
		if(schedulerName != nil) {
			dict["schedulerName"] = schedulerName!
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
		if(variable != nil) {
			dict["variable"] = variable!
		}
		if(variablePart != nil) {
			dict["variablePart"] = variablePart!
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

