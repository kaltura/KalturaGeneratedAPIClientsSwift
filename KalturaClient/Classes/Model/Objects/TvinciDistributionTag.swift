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

open class TvinciDistributionTag: ObjectBase {

	public class TvinciDistributionTagTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var tagname: BaseTokenizedObject {
			get {
				return self.append("tagname") 
			}
		}
		
		public var extension_: BaseTokenizedObject {
			get {
				return self.append("extension_") 
			}
		}
		
		public var protocol_: BaseTokenizedObject {
			get {
				return self.append("protocol_") 
			}
		}
		
		public var format: BaseTokenizedObject {
			get {
				return self.append("format") 
			}
		}
		
		public var filename: BaseTokenizedObject {
			get {
				return self.append("filename") 
			}
		}
		
		public var ppvmodule: BaseTokenizedObject {
			get {
				return self.append("ppvmodule") 
			}
		}
	}

	public var tagname: String? = nil
	public var extension_: String? = nil
	public var protocol_: String? = nil
	public var format: String? = nil
	public var filename: String? = nil
	public var ppvmodule: String? = nil


	public func setMultiRequestToken(tagname: String) {
		self.dict["tagname"] = tagname
	}
	
	public func setMultiRequestToken(extension_: String) {
		self.dict["extension"] = extension_
	}
	
	public func setMultiRequestToken(protocol_: String) {
		self.dict["protocol"] = protocol_
	}
	
	public func setMultiRequestToken(format: String) {
		self.dict["format"] = format
	}
	
	public func setMultiRequestToken(filename: String) {
		self.dict["filename"] = filename
	}
	
	public func setMultiRequestToken(ppvmodule: String) {
		self.dict["ppvmodule"] = ppvmodule
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["tagname"] != nil {
			tagname = dict["tagname"] as? String
		}
		if dict["extension"] != nil {
			extension_ = dict["extension"] as? String
		}
		if dict["protocol"] != nil {
			protocol_ = dict["protocol"] as? String
		}
		if dict["format"] != nil {
			format = dict["format"] as? String
		}
		if dict["filename"] != nil {
			filename = dict["filename"] as? String
		}
		if dict["ppvmodule"] != nil {
			ppvmodule = dict["ppvmodule"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(tagname != nil) {
			dict["tagname"] = tagname!
		}
		if(extension_ != nil) {
			dict["extension"] = extension_!
		}
		if(protocol_ != nil) {
			dict["protocol"] = protocol_!
		}
		if(format != nil) {
			dict["format"] = format!
		}
		if(filename != nil) {
			dict["filename"] = filename!
		}
		if(ppvmodule != nil) {
			dict["ppvmodule"] = ppvmodule!
		}
		return dict
	}
}

