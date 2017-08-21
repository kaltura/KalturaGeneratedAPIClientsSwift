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

open class ExtractMediaJobData: ConvartableJobData {

	public var flavorAssetId: String? = nil
	public var calculateComplexity: Bool? = nil
	public var extractId3Tags: Bool? = nil
	/**  The data output file  */
	public var destDataFilePath: String? = nil
	public var detectGOP: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["calculateComplexity"] != nil {
			calculateComplexity = dict["calculateComplexity"] as? Bool
		}
		if dict["extractId3Tags"] != nil {
			extractId3Tags = dict["extractId3Tags"] as? Bool
		}
		if dict["destDataFilePath"] != nil {
			destDataFilePath = dict["destDataFilePath"] as? String
		}
		if dict["detectGOP"] != nil {
			detectGOP = dict["detectGOP"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(calculateComplexity != nil) {
			dict["calculateComplexity"] = calculateComplexity!
		}
		if(extractId3Tags != nil) {
			dict["extractId3Tags"] = extractId3Tags!
		}
		if(destDataFilePath != nil) {
			dict["destDataFilePath"] = destDataFilePath!
		}
		if(detectGOP != nil) {
			dict["detectGOP"] = detectGOP!
		}
		return dict
	}
}

