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

open class ImageFlavorParams: FlavorParams {

	public class ImageFlavorParamsTokenizer: FlavorParams.FlavorParamsTokenizer {
		
		public var densityWidth: BaseTokenizedObject {
			get {
				return self.append("densityWidth") 
			}
		}
		
		public var densityHeight: BaseTokenizedObject {
			get {
				return self.append("densityHeight") 
			}
		}
		
		public var sizeWidth: BaseTokenizedObject {
			get {
				return self.append("sizeWidth") 
			}
		}
		
		public var sizeHeight: BaseTokenizedObject {
			get {
				return self.append("sizeHeight") 
			}
		}
		
		public var depth: BaseTokenizedObject {
			get {
				return self.append("depth") 
			}
		}
	}

	public var densityWidth: Int? = nil
	public var densityHeight: Int? = nil
	public var sizeWidth: Int? = nil
	public var sizeHeight: Int? = nil
	public var depth: Int? = nil


	public func setMultiRequestToken(densityWidth: String) {
		self.dict["densityWidth"] = densityWidth
	}
	
	public func setMultiRequestToken(densityHeight: String) {
		self.dict["densityHeight"] = densityHeight
	}
	
	public func setMultiRequestToken(sizeWidth: String) {
		self.dict["sizeWidth"] = sizeWidth
	}
	
	public func setMultiRequestToken(sizeHeight: String) {
		self.dict["sizeHeight"] = sizeHeight
	}
	
	public func setMultiRequestToken(depth: String) {
		self.dict["depth"] = depth
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["densityWidth"] != nil {
			densityWidth = dict["densityWidth"] as? Int
		}
		if dict["densityHeight"] != nil {
			densityHeight = dict["densityHeight"] as? Int
		}
		if dict["sizeWidth"] != nil {
			sizeWidth = dict["sizeWidth"] as? Int
		}
		if dict["sizeHeight"] != nil {
			sizeHeight = dict["sizeHeight"] as? Int
		}
		if dict["depth"] != nil {
			depth = dict["depth"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(densityWidth != nil) {
			dict["densityWidth"] = densityWidth!
		}
		if(densityHeight != nil) {
			dict["densityHeight"] = densityHeight!
		}
		if(sizeWidth != nil) {
			dict["sizeWidth"] = sizeWidth!
		}
		if(sizeHeight != nil) {
			dict["sizeHeight"] = sizeHeight!
		}
		if(depth != nil) {
			dict["depth"] = depth!
		}
		return dict
	}
}

