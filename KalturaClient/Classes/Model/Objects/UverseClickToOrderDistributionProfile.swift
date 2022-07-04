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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class UverseClickToOrderDistributionProfile: ConfigurableDistributionProfile {

	public class UverseClickToOrderDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var feedUrl: BaseTokenizedObject {
			get {
				return self.append("feedUrl") 
			}
		}
		
		public var backgroundImageWide: BaseTokenizedObject {
			get {
				return self.append("backgroundImageWide") 
			}
		}
		
		public var backgroundImageStandard: BaseTokenizedObject {
			get {
				return self.append("backgroundImageStandard") 
			}
		}
	}

	public var feedUrl: String? = nil
	public var backgroundImageWide: String? = nil
	public var backgroundImageStandard: String? = nil


	public func setMultiRequestToken(feedUrl: String) {
		self.dict["feedUrl"] = feedUrl
	}
	
	public func setMultiRequestToken(backgroundImageWide: String) {
		self.dict["backgroundImageWide"] = backgroundImageWide
	}
	
	public func setMultiRequestToken(backgroundImageStandard: String) {
		self.dict["backgroundImageStandard"] = backgroundImageStandard
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["feedUrl"] != nil {
			feedUrl = dict["feedUrl"] as? String
		}
		if dict["backgroundImageWide"] != nil {
			backgroundImageWide = dict["backgroundImageWide"] as? String
		}
		if dict["backgroundImageStandard"] != nil {
			backgroundImageStandard = dict["backgroundImageStandard"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(backgroundImageWide != nil) {
			dict["backgroundImageWide"] = backgroundImageWide!
		}
		if(backgroundImageStandard != nil) {
			dict["backgroundImageStandard"] = backgroundImageStandard!
		}
		return dict
	}
}

