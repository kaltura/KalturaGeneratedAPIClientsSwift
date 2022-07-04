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

open class TrRdsDropFolder: SftpDropFolder {

	public class TrRdsDropFolderTokenizer: SftpDropFolder.SftpDropFolderTokenizer {
		
		public var syncMetadataProfile: BaseTokenizedObject {
			get {
				return self.append("syncMetadataProfile") 
			}
		}
		
		public var targetMetadataProfile: BaseTokenizedObject {
			get {
				return self.append("targetMetadataProfile") 
			}
		}
	}

	public var syncMetadataProfile: Int? = nil
	public var targetMetadataProfile: Int? = nil


	public func setMultiRequestToken(syncMetadataProfile: String) {
		self.dict["syncMetadataProfile"] = syncMetadataProfile
	}
	
	public func setMultiRequestToken(targetMetadataProfile: String) {
		self.dict["targetMetadataProfile"] = targetMetadataProfile
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["syncMetadataProfile"] != nil {
			syncMetadataProfile = dict["syncMetadataProfile"] as? Int
		}
		if dict["targetMetadataProfile"] != nil {
			targetMetadataProfile = dict["targetMetadataProfile"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(syncMetadataProfile != nil) {
			dict["syncMetadataProfile"] = syncMetadataProfile!
		}
		if(targetMetadataProfile != nil) {
			dict["targetMetadataProfile"] = targetMetadataProfile!
		}
		return dict
	}
}

