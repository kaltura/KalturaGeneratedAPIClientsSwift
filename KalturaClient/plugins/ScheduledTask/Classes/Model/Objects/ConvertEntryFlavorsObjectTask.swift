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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class ConvertEntryFlavorsObjectTask: ObjectTask {

	public class ConvertEntryFlavorsObjectTaskTokenizer: ObjectTask.ObjectTaskTokenizer {
		
		public var flavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIds") 
			}
		}
		
		public var reconvert: BaseTokenizedObject {
			get {
				return self.append("reconvert") 
			}
		}
	}

	/**  Comma separated list of flavor param ids to convert  */
	public var flavorParamsIds: String? = nil
	/**  Should reconvert when flavor already exists?  */
	public var reconvert: Bool? = nil


	public func setMultiRequestToken(flavorParamsIds: String) {
		self.dict["flavorParamsIds"] = flavorParamsIds
	}
	
	public func setMultiRequestToken(reconvert: String) {
		self.dict["reconvert"] = reconvert
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorParamsIds"] != nil {
			flavorParamsIds = dict["flavorParamsIds"] as? String
		}
		if dict["reconvert"] != nil {
			reconvert = dict["reconvert"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorParamsIds != nil) {
			dict["flavorParamsIds"] = flavorParamsIds!
		}
		if(reconvert != nil) {
			dict["reconvert"] = reconvert!
		}
		return dict
	}
}

