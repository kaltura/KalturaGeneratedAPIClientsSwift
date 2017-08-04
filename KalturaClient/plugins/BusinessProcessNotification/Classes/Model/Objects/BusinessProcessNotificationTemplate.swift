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

open class BusinessProcessNotificationTemplate: EventNotificationTemplate {

	/**  Define the integrated BPM server id  */
	public var serverId: Int? = nil
	/**  Define the integrated BPM process id  */
	public var processId: String? = nil
	/**  Code to load the main triggering object  */
	public var mainObjectCode: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["serverId"] != nil {
			serverId = dict["serverId"] as? Int
		}
		if dict["processId"] != nil {
			processId = dict["processId"] as? String
		}
		if dict["mainObjectCode"] != nil {
			mainObjectCode = dict["mainObjectCode"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(serverId != nil) {
			dict["serverId"] = serverId!
		}
		if(processId != nil) {
			dict["processId"] = processId!
		}
		if(mainObjectCode != nil) {
			dict["mainObjectCode"] = mainObjectCode!
		}
		return dict
	}
}

