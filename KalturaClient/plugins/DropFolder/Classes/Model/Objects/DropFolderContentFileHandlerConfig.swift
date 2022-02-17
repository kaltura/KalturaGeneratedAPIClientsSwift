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

open class DropFolderContentFileHandlerConfig: DropFolderFileHandlerConfig {

	public class DropFolderContentFileHandlerConfigTokenizer: DropFolderFileHandlerConfig.DropFolderFileHandlerConfigTokenizer {
		
		public var contentMatchPolicy: BaseTokenizedObject {
			get {
				return self.append("contentMatchPolicy") 
			}
		}
		
		public var slugRegex: BaseTokenizedObject {
			get {
				return self.append("slugRegex") 
			}
		}
	}

	public var contentMatchPolicy: DropFolderContentFileHandlerMatchPolicy? = nil
	/**  Regular expression that defines valid file names to be handled.   The following
	  might be extracted from the file name and used if defined:   -
	  (?P&lt;referenceId&gt;\w+) - will be used as the drop folder file's parsed slug.
	    - (?P&lt;flavorName&gt;\w+)  - will be used as the drop folder file's parsed
	  flavor.  */
	public var slugRegex: String? = nil


	public func setMultiRequestToken(contentMatchPolicy: String) {
		self.dict["contentMatchPolicy"] = contentMatchPolicy
	}
	
	public func setMultiRequestToken(slugRegex: String) {
		self.dict["slugRegex"] = slugRegex
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["contentMatchPolicy"] != nil {
			contentMatchPolicy = DropFolderContentFileHandlerMatchPolicy(rawValue: (dict["contentMatchPolicy"] as? Int)!)
		}
		if dict["slugRegex"] != nil {
			slugRegex = dict["slugRegex"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(contentMatchPolicy != nil) {
			dict["contentMatchPolicy"] = contentMatchPolicy!.rawValue
		}
		if(slugRegex != nil) {
			dict["slugRegex"] = slugRegex!
		}
		return dict
	}
}

