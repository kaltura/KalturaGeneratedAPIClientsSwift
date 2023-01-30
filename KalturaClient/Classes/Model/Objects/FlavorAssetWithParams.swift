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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class FlavorAssetWithParams: ObjectBase {

	public class FlavorAssetWithParamsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func flavorAsset<T: FlavorAsset.FlavorAssetTokenizer>() -> T {
			return T(self.append("flavorAsset"))
		}
		
		public func flavorParams<T: FlavorParams.FlavorParamsTokenizer>() -> T {
			return T(self.append("flavorParams"))
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  The Flavor Asset (Can be null when there are params without asset)  */
	public var flavorAsset: FlavorAsset? = nil
	/**  The Flavor Params  */
	public var flavorParams: FlavorParams? = nil
	/**  The entry id  */
	public var entryId: String? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorAsset"] != nil {
		flavorAsset = try JSONParser.parse(object: dict["flavorAsset"] as! [String: Any])		}
		if dict["flavorParams"] != nil {
		flavorParams = try JSONParser.parse(object: dict["flavorParams"] as! [String: Any])		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorAsset != nil) {
			dict["flavorAsset"] = flavorAsset!.toDictionary()
		}
		if(flavorParams != nil) {
			dict["flavorParams"] = flavorParams!.toDictionary()
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		return dict
	}
}

