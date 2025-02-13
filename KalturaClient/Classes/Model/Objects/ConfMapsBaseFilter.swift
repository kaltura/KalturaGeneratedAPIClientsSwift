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

open class ConfMapsBaseFilter: RelatedFilter {

	public class ConfMapsBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var nameEqual: BaseTokenizedObject {
			get {
				return self.append("nameEqual") 
			}
		}
		
		public var relatedHostEqual: BaseTokenizedObject {
			get {
				return self.append("relatedHostEqual") 
			}
		}
		
		public var versionEqual: BaseTokenizedObject {
			get {
				return self.append("versionEqual") 
			}
		}
	}

	public var nameEqual: String? = nil
	public var relatedHostEqual: String? = nil
	public var versionEqual: Int? = nil


	public func setMultiRequestToken(nameEqual: String) {
		self.dict["nameEqual"] = nameEqual
	}
	
	public func setMultiRequestToken(relatedHostEqual: String) {
		self.dict["relatedHostEqual"] = relatedHostEqual
	}
	
	public func setMultiRequestToken(versionEqual: String) {
		self.dict["versionEqual"] = versionEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["nameEqual"] != nil {
			nameEqual = dict["nameEqual"] as? String
		}
		if dict["relatedHostEqual"] != nil {
			relatedHostEqual = dict["relatedHostEqual"] as? String
		}
		if dict["versionEqual"] != nil {
			versionEqual = dict["versionEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(nameEqual != nil) {
			dict["nameEqual"] = nameEqual!
		}
		if(relatedHostEqual != nil) {
			dict["relatedHostEqual"] = relatedHostEqual!
		}
		if(versionEqual != nil) {
			dict["versionEqual"] = versionEqual!
		}
		return dict
	}
}

