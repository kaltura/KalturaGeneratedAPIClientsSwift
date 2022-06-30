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

open class PostConvertJobData: ConvartableJobData {

	public class PostConvertJobDataTokenizer: ConvartableJobData.ConvartableJobDataTokenizer {
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var flavorAssetEncryptionKey: BaseTokenizedObject {
			get {
				return self.append("flavorAssetEncryptionKey") 
			}
		}
		
		public var createThumb: BaseTokenizedObject {
			get {
				return self.append("createThumb") 
			}
		}
		
		public var thumbPath: BaseTokenizedObject {
			get {
				return self.append("thumbPath") 
			}
		}
		
		public var thumbOffset: BaseTokenizedObject {
			get {
				return self.append("thumbOffset") 
			}
		}
		
		public var thumbHeight: BaseTokenizedObject {
			get {
				return self.append("thumbHeight") 
			}
		}
		
		public var thumbBitrate: BaseTokenizedObject {
			get {
				return self.append("thumbBitrate") 
			}
		}
		
		public var customData: BaseTokenizedObject {
			get {
				return self.append("customData") 
			}
		}
	}

	public var flavorAssetId: String? = nil
	public var flavorAssetEncryptionKey: String? = nil
	/**  Indicates if a thumbnail should be created  */
	public var createThumb: Bool? = nil
	/**  The path of the created thumbnail  */
	public var thumbPath: String? = nil
	/**  The position of the thumbnail in the media file  */
	public var thumbOffset: Int? = nil
	/**  The height of the movie, will be used to comapare if this thumbnail is the best
	  we can have  */
	public var thumbHeight: Int? = nil
	/**  The bit rate of the movie, will be used to comapare if this thumbnail is the
	  best we can have  */
	public var thumbBitrate: Int? = nil
	public var customData: String? = nil


	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(flavorAssetEncryptionKey: String) {
		self.dict["flavorAssetEncryptionKey"] = flavorAssetEncryptionKey
	}
	
	public func setMultiRequestToken(createThumb: String) {
		self.dict["createThumb"] = createThumb
	}
	
	public func setMultiRequestToken(thumbPath: String) {
		self.dict["thumbPath"] = thumbPath
	}
	
	public func setMultiRequestToken(thumbOffset: String) {
		self.dict["thumbOffset"] = thumbOffset
	}
	
	public func setMultiRequestToken(thumbHeight: String) {
		self.dict["thumbHeight"] = thumbHeight
	}
	
	public func setMultiRequestToken(thumbBitrate: String) {
		self.dict["thumbBitrate"] = thumbBitrate
	}
	
	public func setMultiRequestToken(customData: String) {
		self.dict["customData"] = customData
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["flavorAssetEncryptionKey"] != nil {
			flavorAssetEncryptionKey = dict["flavorAssetEncryptionKey"] as? String
		}
		if dict["createThumb"] != nil {
			createThumb = dict["createThumb"] as? Bool
		}
		if dict["thumbPath"] != nil {
			thumbPath = dict["thumbPath"] as? String
		}
		if dict["thumbOffset"] != nil {
			thumbOffset = dict["thumbOffset"] as? Int
		}
		if dict["thumbHeight"] != nil {
			thumbHeight = dict["thumbHeight"] as? Int
		}
		if dict["thumbBitrate"] != nil {
			thumbBitrate = dict["thumbBitrate"] as? Int
		}
		if dict["customData"] != nil {
			customData = dict["customData"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(flavorAssetEncryptionKey != nil) {
			dict["flavorAssetEncryptionKey"] = flavorAssetEncryptionKey!
		}
		if(createThumb != nil) {
			dict["createThumb"] = createThumb!
		}
		if(thumbPath != nil) {
			dict["thumbPath"] = thumbPath!
		}
		if(thumbOffset != nil) {
			dict["thumbOffset"] = thumbOffset!
		}
		if(thumbHeight != nil) {
			dict["thumbHeight"] = thumbHeight!
		}
		if(thumbBitrate != nil) {
			dict["thumbBitrate"] = thumbBitrate!
		}
		if(customData != nil) {
			dict["customData"] = customData!
		}
		return dict
	}
}

