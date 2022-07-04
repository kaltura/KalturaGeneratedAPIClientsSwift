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

open class Scheduler: ObjectBase {

	public class SchedulerTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var configuredId: BaseTokenizedObject {
			get {
				return self.append("configuredId") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var host: BaseTokenizedObject {
			get {
				return self.append("host") 
			}
		}
		
		public var statuses: ArrayTokenizedObject<SchedulerStatus.SchedulerStatusTokenizer> {
			get {
				return ArrayTokenizedObject<SchedulerStatus.SchedulerStatusTokenizer>(self.append("statuses"))
			} 
		}
		
		public var configs: ArrayTokenizedObject<SchedulerConfig.SchedulerConfigTokenizer> {
			get {
				return ArrayTokenizedObject<SchedulerConfig.SchedulerConfigTokenizer>(self.append("configs"))
			} 
		}
		
		public var workers: ArrayTokenizedObject<SchedulerWorker.SchedulerWorkerTokenizer> {
			get {
				return ArrayTokenizedObject<SchedulerWorker.SchedulerWorkerTokenizer>(self.append("workers"))
			} 
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var lastStatus: BaseTokenizedObject {
			get {
				return self.append("lastStatus") 
			}
		}
		
		public var lastStatusStr: BaseTokenizedObject {
			get {
				return self.append("lastStatusStr") 
			}
		}
	}

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


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(configuredId: String) {
		self.dict["configuredId"] = configuredId
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(host: String) {
		self.dict["host"] = host
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(lastStatus: String) {
		self.dict["lastStatus"] = lastStatus
	}
	
	public func setMultiRequestToken(lastStatusStr: String) {
		self.dict["lastStatusStr"] = lastStatusStr
	}
	
	public override func populate(_ dict: [String: Any]) throws {
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

	internal override func toDictionary() -> [String: Any] {
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

