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

open class BatchHistoryData: ObjectBase {

	public class BatchHistoryDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
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
		
		public var batchIndex: BaseTokenizedObject {
			get {
				return self.append("batchIndex") 
			}
		}
		
		public var timeStamp: BaseTokenizedObject {
			get {
				return self.append("timeStamp") 
			}
		}
		
		public var message: BaseTokenizedObject {
			get {
				return self.append("message") 
			}
		}
		
		public var errType: BaseTokenizedObject {
			get {
				return self.append("errType") 
			}
		}
		
		public var errNumber: BaseTokenizedObject {
			get {
				return self.append("errNumber") 
			}
		}
		
		public var hostName: BaseTokenizedObject {
			get {
				return self.append("hostName") 
			}
		}
		
		public var sessionId: BaseTokenizedObject {
			get {
				return self.append("sessionId") 
			}
		}
		
		public var schedulerName: BaseTokenizedObject {
			get {
				return self.append("schedulerName") 
			}
		}
	}

	public var schedulerId: Int? = nil
	public var workerId: Int? = nil
	public var batchIndex: Int? = nil
	public var timeStamp: Int? = nil
	public var message: String? = nil
	public var errType: Int? = nil
	public var errNumber: Int? = nil
	public var hostName: String? = nil
	public var sessionId: String? = nil
	public var schedulerName: String? = nil


	public func setMultiRequestToken(schedulerId: String) {
		self.dict["schedulerId"] = schedulerId
	}
	
	public func setMultiRequestToken(workerId: String) {
		self.dict["workerId"] = workerId
	}
	
	public func setMultiRequestToken(batchIndex: String) {
		self.dict["batchIndex"] = batchIndex
	}
	
	public func setMultiRequestToken(timeStamp: String) {
		self.dict["timeStamp"] = timeStamp
	}
	
	public func setMultiRequestToken(message: String) {
		self.dict["message"] = message
	}
	
	public func setMultiRequestToken(errType: String) {
		self.dict["errType"] = errType
	}
	
	public func setMultiRequestToken(errNumber: String) {
		self.dict["errNumber"] = errNumber
	}
	
	public func setMultiRequestToken(hostName: String) {
		self.dict["hostName"] = hostName
	}
	
	public func setMultiRequestToken(sessionId: String) {
		self.dict["sessionId"] = sessionId
	}
	
	public func setMultiRequestToken(schedulerName: String) {
		self.dict["schedulerName"] = schedulerName
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["schedulerId"] != nil {
			schedulerId = dict["schedulerId"] as? Int
		}
		if dict["workerId"] != nil {
			workerId = dict["workerId"] as? Int
		}
		if dict["batchIndex"] != nil {
			batchIndex = dict["batchIndex"] as? Int
		}
		if dict["timeStamp"] != nil {
			timeStamp = dict["timeStamp"] as? Int
		}
		if dict["message"] != nil {
			message = dict["message"] as? String
		}
		if dict["errType"] != nil {
			errType = dict["errType"] as? Int
		}
		if dict["errNumber"] != nil {
			errNumber = dict["errNumber"] as? Int
		}
		if dict["hostName"] != nil {
			hostName = dict["hostName"] as? String
		}
		if dict["sessionId"] != nil {
			sessionId = dict["sessionId"] as? String
		}
		if dict["schedulerName"] != nil {
			schedulerName = dict["schedulerName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(schedulerId != nil) {
			dict["schedulerId"] = schedulerId!
		}
		if(workerId != nil) {
			dict["workerId"] = workerId!
		}
		if(batchIndex != nil) {
			dict["batchIndex"] = batchIndex!
		}
		if(timeStamp != nil) {
			dict["timeStamp"] = timeStamp!
		}
		if(message != nil) {
			dict["message"] = message!
		}
		if(errType != nil) {
			dict["errType"] = errType!
		}
		if(errNumber != nil) {
			dict["errNumber"] = errNumber!
		}
		if(hostName != nil) {
			dict["hostName"] = hostName!
		}
		if(sessionId != nil) {
			dict["sessionId"] = sessionId!
		}
		if(schedulerName != nil) {
			dict["schedulerName"] = schedulerName!
		}
		return dict
	}
}

