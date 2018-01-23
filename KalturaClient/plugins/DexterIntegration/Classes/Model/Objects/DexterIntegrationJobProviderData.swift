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

open class DexterIntegrationJobProviderData: IntegrationJobProviderData {

	public class DexterIntegrationJobProviderDataTokenizer: IntegrationJobProviderData.IntegrationJobProviderDataTokenizer {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var transcriptAssetId: BaseTokenizedObject {
			get {
				return self.append("transcriptAssetId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var voicebaseApiKey: BaseTokenizedObject {
			get {
				return self.append("voicebaseApiKey") 
			}
		}
		
		public var voicebaseApiPassword: BaseTokenizedObject {
			get {
				return self.append("voicebaseApiPassword") 
			}
		}
	}

	/**  ID of the metadata profile for the extracted term metadata  */
	public var metadataProfileId: Int? = nil
	/**  ID of the transcript asset  */
	public var transcriptAssetId: String? = nil
	/**  ID of the entry  */
	public var entryId: String? = nil
	/**  Voicebase API key to fetch transcript tokens  */
	public var voicebaseApiKey: String? = nil
	/**  Voicebase API password to fetch transcript tokens  */
	public var voicebaseApiPassword: String? = nil


	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(transcriptAssetId: String) {
		self.dict["transcriptAssetId"] = transcriptAssetId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(voicebaseApiKey: String) {
		self.dict["voicebaseApiKey"] = voicebaseApiKey
	}
	
	public func setMultiRequestToken(voicebaseApiPassword: String) {
		self.dict["voicebaseApiPassword"] = voicebaseApiPassword
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["transcriptAssetId"] != nil {
			transcriptAssetId = dict["transcriptAssetId"] as? String
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["voicebaseApiKey"] != nil {
			voicebaseApiKey = dict["voicebaseApiKey"] as? String
		}
		if dict["voicebaseApiPassword"] != nil {
			voicebaseApiPassword = dict["voicebaseApiPassword"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(transcriptAssetId != nil) {
			dict["transcriptAssetId"] = transcriptAssetId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(voicebaseApiKey != nil) {
			dict["voicebaseApiKey"] = voicebaseApiKey!
		}
		if(voicebaseApiPassword != nil) {
			dict["voicebaseApiPassword"] = voicebaseApiPassword!
		}
		return dict
	}
}

