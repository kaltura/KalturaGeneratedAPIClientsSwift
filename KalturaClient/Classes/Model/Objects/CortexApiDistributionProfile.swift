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

open class CortexApiDistributionProfile: ConfigurableDistributionProfile {

	public class CortexApiDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var host: BaseTokenizedObject {
			get {
				return self.append("host") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var folderrecordid: BaseTokenizedObject {
			get {
				return self.append("folderrecordid") 
			}
		}
		
		public var metadataprofileid: BaseTokenizedObject {
			get {
				return self.append("metadataprofileid") 
			}
		}
		
		public var metadataprofileidpushing: BaseTokenizedObject {
			get {
				return self.append("metadataprofileidpushing") 
			}
		}
	}

	public var username: String? = nil
	public var host: String? = nil
	public var password: String? = nil
	public var folderrecordid: String? = nil
	public var metadataprofileid: String? = nil
	public var metadataprofileidpushing: String? = nil


	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(host: String) {
		self.dict["host"] = host
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(folderrecordid: String) {
		self.dict["folderrecordid"] = folderrecordid
	}
	
	public func setMultiRequestToken(metadataprofileid: String) {
		self.dict["metadataprofileid"] = metadataprofileid
	}
	
	public func setMultiRequestToken(metadataprofileidpushing: String) {
		self.dict["metadataprofileidpushing"] = metadataprofileidpushing
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["host"] != nil {
			host = dict["host"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["folderrecordid"] != nil {
			folderrecordid = dict["folderrecordid"] as? String
		}
		if dict["metadataprofileid"] != nil {
			metadataprofileid = dict["metadataprofileid"] as? String
		}
		if dict["metadataprofileidpushing"] != nil {
			metadataprofileidpushing = dict["metadataprofileidpushing"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(username != nil) {
			dict["username"] = username!
		}
		if(host != nil) {
			dict["host"] = host!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(folderrecordid != nil) {
			dict["folderrecordid"] = folderrecordid!
		}
		if(metadataprofileid != nil) {
			dict["metadataprofileid"] = metadataprofileid!
		}
		if(metadataprofileidpushing != nil) {
			dict["metadataprofileidpushing"] = metadataprofileidpushing!
		}
		return dict
	}
}

