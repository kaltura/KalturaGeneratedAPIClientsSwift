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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class UrlTokenizerLevel3: UrlTokenizer {

	public class UrlTokenizerLevel3Tokenizer: UrlTokenizer.UrlTokenizerTokenizer {
		
		public var paramName: BaseTokenizedObject {
			get {
				return self.append("paramName") 
			}
		}
		
		public var expiryName: BaseTokenizedObject {
			get {
				return self.append("expiryName") 
			}
		}
		
		public var gen: BaseTokenizedObject {
			get {
				return self.append("gen") 
			}
		}
	}

	/**  paramName  */
	public var paramName: String? = nil
	/**  expiryName  */
	public var expiryName: String? = nil
	/**  gen  */
	public var gen: String? = nil


	public func setMultiRequestToken(paramName: String) {
		self.dict["paramName"] = paramName
	}
	
	public func setMultiRequestToken(expiryName: String) {
		self.dict["expiryName"] = expiryName
	}
	
	public func setMultiRequestToken(gen: String) {
		self.dict["gen"] = gen
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["paramName"] != nil {
			paramName = dict["paramName"] as? String
		}
		if dict["expiryName"] != nil {
			expiryName = dict["expiryName"] as? String
		}
		if dict["gen"] != nil {
			gen = dict["gen"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(paramName != nil) {
			dict["paramName"] = paramName!
		}
		if(expiryName != nil) {
			dict["expiryName"] = expiryName!
		}
		if(gen != nil) {
			dict["gen"] = gen!
		}
		return dict
	}
}

