// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Kaltura Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
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

open class AttachmentAsset: Asset {

	public class AttachmentAssetTokenizer: Asset.AssetTokenizer {
		
		public var filename: BaseTokenizedObject {
			get {
				return self.append("filename") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  The filename of the attachment asset content  */
	public var filename: String? = nil
	/**  Attachment asset title  */
	public var title: String? = nil
	/**  The attachment format  */
	public var format: AttachmentType? = nil
	/**  The status of the asset  */
	public var status: AttachmentAssetStatus? = nil


	public func setMultiRequestToken(filename: String) {
		self.dict["filename"] = filename
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filename"] != nil {
			filename = dict["filename"] as? String
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["format"] != nil {
			format = AttachmentType(rawValue: "\(dict["format"]!)")
		}
		if dict["status"] != nil {
			status = AttachmentAssetStatus(rawValue: (dict["status"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filename != nil) {
			dict["filename"] = filename!
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		return dict
	}
}

