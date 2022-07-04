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

open class S3DropFolder: DropFolder {

	public class S3DropFolderTokenizer: DropFolder.DropFolderTokenizer {
		
		public var s3Host: BaseTokenizedObject {
			get {
				return self.append("s3Host") 
			}
		}
		
		public var s3Region: BaseTokenizedObject {
			get {
				return self.append("s3Region") 
			}
		}
		
		public var s3UserId: BaseTokenizedObject {
			get {
				return self.append("s3UserId") 
			}
		}
		
		public var s3Password: BaseTokenizedObject {
			get {
				return self.append("s3Password") 
			}
		}
	}

	public var s3Host: String? = nil
	public var s3Region: String? = nil
	public var s3UserId: String? = nil
	public var s3Password: String? = nil


	public func setMultiRequestToken(s3Host: String) {
		self.dict["s3Host"] = s3Host
	}
	
	public func setMultiRequestToken(s3Region: String) {
		self.dict["s3Region"] = s3Region
	}
	
	public func setMultiRequestToken(s3UserId: String) {
		self.dict["s3UserId"] = s3UserId
	}
	
	public func setMultiRequestToken(s3Password: String) {
		self.dict["s3Password"] = s3Password
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["s3Host"] != nil {
			s3Host = dict["s3Host"] as? String
		}
		if dict["s3Region"] != nil {
			s3Region = dict["s3Region"] as? String
		}
		if dict["s3UserId"] != nil {
			s3UserId = dict["s3UserId"] as? String
		}
		if dict["s3Password"] != nil {
			s3Password = dict["s3Password"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(s3Host != nil) {
			dict["s3Host"] = s3Host!
		}
		if(s3Region != nil) {
			dict["s3Region"] = s3Region!
		}
		if(s3UserId != nil) {
			dict["s3UserId"] = s3UserId!
		}
		if(s3Password != nil) {
			dict["s3Password"] = s3Password!
		}
		return dict
	}
}

