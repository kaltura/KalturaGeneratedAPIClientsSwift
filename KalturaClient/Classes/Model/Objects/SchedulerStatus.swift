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

open class SchedulerStatus: ObjectBase {

	public class SchedulerStatusTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var schedulerConfiguredId: BaseTokenizedObject {
			get {
				return self.append("schedulerConfiguredId") 
			}
		}
		
		public var workerConfiguredId: BaseTokenizedObject {
			get {
				return self.append("workerConfiguredId") 
			}
		}
		
		public var workerType: BaseTokenizedObject {
			get {
				return self.append("workerType") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var value: BaseTokenizedObject {
			get {
				return self.append("value") 
			}
		}
		
		public var schedulerId: BaseTokenizedObject {
			get {
				return self.append("schedulerId") 
			}
		}
		
		public var workerId: BaseTokenizedObject {
			get {
				return self.append("workerId") 
			}
		}
	}

	/**  The id of the Category  */
	public var id: Int? = nil
	/**  The configured id of the scheduler  */
	public var schedulerConfiguredId: Int? = nil
	/**  The configured id of the job worker  */
	public var workerConfiguredId: Int? = nil
	/**  The type of the job worker.  */
	public var workerType: BatchJobType? = nil
	/**  The status type  */
	public var type: SchedulerStatusType? = nil
	/**  The status value  */
	public var value: Int? = nil
	/**  The id of the scheduler  */
	public var schedulerId: Int? = nil
	/**  The id of the worker  */
	public var workerId: Int? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(schedulerConfiguredId: String) {
		self.dict["schedulerConfiguredId"] = schedulerConfiguredId
	}
	
	public func setMultiRequestToken(workerConfiguredId: String) {
		self.dict["workerConfiguredId"] = workerConfiguredId
	}
	
	public func setMultiRequestToken(workerType: String) {
		self.dict["workerType"] = workerType
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(value: String) {
		self.dict["value"] = value
	}
	
	public func setMultiRequestToken(schedulerId: String) {
		self.dict["schedulerId"] = schedulerId
	}
	
	public func setMultiRequestToken(workerId: String) {
		self.dict["workerId"] = workerId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["schedulerConfiguredId"] != nil {
			schedulerConfiguredId = dict["schedulerConfiguredId"] as? Int
		}
		if dict["workerConfiguredId"] != nil {
			workerConfiguredId = dict["workerConfiguredId"] as? Int
		}
		if dict["workerType"] != nil {
			workerType = BatchJobType(rawValue: "\(dict["workerType"]!)")
		}
		if dict["type"] != nil {
			type = SchedulerStatusType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["value"] != nil {
			value = dict["value"] as? Int
		}
		if dict["schedulerId"] != nil {
			schedulerId = dict["schedulerId"] as? Int
		}
		if dict["workerId"] != nil {
			workerId = dict["workerId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(schedulerConfiguredId != nil) {
			dict["schedulerConfiguredId"] = schedulerConfiguredId!
		}
		if(workerConfiguredId != nil) {
			dict["workerConfiguredId"] = workerConfiguredId!
		}
		if(workerType != nil) {
			dict["workerType"] = workerType!.rawValue
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(value != nil) {
			dict["value"] = value!
		}
		return dict
	}
}

