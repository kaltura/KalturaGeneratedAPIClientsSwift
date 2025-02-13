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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class ZoomDropFolder: DropFolder {

	public class ZoomDropFolderTokenizer: DropFolder.DropFolderTokenizer {
		
		public var zoomVendorIntegrationId: BaseTokenizedObject {
			get {
				return self.append("zoomVendorIntegrationId") 
			}
		}
		
		public func zoomVendorIntegration<T: ZoomIntegrationSetting.ZoomIntegrationSettingTokenizer>() -> T {
			return T(self.append("zoomVendorIntegration"))
		}
		
		public var lastHandledMeetingTime: BaseTokenizedObject {
			get {
				return self.append("lastHandledMeetingTime") 
			}
		}
	}

	public var zoomVendorIntegrationId: Int? = nil
	public var zoomVendorIntegration: ZoomIntegrationSetting? = nil
	public var lastHandledMeetingTime: Int? = nil


	public func setMultiRequestToken(zoomVendorIntegrationId: String) {
		self.dict["zoomVendorIntegrationId"] = zoomVendorIntegrationId
	}
	
	public func setMultiRequestToken(lastHandledMeetingTime: String) {
		self.dict["lastHandledMeetingTime"] = lastHandledMeetingTime
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["zoomVendorIntegrationId"] != nil {
			zoomVendorIntegrationId = dict["zoomVendorIntegrationId"] as? Int
		}
		if dict["zoomVendorIntegration"] != nil {
		zoomVendorIntegration = try JSONParser.parse(object: dict["zoomVendorIntegration"] as! [String: Any])		}
		if dict["lastHandledMeetingTime"] != nil {
			lastHandledMeetingTime = dict["lastHandledMeetingTime"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(lastHandledMeetingTime != nil) {
			dict["lastHandledMeetingTime"] = lastHandledMeetingTime!
		}
		return dict
	}
}

