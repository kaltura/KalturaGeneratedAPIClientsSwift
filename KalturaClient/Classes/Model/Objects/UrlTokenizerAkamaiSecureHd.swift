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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class UrlTokenizerAkamaiSecureHd: UrlTokenizer {

	public var paramName: String? = nil
	public var aclPostfix: String? = nil
	public var customPostfixes: String? = nil
	public var useCookieHosts: String? = nil
	public var rootDir: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["paramName"] != nil {
			paramName = dict["paramName"] as? String
		}
		if dict["aclPostfix"] != nil {
			aclPostfix = dict["aclPostfix"] as? String
		}
		if dict["customPostfixes"] != nil {
			customPostfixes = dict["customPostfixes"] as? String
		}
		if dict["useCookieHosts"] != nil {
			useCookieHosts = dict["useCookieHosts"] as? String
		}
		if dict["rootDir"] != nil {
			rootDir = dict["rootDir"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(paramName != nil) {
			dict["paramName"] = paramName!
		}
		if(aclPostfix != nil) {
			dict["aclPostfix"] = aclPostfix!
		}
		if(customPostfixes != nil) {
			dict["customPostfixes"] = customPostfixes!
		}
		if(useCookieHosts != nil) {
			dict["useCookieHosts"] = useCookieHosts!
		}
		if(rootDir != nil) {
			dict["rootDir"] = rootDir!
		}
		return dict
	}
}

