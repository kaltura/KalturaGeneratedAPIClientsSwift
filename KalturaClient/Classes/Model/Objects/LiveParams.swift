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

open class LiveParams: FlavorParams {

	public class LiveParamsTokenizer: FlavorParams.FlavorParamsTokenizer {
		
		public var streamSuffix: BaseTokenizedObject {
			get {
				return self.append("streamSuffix") 
			}
		}
	}

	/**  Suffix to be added to the stream name after the entry id
	  {entry_id}_{stream_suffix}, e.g. for entry id 0_kjdu5jr6 and suffix 1, the
	  stream name will be 0_kjdu5jr6_1  */
	public var streamSuffix: String? = nil


	public func setMultiRequestToken(streamSuffix: String) {
		self.dict["streamSuffix"] = streamSuffix
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streamSuffix"] != nil {
			streamSuffix = dict["streamSuffix"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(streamSuffix != nil) {
			dict["streamSuffix"] = streamSuffix!
		}
		return dict
	}
}

