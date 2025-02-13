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

open class MediaServerNode: DeliveryServerNode {

	public class MediaServerNodeTokenizer: DeliveryServerNode.DeliveryServerNodeTokenizer {
		
		public var applicationName: BaseTokenizedObject {
			get {
				return self.append("applicationName") 
			}
		}
		
		public var mediaServerPortConfig: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mediaServerPortConfig"))
			} 
		}
		
		public var mediaServerPlaybackDomainConfig: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mediaServerPlaybackDomainConfig"))
			} 
		}
	}

	/**  Media server application name  */
	public var applicationName: String? = nil
	/**  Media server playback port configuration by protocol and format  */
	public var mediaServerPortConfig: Array<KeyValue>? = nil
	/**  Media server playback Domain configuration by protocol and format  */
	public var mediaServerPlaybackDomainConfig: Array<KeyValue>? = nil


	public func setMultiRequestToken(applicationName: String) {
		self.dict["applicationName"] = applicationName
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["applicationName"] != nil {
			applicationName = dict["applicationName"] as? String
		}
		if dict["mediaServerPortConfig"] != nil {
			mediaServerPortConfig = try JSONParser.parse(array: dict["mediaServerPortConfig"] as! [Any])
		}
		if dict["mediaServerPlaybackDomainConfig"] != nil {
			mediaServerPlaybackDomainConfig = try JSONParser.parse(array: dict["mediaServerPlaybackDomainConfig"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(applicationName != nil) {
			dict["applicationName"] = applicationName!
		}
		if(mediaServerPortConfig != nil) {
			dict["mediaServerPortConfig"] = mediaServerPortConfig!.map { value in value.toDictionary() }
		}
		if(mediaServerPlaybackDomainConfig != nil) {
			dict["mediaServerPlaybackDomainConfig"] = mediaServerPlaybackDomainConfig!.map { value in value.toDictionary() }
		}
		return dict
	}
}

