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

open class ZoomIntegrationSetting: IntegrationSetting {

	public class ZoomIntegrationSettingTokenizer: IntegrationSetting.IntegrationSettingTokenizer {
		
		public var zoomCategory: BaseTokenizedObject {
			get {
				return self.append("zoomCategory") 
			}
		}
		
		public var enableRecordingUpload: BaseTokenizedObject {
			get {
				return self.append("enableRecordingUpload") 
			}
		}
		
		public var zoomUserMatchingMode: BaseTokenizedObject {
			get {
				return self.append("zoomUserMatchingMode") 
			}
		}
		
		public var zoomUserPostfix: BaseTokenizedObject {
			get {
				return self.append("zoomUserPostfix") 
			}
		}
		
		public var zoomWebinarCategory: BaseTokenizedObject {
			get {
				return self.append("zoomWebinarCategory") 
			}
		}
		
		public var enableWebinarUploads: BaseTokenizedObject {
			get {
				return self.append("enableWebinarUploads") 
			}
		}
		
		public var enableZoomTranscription: BaseTokenizedObject {
			get {
				return self.append("enableZoomTranscription") 
			}
		}
		
		public var zoomAccountDescription: BaseTokenizedObject {
			get {
				return self.append("zoomAccountDescription") 
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
		
		public var groupParticipationType: BaseTokenizedObject {
			get {
				return self.append("groupParticipationType") 
			}
		}
		
		public var handleCohostsMode: BaseTokenizedObject {
			get {
				return self.append("handleCohostsMode") 
			}
		}
		
		public var handleAlternativeHostsMode: BaseTokenizedObject {
			get {
				return self.append("handleAlternativeHostsMode") 
			}
		}
	}

	public var zoomCategory: String? = nil
	public var enableRecordingUpload: Bool? = nil
	public var zoomUserMatchingMode: ZoomUsersMatching? = nil
	public var zoomUserPostfix: String? = nil
	public var zoomWebinarCategory: String? = nil
	public var enableWebinarUploads: Bool? = nil
	public var enableZoomTranscription: Bool? = nil
	public var zoomAccountDescription: String? = nil
	public var optOutGroupNames: String? = nil
	public var optInGroupNames: String? = nil
	public var groupParticipationType: ZoomGroupParticipationType? = nil
	public var handleCohostsMode: HandleParticipantsMode? = nil
	public var handleAlternativeHostsMode: HandleParticipantsMode? = nil


	public func setMultiRequestToken(zoomCategory: String) {
		self.dict["zoomCategory"] = zoomCategory
	}
	
	public func setMultiRequestToken(enableRecordingUpload: String) {
		self.dict["enableRecordingUpload"] = enableRecordingUpload
	}
	
	public func setMultiRequestToken(zoomUserMatchingMode: String) {
		self.dict["zoomUserMatchingMode"] = zoomUserMatchingMode
	}
	
	public func setMultiRequestToken(zoomUserPostfix: String) {
		self.dict["zoomUserPostfix"] = zoomUserPostfix
	}
	
	public func setMultiRequestToken(zoomWebinarCategory: String) {
		self.dict["zoomWebinarCategory"] = zoomWebinarCategory
	}
	
	public func setMultiRequestToken(enableWebinarUploads: String) {
		self.dict["enableWebinarUploads"] = enableWebinarUploads
	}
	
	public func setMultiRequestToken(enableZoomTranscription: String) {
		self.dict["enableZoomTranscription"] = enableZoomTranscription
	}
	
	public func setMultiRequestToken(zoomAccountDescription: String) {
		self.dict["zoomAccountDescription"] = zoomAccountDescription
	}
	
	public func setMultiRequestToken(optOutGroupNames: String) {
		self.dict["optOutGroupNames"] = optOutGroupNames
	}
	
	public func setMultiRequestToken(optInGroupNames: String) {
		self.dict["optInGroupNames"] = optInGroupNames
	}
	
	public func setMultiRequestToken(groupParticipationType: String) {
		self.dict["groupParticipationType"] = groupParticipationType
	}
	
	public func setMultiRequestToken(handleCohostsMode: String) {
		self.dict["handleCohostsMode"] = handleCohostsMode
	}
	
	public func setMultiRequestToken(handleAlternativeHostsMode: String) {
		self.dict["handleAlternativeHostsMode"] = handleAlternativeHostsMode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["zoomCategory"] != nil {
			zoomCategory = dict["zoomCategory"] as? String
		}
		if dict["enableRecordingUpload"] != nil {
			enableRecordingUpload = dict["enableRecordingUpload"] as? Bool
		}
		if dict["zoomUserMatchingMode"] != nil {
			zoomUserMatchingMode = ZoomUsersMatching(rawValue: (dict["zoomUserMatchingMode"] as? Int)!)
		}
		if dict["zoomUserPostfix"] != nil {
			zoomUserPostfix = dict["zoomUserPostfix"] as? String
		}
		if dict["zoomWebinarCategory"] != nil {
			zoomWebinarCategory = dict["zoomWebinarCategory"] as? String
		}
		if dict["enableWebinarUploads"] != nil {
			enableWebinarUploads = dict["enableWebinarUploads"] as? Bool
		}
		if dict["enableZoomTranscription"] != nil {
			enableZoomTranscription = dict["enableZoomTranscription"] as? Bool
		}
		if dict["zoomAccountDescription"] != nil {
			zoomAccountDescription = dict["zoomAccountDescription"] as? String
		}
		if dict["optOutGroupNames"] != nil {
			optOutGroupNames = dict["optOutGroupNames"] as? String
		}
		if dict["optInGroupNames"] != nil {
			optInGroupNames = dict["optInGroupNames"] as? String
		}
		if dict["groupParticipationType"] != nil {
			groupParticipationType = ZoomGroupParticipationType(rawValue: (dict["groupParticipationType"] as? Int)!)
		}
		if dict["handleCohostsMode"] != nil {
			handleCohostsMode = HandleParticipantsMode(rawValue: (dict["handleCohostsMode"] as? Int)!)
		}
		if dict["handleAlternativeHostsMode"] != nil {
			handleAlternativeHostsMode = HandleParticipantsMode(rawValue: (dict["handleAlternativeHostsMode"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(zoomCategory != nil) {
			dict["zoomCategory"] = zoomCategory!
		}
		if(enableRecordingUpload != nil) {
			dict["enableRecordingUpload"] = enableRecordingUpload!
		}
		if(zoomUserMatchingMode != nil) {
			dict["zoomUserMatchingMode"] = zoomUserMatchingMode!.rawValue
		}
		if(zoomUserPostfix != nil) {
			dict["zoomUserPostfix"] = zoomUserPostfix!
		}
		if(zoomWebinarCategory != nil) {
			dict["zoomWebinarCategory"] = zoomWebinarCategory!
		}
		if(enableWebinarUploads != nil) {
			dict["enableWebinarUploads"] = enableWebinarUploads!
		}
		if(enableZoomTranscription != nil) {
			dict["enableZoomTranscription"] = enableZoomTranscription!
		}
		if(zoomAccountDescription != nil) {
			dict["zoomAccountDescription"] = zoomAccountDescription!
		}
		if(optOutGroupNames != nil) {
			dict["optOutGroupNames"] = optOutGroupNames!
		}
		if(optInGroupNames != nil) {
			dict["optInGroupNames"] = optInGroupNames!
		}
		if(groupParticipationType != nil) {
			dict["groupParticipationType"] = groupParticipationType!.rawValue
		}
		if(handleCohostsMode != nil) {
			dict["handleCohostsMode"] = handleCohostsMode!.rawValue
		}
		if(handleAlternativeHostsMode != nil) {
			dict["handleAlternativeHostsMode"] = handleAlternativeHostsMode!.rawValue
		}
		return dict
	}
}

