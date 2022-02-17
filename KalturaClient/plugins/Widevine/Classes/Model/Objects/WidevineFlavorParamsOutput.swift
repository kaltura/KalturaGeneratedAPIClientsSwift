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

open class WidevineFlavorParamsOutput: FlavorParamsOutput {

	public class WidevineFlavorParamsOutputTokenizer: FlavorParamsOutput.FlavorParamsOutputTokenizer {
		
		public var widevineDistributionStartDate: BaseTokenizedObject {
			get {
				return self.append("widevineDistributionStartDate") 
			}
		}
		
		public var widevineDistributionEndDate: BaseTokenizedObject {
			get {
				return self.append("widevineDistributionEndDate") 
			}
		}
	}

	/**  License distribution window start date  */
	public var widevineDistributionStartDate: Int? = nil
	/**  License distribution window end date  */
	public var widevineDistributionEndDate: Int? = nil


	public func setMultiRequestToken(widevineDistributionStartDate: String) {
		self.dict["widevineDistributionStartDate"] = widevineDistributionStartDate
	}
	
	public func setMultiRequestToken(widevineDistributionEndDate: String) {
		self.dict["widevineDistributionEndDate"] = widevineDistributionEndDate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["widevineDistributionStartDate"] != nil {
			widevineDistributionStartDate = dict["widevineDistributionStartDate"] as? Int
		}
		if dict["widevineDistributionEndDate"] != nil {
			widevineDistributionEndDate = dict["widevineDistributionEndDate"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(widevineDistributionStartDate != nil) {
			dict["widevineDistributionStartDate"] = widevineDistributionStartDate!
		}
		if(widevineDistributionEndDate != nil) {
			dict["widevineDistributionEndDate"] = widevineDistributionEndDate!
		}
		return dict
	}
}

