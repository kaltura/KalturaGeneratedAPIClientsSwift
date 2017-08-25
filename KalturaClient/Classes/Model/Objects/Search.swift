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

open class Search: ObjectBase {

	public class SearchTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var keyWords: BaseTokenizedObject {
			get {
				return self.append("keyWords") 
			}
		}
		
		public var searchSource: BaseTokenizedObject {
			get {
				return self.append("searchSource") 
			}
		}
		
		public var mediaType: BaseTokenizedObject {
			get {
				return self.append("mediaType") 
			}
		}
		
		public var extraData: BaseTokenizedObject {
			get {
				return self.append("extraData") 
			}
		}
		
		public var authData: BaseTokenizedObject {
			get {
				return self.append("authData") 
			}
		}
	}

	public var keyWords: String? = nil
	public var searchSource: SearchProviderType? = nil
	public var mediaType: MediaType? = nil
	/**  Use this field to pass dynamic data for searching   For example - if you set
	  this field to "mymovies_$partner_id"   The $partner_id will be automatically
	  replcaed with your real partner Id  */
	public var extraData: String? = nil
	public var authData: String? = nil


	public func setMultiRequestToken(keyWords: String) {
		self.dict["keyWords"] = keyWords
	}
	
	public func setMultiRequestToken(searchSource: String) {
		self.dict["searchSource"] = searchSource
	}
	
	public func setMultiRequestToken(mediaType: String) {
		self.dict["mediaType"] = mediaType
	}
	
	public func setMultiRequestToken(extraData: String) {
		self.dict["extraData"] = extraData
	}
	
	public func setMultiRequestToken(authData: String) {
		self.dict["authData"] = authData
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["keyWords"] != nil {
			keyWords = dict["keyWords"] as? String
		}
		if dict["searchSource"] != nil {
			searchSource = SearchProviderType(rawValue: (dict["searchSource"] as? Int)!)
		}
		if dict["mediaType"] != nil {
			mediaType = MediaType(rawValue: (dict["mediaType"] as? Int)!)
		}
		if dict["extraData"] != nil {
			extraData = dict["extraData"] as? String
		}
		if dict["authData"] != nil {
			authData = dict["authData"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(keyWords != nil) {
			dict["keyWords"] = keyWords!
		}
		if(searchSource != nil) {
			dict["searchSource"] = searchSource!.rawValue
		}
		if(mediaType != nil) {
			dict["mediaType"] = mediaType!.rawValue
		}
		if(extraData != nil) {
			dict["extraData"] = extraData!
		}
		if(authData != nil) {
			dict["authData"] = authData!
		}
		return dict
	}
}

