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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class AssetsParamsResourceContainers: Resource {

	public class AssetsParamsResourceContainersTokenizer: Resource.ResourceTokenizer {
		
		public var resources: ArrayTokenizedObject<AssetParamsResourceContainer.AssetParamsResourceContainerTokenizer> {
			get {
				return ArrayTokenizedObject<AssetParamsResourceContainer.AssetParamsResourceContainerTokenizer>(self.append("resources"))
			} 
		}
	}

	/**  Array of resources associated with asset params ids  */
	public var resources: Array<AssetParamsResourceContainer>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resources"] != nil {
			resources = try JSONParser.parse(array: dict["resources"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resources != nil) {
			dict["resources"] = resources!.map { value in value.toDictionary() }
		}
		return dict
	}
}

