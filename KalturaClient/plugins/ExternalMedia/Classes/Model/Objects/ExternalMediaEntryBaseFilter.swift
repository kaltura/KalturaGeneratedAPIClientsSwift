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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class ExternalMediaEntryBaseFilter: MediaEntryFilter {

	public class ExternalMediaEntryBaseFilterTokenizer: MediaEntryFilter.MediaEntryFilterTokenizer {
		
		public var externalSourceTypeEqual: BaseTokenizedObject {
			get {
				return self.append("externalSourceTypeEqual") 
			}
		}
		
		public var externalSourceTypeIn: BaseTokenizedObject {
			get {
				return self.append("externalSourceTypeIn") 
			}
		}
		
		public var assetParamsIdsMatchOr: BaseTokenizedObject {
			get {
				return self.append("assetParamsIdsMatchOr") 
			}
		}
		
		public var assetParamsIdsMatchAnd: BaseTokenizedObject {
			get {
				return self.append("assetParamsIdsMatchAnd") 
			}
		}
	}

	public var externalSourceTypeEqual: ExternalMediaSourceType? = nil
	public var externalSourceTypeIn: String? = nil
	public var assetParamsIdsMatchOr: String? = nil
	public var assetParamsIdsMatchAnd: String? = nil


	public func setMultiRequestToken(externalSourceTypeEqual: String) {
		self.dict["externalSourceTypeEqual"] = externalSourceTypeEqual
	}
	
	public func setMultiRequestToken(externalSourceTypeIn: String) {
		self.dict["externalSourceTypeIn"] = externalSourceTypeIn
	}
	
	public func setMultiRequestToken(assetParamsIdsMatchOr: String) {
		self.dict["assetParamsIdsMatchOr"] = assetParamsIdsMatchOr
	}
	
	public func setMultiRequestToken(assetParamsIdsMatchAnd: String) {
		self.dict["assetParamsIdsMatchAnd"] = assetParamsIdsMatchAnd
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["externalSourceTypeEqual"] != nil {
			externalSourceTypeEqual = ExternalMediaSourceType(rawValue: "\(dict["externalSourceTypeEqual"]!)")
		}
		if dict["externalSourceTypeIn"] != nil {
			externalSourceTypeIn = dict["externalSourceTypeIn"] as? String
		}
		if dict["assetParamsIdsMatchOr"] != nil {
			assetParamsIdsMatchOr = dict["assetParamsIdsMatchOr"] as? String
		}
		if dict["assetParamsIdsMatchAnd"] != nil {
			assetParamsIdsMatchAnd = dict["assetParamsIdsMatchAnd"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(externalSourceTypeEqual != nil) {
			dict["externalSourceTypeEqual"] = externalSourceTypeEqual!.rawValue
		}
		if(externalSourceTypeIn != nil) {
			dict["externalSourceTypeIn"] = externalSourceTypeIn!
		}
		if(assetParamsIdsMatchOr != nil) {
			dict["assetParamsIdsMatchOr"] = assetParamsIdsMatchOr!
		}
		if(assetParamsIdsMatchAnd != nil) {
			dict["assetParamsIdsMatchAnd"] = assetParamsIdsMatchAnd!
		}
		return dict
	}
}

