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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class AssetParamsOutput: AssetParams {

	public var assetParamsId: Int? = nil
	public var assetParamsVersion: String? = nil
	public var assetId: String? = nil
	public var assetVersion: String? = nil
	public var readyBehavior: Int? = nil
	/**  The container format of the Flavor Params  */
	public var format: ContainerFormat? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["assetParamsId"] != nil {
			assetParamsId = dict["assetParamsId"] as? Int
		}
		if dict["assetParamsVersion"] != nil {
			assetParamsVersion = dict["assetParamsVersion"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["assetVersion"] != nil {
			assetVersion = dict["assetVersion"] as? String
		}
		if dict["readyBehavior"] != nil {
			readyBehavior = dict["readyBehavior"] as? Int
		}
		if dict["format"] != nil {
			format = ContainerFormat(rawValue: "\(dict["format"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(assetParamsId != nil) {
			dict["assetParamsId"] = assetParamsId!
		}
		if(assetParamsVersion != nil) {
			dict["assetParamsVersion"] = assetParamsVersion!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(assetVersion != nil) {
			dict["assetVersion"] = assetVersion!
		}
		if(readyBehavior != nil) {
			dict["readyBehavior"] = readyBehavior!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		return dict
	}
}

