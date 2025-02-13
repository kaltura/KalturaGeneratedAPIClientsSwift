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

/**  Object which contains contextual entry-related data.  */
open class EntryContextDataParams: AccessControlScope {

	public class EntryContextDataParamsTokenizer: AccessControlScope.AccessControlScopeTokenizer {
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var flavorTags: BaseTokenizedObject {
			get {
				return self.append("flavorTags") 
			}
		}
		
		public var streamerType: BaseTokenizedObject {
			get {
				return self.append("streamerType") 
			}
		}
		
		public var mediaProtocol: BaseTokenizedObject {
			get {
				return self.append("mediaProtocol") 
			}
		}
	}

	/**  Id of the current flavor.  */
	public var flavorAssetId: String? = nil
	/**  The tags of the flavors that should be used for playback.  */
	public var flavorTags: String? = nil
	/**  Playback streamer type: RTMP, HTTP, appleHttps, rtsp, sl.  */
	public var streamerType: String? = nil
	/**  Protocol of the specific media object.  */
	public var mediaProtocol: String? = nil


	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(flavorTags: String) {
		self.dict["flavorTags"] = flavorTags
	}
	
	public func setMultiRequestToken(streamerType: String) {
		self.dict["streamerType"] = streamerType
	}
	
	public func setMultiRequestToken(mediaProtocol: String) {
		self.dict["mediaProtocol"] = mediaProtocol
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["flavorTags"] != nil {
			flavorTags = dict["flavorTags"] as? String
		}
		if dict["streamerType"] != nil {
			streamerType = dict["streamerType"] as? String
		}
		if dict["mediaProtocol"] != nil {
			mediaProtocol = dict["mediaProtocol"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(flavorTags != nil) {
			dict["flavorTags"] = flavorTags!
		}
		if(streamerType != nil) {
			dict["streamerType"] = streamerType!
		}
		if(mediaProtocol != nil) {
			dict["mediaProtocol"] = mediaProtocol!
		}
		return dict
	}
}

