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

open class ConcatJobData: JobData {

	/**  Source files to be concatenated  */
	public var srcFiles: Array<StringHolder>? = nil
	/**  Output file  */
	public var destFilePath: String? = nil
	/**  Flavor asset to be ingested with the output  */
	public var flavorAssetId: String? = nil
	/**  Clipping offset in seconds  */
	public var offset: Double? = nil
	/**  Clipping duration in seconds  */
	public var duration: Double? = nil
	/**  duration of the concated video  */
	public var concatenatedDuration: Double? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["srcFiles"] != nil {
			srcFiles = try JSONParser.parse(array: dict["srcFiles"] as! [Any])
		}
		if dict["destFilePath"] != nil {
			destFilePath = dict["destFilePath"] as? String
		}
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["offset"] != nil {
			offset = dict["offset"] as? Double
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Double
		}
		if dict["concatenatedDuration"] != nil {
			concatenatedDuration = dict["concatenatedDuration"] as? Double
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(srcFiles != nil) {
			dict["srcFiles"] = srcFiles!.map { value in value.toDictionary() }
		}
		if(destFilePath != nil) {
			dict["destFilePath"] = destFilePath!
		}
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(offset != nil) {
			dict["offset"] = offset!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(concatenatedDuration != nil) {
			dict["concatenatedDuration"] = concatenatedDuration!
		}
		return dict
	}
}

