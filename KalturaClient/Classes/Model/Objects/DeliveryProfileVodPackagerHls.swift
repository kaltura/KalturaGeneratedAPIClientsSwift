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

open class DeliveryProfileVodPackagerHls: DeliveryProfileVodPackagerPlayServer {

	public class DeliveryProfileVodPackagerHlsTokenizer: DeliveryProfileVodPackagerPlayServer.DeliveryProfileVodPackagerPlayServerTokenizer {
		
		public var allowFairplayOffline: BaseTokenizedObject {
			get {
				return self.append("allowFairplayOffline") 
			}
		}
		
		public var supportFmp4: BaseTokenizedObject {
			get {
				return self.append("supportFmp4") 
			}
		}
	}

	public var allowFairplayOffline: Bool? = nil
	public var supportFmp4: Bool? = nil


	public func setMultiRequestToken(allowFairplayOffline: String) {
		self.dict["allowFairplayOffline"] = allowFairplayOffline
	}
	
	public func setMultiRequestToken(supportFmp4: String) {
		self.dict["supportFmp4"] = supportFmp4
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["allowFairplayOffline"] != nil {
			allowFairplayOffline = dict["allowFairplayOffline"] as? Bool
		}
		if dict["supportFmp4"] != nil {
			supportFmp4 = dict["supportFmp4"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(allowFairplayOffline != nil) {
			dict["allowFairplayOffline"] = allowFairplayOffline!
		}
		if(supportFmp4 != nil) {
			dict["supportFmp4"] = supportFmp4!
		}
		return dict
	}
}

