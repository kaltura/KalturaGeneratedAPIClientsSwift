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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class ConvertProfileJobData: JobData {

	public class ConvertProfileJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var inputFileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("inputFileSyncLocalPath") 
			}
		}
		
		public var thumbHeight: BaseTokenizedObject {
			get {
				return self.append("thumbHeight") 
			}
		}
		
		public var thumbBitrate: BaseTokenizedObject {
			get {
				return self.append("thumbBitrate") 
			}
		}
	}

	public var inputFileSyncLocalPath: String? = nil
	/**  The height of last created thumbnail, will be used to comapare if this thumbnail
	  is the best we can have  */
	public var thumbHeight: Int? = nil
	/**  The bit rate of last created thumbnail, will be used to comapare if this
	  thumbnail is the best we can have  */
	public var thumbBitrate: Int? = nil


	public func setMultiRequestToken(inputFileSyncLocalPath: String) {
		self.dict["inputFileSyncLocalPath"] = inputFileSyncLocalPath
	}
	
	public func setMultiRequestToken(thumbHeight: String) {
		self.dict["thumbHeight"] = thumbHeight
	}
	
	public func setMultiRequestToken(thumbBitrate: String) {
		self.dict["thumbBitrate"] = thumbBitrate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["inputFileSyncLocalPath"] != nil {
			inputFileSyncLocalPath = dict["inputFileSyncLocalPath"] as? String
		}
		if dict["thumbHeight"] != nil {
			thumbHeight = dict["thumbHeight"] as? Int
		}
		if dict["thumbBitrate"] != nil {
			thumbBitrate = dict["thumbBitrate"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(inputFileSyncLocalPath != nil) {
			dict["inputFileSyncLocalPath"] = inputFileSyncLocalPath!
		}
		if(thumbHeight != nil) {
			dict["thumbHeight"] = thumbHeight!
		}
		if(thumbBitrate != nil) {
			dict["thumbBitrate"] = thumbBitrate!
		}
		return dict
	}
}

