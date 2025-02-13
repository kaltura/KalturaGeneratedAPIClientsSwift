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

open class UiConfV2Redirect: ObjectBase {

	public class UiConfV2RedirectTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var v7id: BaseTokenizedObject {
			get {
				return self.append("v7id") 
			}
		}
		
		public var isApproved: BaseTokenizedObject {
			get {
				return self.append("isApproved") 
			}
		}
		
		public var translatePlugins: BaseTokenizedObject {
			get {
				return self.append("translatePlugins") 
			}
		}
	}

	public var v7id: Int? = nil
	public var isApproved: Bool? = nil
	public var translatePlugins: Bool? = nil


	public func setMultiRequestToken(v7id: String) {
		self.dict["v7id"] = v7id
	}
	
	public func setMultiRequestToken(isApproved: String) {
		self.dict["isApproved"] = isApproved
	}
	
	public func setMultiRequestToken(translatePlugins: String) {
		self.dict["translatePlugins"] = translatePlugins
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["v7id"] != nil {
			v7id = dict["v7id"] as? Int
		}
		if dict["isApproved"] != nil {
			isApproved = dict["isApproved"] as? Bool
		}
		if dict["translatePlugins"] != nil {
			translatePlugins = dict["translatePlugins"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(v7id != nil) {
			dict["v7id"] = v7id!
		}
		if(isApproved != nil) {
			dict["isApproved"] = isApproved!
		}
		if(translatePlugins != nil) {
			dict["translatePlugins"] = translatePlugins!
		}
		return dict
	}
}

