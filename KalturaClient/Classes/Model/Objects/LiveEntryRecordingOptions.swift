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

/**  A representation of a live stream recording entry configuration  */
open class LiveEntryRecordingOptions: ObjectBase {

	public var shouldCopyEntitlement: Bool? = nil
	public var shouldCopyScheduling: Bool? = nil
	public var shouldCopyThumbnail: Bool? = nil
	public var shouldMakeHidden: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["shouldCopyEntitlement"] != nil {
			shouldCopyEntitlement = dict["shouldCopyEntitlement"] as? Bool
		}
		if dict["shouldCopyScheduling"] != nil {
			shouldCopyScheduling = dict["shouldCopyScheduling"] as? Bool
		}
		if dict["shouldCopyThumbnail"] != nil {
			shouldCopyThumbnail = dict["shouldCopyThumbnail"] as? Bool
		}
		if dict["shouldMakeHidden"] != nil {
			shouldMakeHidden = dict["shouldMakeHidden"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(shouldCopyEntitlement != nil) {
			dict["shouldCopyEntitlement"] = shouldCopyEntitlement!
		}
		if(shouldCopyScheduling != nil) {
			dict["shouldCopyScheduling"] = shouldCopyScheduling!
		}
		if(shouldCopyThumbnail != nil) {
			dict["shouldCopyThumbnail"] = shouldCopyThumbnail!
		}
		if(shouldMakeHidden != nil) {
			dict["shouldMakeHidden"] = shouldMakeHidden!
		}
		return dict
	}
}

