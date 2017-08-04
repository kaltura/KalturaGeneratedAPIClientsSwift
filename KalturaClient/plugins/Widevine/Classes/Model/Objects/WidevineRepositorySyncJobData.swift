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

open class WidevineRepositorySyncJobData: JobData {

	public var syncMode: WidevineRepositorySyncMode? = nil
	public var wvAssetIds: String? = nil
	public var modifiedAttributes: String? = nil
	public var monitorSyncCompletion: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["syncMode"] != nil {
			syncMode = WidevineRepositorySyncMode(rawValue: (dict["syncMode"] as? Int)!)
		}
		if dict["wvAssetIds"] != nil {
			wvAssetIds = dict["wvAssetIds"] as? String
		}
		if dict["modifiedAttributes"] != nil {
			modifiedAttributes = dict["modifiedAttributes"] as? String
		}
		if dict["monitorSyncCompletion"] != nil {
			monitorSyncCompletion = dict["monitorSyncCompletion"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(syncMode != nil) {
			dict["syncMode"] = syncMode!.rawValue
		}
		if(wvAssetIds != nil) {
			dict["wvAssetIds"] = wvAssetIds!
		}
		if(modifiedAttributes != nil) {
			dict["modifiedAttributes"] = modifiedAttributes!
		}
		if(monitorSyncCompletion != nil) {
			dict["monitorSyncCompletion"] = monitorSyncCompletion!
		}
		return dict
	}
}

