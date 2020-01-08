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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class ExternalMediaEntry: MediaEntry {

	public class ExternalMediaEntryTokenizer: MediaEntry.MediaEntryTokenizer {
		
		public var externalSourceType: BaseTokenizedObject {
			get {
				return self.append("externalSourceType") 
			}
		}
		
		public var assetParamsIds: BaseTokenizedObject {
			get {
				return self.append("assetParamsIds") 
			}
		}
	}

	/**  The source type of the external media  */
	public var externalSourceType: ExternalMediaSourceType? = nil
	/**  Comma separated asset params ids that exists for this external media entry  */
	public var assetParamsIds: String? = nil


	public func setMultiRequestToken(externalSourceType: String) {
		self.dict["externalSourceType"] = externalSourceType
	}
	
	public func setMultiRequestToken(assetParamsIds: String) {
		self.dict["assetParamsIds"] = assetParamsIds
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalSourceType"] != nil {
			externalSourceType = ExternalMediaSourceType(rawValue: "\(dict["externalSourceType"]!)")
		}
		if dict["assetParamsIds"] != nil {
			assetParamsIds = dict["assetParamsIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalSourceType != nil) {
			dict["externalSourceType"] = externalSourceType!.rawValue
		}
		return dict
	}
}

