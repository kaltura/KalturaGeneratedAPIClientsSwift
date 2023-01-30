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

open class ExportToCsvOptions: ObjectBase {

	public class ExportToCsvOptionsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var typeEqual: BaseTokenizedObject {
			get {
				return self.append("typeEqual") 
			}
		}
		
		public var defaultHeader: BaseTokenizedObject {
			get {
				return self.append("defaultHeader") 
			}
		}
	}

	/**  The format of the outputted date string. There are also several predefined date
	  constants that may be used instead, so for example DATE_RSS contains the format
	  string 'D, d M Y H:i:s'.   https://www.php.net/manual/en/function.date.php  */
	public var format: String? = nil
	/**  Setting this property will cause additional columns to be added to the final
	  report. The columns will be related to the specific object type passed
	  (currently only MEDIA_CLIP is supported).   Please note that this property will
	  NOT change the result filter in any way (i.e passing MEDIA_CLIP here will not
	  force the report to return only media items).  */
	public var typeEqual: EntryType? = nil
	public var defaultHeader: Bool? = nil


	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(typeEqual: String) {
		self.dict["typeEqual"] = typeEqual
	}
	
	public func setMultiRequestToken(defaultHeader: String) {
		self.dict["defaultHeader"] = defaultHeader
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["format"] != nil {
			format = dict["format"] as? String
		}
		if dict["typeEqual"] != nil {
			typeEqual = EntryType(rawValue: "\(dict["typeEqual"]!)")
		}
		if dict["defaultHeader"] != nil {
			defaultHeader = dict["defaultHeader"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(format != nil) {
			dict["format"] = format!
		}
		if(typeEqual != nil) {
			dict["typeEqual"] = typeEqual!.rawValue
		}
		if(defaultHeader != nil) {
			dict["defaultHeader"] = defaultHeader!
		}
		return dict
	}
}

