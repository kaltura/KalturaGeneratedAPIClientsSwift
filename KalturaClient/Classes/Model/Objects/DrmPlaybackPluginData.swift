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

open class DrmPlaybackPluginData: PluginData {

	public class DrmPlaybackPluginDataTokenizer: PluginData.PluginDataTokenizer {
		
		public var scheme: BaseTokenizedObject {
			get {
				return self.append("scheme") 
			}
		}
		
		public var licenseURL: BaseTokenizedObject {
			get {
				return self.append("licenseURL") 
			}
		}
	}

	public var scheme: DrmSchemeName? = nil
	public var licenseURL: String? = nil


	public func setMultiRequestToken(scheme: String) {
		self.dict["scheme"] = scheme
	}
	
	public func setMultiRequestToken(licenseURL: String) {
		self.dict["licenseURL"] = licenseURL
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["scheme"] != nil {
			scheme = DrmSchemeName(rawValue: "\(dict["scheme"]!)")
		}
		if dict["licenseURL"] != nil {
			licenseURL = dict["licenseURL"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(scheme != nil) {
			dict["scheme"] = scheme!.rawValue
		}
		if(licenseURL != nil) {
			dict["licenseURL"] = licenseURL!
		}
		return dict
	}
}

