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

open class ZoomRecordingFile: ObjectBase {

	public class ZoomRecordingFileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var recordingStart: BaseTokenizedObject {
			get {
				return self.append("recordingStart") 
			}
		}
		
		public var fileType: BaseTokenizedObject {
			get {
				return self.append("fileType") 
			}
		}
		
		public var downloadUrl: BaseTokenizedObject {
			get {
				return self.append("downloadUrl") 
			}
		}
		
		public var fileExtension: BaseTokenizedObject {
			get {
				return self.append("fileExtension") 
			}
		}
		
		public var downloadToken: BaseTokenizedObject {
			get {
				return self.append("downloadToken") 
			}
		}
	}

	public var id: String? = nil
	public var recordingStart: String? = nil
	public var fileType: RecordingFileType? = nil
	public var downloadUrl: String? = nil
	public var fileExtension: String? = nil
	public var downloadToken: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(recordingStart: String) {
		self.dict["recordingStart"] = recordingStart
	}
	
	public func setMultiRequestToken(fileType: String) {
		self.dict["fileType"] = fileType
	}
	
	public func setMultiRequestToken(downloadUrl: String) {
		self.dict["downloadUrl"] = downloadUrl
	}
	
	public func setMultiRequestToken(fileExtension: String) {
		self.dict["fileExtension"] = fileExtension
	}
	
	public func setMultiRequestToken(downloadToken: String) {
		self.dict["downloadToken"] = downloadToken
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["recordingStart"] != nil {
			recordingStart = dict["recordingStart"] as? String
		}
		if dict["fileType"] != nil {
			fileType = RecordingFileType(rawValue: (dict["fileType"] as? Int)!)
		}
		if dict["downloadUrl"] != nil {
			downloadUrl = dict["downloadUrl"] as? String
		}
		if dict["fileExtension"] != nil {
			fileExtension = dict["fileExtension"] as? String
		}
		if dict["downloadToken"] != nil {
			downloadToken = dict["downloadToken"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(recordingStart != nil) {
			dict["recordingStart"] = recordingStart!
		}
		if(fileType != nil) {
			dict["fileType"] = fileType!.rawValue
		}
		if(downloadUrl != nil) {
			dict["downloadUrl"] = downloadUrl!
		}
		if(fileExtension != nil) {
			dict["fileExtension"] = fileExtension!
		}
		if(downloadToken != nil) {
			dict["downloadToken"] = downloadToken!
		}
		return dict
	}
}

