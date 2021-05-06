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

open class VendorCaptionsCatalogItemBaseFilter: VendorCatalogItemFilter {

	public class VendorCaptionsCatalogItemBaseFilterTokenizer: VendorCatalogItemFilter.VendorCatalogItemFilterTokenizer {
		
		public var sourceLanguageEqual: BaseTokenizedObject {
			get {
				return self.append("sourceLanguageEqual") 
			}
		}
		
		public var sourceLanguageIn: BaseTokenizedObject {
			get {
				return self.append("sourceLanguageIn") 
			}
		}
		
		public var outputFormatEqual: BaseTokenizedObject {
			get {
				return self.append("outputFormatEqual") 
			}
		}
		
		public var outputFormatIn: BaseTokenizedObject {
			get {
				return self.append("outputFormatIn") 
			}
		}
	}

	public var sourceLanguageEqual: CatalogItemLanguage? = nil
	public var sourceLanguageIn: String? = nil
	public var outputFormatEqual: VendorCatalogItemOutputFormat? = nil
	public var outputFormatIn: String? = nil


	public func setMultiRequestToken(sourceLanguageEqual: String) {
		self.dict["sourceLanguageEqual"] = sourceLanguageEqual
	}
	
	public func setMultiRequestToken(sourceLanguageIn: String) {
		self.dict["sourceLanguageIn"] = sourceLanguageIn
	}
	
	public func setMultiRequestToken(outputFormatEqual: String) {
		self.dict["outputFormatEqual"] = outputFormatEqual
	}
	
	public func setMultiRequestToken(outputFormatIn: String) {
		self.dict["outputFormatIn"] = outputFormatIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sourceLanguageEqual"] != nil {
			sourceLanguageEqual = CatalogItemLanguage(rawValue: "\(dict["sourceLanguageEqual"]!)")
		}
		if dict["sourceLanguageIn"] != nil {
			sourceLanguageIn = dict["sourceLanguageIn"] as? String
		}
		if dict["outputFormatEqual"] != nil {
			outputFormatEqual = VendorCatalogItemOutputFormat(rawValue: (dict["outputFormatEqual"] as? Int)!)
		}
		if dict["outputFormatIn"] != nil {
			outputFormatIn = dict["outputFormatIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sourceLanguageEqual != nil) {
			dict["sourceLanguageEqual"] = sourceLanguageEqual!.rawValue
		}
		if(sourceLanguageIn != nil) {
			dict["sourceLanguageIn"] = sourceLanguageIn!
		}
		if(outputFormatEqual != nil) {
			dict["outputFormatEqual"] = outputFormatEqual!.rawValue
		}
		if(outputFormatIn != nil) {
			dict["outputFormatIn"] = outputFormatIn!
		}
		return dict
	}
}

