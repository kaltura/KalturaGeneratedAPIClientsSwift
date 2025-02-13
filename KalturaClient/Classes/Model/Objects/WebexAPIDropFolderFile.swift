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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class WebexAPIDropFolderFile: DropFolderFile {

	public class WebexAPIDropFolderFileTokenizer: DropFolderFile.DropFolderFileTokenizer {
		
		public var recordingId: BaseTokenizedObject {
			get {
				return self.append("recordingId") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var contentUrl: BaseTokenizedObject {
			get {
				return self.append("contentUrl") 
			}
		}
		
		public var urlExpiry: BaseTokenizedObject {
			get {
				return self.append("urlExpiry") 
			}
		}
		
		public var fileExtension: BaseTokenizedObject {
			get {
				return self.append("fileExtension") 
			}
		}
		
		public var meetingId: BaseTokenizedObject {
			get {
				return self.append("meetingId") 
			}
		}
		
		public var recordingStartTime: BaseTokenizedObject {
			get {
				return self.append("recordingStartTime") 
			}
		}
		
		public var hostEmail: BaseTokenizedObject {
			get {
				return self.append("hostEmail") 
			}
		}
	}

	public var recordingId: String? = nil
	public var description: String? = nil
	public var contentUrl: String? = nil
	public var urlExpiry: Int? = nil
	public var fileExtension: String? = nil
	public var meetingId: String? = nil
	public var recordingStartTime: Int? = nil
	public var hostEmail: String? = nil


	public func setMultiRequestToken(recordingId: String) {
		self.dict["recordingId"] = recordingId
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(contentUrl: String) {
		self.dict["contentUrl"] = contentUrl
	}
	
	public func setMultiRequestToken(urlExpiry: String) {
		self.dict["urlExpiry"] = urlExpiry
	}
	
	public func setMultiRequestToken(fileExtension: String) {
		self.dict["fileExtension"] = fileExtension
	}
	
	public func setMultiRequestToken(meetingId: String) {
		self.dict["meetingId"] = meetingId
	}
	
	public func setMultiRequestToken(recordingStartTime: String) {
		self.dict["recordingStartTime"] = recordingStartTime
	}
	
	public func setMultiRequestToken(hostEmail: String) {
		self.dict["hostEmail"] = hostEmail
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["recordingId"] != nil {
			recordingId = dict["recordingId"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["contentUrl"] != nil {
			contentUrl = dict["contentUrl"] as? String
		}
		if dict["urlExpiry"] != nil {
			urlExpiry = dict["urlExpiry"] as? Int
		}
		if dict["fileExtension"] != nil {
			fileExtension = dict["fileExtension"] as? String
		}
		if dict["meetingId"] != nil {
			meetingId = dict["meetingId"] as? String
		}
		if dict["recordingStartTime"] != nil {
			recordingStartTime = dict["recordingStartTime"] as? Int
		}
		if dict["hostEmail"] != nil {
			hostEmail = dict["hostEmail"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(recordingId != nil) {
			dict["recordingId"] = recordingId!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(contentUrl != nil) {
			dict["contentUrl"] = contentUrl!
		}
		if(urlExpiry != nil) {
			dict["urlExpiry"] = urlExpiry!
		}
		if(fileExtension != nil) {
			dict["fileExtension"] = fileExtension!
		}
		if(meetingId != nil) {
			dict["meetingId"] = meetingId!
		}
		if(recordingStartTime != nil) {
			dict["recordingStartTime"] = recordingStartTime!
		}
		if(hostEmail != nil) {
			dict["hostEmail"] = hostEmail!
		}
		return dict
	}
}

