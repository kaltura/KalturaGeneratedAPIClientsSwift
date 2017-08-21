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

open class ImportMetadataJobData: JobData {

	public var srcFileUrl: String? = nil
	public var destFileLocalPath: String? = nil
	public var metadataId: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["srcFileUrl"] != nil {
			srcFileUrl = dict["srcFileUrl"] as? String
		}
		if dict["destFileLocalPath"] != nil {
			destFileLocalPath = dict["destFileLocalPath"] as? String
		}
		if dict["metadataId"] != nil {
			metadataId = dict["metadataId"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(srcFileUrl != nil) {
			dict["srcFileUrl"] = srcFileUrl!
		}
		if(destFileLocalPath != nil) {
			dict["destFileLocalPath"] = destFileLocalPath!
		}
		if(metadataId != nil) {
			dict["metadataId"] = metadataId!
		}
		return dict
	}
}

