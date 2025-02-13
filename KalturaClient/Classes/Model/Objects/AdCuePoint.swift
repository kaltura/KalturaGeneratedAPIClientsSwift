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

open class AdCuePoint: CuePoint {

	public class AdCuePointTokenizer: CuePoint.CuePointTokenizer {
		
		public var protocolType: BaseTokenizedObject {
			get {
				return self.append("protocolType") 
			}
		}
		
		public var sourceUrl: BaseTokenizedObject {
			get {
				return self.append("sourceUrl") 
			}
		}
		
		public var adType: BaseTokenizedObject {
			get {
				return self.append("adType") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
	}

	public var protocolType: AdProtocolType? = nil
	public var sourceUrl: String? = nil
	public var adType: AdType? = nil
	public var title: String? = nil
	public var endTime: Int? = nil
	/**  Duration in milliseconds  */
	public var duration: Int? = nil


	public func setMultiRequestToken(protocolType: String) {
		self.dict["protocolType"] = protocolType
	}
	
	public func setMultiRequestToken(sourceUrl: String) {
		self.dict["sourceUrl"] = sourceUrl
	}
	
	public func setMultiRequestToken(adType: String) {
		self.dict["adType"] = adType
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(endTime: String) {
		self.dict["endTime"] = endTime
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["protocolType"] != nil {
			protocolType = AdProtocolType(rawValue: "\(dict["protocolType"]!)")
		}
		if dict["sourceUrl"] != nil {
			sourceUrl = dict["sourceUrl"] as? String
		}
		if dict["adType"] != nil {
			adType = AdType(rawValue: "\(dict["adType"]!)")
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["endTime"] != nil {
			endTime = dict["endTime"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(protocolType != nil) {
			dict["protocolType"] = protocolType!.rawValue
		}
		if(sourceUrl != nil) {
			dict["sourceUrl"] = sourceUrl!
		}
		if(adType != nil) {
			dict["adType"] = adType!.rawValue
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(endTime != nil) {
			dict["endTime"] = endTime!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		return dict
	}
}

