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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class ConvertLiveSegmentJobData: JobData {

	public class ConvertLiveSegmentJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var mediaServerIndex: BaseTokenizedObject {
			get {
				return self.append("mediaServerIndex") 
			}
		}
		
		public var fileIndex: BaseTokenizedObject {
			get {
				return self.append("fileIndex") 
			}
		}
		
		public var srcFilePath: BaseTokenizedObject {
			get {
				return self.append("srcFilePath") 
			}
		}
		
		public var destFilePath: BaseTokenizedObject {
			get {
				return self.append("destFilePath") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
		
		public var destDataFilePath: BaseTokenizedObject {
			get {
				return self.append("destDataFilePath") 
			}
		}
	}

	/**  Live stream entry id  */
	public var entryId: String? = nil
	public var assetId: String? = nil
	/**  Primary or secondary media server  */
	public var mediaServerIndex: EntryServerNodeType? = nil
	/**  The index of the file within the entry  */
	public var fileIndex: Int? = nil
	/**  The recorded live media  */
	public var srcFilePath: String? = nil
	/**  The output file  */
	public var destFilePath: String? = nil
	/**  Duration of the live entry including all recorded segments including the current  */
	public var endTime: Double? = nil
	/**  The data output file  */
	public var destDataFilePath: String? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(mediaServerIndex: String) {
		self.dict["mediaServerIndex"] = mediaServerIndex
	}
	
	public func setMultiRequestToken(fileIndex: String) {
		self.dict["fileIndex"] = fileIndex
	}
	
	public func setMultiRequestToken(srcFilePath: String) {
		self.dict["srcFilePath"] = srcFilePath
	}
	
	public func setMultiRequestToken(destFilePath: String) {
		self.dict["destFilePath"] = destFilePath
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(destDataFilePath: String) {
		self.dict["destDataFilePath"] = destDataFilePath
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["mediaServerIndex"] != nil {
			mediaServerIndex = EntryServerNodeType(rawValue: "\(dict["mediaServerIndex"]!)")
		}
		if dict["fileIndex"] != nil {
			fileIndex = dict["fileIndex"] as? Int
		}
		if dict["srcFilePath"] != nil {
			srcFilePath = dict["srcFilePath"] as? String
		}
		if dict["destFilePath"] != nil {
			destFilePath = dict["destFilePath"] as? String
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Double
		}
		if dict["destDataFilePath"] != nil {
			destDataFilePath = dict["destDataFilePath"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(mediaServerIndex != nil) {
			dict["mediaServerIndex"] = mediaServerIndex!.rawValue
		}
		if(fileIndex != nil) {
			dict["fileIndex"] = fileIndex!
		}
		if(srcFilePath != nil) {
			dict["srcFilePath"] = srcFilePath!
		}
		if(destFilePath != nil) {
			dict["destFilePath"] = destFilePath!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(destDataFilePath != nil) {
			dict["destDataFilePath"] = destDataFilePath!
		}
		return dict
	}
}

