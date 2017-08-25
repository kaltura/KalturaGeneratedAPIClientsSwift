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

open class DocumentEntryBaseFilter: BaseEntryFilter {

	public class DocumentEntryBaseFilterTokenizer: BaseEntryFilter.BaseEntryFilterTokenizer {
		
		public var documentTypeEqual: BaseTokenizedObject {
			get {
				return self.append("documentTypeEqual") 
			}
		}
		
		public var documentTypeIn: BaseTokenizedObject {
			get {
				return self.append("documentTypeIn") 
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

	public var documentTypeEqual: DocumentType? = nil
	public var documentTypeIn: String? = nil
	public var assetParamsIdsMatchOr: String? = nil
	public var assetParamsIdsMatchAnd: String? = nil


	public func setMultiRequestToken(documentTypeEqual: String) {
		self.dict["documentTypeEqual"] = documentTypeEqual
	}
	
	public func setMultiRequestToken(documentTypeIn: String) {
		self.dict["documentTypeIn"] = documentTypeIn
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
		if dict["documentTypeEqual"] != nil {
			documentTypeEqual = DocumentType(rawValue: (dict["documentTypeEqual"] as? Int)!)
		}
		if dict["documentTypeIn"] != nil {
			documentTypeIn = dict["documentTypeIn"] as? String
		}
		if dict["assetParamsIdsMatchOr"] != nil {
			assetParamsIdsMatchOr = dict["assetParamsIdsMatchOr"] as? String
		}
		if dict["assetParamsIdsMatchAnd"] != nil {
			assetParamsIdsMatchAnd = dict["assetParamsIdsMatchAnd"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(documentTypeEqual != nil) {
			dict["documentTypeEqual"] = documentTypeEqual!.rawValue
		}
		if(documentTypeIn != nil) {
			dict["documentTypeIn"] = documentTypeIn!
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

