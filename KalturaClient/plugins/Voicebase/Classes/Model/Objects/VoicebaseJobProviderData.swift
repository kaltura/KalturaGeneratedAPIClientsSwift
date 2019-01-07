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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class VoicebaseJobProviderData: IntegrationJobProviderData {

	public class VoicebaseJobProviderDataTokenizer: IntegrationJobProviderData.IntegrationJobProviderDataTokenizer {
		
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
		
		public var transcriptId: BaseTokenizedObject {
			get {
				return self.append("transcriptId") 
			}
		}
		
		public var captionAssetFormats: BaseTokenizedObject {
			get {
				return self.append("captionAssetFormats") 
			}
		}
		
		public var apiKey: BaseTokenizedObject {
			get {
				return self.append("apiKey") 
			}
		}
		
		public var apiPassword: BaseTokenizedObject {
			get {
				return self.append("apiPassword") 
			}
		}
		
		public var spokenLanguage: BaseTokenizedObject {
			get {
				return self.append("spokenLanguage") 
			}
		}
		
		public var fileLocation: BaseTokenizedObject {
			get {
				return self.append("fileLocation") 
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
	/**  input Transcript-asset ID  */
	public var transcriptId: String? = nil
	/**  Caption formats  */
	public var captionAssetFormats: String? = nil
	/**  Api key for service provider  */
	public var apiKey: String? = nil
	/**  Api key for service provider  */
	public var apiPassword: String? = nil
	/**  Transcript content language  */
	public var spokenLanguage: Language? = nil
	/**  Transcript Content location  */
	public var fileLocation: String? = nil
	/**  should replace remote media content  */
	public var replaceMediaContent: Bool? = nil
	/**  additional parameters to send to VoiceBase  */
	public var additionalParameters: String? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(transcriptId: String) {
		self.dict["transcriptId"] = transcriptId
	}
	
	public func setMultiRequestToken(captionAssetFormats: String) {
		self.dict["captionAssetFormats"] = captionAssetFormats
	}
	
	public func setMultiRequestToken(apiKey: String) {
		self.dict["apiKey"] = apiKey
	}
	
	public func setMultiRequestToken(apiPassword: String) {
		self.dict["apiPassword"] = apiPassword
	}
	
	public func setMultiRequestToken(spokenLanguage: String) {
		self.dict["spokenLanguage"] = spokenLanguage
	}
	
	public func setMultiRequestToken(fileLocation: String) {
		self.dict["fileLocation"] = fileLocation
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
		if dict["transcriptId"] != nil {
			transcriptId = dict["transcriptId"] as? String
		}
		if dict["captionAssetFormats"] != nil {
			captionAssetFormats = dict["captionAssetFormats"] as? String
		}
		if dict["apiKey"] != nil {
			apiKey = dict["apiKey"] as? String
		}
		if dict["apiPassword"] != nil {
			apiPassword = dict["apiPassword"] as? String
		}
		if dict["spokenLanguage"] != nil {
			spokenLanguage = Language(rawValue: "\(dict["spokenLanguage"]!)")
		}
		if dict["fileLocation"] != nil {
			fileLocation = dict["fileLocation"] as? String
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
		if(transcriptId != nil) {
			dict["transcriptId"] = transcriptId!
		}
		if(captionAssetFormats != nil) {
			dict["captionAssetFormats"] = captionAssetFormats!
		}
		if(spokenLanguage != nil) {
			dict["spokenLanguage"] = spokenLanguage!.rawValue
		}
		if(replaceMediaContent != nil) {
			dict["replaceMediaContent"] = replaceMediaContent!
		}
		return dict
	}
}

