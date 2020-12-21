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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class ZoomIntegrationSetting: ObjectBase {

	public class ZoomIntegrationSettingTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var defaultUserId: BaseTokenizedObject {
			get {
				return self.append("defaultUserId") 
			}
		}
		
		public var zoomCategory: BaseTokenizedObject {
			get {
				return self.append("zoomCategory") 
			}
		}
		
		public var accountId: BaseTokenizedObject {
			get {
				return self.append("accountId") 
			}
		}
		
		public var enableRecordingUpload: BaseTokenizedObject {
			get {
				return self.append("enableRecordingUpload") 
			}
		}
		
		public var createUserIfNotExist: BaseTokenizedObject {
			get {
				return self.append("createUserIfNotExist") 
			}
		}
		
		public var handleParticipantsMode: BaseTokenizedObject {
			get {
				return self.append("handleParticipantsMode") 
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
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
	}

	public var defaultUserId: String? = nil
	public var zoomCategory: String? = nil
	public var accountId: String? = nil
	public var enableRecordingUpload: Bool? = nil
	public var createUserIfNotExist: Bool? = nil
	public var handleParticipantsMode: HandleParticipantsMode? = nil
	public var zoomUserMatchingMode: ZoomUsersMatching? = nil
	public var zoomUserPostfix: String? = nil
	public var zoomWebinarCategory: String? = nil
	public var enableWebinarUploads: Bool? = nil
	public var conversionProfileId: Int? = nil


	public func setMultiRequestToken(defaultUserId: String) {
		self.dict["defaultUserId"] = defaultUserId
	}
	
	public func setMultiRequestToken(zoomCategory: String) {
		self.dict["zoomCategory"] = zoomCategory
	}
	
	public func setMultiRequestToken(accountId: String) {
		self.dict["accountId"] = accountId
	}
	
	public func setMultiRequestToken(enableRecordingUpload: String) {
		self.dict["enableRecordingUpload"] = enableRecordingUpload
	}
	
	public func setMultiRequestToken(createUserIfNotExist: String) {
		self.dict["createUserIfNotExist"] = createUserIfNotExist
	}
	
	public func setMultiRequestToken(handleParticipantsMode: String) {
		self.dict["handleParticipantsMode"] = handleParticipantsMode
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
	
	public func setMultiRequestToken(conversionProfileId: String) {
		self.dict["conversionProfileId"] = conversionProfileId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["defaultUserId"] != nil {
			defaultUserId = dict["defaultUserId"] as? String
		}
		if dict["zoomCategory"] != nil {
			zoomCategory = dict["zoomCategory"] as? String
		}
		if dict["accountId"] != nil {
			accountId = dict["accountId"] as? String
		}
		if dict["enableRecordingUpload"] != nil {
			enableRecordingUpload = dict["enableRecordingUpload"] as? Bool
		}
		if dict["createUserIfNotExist"] != nil {
			createUserIfNotExist = dict["createUserIfNotExist"] as? Bool
		}
		if dict["handleParticipantsMode"] != nil {
			handleParticipantsMode = HandleParticipantsMode(rawValue: (dict["handleParticipantsMode"] as? Int)!)
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
		if dict["conversionProfileId"] != nil {
			conversionProfileId = dict["conversionProfileId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(defaultUserId != nil) {
			dict["defaultUserId"] = defaultUserId!
		}
		if(zoomCategory != nil) {
			dict["zoomCategory"] = zoomCategory!
		}
		if(enableRecordingUpload != nil) {
			dict["enableRecordingUpload"] = enableRecordingUpload!
		}
		if(createUserIfNotExist != nil) {
			dict["createUserIfNotExist"] = createUserIfNotExist!
		}
		if(handleParticipantsMode != nil) {
			dict["handleParticipantsMode"] = handleParticipantsMode!.rawValue
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
		if(conversionProfileId != nil) {
			dict["conversionProfileId"] = conversionProfileId!
		}
		return dict
	}
}

