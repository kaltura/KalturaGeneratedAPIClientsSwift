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
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class ProvisionJobData: JobData {

	public class ProvisionJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var streamID: BaseTokenizedObject {
			get {
				return self.append("streamID") 
			}
		}
		
		public var backupStreamID: BaseTokenizedObject {
			get {
				return self.append("backupStreamID") 
			}
		}
		
		public var rtmp: BaseTokenizedObject {
			get {
				return self.append("rtmp") 
			}
		}
		
		public var encoderIP: BaseTokenizedObject {
			get {
				return self.append("encoderIP") 
			}
		}
		
		public var backupEncoderIP: BaseTokenizedObject {
			get {
				return self.append("backupEncoderIP") 
			}
		}
		
		public var encoderPassword: BaseTokenizedObject {
			get {
				return self.append("encoderPassword") 
			}
		}
		
		public var encoderUsername: BaseTokenizedObject {
			get {
				return self.append("encoderUsername") 
			}
		}
		
		public var endDate: BaseTokenizedObject {
			get {
				return self.append("endDate") 
			}
		}
		
		public var returnVal: BaseTokenizedObject {
			get {
				return self.append("returnVal") 
			}
		}
		
		public var mediaType: BaseTokenizedObject {
			get {
				return self.append("mediaType") 
			}
		}
		
		public var primaryBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("primaryBroadcastingUrl") 
			}
		}
		
		public var secondaryBroadcastingUrl: BaseTokenizedObject {
			get {
				return self.append("secondaryBroadcastingUrl") 
			}
		}
		
		public var streamName: BaseTokenizedObject {
			get {
				return self.append("streamName") 
			}
		}
	}

	public var streamID: String? = nil
	public var backupStreamID: String? = nil
	public var rtmp: String? = nil
	public var encoderIP: String? = nil
	public var backupEncoderIP: String? = nil
	public var encoderPassword: String? = nil
	public var encoderUsername: String? = nil
	public var endDate: Int? = nil
	public var returnVal: String? = nil
	public var mediaType: Int? = nil
	public var primaryBroadcastingUrl: String? = nil
	public var secondaryBroadcastingUrl: String? = nil
	public var streamName: String? = nil


	public func setMultiRequestToken(streamID: String) {
		self.dict["streamID"] = streamID
	}
	
	public func setMultiRequestToken(backupStreamID: String) {
		self.dict["backupStreamID"] = backupStreamID
	}
	
	public func setMultiRequestToken(rtmp: String) {
		self.dict["rtmp"] = rtmp
	}
	
	public func setMultiRequestToken(encoderIP: String) {
		self.dict["encoderIP"] = encoderIP
	}
	
	public func setMultiRequestToken(backupEncoderIP: String) {
		self.dict["backupEncoderIP"] = backupEncoderIP
	}
	
	public func setMultiRequestToken(encoderPassword: String) {
		self.dict["encoderPassword"] = encoderPassword
	}
	
	public func setMultiRequestToken(encoderUsername: String) {
		self.dict["encoderUsername"] = encoderUsername
	}
	
	public func setMultiRequestToken(endDate: String) {
		self.dict["endDate"] = endDate
	}
	
	public func setMultiRequestToken(returnVal: String) {
		self.dict["returnVal"] = returnVal
	}
	
	public func setMultiRequestToken(mediaType: String) {
		self.dict["mediaType"] = mediaType
	}
	
	public func setMultiRequestToken(primaryBroadcastingUrl: String) {
		self.dict["primaryBroadcastingUrl"] = primaryBroadcastingUrl
	}
	
	public func setMultiRequestToken(secondaryBroadcastingUrl: String) {
		self.dict["secondaryBroadcastingUrl"] = secondaryBroadcastingUrl
	}
	
	public func setMultiRequestToken(streamName: String) {
		self.dict["streamName"] = streamName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streamID"] != nil {
			streamID = dict["streamID"] as? String
		}
		if dict["backupStreamID"] != nil {
			backupStreamID = dict["backupStreamID"] as? String
		}
		if dict["rtmp"] != nil {
			rtmp = dict["rtmp"] as? String
		}
		if dict["encoderIP"] != nil {
			encoderIP = dict["encoderIP"] as? String
		}
		if dict["backupEncoderIP"] != nil {
			backupEncoderIP = dict["backupEncoderIP"] as? String
		}
		if dict["encoderPassword"] != nil {
			encoderPassword = dict["encoderPassword"] as? String
		}
		if dict["encoderUsername"] != nil {
			encoderUsername = dict["encoderUsername"] as? String
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int
		}
		if dict["returnVal"] != nil {
			returnVal = dict["returnVal"] as? String
		}
		if dict["mediaType"] != nil {
			mediaType = dict["mediaType"] as? Int
		}
		if dict["primaryBroadcastingUrl"] != nil {
			primaryBroadcastingUrl = dict["primaryBroadcastingUrl"] as? String
		}
		if dict["secondaryBroadcastingUrl"] != nil {
			secondaryBroadcastingUrl = dict["secondaryBroadcastingUrl"] as? String
		}
		if dict["streamName"] != nil {
			streamName = dict["streamName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(streamID != nil) {
			dict["streamID"] = streamID!
		}
		if(backupStreamID != nil) {
			dict["backupStreamID"] = backupStreamID!
		}
		if(rtmp != nil) {
			dict["rtmp"] = rtmp!
		}
		if(encoderIP != nil) {
			dict["encoderIP"] = encoderIP!
		}
		if(backupEncoderIP != nil) {
			dict["backupEncoderIP"] = backupEncoderIP!
		}
		if(encoderPassword != nil) {
			dict["encoderPassword"] = encoderPassword!
		}
		if(encoderUsername != nil) {
			dict["encoderUsername"] = encoderUsername!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(returnVal != nil) {
			dict["returnVal"] = returnVal!
		}
		if(mediaType != nil) {
			dict["mediaType"] = mediaType!
		}
		if(primaryBroadcastingUrl != nil) {
			dict["primaryBroadcastingUrl"] = primaryBroadcastingUrl!
		}
		if(secondaryBroadcastingUrl != nil) {
			dict["secondaryBroadcastingUrl"] = secondaryBroadcastingUrl!
		}
		if(streamName != nil) {
			dict["streamName"] = streamName!
		}
		return dict
	}
}

