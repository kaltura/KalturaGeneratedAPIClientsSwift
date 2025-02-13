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

open class PushToNewsDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class PushToNewsDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var currentVersion: BaseTokenizedObject {
			get {
				return self.append("currentVersion") 
			}
		}
		
		public var bodyParamContent: BaseTokenizedObject {
			get {
				return self.append("bodyParamContent") 
			}
		}
	}

	public var currentVersion: Int? = nil
	public var bodyParamContent: String? = nil


	public func setMultiRequestToken(currentVersion: String) {
		self.dict["currentVersion"] = currentVersion
	}
	
	public func setMultiRequestToken(bodyParamContent: String) {
		self.dict["bodyParamContent"] = bodyParamContent
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["currentVersion"] != nil {
			currentVersion = dict["currentVersion"] as? Int
		}
		if dict["bodyParamContent"] != nil {
			bodyParamContent = dict["bodyParamContent"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(currentVersion != nil) {
			dict["currentVersion"] = currentVersion!
		}
		if(bodyParamContent != nil) {
			dict["bodyParamContent"] = bodyParamContent!
		}
		return dict
	}
}

