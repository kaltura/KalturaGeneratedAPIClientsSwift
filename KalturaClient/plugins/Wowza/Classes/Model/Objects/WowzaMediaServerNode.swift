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

open class WowzaMediaServerNode: MediaServerNode {

	public class WowzaMediaServerNodeTokenizer: MediaServerNode.MediaServerNodeTokenizer {
		
		public var appPrefix: BaseTokenizedObject {
			get {
				return self.append("appPrefix") 
			}
		}
		
		public var transcoder: BaseTokenizedObject {
			get {
				return self.append("transcoder") 
			}
		}
		
		public var GPUID: BaseTokenizedObject {
			get {
				return self.append("GPUID") 
			}
		}
		
		public var liveServicePort: BaseTokenizedObject {
			get {
				return self.append("liveServicePort") 
			}
		}
		
		public var liveServiceProtocol: BaseTokenizedObject {
			get {
				return self.append("liveServiceProtocol") 
			}
		}
		
		public var liveServiceInternalDomain: BaseTokenizedObject {
			get {
				return self.append("liveServiceInternalDomain") 
			}
		}
	}

	/**  Wowza Media server app prefix  */
	public var appPrefix: String? = nil
	/**  Wowza Media server transcoder configuration overide  */
	public var transcoder: String? = nil
	/**  Wowza Media server GPU index id  */
	public var GPUID: Int? = nil
	/**  Live service port  */
	public var liveServicePort: Int? = nil
	/**  Live service protocol  */
	public var liveServiceProtocol: String? = nil
	/**  Wowza media server live service internal domain  */
	public var liveServiceInternalDomain: String? = nil


	public func setMultiRequestToken(appPrefix: String) {
		self.dict["appPrefix"] = appPrefix
	}
	
	public func setMultiRequestToken(transcoder: String) {
		self.dict["transcoder"] = transcoder
	}
	
	public func setMultiRequestToken(GPUID: String) {
		self.dict["GPUID"] = GPUID
	}
	
	public func setMultiRequestToken(liveServicePort: String) {
		self.dict["liveServicePort"] = liveServicePort
	}
	
	public func setMultiRequestToken(liveServiceProtocol: String) {
		self.dict["liveServiceProtocol"] = liveServiceProtocol
	}
	
	public func setMultiRequestToken(liveServiceInternalDomain: String) {
		self.dict["liveServiceInternalDomain"] = liveServiceInternalDomain
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["appPrefix"] != nil {
			appPrefix = dict["appPrefix"] as? String
		}
		if dict["transcoder"] != nil {
			transcoder = dict["transcoder"] as? String
		}
		if dict["GPUID"] != nil {
			GPUID = dict["GPUID"] as? Int
		}
		if dict["liveServicePort"] != nil {
			liveServicePort = dict["liveServicePort"] as? Int
		}
		if dict["liveServiceProtocol"] != nil {
			liveServiceProtocol = dict["liveServiceProtocol"] as? String
		}
		if dict["liveServiceInternalDomain"] != nil {
			liveServiceInternalDomain = dict["liveServiceInternalDomain"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(appPrefix != nil) {
			dict["appPrefix"] = appPrefix!
		}
		if(transcoder != nil) {
			dict["transcoder"] = transcoder!
		}
		if(GPUID != nil) {
			dict["GPUID"] = GPUID!
		}
		if(liveServicePort != nil) {
			dict["liveServicePort"] = liveServicePort!
		}
		if(liveServiceProtocol != nil) {
			dict["liveServiceProtocol"] = liveServiceProtocol!
		}
		if(liveServiceInternalDomain != nil) {
			dict["liveServiceInternalDomain"] = liveServiceInternalDomain!
		}
		return dict
	}
}

