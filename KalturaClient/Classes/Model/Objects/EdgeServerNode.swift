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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class EdgeServerNode: DeliveryServerNode {

	public class EdgeServerNodeTokenizer: DeliveryServerNode.DeliveryServerNodeTokenizer {
		
		public var playbackDomain: BaseTokenizedObject {
			get {
				return self.append("playbackDomain") 
			}
		}
		
		public var config: BaseTokenizedObject {
			get {
				return self.append("config") 
			}
		}
	}

	/**  Delivery server playback Domain  */
	public var playbackDomain: String? = nil
	/**  Overdie edge server default configuration - json format  */
	public var config: String? = nil


	public func setMultiRequestToken(playbackDomain: String) {
		self.dict["playbackDomain"] = playbackDomain
	}
	
	public func setMultiRequestToken(config: String) {
		self.dict["config"] = config
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["playbackDomain"] != nil {
			playbackDomain = dict["playbackDomain"] as? String
		}
		if dict["config"] != nil {
			config = dict["config"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(playbackDomain != nil) {
			dict["playbackDomain"] = playbackDomain!
		}
		if(config != nil) {
			dict["config"] = config!
		}
		return dict
	}
}

