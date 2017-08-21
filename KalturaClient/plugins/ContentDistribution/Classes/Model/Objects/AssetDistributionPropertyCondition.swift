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

/**  Defines the condition to match a property and value on core asset object (or one
  if its inherited objects)  */
open class AssetDistributionPropertyCondition: AssetDistributionCondition {

	/**  The property name to look for, this will match to a getter on the asset object. 
	   Should be camelCase naming convention (defining "myPropertyName" will look for
	  getMyPropertyName())  */
	public var propertyName: String? = nil
	/**  The value to compare  */
	public var propertyValue: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["propertyName"] != nil {
			propertyName = dict["propertyName"] as? String
		}
		if dict["propertyValue"] != nil {
			propertyValue = dict["propertyValue"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(propertyName != nil) {
			dict["propertyName"] = propertyName!
		}
		if(propertyValue != nil) {
			dict["propertyValue"] = propertyValue!
		}
		return dict
	}
}

