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

open class ReachProfile: ObjectBase {

	public class ReachProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var profileType: BaseTokenizedObject {
			get {
				return self.append("profileType") 
			}
		}
		
		public var defaultOutputFormat: BaseTokenizedObject {
			get {
				return self.append("defaultOutputFormat") 
			}
		}
		
		public var enableMachineModeration: BaseTokenizedObject {
			get {
				return self.append("enableMachineModeration") 
			}
		}
		
		public var enableHumanModeration: BaseTokenizedObject {
			get {
				return self.append("enableHumanModeration") 
			}
		}
		
		public var autoDisplayMachineCaptionsOnPlayer: BaseTokenizedObject {
			get {
				return self.append("autoDisplayMachineCaptionsOnPlayer") 
			}
		}
		
		public var autoDisplayHumanCaptionsOnPlayer: BaseTokenizedObject {
			get {
				return self.append("autoDisplayHumanCaptionsOnPlayer") 
			}
		}
		
		public var enableMetadataExtraction: BaseTokenizedObject {
			get {
				return self.append("enableMetadataExtraction") 
			}
		}
		
		public var enableSpeakerChangeIndication: BaseTokenizedObject {
			get {
				return self.append("enableSpeakerChangeIndication") 
			}
		}
		
		public var enableAudioTags: BaseTokenizedObject {
			get {
				return self.append("enableAudioTags") 
			}
		}
		
		public var enableProfanityRemoval: BaseTokenizedObject {
			get {
				return self.append("enableProfanityRemoval") 
			}
		}
		
		public var maxCharactersPerCaptionLine: BaseTokenizedObject {
			get {
				return self.append("maxCharactersPerCaptionLine") 
			}
		}
		
		public var labelAdditionForMachineServiceType: BaseTokenizedObject {
			get {
				return self.append("labelAdditionForMachineServiceType") 
			}
		}
		
		public var labelAdditionForHumanServiceType: BaseTokenizedObject {
			get {
				return self.append("labelAdditionForHumanServiceType") 
			}
		}
		
		public var contentDeletionPolicy: BaseTokenizedObject {
			get {
				return self.append("contentDeletionPolicy") 
			}
		}
		
		public var rules: ArrayTokenizedObject<Rule.RuleTokenizer> {
			get {
				return ArrayTokenizedObject<Rule.RuleTokenizer>(self.append("rules"))
			} 
		}
		
		public func credit<T: BaseVendorCredit.BaseVendorCreditTokenizer>() -> T {
			return T(self.append("credit"))
		}
		
		public var usedCredit: BaseTokenizedObject {
			get {
				return self.append("usedCredit") 
			}
		}
		
		public var dictionaries: ArrayTokenizedObject<KalturaDictionary.KalturaDictionaryTokenizer> {
			get {
				return ArrayTokenizedObject<KalturaDictionary.KalturaDictionaryTokenizer>(self.append("dictionaries"))
			} 
		}
		
		public var flavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIds") 
			}
		}
		
		public var vendorTaskProcessingRegion: BaseTokenizedObject {
			get {
				return self.append("vendorTaskProcessingRegion") 
			}
		}
	}

	public var id: Int? = nil
	/**  The name of the profile  */
	public var name: String? = nil
	public var partnerId: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	public var status: ReachProfileStatus? = nil
	public var profileType: ReachProfileType? = nil
	public var defaultOutputFormat: VendorCatalogItemOutputFormat? = nil
	public var enableMachineModeration: Bool? = nil
	public var enableHumanModeration: Bool? = nil
	public var autoDisplayMachineCaptionsOnPlayer: Bool? = nil
	public var autoDisplayHumanCaptionsOnPlayer: Bool? = nil
	public var enableMetadataExtraction: Bool? = nil
	public var enableSpeakerChangeIndication: Bool? = nil
	public var enableAudioTags: Bool? = nil
	public var enableProfanityRemoval: Bool? = nil
	public var maxCharactersPerCaptionLine: Int? = nil
	public var labelAdditionForMachineServiceType: String? = nil
	public var labelAdditionForHumanServiceType: String? = nil
	public var contentDeletionPolicy: ReachProfileContentDeletionPolicy? = nil
	public var rules: Array<Rule>? = nil
	public var credit: BaseVendorCredit? = nil
	public var usedCredit: Double? = nil
	public var dictionaries: Array<KalturaDictionary>? = nil
	/**  Comma separated flavorParamsIds that the vendor should look for it matching
	  asset when trying to download the asset  */
	public var flavorParamsIds: String? = nil
	/**  Indicates in which region the task processing should task place  */
	public var vendorTaskProcessingRegion: VendorTaskProcessingRegion? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(profileType: String) {
		self.dict["profileType"] = profileType
	}
	
	public func setMultiRequestToken(defaultOutputFormat: String) {
		self.dict["defaultOutputFormat"] = defaultOutputFormat
	}
	
	public func setMultiRequestToken(enableMachineModeration: String) {
		self.dict["enableMachineModeration"] = enableMachineModeration
	}
	
	public func setMultiRequestToken(enableHumanModeration: String) {
		self.dict["enableHumanModeration"] = enableHumanModeration
	}
	
	public func setMultiRequestToken(autoDisplayMachineCaptionsOnPlayer: String) {
		self.dict["autoDisplayMachineCaptionsOnPlayer"] = autoDisplayMachineCaptionsOnPlayer
	}
	
	public func setMultiRequestToken(autoDisplayHumanCaptionsOnPlayer: String) {
		self.dict["autoDisplayHumanCaptionsOnPlayer"] = autoDisplayHumanCaptionsOnPlayer
	}
	
	public func setMultiRequestToken(enableMetadataExtraction: String) {
		self.dict["enableMetadataExtraction"] = enableMetadataExtraction
	}
	
	public func setMultiRequestToken(enableSpeakerChangeIndication: String) {
		self.dict["enableSpeakerChangeIndication"] = enableSpeakerChangeIndication
	}
	
	public func setMultiRequestToken(enableAudioTags: String) {
		self.dict["enableAudioTags"] = enableAudioTags
	}
	
	public func setMultiRequestToken(enableProfanityRemoval: String) {
		self.dict["enableProfanityRemoval"] = enableProfanityRemoval
	}
	
	public func setMultiRequestToken(maxCharactersPerCaptionLine: String) {
		self.dict["maxCharactersPerCaptionLine"] = maxCharactersPerCaptionLine
	}
	
	public func setMultiRequestToken(labelAdditionForMachineServiceType: String) {
		self.dict["labelAdditionForMachineServiceType"] = labelAdditionForMachineServiceType
	}
	
	public func setMultiRequestToken(labelAdditionForHumanServiceType: String) {
		self.dict["labelAdditionForHumanServiceType"] = labelAdditionForHumanServiceType
	}
	
	public func setMultiRequestToken(contentDeletionPolicy: String) {
		self.dict["contentDeletionPolicy"] = contentDeletionPolicy
	}
	
	public func setMultiRequestToken(usedCredit: String) {
		self.dict["usedCredit"] = usedCredit
	}
	
	public func setMultiRequestToken(flavorParamsIds: String) {
		self.dict["flavorParamsIds"] = flavorParamsIds
	}
	
	public func setMultiRequestToken(vendorTaskProcessingRegion: String) {
		self.dict["vendorTaskProcessingRegion"] = vendorTaskProcessingRegion
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["status"] != nil {
			status = ReachProfileStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["profileType"] != nil {
			profileType = ReachProfileType(rawValue: (dict["profileType"] as? Int)!)
		}
		if dict["defaultOutputFormat"] != nil {
			defaultOutputFormat = VendorCatalogItemOutputFormat(rawValue: (dict["defaultOutputFormat"] as? Int)!)
		}
		if dict["enableMachineModeration"] != nil {
			enableMachineModeration = dict["enableMachineModeration"] as? Bool
		}
		if dict["enableHumanModeration"] != nil {
			enableHumanModeration = dict["enableHumanModeration"] as? Bool
		}
		if dict["autoDisplayMachineCaptionsOnPlayer"] != nil {
			autoDisplayMachineCaptionsOnPlayer = dict["autoDisplayMachineCaptionsOnPlayer"] as? Bool
		}
		if dict["autoDisplayHumanCaptionsOnPlayer"] != nil {
			autoDisplayHumanCaptionsOnPlayer = dict["autoDisplayHumanCaptionsOnPlayer"] as? Bool
		}
		if dict["enableMetadataExtraction"] != nil {
			enableMetadataExtraction = dict["enableMetadataExtraction"] as? Bool
		}
		if dict["enableSpeakerChangeIndication"] != nil {
			enableSpeakerChangeIndication = dict["enableSpeakerChangeIndication"] as? Bool
		}
		if dict["enableAudioTags"] != nil {
			enableAudioTags = dict["enableAudioTags"] as? Bool
		}
		if dict["enableProfanityRemoval"] != nil {
			enableProfanityRemoval = dict["enableProfanityRemoval"] as? Bool
		}
		if dict["maxCharactersPerCaptionLine"] != nil {
			maxCharactersPerCaptionLine = dict["maxCharactersPerCaptionLine"] as? Int
		}
		if dict["labelAdditionForMachineServiceType"] != nil {
			labelAdditionForMachineServiceType = dict["labelAdditionForMachineServiceType"] as? String
		}
		if dict["labelAdditionForHumanServiceType"] != nil {
			labelAdditionForHumanServiceType = dict["labelAdditionForHumanServiceType"] as? String
		}
		if dict["contentDeletionPolicy"] != nil {
			contentDeletionPolicy = ReachProfileContentDeletionPolicy(rawValue: (dict["contentDeletionPolicy"] as? Int)!)
		}
		if dict["rules"] != nil {
			rules = try JSONParser.parse(array: dict["rules"] as! [Any])
		}
		if dict["credit"] != nil {
		credit = try JSONParser.parse(object: dict["credit"] as! [String: Any])		}
		if dict["usedCredit"] != nil {
			usedCredit = dict["usedCredit"] as? Double
		}
		if dict["dictionaries"] != nil {
			dictionaries = try JSONParser.parse(array: dict["dictionaries"] as! [Any])
		}
		if dict["flavorParamsIds"] != nil {
			flavorParamsIds = dict["flavorParamsIds"] as? String
		}
		if dict["vendorTaskProcessingRegion"] != nil {
			vendorTaskProcessingRegion = VendorTaskProcessingRegion(rawValue: (dict["vendorTaskProcessingRegion"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(profileType != nil) {
			dict["profileType"] = profileType!.rawValue
		}
		if(defaultOutputFormat != nil) {
			dict["defaultOutputFormat"] = defaultOutputFormat!.rawValue
		}
		if(enableMachineModeration != nil) {
			dict["enableMachineModeration"] = enableMachineModeration!
		}
		if(enableHumanModeration != nil) {
			dict["enableHumanModeration"] = enableHumanModeration!
		}
		if(autoDisplayMachineCaptionsOnPlayer != nil) {
			dict["autoDisplayMachineCaptionsOnPlayer"] = autoDisplayMachineCaptionsOnPlayer!
		}
		if(autoDisplayHumanCaptionsOnPlayer != nil) {
			dict["autoDisplayHumanCaptionsOnPlayer"] = autoDisplayHumanCaptionsOnPlayer!
		}
		if(enableMetadataExtraction != nil) {
			dict["enableMetadataExtraction"] = enableMetadataExtraction!
		}
		if(enableSpeakerChangeIndication != nil) {
			dict["enableSpeakerChangeIndication"] = enableSpeakerChangeIndication!
		}
		if(enableAudioTags != nil) {
			dict["enableAudioTags"] = enableAudioTags!
		}
		if(enableProfanityRemoval != nil) {
			dict["enableProfanityRemoval"] = enableProfanityRemoval!
		}
		if(maxCharactersPerCaptionLine != nil) {
			dict["maxCharactersPerCaptionLine"] = maxCharactersPerCaptionLine!
		}
		if(labelAdditionForMachineServiceType != nil) {
			dict["labelAdditionForMachineServiceType"] = labelAdditionForMachineServiceType!
		}
		if(labelAdditionForHumanServiceType != nil) {
			dict["labelAdditionForHumanServiceType"] = labelAdditionForHumanServiceType!
		}
		if(contentDeletionPolicy != nil) {
			dict["contentDeletionPolicy"] = contentDeletionPolicy!.rawValue
		}
		if(rules != nil) {
			dict["rules"] = rules!.map { value in value.toDictionary() }
		}
		if(credit != nil) {
			dict["credit"] = credit!.toDictionary()
		}
		if(dictionaries != nil) {
			dict["dictionaries"] = dictionaries!.map { value in value.toDictionary() }
		}
		if(flavorParamsIds != nil) {
			dict["flavorParamsIds"] = flavorParamsIds!
		}
		if(vendorTaskProcessingRegion != nil) {
			dict["vendorTaskProcessingRegion"] = vendorTaskProcessingRegion!.rawValue
		}
		return dict
	}
}

