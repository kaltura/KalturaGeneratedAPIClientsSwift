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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Info about uiconf type  */
open class UiConfTypeInfo: ObjectBase {

	public class UiConfTypeInfoTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var versions: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("versions"))
			} 
		}
		
		public var directory: BaseTokenizedObject {
			get {
				return self.append("directory") 
			}
		}
		
		public var filename: BaseTokenizedObject {
			get {
				return self.append("filename") 
			}
		}
	}

	/**  UiConf Type  */
	public var type: UiConfObjType? = nil
	/**  Available versions  */
	public var versions: Array<StringHolder>? = nil
	/**  The direcotry this type is saved at  */
	public var directory: String? = nil
	/**  Filename for this UiConf type  */
	public var filename: String? = nil


	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(directory: String) {
		self.dict["directory"] = directory
	}
	
	public func setMultiRequestToken(filename: String) {
		self.dict["filename"] = filename
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["type"] != nil {
			type = UiConfObjType(rawValue: (dict["type"] as? Int)!)
		}
		if dict["versions"] != nil {
			versions = try JSONParser.parse(array: dict["versions"] as! [Any])
		}
		if dict["directory"] != nil {
			directory = dict["directory"] as? String
		}
		if dict["filename"] != nil {
			filename = dict["filename"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(versions != nil) {
			dict["versions"] = versions!.map { value in value.toDictionary() }
		}
		if(directory != nil) {
			dict["directory"] = directory!
		}
		if(filename != nil) {
			dict["filename"] = filename!
		}
		return dict
	}
}

