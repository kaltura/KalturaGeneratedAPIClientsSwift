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

open class ExtendingItemMrssParameter: ObjectBase {

	public class ExtendingItemMrssParameterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var xpath: BaseTokenizedObject {
			get {
				return self.append("xpath") 
			}
		}
		
		public func identifier<T: ObjectIdentifier.ObjectIdentifierTokenizer>() -> T {
			return T(self.append("identifier"))
		}
		
		public var extensionMode: BaseTokenizedObject {
			get {
				return self.append("extensionMode") 
			}
		}
	}

	/**  XPath for the extending item  */
	public var xpath: String? = nil
	/**  Object identifier  */
	public var identifier: ObjectIdentifier? = nil
	/**  Mode of extension - append to MRSS or replace the xpath content.  */
	public var extensionMode: MrssExtensionMode? = nil


	public func setMultiRequestToken(xpath: String) {
		self.dict["xpath"] = xpath
	}
	
	public func setMultiRequestToken(extensionMode: String) {
		self.dict["extensionMode"] = extensionMode
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xpath"] != nil {
			xpath = dict["xpath"] as? String
		}
		if dict["identifier"] != nil {
		identifier = try JSONParser.parse(object: dict["identifier"] as! [String: Any])		}
		if dict["extensionMode"] != nil {
			extensionMode = MrssExtensionMode(rawValue: (dict["extensionMode"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xpath != nil) {
			dict["xpath"] = xpath!
		}
		if(identifier != nil) {
			dict["identifier"] = identifier!.toDictionary()
		}
		if(extensionMode != nil) {
			dict["extensionMode"] = extensionMode!.rawValue
		}
		return dict
	}
}

