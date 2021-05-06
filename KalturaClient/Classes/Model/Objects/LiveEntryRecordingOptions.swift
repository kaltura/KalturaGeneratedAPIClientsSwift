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

/**  A representation of a live stream recording entry configuration  */
open class LiveEntryRecordingOptions: ObjectBase {

	public class LiveEntryRecordingOptionsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var shouldCopyEntitlement: BaseTokenizedObject {
			get {
				return self.append("shouldCopyEntitlement") 
			}
		}
		
		public var shouldCopyScheduling: BaseTokenizedObject {
			get {
				return self.append("shouldCopyScheduling") 
			}
		}
		
		public var shouldCopyThumbnail: BaseTokenizedObject {
			get {
				return self.append("shouldCopyThumbnail") 
			}
		}
		
		public var shouldMakeHidden: BaseTokenizedObject {
			get {
				return self.append("shouldMakeHidden") 
			}
		}
		
		public var shouldAutoArchive: BaseTokenizedObject {
			get {
				return self.append("shouldAutoArchive") 
			}
		}
		
		public var nonDeletedCuePointsTags: BaseTokenizedObject {
			get {
				return self.append("nonDeletedCuePointsTags") 
			}
		}
		
		public var archiveVodSuffixTimezone: BaseTokenizedObject {
			get {
				return self.append("archiveVodSuffixTimezone") 
			}
		}
	}

	public var shouldCopyEntitlement: Bool? = nil
	public var shouldCopyScheduling: Bool? = nil
	public var shouldCopyThumbnail: Bool? = nil
	public var shouldMakeHidden: Bool? = nil
	public var shouldAutoArchive: Bool? = nil
	public var nonDeletedCuePointsTags: String? = nil
	public var archiveVodSuffixTimezone: String? = nil


	public func setMultiRequestToken(shouldCopyEntitlement: String) {
		self.dict["shouldCopyEntitlement"] = shouldCopyEntitlement
	}
	
	public func setMultiRequestToken(shouldCopyScheduling: String) {
		self.dict["shouldCopyScheduling"] = shouldCopyScheduling
	}
	
	public func setMultiRequestToken(shouldCopyThumbnail: String) {
		self.dict["shouldCopyThumbnail"] = shouldCopyThumbnail
	}
	
	public func setMultiRequestToken(shouldMakeHidden: String) {
		self.dict["shouldMakeHidden"] = shouldMakeHidden
	}
	
	public func setMultiRequestToken(shouldAutoArchive: String) {
		self.dict["shouldAutoArchive"] = shouldAutoArchive
	}
	
	public func setMultiRequestToken(nonDeletedCuePointsTags: String) {
		self.dict["nonDeletedCuePointsTags"] = nonDeletedCuePointsTags
	}
	
	public func setMultiRequestToken(archiveVodSuffixTimezone: String) {
		self.dict["archiveVodSuffixTimezone"] = archiveVodSuffixTimezone
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["shouldCopyEntitlement"] != nil {
			shouldCopyEntitlement = dict["shouldCopyEntitlement"] as? Bool
		}
		if dict["shouldCopyScheduling"] != nil {
			shouldCopyScheduling = dict["shouldCopyScheduling"] as? Bool
		}
		if dict["shouldCopyThumbnail"] != nil {
			shouldCopyThumbnail = dict["shouldCopyThumbnail"] as? Bool
		}
		if dict["shouldMakeHidden"] != nil {
			shouldMakeHidden = dict["shouldMakeHidden"] as? Bool
		}
		if dict["shouldAutoArchive"] != nil {
			shouldAutoArchive = dict["shouldAutoArchive"] as? Bool
		}
		if dict["nonDeletedCuePointsTags"] != nil {
			nonDeletedCuePointsTags = dict["nonDeletedCuePointsTags"] as? String
		}
		if dict["archiveVodSuffixTimezone"] != nil {
			archiveVodSuffixTimezone = dict["archiveVodSuffixTimezone"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(shouldCopyEntitlement != nil) {
			dict["shouldCopyEntitlement"] = shouldCopyEntitlement!
		}
		if(shouldCopyScheduling != nil) {
			dict["shouldCopyScheduling"] = shouldCopyScheduling!
		}
		if(shouldCopyThumbnail != nil) {
			dict["shouldCopyThumbnail"] = shouldCopyThumbnail!
		}
		if(shouldMakeHidden != nil) {
			dict["shouldMakeHidden"] = shouldMakeHidden!
		}
		if(shouldAutoArchive != nil) {
			dict["shouldAutoArchive"] = shouldAutoArchive!
		}
		if(nonDeletedCuePointsTags != nil) {
			dict["nonDeletedCuePointsTags"] = nonDeletedCuePointsTags!
		}
		if(archiveVodSuffixTimezone != nil) {
			dict["archiveVodSuffixTimezone"] = archiveVodSuffixTimezone!
		}
		return dict
	}
}

