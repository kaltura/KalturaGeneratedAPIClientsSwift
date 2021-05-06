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

open class ThumbParamsOutput: ThumbParams {

	public class ThumbParamsOutputTokenizer: ThumbParams.ThumbParamsTokenizer {
		
		public var thumbParamsId: BaseTokenizedObject {
			get {
				return self.append("thumbParamsId") 
			}
		}
		
		public var thumbParamsVersion: BaseTokenizedObject {
			get {
				return self.append("thumbParamsVersion") 
			}
		}
		
		public var thumbAssetId: BaseTokenizedObject {
			get {
				return self.append("thumbAssetId") 
			}
		}
		
		public var thumbAssetVersion: BaseTokenizedObject {
			get {
				return self.append("thumbAssetVersion") 
			}
		}
		
		public var rotate: BaseTokenizedObject {
			get {
				return self.append("rotate") 
			}
		}
	}

	public var thumbParamsId: Int? = nil
	public var thumbParamsVersion: String? = nil
	public var thumbAssetId: String? = nil
	public var thumbAssetVersion: String? = nil
	public var rotate: Int? = nil


	public func setMultiRequestToken(thumbParamsId: String) {
		self.dict["thumbParamsId"] = thumbParamsId
	}
	
	public func setMultiRequestToken(thumbParamsVersion: String) {
		self.dict["thumbParamsVersion"] = thumbParamsVersion
	}
	
	public func setMultiRequestToken(thumbAssetId: String) {
		self.dict["thumbAssetId"] = thumbAssetId
	}
	
	public func setMultiRequestToken(thumbAssetVersion: String) {
		self.dict["thumbAssetVersion"] = thumbAssetVersion
	}
	
	public func setMultiRequestToken(rotate: String) {
		self.dict["rotate"] = rotate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["thumbParamsId"] != nil {
			thumbParamsId = dict["thumbParamsId"] as? Int
		}
		if dict["thumbParamsVersion"] != nil {
			thumbParamsVersion = dict["thumbParamsVersion"] as? String
		}
		if dict["thumbAssetId"] != nil {
			thumbAssetId = dict["thumbAssetId"] as? String
		}
		if dict["thumbAssetVersion"] != nil {
			thumbAssetVersion = dict["thumbAssetVersion"] as? String
		}
		if dict["rotate"] != nil {
			rotate = dict["rotate"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(thumbParamsId != nil) {
			dict["thumbParamsId"] = thumbParamsId!
		}
		if(thumbParamsVersion != nil) {
			dict["thumbParamsVersion"] = thumbParamsVersion!
		}
		if(thumbAssetId != nil) {
			dict["thumbAssetId"] = thumbAssetId!
		}
		if(thumbAssetVersion != nil) {
			dict["thumbAssetVersion"] = thumbAssetVersion!
		}
		if(rotate != nil) {
			dict["rotate"] = rotate!
		}
		return dict
	}
}

