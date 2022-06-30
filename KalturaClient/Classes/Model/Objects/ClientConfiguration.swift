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

/**  Define client optional configurations  /  */
open class ClientConfiguration: ObjectBase {

	public class ClientConfigurationTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var clientTag: BaseTokenizedObject {
			get {
				return self.append("clientTag") 
			}
		}
		
		public var apiVersion: BaseTokenizedObject {
			get {
				return self.append("apiVersion") 
			}
		}
	}

	public var clientTag: String? = nil
	public var apiVersion: String? = nil


	public func setMultiRequestToken(clientTag: String) {
		self.dict["clientTag"] = clientTag
	}
	
	public func setMultiRequestToken(apiVersion: String) {
		self.dict["apiVersion"] = apiVersion
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["clientTag"] != nil {
			clientTag = dict["clientTag"] as? String
		}
		if dict["apiVersion"] != nil {
			apiVersion = dict["apiVersion"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(clientTag != nil) {
			dict["clientTag"] = clientTag!
		}
		if(apiVersion != nil) {
			dict["apiVersion"] = apiVersion!
		}
		return dict
	}
}

