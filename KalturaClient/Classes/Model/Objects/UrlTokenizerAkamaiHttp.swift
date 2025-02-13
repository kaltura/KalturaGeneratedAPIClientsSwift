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

open class UrlTokenizerAkamaiHttp: UrlTokenizer {

	public class UrlTokenizerAkamaiHttpTokenizer: UrlTokenizer.UrlTokenizerTokenizer {
		
		public var paramName: BaseTokenizedObject {
			get {
				return self.append("paramName") 
			}
		}
		
		public var rootDir: BaseTokenizedObject {
			get {
				return self.append("rootDir") 
			}
		}
	}

	/**  param  */
	public var paramName: String? = nil
	public var rootDir: String? = nil


	public func setMultiRequestToken(paramName: String) {
		self.dict["paramName"] = paramName
	}
	
	public func setMultiRequestToken(rootDir: String) {
		self.dict["rootDir"] = rootDir
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["paramName"] != nil {
			paramName = dict["paramName"] as? String
		}
		if dict["rootDir"] != nil {
			rootDir = dict["rootDir"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(paramName != nil) {
			dict["paramName"] = paramName!
		}
		if(rootDir != nil) {
			dict["rootDir"] = rootDir!
		}
		return dict
	}
}

