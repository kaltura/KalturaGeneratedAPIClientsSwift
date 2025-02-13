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

open class WebexAPIDropFolder: DropFolder {

	public class WebexAPIDropFolderTokenizer: DropFolder.DropFolderTokenizer {
		
		public var webexAPIVendorIntegrationId: BaseTokenizedObject {
			get {
				return self.append("webexAPIVendorIntegrationId") 
			}
		}
		
		public func webexAPIVendorIntegration<T: WebexAPIIntegrationSetting.WebexAPIIntegrationSettingTokenizer>() -> T {
			return T(self.append("webexAPIVendorIntegration"))
		}
	}

	public var webexAPIVendorIntegrationId: Int? = nil
	public var webexAPIVendorIntegration: WebexAPIIntegrationSetting? = nil


	public func setMultiRequestToken(webexAPIVendorIntegrationId: String) {
		self.dict["webexAPIVendorIntegrationId"] = webexAPIVendorIntegrationId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["webexAPIVendorIntegrationId"] != nil {
			webexAPIVendorIntegrationId = dict["webexAPIVendorIntegrationId"] as? Int
		}
		if dict["webexAPIVendorIntegration"] != nil {
		webexAPIVendorIntegration = try JSONParser.parse(object: dict["webexAPIVendorIntegration"] as! [String: Any])		}

	}

}

