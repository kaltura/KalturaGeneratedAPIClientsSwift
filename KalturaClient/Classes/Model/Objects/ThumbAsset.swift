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

open class ThumbAsset: Asset {

	public class ThumbAssetTokenizer: Asset.AssetTokenizer {
		
		public var thumbParamsId: BaseTokenizedObject {
			get {
				return self.append("thumbParamsId") 
			}
		}
		
		public var width: BaseTokenizedObject {
			get {
				return self.append("width") 
			}
		}
		
		public var height: BaseTokenizedObject {
			get {
				return self.append("height") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  The Flavor Params used to create this Flavor Asset  */
	public var thumbParamsId: Int? = nil
	/**  The width of the Flavor Asset  */
	public var width: Int? = nil
	/**  The height of the Flavor Asset  */
	public var height: Int? = nil
	/**  The status of the asset  */
	public var status: ThumbAssetStatus? = nil


	public func setMultiRequestToken(thumbParamsId: String) {
		self.dict["thumbParamsId"] = thumbParamsId
	}
	
	public func setMultiRequestToken(width: String) {
		self.dict["width"] = width
	}
	
	public func setMultiRequestToken(height: String) {
		self.dict["height"] = height
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["thumbParamsId"] != nil {
			thumbParamsId = dict["thumbParamsId"] as? Int
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["status"] != nil {
			status = ThumbAssetStatus(rawValue: (dict["status"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(thumbParamsId != nil) {
			dict["thumbParamsId"] = thumbParamsId!
		}
		return dict
	}
}

