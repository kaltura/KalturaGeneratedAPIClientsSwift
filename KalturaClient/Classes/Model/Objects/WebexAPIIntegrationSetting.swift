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

open class WebexAPIIntegrationSetting: IntegrationSetting {

	public class WebexAPIIntegrationSettingTokenizer: IntegrationSetting.IntegrationSettingTokenizer {
		
		public var webexCategory: BaseTokenizedObject {
			get {
				return self.append("webexCategory") 
			}
		}
		
		public var enableRecordingUpload: BaseTokenizedObject {
			get {
				return self.append("enableRecordingUpload") 
			}
		}
		
		public var enableTranscription: BaseTokenizedObject {
			get {
				return self.append("enableTranscription") 
			}
		}
		
		public var userMatchingMode: BaseTokenizedObject {
			get {
				return self.append("userMatchingMode") 
			}
		}
		
		public var userPostfix: BaseTokenizedObject {
			get {
				return self.append("userPostfix") 
			}
		}
		
		public var webexAccountDescription: BaseTokenizedObject {
			get {
				return self.append("webexAccountDescription") 
			}
		}
		
		public var groupParticipationType: BaseTokenizedObject {
			get {
				return self.append("groupParticipationType") 
			}
		}
		
		public var optOutGroupNames: BaseTokenizedObject {
			get {
				return self.append("optOutGroupNames") 
			}
		}
		
		public var optInGroupNames: BaseTokenizedObject {
			get {
				return self.append("optInGroupNames") 
			}
		}
		
		public var siteUrl: BaseTokenizedObject {
			get {
				return self.append("siteUrl") 
			}
		}
	}

	public var webexCategory: String? = nil
	public var enableRecordingUpload: Bool? = nil
	public var enableTranscription: Bool? = nil
	public var userMatchingMode: WebexAPIUsersMatching? = nil
	public var userPostfix: String? = nil
	public var webexAccountDescription: String? = nil
	public var groupParticipationType: WebexAPIGroupParticipationType? = nil
	public var optOutGroupNames: String? = nil
	public var optInGroupNames: String? = nil
	public var siteUrl: String? = nil


	public func setMultiRequestToken(webexCategory: String) {
		self.dict["webexCategory"] = webexCategory
	}
	
	public func setMultiRequestToken(enableRecordingUpload: String) {
		self.dict["enableRecordingUpload"] = enableRecordingUpload
	}
	
	public func setMultiRequestToken(enableTranscription: String) {
		self.dict["enableTranscription"] = enableTranscription
	}
	
	public func setMultiRequestToken(userMatchingMode: String) {
		self.dict["userMatchingMode"] = userMatchingMode
	}
	
	public func setMultiRequestToken(userPostfix: String) {
		self.dict["userPostfix"] = userPostfix
	}
	
	public func setMultiRequestToken(webexAccountDescription: String) {
		self.dict["webexAccountDescription"] = webexAccountDescription
	}
	
	public func setMultiRequestToken(groupParticipationType: String) {
		self.dict["groupParticipationType"] = groupParticipationType
	}
	
	public func setMultiRequestToken(optOutGroupNames: String) {
		self.dict["optOutGroupNames"] = optOutGroupNames
	}
	
	public func setMultiRequestToken(optInGroupNames: String) {
		self.dict["optInGroupNames"] = optInGroupNames
	}
	
	public func setMultiRequestToken(siteUrl: String) {
		self.dict["siteUrl"] = siteUrl
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["webexCategory"] != nil {
			webexCategory = dict["webexCategory"] as? String
		}
		if dict["enableRecordingUpload"] != nil {
			enableRecordingUpload = dict["enableRecordingUpload"] as? Bool
		}
		if dict["enableTranscription"] != nil {
			enableTranscription = dict["enableTranscription"] as? Bool
		}
		if dict["userMatchingMode"] != nil {
			userMatchingMode = WebexAPIUsersMatching(rawValue: (dict["userMatchingMode"] as? Int)!)
		}
		if dict["userPostfix"] != nil {
			userPostfix = dict["userPostfix"] as? String
		}
		if dict["webexAccountDescription"] != nil {
			webexAccountDescription = dict["webexAccountDescription"] as? String
		}
		if dict["groupParticipationType"] != nil {
			groupParticipationType = WebexAPIGroupParticipationType(rawValue: (dict["groupParticipationType"] as? Int)!)
		}
		if dict["optOutGroupNames"] != nil {
			optOutGroupNames = dict["optOutGroupNames"] as? String
		}
		if dict["optInGroupNames"] != nil {
			optInGroupNames = dict["optInGroupNames"] as? String
		}
		if dict["siteUrl"] != nil {
			siteUrl = dict["siteUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(webexCategory != nil) {
			dict["webexCategory"] = webexCategory!
		}
		if(enableRecordingUpload != nil) {
			dict["enableRecordingUpload"] = enableRecordingUpload!
		}
		if(enableTranscription != nil) {
			dict["enableTranscription"] = enableTranscription!
		}
		if(userMatchingMode != nil) {
			dict["userMatchingMode"] = userMatchingMode!.rawValue
		}
		if(userPostfix != nil) {
			dict["userPostfix"] = userPostfix!
		}
		if(webexAccountDescription != nil) {
			dict["webexAccountDescription"] = webexAccountDescription!
		}
		if(groupParticipationType != nil) {
			dict["groupParticipationType"] = groupParticipationType!.rawValue
		}
		if(optOutGroupNames != nil) {
			dict["optOutGroupNames"] = optOutGroupNames!
		}
		if(optInGroupNames != nil) {
			dict["optInGroupNames"] = optInGroupNames!
		}
		if(siteUrl != nil) {
			dict["siteUrl"] = siteUrl!
		}
		return dict
	}
}

