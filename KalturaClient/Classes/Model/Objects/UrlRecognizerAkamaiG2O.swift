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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class UrlRecognizerAkamaiG2O: UrlRecognizer {

	public class UrlRecognizerAkamaiG2OTokenizer: UrlRecognizer.UrlRecognizerTokenizer {
		
		public var headerData: BaseTokenizedObject {
			get {
				return self.append("headerData") 
			}
		}
		
		public var headerSign: BaseTokenizedObject {
			get {
				return self.append("headerSign") 
			}
		}
		
		public var timeout: BaseTokenizedObject {
			get {
				return self.append("timeout") 
			}
		}
		
		public var salt: BaseTokenizedObject {
			get {
				return self.append("salt") 
			}
		}
	}

	/**  headerData  */
	public var headerData: String? = nil
	/**  headerSign  */
	public var headerSign: String? = nil
	/**  timeout  */
	public var timeout: Int? = nil
	/**  salt  */
	public var salt: String? = nil


	public func setMultiRequestToken(headerData: String) {
		self.dict["headerData"] = headerData
	}
	
	public func setMultiRequestToken(headerSign: String) {
		self.dict["headerSign"] = headerSign
	}
	
	public func setMultiRequestToken(timeout: String) {
		self.dict["timeout"] = timeout
	}
	
	public func setMultiRequestToken(salt: String) {
		self.dict["salt"] = salt
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["headerData"] != nil {
			headerData = dict["headerData"] as? String
		}
		if dict["headerSign"] != nil {
			headerSign = dict["headerSign"] as? String
		}
		if dict["timeout"] != nil {
			timeout = dict["timeout"] as? Int
		}
		if dict["salt"] != nil {
			salt = dict["salt"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(headerData != nil) {
			dict["headerData"] = headerData!
		}
		if(headerSign != nil) {
			dict["headerSign"] = headerSign!
		}
		if(timeout != nil) {
			dict["timeout"] = timeout!
		}
		if(salt != nil) {
			dict["salt"] = salt!
		}
		return dict
	}
}

