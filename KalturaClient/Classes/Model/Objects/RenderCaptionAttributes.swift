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

open class RenderCaptionAttributes: CaptionAttributes {

	public class RenderCaptionAttributesTokenizer: CaptionAttributes.CaptionAttributesTokenizer {
		
		public var fontName: BaseTokenizedObject {
			get {
				return self.append("fontName") 
			}
		}
		
		public var fontSize: BaseTokenizedObject {
			get {
				return self.append("fontSize") 
			}
		}
		
		public var primaryColour: BaseTokenizedObject {
			get {
				return self.append("primaryColour") 
			}
		}
		
		public var borderStyle: BaseTokenizedObject {
			get {
				return self.append("borderStyle") 
			}
		}
		
		public var backColour: BaseTokenizedObject {
			get {
				return self.append("backColour") 
			}
		}
		
		public var outlineColour: BaseTokenizedObject {
			get {
				return self.append("outlineColour") 
			}
		}
		
		public var shadow: BaseTokenizedObject {
			get {
				return self.append("shadow") 
			}
		}
		
		public var bold: BaseTokenizedObject {
			get {
				return self.append("bold") 
			}
		}
		
		public var italic: BaseTokenizedObject {
			get {
				return self.append("italic") 
			}
		}
		
		public var underline: BaseTokenizedObject {
			get {
				return self.append("underline") 
			}
		}
		
		public var alignment: BaseTokenizedObject {
			get {
				return self.append("alignment") 
			}
		}
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
	}

	public var fontName: String? = nil
	public var fontSize: Int? = nil
	public var primaryColour: String? = nil
	public var borderStyle: BorderStyle? = nil
	public var backColour: String? = nil
	public var outlineColour: String? = nil
	public var shadow: Int? = nil
	public var bold: Bool? = nil
	public var italic: Bool? = nil
	public var underline: Bool? = nil
	public var alignment: CaptionsAlignment? = nil
	public var captionAssetId: String? = nil


	public func setMultiRequestToken(fontName: String) {
		self.dict["fontName"] = fontName
	}
	
	public func setMultiRequestToken(fontSize: String) {
		self.dict["fontSize"] = fontSize
	}
	
	public func setMultiRequestToken(primaryColour: String) {
		self.dict["primaryColour"] = primaryColour
	}
	
	public func setMultiRequestToken(borderStyle: String) {
		self.dict["borderStyle"] = borderStyle
	}
	
	public func setMultiRequestToken(backColour: String) {
		self.dict["backColour"] = backColour
	}
	
	public func setMultiRequestToken(outlineColour: String) {
		self.dict["outlineColour"] = outlineColour
	}
	
	public func setMultiRequestToken(shadow: String) {
		self.dict["shadow"] = shadow
	}
	
	public func setMultiRequestToken(bold: String) {
		self.dict["bold"] = bold
	}
	
	public func setMultiRequestToken(italic: String) {
		self.dict["italic"] = italic
	}
	
	public func setMultiRequestToken(underline: String) {
		self.dict["underline"] = underline
	}
	
	public func setMultiRequestToken(alignment: String) {
		self.dict["alignment"] = alignment
	}
	
	public func setMultiRequestToken(captionAssetId: String) {
		self.dict["captionAssetId"] = captionAssetId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fontName"] != nil {
			fontName = dict["fontName"] as? String
		}
		if dict["fontSize"] != nil {
			fontSize = dict["fontSize"] as? Int
		}
		if dict["primaryColour"] != nil {
			primaryColour = dict["primaryColour"] as? String
		}
		if dict["borderStyle"] != nil {
			borderStyle = BorderStyle(rawValue: (dict["borderStyle"] as? Int)!)
		}
		if dict["backColour"] != nil {
			backColour = dict["backColour"] as? String
		}
		if dict["outlineColour"] != nil {
			outlineColour = dict["outlineColour"] as? String
		}
		if dict["shadow"] != nil {
			shadow = dict["shadow"] as? Int
		}
		if dict["bold"] != nil {
			bold = dict["bold"] as? Bool
		}
		if dict["italic"] != nil {
			italic = dict["italic"] as? Bool
		}
		if dict["underline"] != nil {
			underline = dict["underline"] as? Bool
		}
		if dict["alignment"] != nil {
			alignment = CaptionsAlignment(rawValue: (dict["alignment"] as? Int)!)
		}
		if dict["captionAssetId"] != nil {
			captionAssetId = dict["captionAssetId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fontName != nil) {
			dict["fontName"] = fontName!
		}
		if(fontSize != nil) {
			dict["fontSize"] = fontSize!
		}
		if(primaryColour != nil) {
			dict["primaryColour"] = primaryColour!
		}
		if(borderStyle != nil) {
			dict["borderStyle"] = borderStyle!.rawValue
		}
		if(backColour != nil) {
			dict["backColour"] = backColour!
		}
		if(outlineColour != nil) {
			dict["outlineColour"] = outlineColour!
		}
		if(shadow != nil) {
			dict["shadow"] = shadow!
		}
		if(bold != nil) {
			dict["bold"] = bold!
		}
		if(italic != nil) {
			dict["italic"] = italic!
		}
		if(underline != nil) {
			dict["underline"] = underline!
		}
		if(alignment != nil) {
			dict["alignment"] = alignment!.rawValue
		}
		if(captionAssetId != nil) {
			dict["captionAssetId"] = captionAssetId!
		}
		return dict
	}
}

