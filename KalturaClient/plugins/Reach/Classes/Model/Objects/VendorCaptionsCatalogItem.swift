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

open class VendorCaptionsCatalogItem: VendorCatalogItem {

	public class VendorCaptionsCatalogItemTokenizer: VendorCatalogItem.VendorCatalogItemTokenizer {
		
		public var sourceLanguage: BaseTokenizedObject {
			get {
				return self.append("sourceLanguage") 
			}
		}
		
		public var outputFormat: BaseTokenizedObject {
			get {
				return self.append("outputFormat") 
			}
		}
		
		public var enableSpeakerId: BaseTokenizedObject {
			get {
				return self.append("enableSpeakerId") 
			}
		}
		
		public var fixedPriceAddons: BaseTokenizedObject {
			get {
				return self.append("fixedPriceAddons") 
			}
		}
	}

	public var sourceLanguage: CatalogItemLanguage? = nil
	public var outputFormat: VendorCatalogItemOutputFormat? = nil
	public var enableSpeakerId: Bool? = nil
	public var fixedPriceAddons: Int? = nil


	public func setMultiRequestToken(sourceLanguage: String) {
		self.dict["sourceLanguage"] = sourceLanguage
	}
	
	public func setMultiRequestToken(outputFormat: String) {
		self.dict["outputFormat"] = outputFormat
	}
	
	public func setMultiRequestToken(enableSpeakerId: String) {
		self.dict["enableSpeakerId"] = enableSpeakerId
	}
	
	public func setMultiRequestToken(fixedPriceAddons: String) {
		self.dict["fixedPriceAddons"] = fixedPriceAddons
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sourceLanguage"] != nil {
			sourceLanguage = CatalogItemLanguage(rawValue: "\(dict["sourceLanguage"]!)")
		}
		if dict["outputFormat"] != nil {
			outputFormat = VendorCatalogItemOutputFormat(rawValue: (dict["outputFormat"] as? Int)!)
		}
		if dict["enableSpeakerId"] != nil {
			enableSpeakerId = dict["enableSpeakerId"] as? Bool
		}
		if dict["fixedPriceAddons"] != nil {
			fixedPriceAddons = dict["fixedPriceAddons"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sourceLanguage != nil) {
			dict["sourceLanguage"] = sourceLanguage!.rawValue
		}
		if(outputFormat != nil) {
			dict["outputFormat"] = outputFormat!.rawValue
		}
		if(enableSpeakerId != nil) {
			dict["enableSpeakerId"] = enableSpeakerId!
		}
		if(fixedPriceAddons != nil) {
			dict["fixedPriceAddons"] = fixedPriceAddons!
		}
		return dict
	}
}

