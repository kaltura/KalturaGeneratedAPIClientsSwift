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

open class ThumbParams: AssetParams {

	public class ThumbParamsTokenizer: AssetParams.AssetParamsTokenizer {
		
		public var cropType: BaseTokenizedObject {
			get {
				return self.append("cropType") 
			}
		}
		
		public var quality: BaseTokenizedObject {
			get {
				return self.append("quality") 
			}
		}
		
		public var cropX: BaseTokenizedObject {
			get {
				return self.append("cropX") 
			}
		}
		
		public var cropY: BaseTokenizedObject {
			get {
				return self.append("cropY") 
			}
		}
		
		public var cropWidth: BaseTokenizedObject {
			get {
				return self.append("cropWidth") 
			}
		}
		
		public var cropHeight: BaseTokenizedObject {
			get {
				return self.append("cropHeight") 
			}
		}
		
		public var videoOffset: BaseTokenizedObject {
			get {
				return self.append("videoOffset") 
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
		
		public var scaleWidth: BaseTokenizedObject {
			get {
				return self.append("scaleWidth") 
			}
		}
		
		public var scaleHeight: BaseTokenizedObject {
			get {
				return self.append("scaleHeight") 
			}
		}
		
		public var backgroundColor: BaseTokenizedObject {
			get {
				return self.append("backgroundColor") 
			}
		}
		
		public var sourceParamsId: BaseTokenizedObject {
			get {
				return self.append("sourceParamsId") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var density: BaseTokenizedObject {
			get {
				return self.append("density") 
			}
		}
		
		public var stripProfiles: BaseTokenizedObject {
			get {
				return self.append("stripProfiles") 
			}
		}
		
		public var videoOffsetInPercentage: BaseTokenizedObject {
			get {
				return self.append("videoOffsetInPercentage") 
			}
		}
		
		public var interval: BaseTokenizedObject {
			get {
				return self.append("interval") 
			}
		}
	}

	public var cropType: ThumbCropType? = nil
	public var quality: Int? = nil
	public var cropX: Int? = nil
	public var cropY: Int? = nil
	public var cropWidth: Int? = nil
	public var cropHeight: Int? = nil
	public var videoOffset: Double? = nil
	public var width: Int? = nil
	public var height: Int? = nil
	public var scaleWidth: Double? = nil
	public var scaleHeight: Double? = nil
	/**  Hexadecimal value  */
	public var backgroundColor: String? = nil
	/**  Id of the flavor params or the thumbnail params to be used as source for the
	  thumbnail creation  */
	public var sourceParamsId: Int? = nil
	/**  The container format of the Flavor Params  */
	public var format: ContainerFormat? = nil
	/**  The image density (dpi) for example: 72 or 96  */
	public var density: Int? = nil
	/**  Strip profiles and comments  */
	public var stripProfiles: Bool? = nil
	/**  Create thumbnail from the videoLengthpercentage second  */
	public var videoOffsetInPercentage: Int? = nil
	/**  interval in seconds for creating thumbnail  */
	public var interval: Int? = nil


	public func setMultiRequestToken(cropType: String) {
		self.dict["cropType"] = cropType
	}
	
	public func setMultiRequestToken(quality: String) {
		self.dict["quality"] = quality
	}
	
	public func setMultiRequestToken(cropX: String) {
		self.dict["cropX"] = cropX
	}
	
	public func setMultiRequestToken(cropY: String) {
		self.dict["cropY"] = cropY
	}
	
	public func setMultiRequestToken(cropWidth: String) {
		self.dict["cropWidth"] = cropWidth
	}
	
	public func setMultiRequestToken(cropHeight: String) {
		self.dict["cropHeight"] = cropHeight
	}
	
	public func setMultiRequestToken(videoOffset: String) {
		self.dict["videoOffset"] = videoOffset
	}
	
	public func setMultiRequestToken(width: String) {
		self.dict["width"] = width
	}
	
	public func setMultiRequestToken(height: String) {
		self.dict["height"] = height
	}
	
	public func setMultiRequestToken(scaleWidth: String) {
		self.dict["scaleWidth"] = scaleWidth
	}
	
	public func setMultiRequestToken(scaleHeight: String) {
		self.dict["scaleHeight"] = scaleHeight
	}
	
	public func setMultiRequestToken(backgroundColor: String) {
		self.dict["backgroundColor"] = backgroundColor
	}
	
	public func setMultiRequestToken(sourceParamsId: String) {
		self.dict["sourceParamsId"] = sourceParamsId
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(density: String) {
		self.dict["density"] = density
	}
	
	public func setMultiRequestToken(stripProfiles: String) {
		self.dict["stripProfiles"] = stripProfiles
	}
	
	public func setMultiRequestToken(videoOffsetInPercentage: String) {
		self.dict["videoOffsetInPercentage"] = videoOffsetInPercentage
	}
	
	public func setMultiRequestToken(interval: String) {
		self.dict["interval"] = interval
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["cropType"] != nil {
			cropType = ThumbCropType(rawValue: (dict["cropType"] as? Int)!)
		}
		if dict["quality"] != nil {
			quality = dict["quality"] as? Int
		}
		if dict["cropX"] != nil {
			cropX = dict["cropX"] as? Int
		}
		if dict["cropY"] != nil {
			cropY = dict["cropY"] as? Int
		}
		if dict["cropWidth"] != nil {
			cropWidth = dict["cropWidth"] as? Int
		}
		if dict["cropHeight"] != nil {
			cropHeight = dict["cropHeight"] as? Int
		}
		if dict["videoOffset"] != nil {
			videoOffset = dict["videoOffset"] as? Double
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["scaleWidth"] != nil {
			scaleWidth = dict["scaleWidth"] as? Double
		}
		if dict["scaleHeight"] != nil {
			scaleHeight = dict["scaleHeight"] as? Double
		}
		if dict["backgroundColor"] != nil {
			backgroundColor = dict["backgroundColor"] as? String
		}
		if dict["sourceParamsId"] != nil {
			sourceParamsId = dict["sourceParamsId"] as? Int
		}
		if dict["format"] != nil {
			format = ContainerFormat(rawValue: "\(dict["format"]!)")
		}
		if dict["density"] != nil {
			density = dict["density"] as? Int
		}
		if dict["stripProfiles"] != nil {
			stripProfiles = dict["stripProfiles"] as? Bool
		}
		if dict["videoOffsetInPercentage"] != nil {
			videoOffsetInPercentage = dict["videoOffsetInPercentage"] as? Int
		}
		if dict["interval"] != nil {
			interval = dict["interval"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(cropType != nil) {
			dict["cropType"] = cropType!.rawValue
		}
		if(quality != nil) {
			dict["quality"] = quality!
		}
		if(cropX != nil) {
			dict["cropX"] = cropX!
		}
		if(cropY != nil) {
			dict["cropY"] = cropY!
		}
		if(cropWidth != nil) {
			dict["cropWidth"] = cropWidth!
		}
		if(cropHeight != nil) {
			dict["cropHeight"] = cropHeight!
		}
		if(videoOffset != nil) {
			dict["videoOffset"] = videoOffset!
		}
		if(width != nil) {
			dict["width"] = width!
		}
		if(height != nil) {
			dict["height"] = height!
		}
		if(scaleWidth != nil) {
			dict["scaleWidth"] = scaleWidth!
		}
		if(scaleHeight != nil) {
			dict["scaleHeight"] = scaleHeight!
		}
		if(backgroundColor != nil) {
			dict["backgroundColor"] = backgroundColor!
		}
		if(sourceParamsId != nil) {
			dict["sourceParamsId"] = sourceParamsId!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		if(density != nil) {
			dict["density"] = density!
		}
		if(stripProfiles != nil) {
			dict["stripProfiles"] = stripProfiles!
		}
		if(videoOffsetInPercentage != nil) {
			dict["videoOffsetInPercentage"] = videoOffsetInPercentage!
		}
		if(interval != nil) {
			dict["interval"] = interval!
		}
		return dict
	}
}

