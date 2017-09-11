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

open class MetadataFieldChangedCondition: MatchCondition {

	public class MetadataFieldChangedConditionTokenizer: MatchCondition.MatchConditionTokenizer {
		
		public var xPath: BaseTokenizedObject {
			get {
				return self.append("xPath") 
			}
		}
		
		public var profileId: BaseTokenizedObject {
			get {
				return self.append("profileId") 
			}
		}
		
		public var profileSystemName: BaseTokenizedObject {
			get {
				return self.append("profileSystemName") 
			}
		}
		
		public var versionA: BaseTokenizedObject {
			get {
				return self.append("versionA") 
			}
		}
		
		public var versionB: BaseTokenizedObject {
			get {
				return self.append("versionB") 
			}
		}
	}

	/**  May contain the full xpath to the field in three formats   1. Slashed xPath,
	  e.g. /metadata/myElementName   2. Using local-name function, e.g.
	  /[local-name()='metadata']/[local-name()='myElementName']   3. Using only the
	  field name, e.g. myElementName, it will be searched as //myElementName  */
	public var xPath: String? = nil
	/**  Metadata profile id  */
	public var profileId: Int? = nil
	/**  Metadata profile system name  */
	public var profileSystemName: String? = nil
	public var versionA: String? = nil
	public var versionB: String? = nil


	public func setMultiRequestToken(xPath: String) {
		self.dict["xPath"] = xPath
	}
	
	public func setMultiRequestToken(profileId: String) {
		self.dict["profileId"] = profileId
	}
	
	public func setMultiRequestToken(profileSystemName: String) {
		self.dict["profileSystemName"] = profileSystemName
	}
	
	public func setMultiRequestToken(versionA: String) {
		self.dict["versionA"] = versionA
	}
	
	public func setMultiRequestToken(versionB: String) {
		self.dict["versionB"] = versionB
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["xPath"] != nil {
			xPath = dict["xPath"] as? String
		}
		if dict["profileId"] != nil {
			profileId = dict["profileId"] as? Int
		}
		if dict["profileSystemName"] != nil {
			profileSystemName = dict["profileSystemName"] as? String
		}
		if dict["versionA"] != nil {
			versionA = dict["versionA"] as? String
		}
		if dict["versionB"] != nil {
			versionB = dict["versionB"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(xPath != nil) {
			dict["xPath"] = xPath!
		}
		if(profileId != nil) {
			dict["profileId"] = profileId!
		}
		if(profileSystemName != nil) {
			dict["profileSystemName"] = profileSystemName!
		}
		if(versionA != nil) {
			dict["versionA"] = versionA!
		}
		if(versionB != nil) {
			dict["versionB"] = versionB!
		}
		return dict
	}
}

