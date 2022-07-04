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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class CatalogItemAdvancedFilter: SearchItem {

	public class CatalogItemAdvancedFilterTokenizer: SearchItem.SearchItemTokenizer {
		
		public var serviceTypeEqual: BaseTokenizedObject {
			get {
				return self.append("serviceTypeEqual") 
			}
		}
		
		public var serviceTypeIn: BaseTokenizedObject {
			get {
				return self.append("serviceTypeIn") 
			}
		}
		
		public var serviceFeatureEqual: BaseTokenizedObject {
			get {
				return self.append("serviceFeatureEqual") 
			}
		}
		
		public var serviceFeatureIn: BaseTokenizedObject {
			get {
				return self.append("serviceFeatureIn") 
			}
		}
		
		public var turnAroundTimeEqual: BaseTokenizedObject {
			get {
				return self.append("turnAroundTimeEqual") 
			}
		}
		
		public var turnAroundTimeIn: BaseTokenizedObject {
			get {
				return self.append("turnAroundTimeIn") 
			}
		}
		
		public var sourceLanguageEqual: BaseTokenizedObject {
			get {
				return self.append("sourceLanguageEqual") 
			}
		}
		
		public var targetLanguageEqual: BaseTokenizedObject {
			get {
				return self.append("targetLanguageEqual") 
			}
		}
	}

	public var serviceTypeEqual: VendorServiceType? = nil
	public var serviceTypeIn: String? = nil
	public var serviceFeatureEqual: VendorServiceFeature? = nil
	public var serviceFeatureIn: String? = nil
	public var turnAroundTimeEqual: VendorServiceTurnAroundTime? = nil
	public var turnAroundTimeIn: String? = nil
	public var sourceLanguageEqual: CatalogItemLanguage? = nil
	public var targetLanguageEqual: CatalogItemLanguage? = nil


	public func setMultiRequestToken(serviceTypeEqual: String) {
		self.dict["serviceTypeEqual"] = serviceTypeEqual
	}
	
	public func setMultiRequestToken(serviceTypeIn: String) {
		self.dict["serviceTypeIn"] = serviceTypeIn
	}
	
	public func setMultiRequestToken(serviceFeatureEqual: String) {
		self.dict["serviceFeatureEqual"] = serviceFeatureEqual
	}
	
	public func setMultiRequestToken(serviceFeatureIn: String) {
		self.dict["serviceFeatureIn"] = serviceFeatureIn
	}
	
	public func setMultiRequestToken(turnAroundTimeEqual: String) {
		self.dict["turnAroundTimeEqual"] = turnAroundTimeEqual
	}
	
	public func setMultiRequestToken(turnAroundTimeIn: String) {
		self.dict["turnAroundTimeIn"] = turnAroundTimeIn
	}
	
	public func setMultiRequestToken(sourceLanguageEqual: String) {
		self.dict["sourceLanguageEqual"] = sourceLanguageEqual
	}
	
	public func setMultiRequestToken(targetLanguageEqual: String) {
		self.dict["targetLanguageEqual"] = targetLanguageEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["serviceTypeEqual"] != nil {
			serviceTypeEqual = VendorServiceType(rawValue: (dict["serviceTypeEqual"] as? Int)!)
		}
		if dict["serviceTypeIn"] != nil {
			serviceTypeIn = dict["serviceTypeIn"] as? String
		}
		if dict["serviceFeatureEqual"] != nil {
			serviceFeatureEqual = VendorServiceFeature(rawValue: (dict["serviceFeatureEqual"] as? Int)!)
		}
		if dict["serviceFeatureIn"] != nil {
			serviceFeatureIn = dict["serviceFeatureIn"] as? String
		}
		if dict["turnAroundTimeEqual"] != nil {
			turnAroundTimeEqual = VendorServiceTurnAroundTime(rawValue: (dict["turnAroundTimeEqual"] as? Int)!)
		}
		if dict["turnAroundTimeIn"] != nil {
			turnAroundTimeIn = dict["turnAroundTimeIn"] as? String
		}
		if dict["sourceLanguageEqual"] != nil {
			sourceLanguageEqual = CatalogItemLanguage(rawValue: "\(dict["sourceLanguageEqual"]!)")
		}
		if dict["targetLanguageEqual"] != nil {
			targetLanguageEqual = CatalogItemLanguage(rawValue: "\(dict["targetLanguageEqual"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(serviceTypeEqual != nil) {
			dict["serviceTypeEqual"] = serviceTypeEqual!.rawValue
		}
		if(serviceTypeIn != nil) {
			dict["serviceTypeIn"] = serviceTypeIn!
		}
		if(serviceFeatureEqual != nil) {
			dict["serviceFeatureEqual"] = serviceFeatureEqual!.rawValue
		}
		if(serviceFeatureIn != nil) {
			dict["serviceFeatureIn"] = serviceFeatureIn!
		}
		if(turnAroundTimeEqual != nil) {
			dict["turnAroundTimeEqual"] = turnAroundTimeEqual!.rawValue
		}
		if(turnAroundTimeIn != nil) {
			dict["turnAroundTimeIn"] = turnAroundTimeIn!
		}
		if(sourceLanguageEqual != nil) {
			dict["sourceLanguageEqual"] = sourceLanguageEqual!.rawValue
		}
		if(targetLanguageEqual != nil) {
			dict["targetLanguageEqual"] = targetLanguageEqual!.rawValue
		}
		return dict
	}
}

