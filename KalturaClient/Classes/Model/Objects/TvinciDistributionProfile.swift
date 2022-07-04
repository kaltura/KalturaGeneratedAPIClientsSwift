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

open class TvinciDistributionProfile: ConfigurableDistributionProfile {

	public class TvinciDistributionProfileTokenizer: ConfigurableDistributionProfile.ConfigurableDistributionProfileTokenizer {
		
		public var ingestUrl: BaseTokenizedObject {
			get {
				return self.append("ingestUrl") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var tags: ArrayTokenizedObject<TvinciDistributionTag.TvinciDistributionTagTokenizer> {
			get {
				return ArrayTokenizedObject<TvinciDistributionTag.TvinciDistributionTagTokenizer>(self.append("tags"))
			} 
		}
		
		public var xsltFile: BaseTokenizedObject {
			get {
				return self.append("xsltFile") 
			}
		}
		
		public var innerType: BaseTokenizedObject {
			get {
				return self.append("innerType") 
			}
		}
		
		public var assetsType: BaseTokenizedObject {
			get {
				return self.append("assetsType") 
			}
		}
	}

	public var ingestUrl: String? = nil
	public var username: String? = nil
	public var password: String? = nil
	/**  Tags array for Tvinci distribution  */
	public var tags: Array<TvinciDistributionTag>? = nil
	public var xsltFile: String? = nil
	public var innerType: String? = nil
	public var assetsType: TvinciAssetsType? = nil


	public func setMultiRequestToken(ingestUrl: String) {
		self.dict["ingestUrl"] = ingestUrl
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(xsltFile: String) {
		self.dict["xsltFile"] = xsltFile
	}
	
	public func setMultiRequestToken(innerType: String) {
		self.dict["innerType"] = innerType
	}
	
	public func setMultiRequestToken(assetsType: String) {
		self.dict["assetsType"] = assetsType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["ingestUrl"] != nil {
			ingestUrl = dict["ingestUrl"] as? String
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["tags"] != nil {
			tags = try JSONParser.parse(array: dict["tags"] as! [Any])
		}
		if dict["xsltFile"] != nil {
			xsltFile = dict["xsltFile"] as? String
		}
		if dict["innerType"] != nil {
			innerType = dict["innerType"] as? String
		}
		if dict["assetsType"] != nil {
			assetsType = TvinciAssetsType(rawValue: (dict["assetsType"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(ingestUrl != nil) {
			dict["ingestUrl"] = ingestUrl!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(tags != nil) {
			dict["tags"] = tags!.map { value in value.toDictionary() }
		}
		if(xsltFile != nil) {
			dict["xsltFile"] = xsltFile!
		}
		if(innerType != nil) {
			dict["innerType"] = innerType!
		}
		if(assetsType != nil) {
			dict["assetsType"] = assetsType!.rawValue
		}
		return dict
	}
}

