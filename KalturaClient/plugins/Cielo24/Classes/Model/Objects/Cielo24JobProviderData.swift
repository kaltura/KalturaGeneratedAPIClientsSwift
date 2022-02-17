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

open class Cielo24JobProviderData: IntegrationJobProviderData {

	public class Cielo24JobProviderDataTokenizer: IntegrationJobProviderData.IntegrationJobProviderDataTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var captionAssetFormats: BaseTokenizedObject {
			get {
				return self.append("captionAssetFormats") 
			}
		}
		
		public var priority: BaseTokenizedObject {
			get {
				return self.append("priority") 
			}
		}
		
		public var fidelity: BaseTokenizedObject {
			get {
				return self.append("fidelity") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var baseUrl: BaseTokenizedObject {
			get {
				return self.append("baseUrl") 
			}
		}
		
		public var spokenLanguage: BaseTokenizedObject {
			get {
				return self.append("spokenLanguage") 
			}
		}
		
		public var replaceMediaContent: BaseTokenizedObject {
			get {
				return self.append("replaceMediaContent") 
			}
		}
		
		public var additionalParameters: BaseTokenizedObject {
			get {
				return self.append("additionalParameters") 
			}
		}
	}

	/**  Entry ID  */
	public var entryId: String? = nil
	/**  Flavor ID  */
	public var flavorAssetId: String? = nil
	/**  Caption formats  */
	public var captionAssetFormats: String? = nil
	public var priority: Cielo24Priority? = nil
	public var fidelity: Cielo24Fidelity? = nil
	/**  Api key for service provider  */
	public var username: String? = nil
	/**  Api key for service provider  */
	public var password: String? = nil
	/**  Base url for service provider  */
	public var baseUrl: String? = nil
	/**  Transcript content language  */
	public var spokenLanguage: Language? = nil
	/**  should replace remote media content  */
	public var replaceMediaContent: Bool? = nil
	/**  additional parameters to send to Cielo24  */
	public var additionalParameters: String? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(captionAssetFormats: String) {
		self.dict["captionAssetFormats"] = captionAssetFormats
	}
	
	public func setMultiRequestToken(priority: String) {
		self.dict["priority"] = priority
	}
	
	public func setMultiRequestToken(fidelity: String) {
		self.dict["fidelity"] = fidelity
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(baseUrl: String) {
		self.dict["baseUrl"] = baseUrl
	}
	
	public func setMultiRequestToken(spokenLanguage: String) {
		self.dict["spokenLanguage"] = spokenLanguage
	}
	
	public func setMultiRequestToken(replaceMediaContent: String) {
		self.dict["replaceMediaContent"] = replaceMediaContent
	}
	
	public func setMultiRequestToken(additionalParameters: String) {
		self.dict["additionalParameters"] = additionalParameters
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["captionAssetFormats"] != nil {
			captionAssetFormats = dict["captionAssetFormats"] as? String
		}
		if dict["priority"] != nil {
			priority = Cielo24Priority(rawValue: "\(dict["priority"]!)")
		}
		if dict["fidelity"] != nil {
			fidelity = Cielo24Fidelity(rawValue: "\(dict["fidelity"]!)")
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["baseUrl"] != nil {
			baseUrl = dict["baseUrl"] as? String
		}
		if dict["spokenLanguage"] != nil {
			spokenLanguage = Language(rawValue: "\(dict["spokenLanguage"]!)")
		}
		if dict["replaceMediaContent"] != nil {
			replaceMediaContent = dict["replaceMediaContent"] as? Bool
		}
		if dict["additionalParameters"] != nil {
			additionalParameters = dict["additionalParameters"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(captionAssetFormats != nil) {
			dict["captionAssetFormats"] = captionAssetFormats!
		}
		if(priority != nil) {
			dict["priority"] = priority!.rawValue
		}
		if(fidelity != nil) {
			dict["fidelity"] = fidelity!.rawValue
		}
		if(spokenLanguage != nil) {
			dict["spokenLanguage"] = spokenLanguage!.rawValue
		}
		if(replaceMediaContent != nil) {
			dict["replaceMediaContent"] = replaceMediaContent!
		}
		if(additionalParameters != nil) {
			dict["additionalParameters"] = additionalParameters!
		}
		return dict
	}
}

