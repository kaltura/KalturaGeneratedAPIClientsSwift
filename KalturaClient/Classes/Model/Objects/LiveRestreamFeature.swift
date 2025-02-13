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

open class LiveRestreamFeature: LiveFeature {

	public class LiveRestreamFeatureTokenizer: LiveFeature.LiveFeatureTokenizer {
		
		public var primaryUrl: BaseTokenizedObject {
			get {
				return self.append("primaryUrl") 
			}
		}
		
		public var secondaryUrl: BaseTokenizedObject {
			get {
				return self.append("secondaryUrl") 
			}
		}
		
		public var playbackUrl: BaseTokenizedObject {
			get {
				return self.append("playbackUrl") 
			}
		}
		
		public var streamKey: BaseTokenizedObject {
			get {
				return self.append("streamKey") 
			}
		}
	}

	public var primaryUrl: String? = nil
	public var secondaryUrl: String? = nil
	public var playbackUrl: String? = nil
	public var streamKey: String? = nil


	public func setMultiRequestToken(primaryUrl: String) {
		self.dict["primaryUrl"] = primaryUrl
	}
	
	public func setMultiRequestToken(secondaryUrl: String) {
		self.dict["secondaryUrl"] = secondaryUrl
	}
	
	public func setMultiRequestToken(playbackUrl: String) {
		self.dict["playbackUrl"] = playbackUrl
	}
	
	public func setMultiRequestToken(streamKey: String) {
		self.dict["streamKey"] = streamKey
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["primaryUrl"] != nil {
			primaryUrl = dict["primaryUrl"] as? String
		}
		if dict["secondaryUrl"] != nil {
			secondaryUrl = dict["secondaryUrl"] as? String
		}
		if dict["playbackUrl"] != nil {
			playbackUrl = dict["playbackUrl"] as? String
		}
		if dict["streamKey"] != nil {
			streamKey = dict["streamKey"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(primaryUrl != nil) {
			dict["primaryUrl"] = primaryUrl!
		}
		if(secondaryUrl != nil) {
			dict["secondaryUrl"] = secondaryUrl!
		}
		if(playbackUrl != nil) {
			dict["playbackUrl"] = playbackUrl!
		}
		if(streamKey != nil) {
			dict["streamKey"] = streamKey!
		}
		return dict
	}
}

