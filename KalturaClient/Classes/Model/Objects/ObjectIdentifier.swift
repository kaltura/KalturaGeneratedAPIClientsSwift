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

/**  Configuration for extended item in the Kaltura MRSS feeds  */
open class ObjectIdentifier: ObjectBase {

	public class ObjectIdentifierTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var extendedFeatures: BaseTokenizedObject {
			get {
				return self.append("extendedFeatures") 
			}
		}
	}

	/**  Comma separated string of enum values denoting which features of the item need
	  to be included in the MRSS  */
	public var extendedFeatures: String? = nil


	public func setMultiRequestToken(extendedFeatures: String) {
		self.dict["extendedFeatures"] = extendedFeatures
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["extendedFeatures"] != nil {
			extendedFeatures = dict["extendedFeatures"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(extendedFeatures != nil) {
			dict["extendedFeatures"] = extendedFeatures!
		}
		return dict
	}
}

