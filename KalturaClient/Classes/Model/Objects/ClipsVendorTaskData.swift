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

open class ClipsVendorTaskData: LocalizedVendorTaskData {

	public class ClipsVendorTaskDataTokenizer: LocalizedVendorTaskData.LocalizedVendorTaskDataTokenizer {
		
		public var clipsDuration: BaseTokenizedObject {
			get {
				return self.append("clipsDuration") 
			}
		}
		
		public var eventSessionContextId: BaseTokenizedObject {
			get {
				return self.append("eventSessionContextId") 
			}
		}
		
		public var instruction: BaseTokenizedObject {
			get {
				return self.append("instruction") 
			}
		}
		
		public var clipsOutputJson: BaseTokenizedObject {
			get {
				return self.append("clipsOutputJson") 
			}
		}
	}

	/**  Estimated duration of the clips, in seconds.  */
	public var clipsDuration: Int? = nil
	/**  Event session context ID used to enhance clip results.  */
	public var eventSessionContextId: String? = nil
	/**  Instruction describing the moments to capture or the objectives to achieve with
	  the clips.  */
	public var instruction: String? = nil
	/**  List of clips as JSON string.   For example: [{"title": "Title of the first
	  clip", "description": "Description of the first clip", "tags": "Tagged-Example",
	  "start": 127, "duration": 30}]  */
	public var clipsOutputJson: String? = nil


	public func setMultiRequestToken(clipsDuration: String) {
		self.dict["clipsDuration"] = clipsDuration
	}
	
	public func setMultiRequestToken(eventSessionContextId: String) {
		self.dict["eventSessionContextId"] = eventSessionContextId
	}
	
	public func setMultiRequestToken(instruction: String) {
		self.dict["instruction"] = instruction
	}
	
	public func setMultiRequestToken(clipsOutputJson: String) {
		self.dict["clipsOutputJson"] = clipsOutputJson
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["clipsDuration"] != nil {
			clipsDuration = dict["clipsDuration"] as? Int
		}
		if dict["eventSessionContextId"] != nil {
			eventSessionContextId = dict["eventSessionContextId"] as? String
		}
		if dict["instruction"] != nil {
			instruction = dict["instruction"] as? String
		}
		if dict["clipsOutputJson"] != nil {
			clipsOutputJson = dict["clipsOutputJson"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(clipsDuration != nil) {
			dict["clipsDuration"] = clipsDuration!
		}
		if(eventSessionContextId != nil) {
			dict["eventSessionContextId"] = eventSessionContextId!
		}
		if(instruction != nil) {
			dict["instruction"] = instruction!
		}
		if(clipsOutputJson != nil) {
			dict["clipsOutputJson"] = clipsOutputJson!
		}
		return dict
	}
}

