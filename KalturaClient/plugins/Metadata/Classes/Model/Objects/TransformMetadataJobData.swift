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

open class TransformMetadataJobData: JobData {

	public var srcXslPath: String? = nil
	public var srcVersion: Int? = nil
	public var destVersion: Int? = nil
	public var destXsdPath: String? = nil
	public var metadataProfileId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["srcXslPath"] != nil {
			srcXslPath = dict["srcXslPath"] as? String
		}
		if dict["srcVersion"] != nil {
			srcVersion = dict["srcVersion"] as? Int
		}
		if dict["destVersion"] != nil {
			destVersion = dict["destVersion"] as? Int
		}
		if dict["destXsdPath"] != nil {
			destXsdPath = dict["destXsdPath"] as? String
		}
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(srcXslPath != nil) {
			dict["srcXslPath"] = srcXslPath!
		}
		if(srcVersion != nil) {
			dict["srcVersion"] = srcVersion!
		}
		if(destVersion != nil) {
			dict["destVersion"] = destVersion!
		}
		if(destXsdPath != nil) {
			dict["destXsdPath"] = destXsdPath!
		}
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		return dict
	}
}

