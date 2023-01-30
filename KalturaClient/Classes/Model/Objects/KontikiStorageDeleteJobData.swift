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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class KontikiStorageDeleteJobData: StorageDeleteJobData {

	public class KontikiStorageDeleteJobDataTokenizer: StorageDeleteJobData.StorageDeleteJobDataTokenizer {
		
		public var contentMoid: BaseTokenizedObject {
			get {
				return self.append("contentMoid") 
			}
		}
		
		public var serviceToken: BaseTokenizedObject {
			get {
				return self.append("serviceToken") 
			}
		}
	}

	/**  Unique Kontiki MOID for the content uploaded to Kontiki  */
	public var contentMoid: String? = nil
	public var serviceToken: String? = nil


	public func setMultiRequestToken(contentMoid: String) {
		self.dict["contentMoid"] = contentMoid
	}
	
	public func setMultiRequestToken(serviceToken: String) {
		self.dict["serviceToken"] = serviceToken
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contentMoid"] != nil {
			contentMoid = dict["contentMoid"] as? String
		}
		if dict["serviceToken"] != nil {
			serviceToken = dict["serviceToken"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contentMoid != nil) {
			dict["contentMoid"] = contentMoid!
		}
		if(serviceToken != nil) {
			dict["serviceToken"] = serviceToken!
		}
		return dict
	}
}

