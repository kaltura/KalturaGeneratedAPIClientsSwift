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

open class ZoomDropFolderFile: DropFolderFile {

	public class ZoomDropFolderFileTokenizer: DropFolderFile.DropFolderFileTokenizer {
		
		public func meetingMetadata<T: ZoomMeetingMetadata.ZoomMeetingMetadataTokenizer>() -> T {
			return T(self.append("meetingMetadata"))
		}
		
		public func recordingFile<T: ZoomRecordingFile.ZoomRecordingFileTokenizer>() -> T {
			return T(self.append("recordingFile"))
		}
		
		public var parentEntryId: BaseTokenizedObject {
			get {
				return self.append("parentEntryId") 
			}
		}
		
		public var isParentEntry: BaseTokenizedObject {
			get {
				return self.append("isParentEntry") 
			}
		}
	}

	public var meetingMetadata: ZoomMeetingMetadata? = nil
	public var recordingFile: ZoomRecordingFile? = nil
	public var parentEntryId: String? = nil
	public var isParentEntry: Bool? = nil


	public func setMultiRequestToken(parentEntryId: String) {
		self.dict["parentEntryId"] = parentEntryId
	}
	
	public func setMultiRequestToken(isParentEntry: String) {
		self.dict["isParentEntry"] = isParentEntry
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["meetingMetadata"] != nil {
		meetingMetadata = try JSONParser.parse(object: dict["meetingMetadata"] as! [String: Any])		}
		if dict["recordingFile"] != nil {
		recordingFile = try JSONParser.parse(object: dict["recordingFile"] as! [String: Any])		}
		if dict["parentEntryId"] != nil {
			parentEntryId = dict["parentEntryId"] as? String
		}
		if dict["isParentEntry"] != nil {
			isParentEntry = dict["isParentEntry"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(meetingMetadata != nil) {
			dict["meetingMetadata"] = meetingMetadata!.toDictionary()
		}
		if(recordingFile != nil) {
			dict["recordingFile"] = recordingFile!.toDictionary()
		}
		if(parentEntryId != nil) {
			dict["parentEntryId"] = parentEntryId!
		}
		if(isParentEntry != nil) {
			dict["isParentEntry"] = isParentEntry!
		}
		return dict
	}
}

