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

open class MediaEntry: PlayableEntry {

	public class MediaEntryTokenizer: PlayableEntry.PlayableEntryTokenizer {
		
		public var mediaType: BaseTokenizedObject {
			get {
				return self.append("mediaType") 
			}
		}
		
		public var conversionQuality: BaseTokenizedObject {
			get {
				return self.append("conversionQuality") 
			}
		}
		
		public var sourceType: BaseTokenizedObject {
			get {
				return self.append("sourceType") 
			}
		}
		
		public var searchProviderType: BaseTokenizedObject {
			get {
				return self.append("searchProviderType") 
			}
		}
		
		public var searchProviderId: BaseTokenizedObject {
			get {
				return self.append("searchProviderId") 
			}
		}
		
		public var creditUserName: BaseTokenizedObject {
			get {
				return self.append("creditUserName") 
			}
		}
		
		public var creditUrl: BaseTokenizedObject {
			get {
				return self.append("creditUrl") 
			}
		}
		
		public var mediaDate: BaseTokenizedObject {
			get {
				return self.append("mediaDate") 
			}
		}
		
		public var dataUrl: BaseTokenizedObject {
			get {
				return self.append("dataUrl") 
			}
		}
		
		public var flavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIds") 
			}
		}
		
		public var isTrimDisabled: BaseTokenizedObject {
			get {
				return self.append("isTrimDisabled") 
			}
		}
		
		public var streams: ArrayTokenizedObject<StreamContainer.StreamContainerTokenizer> {
			get {
				return ArrayTokenizedObject<StreamContainer.StreamContainerTokenizer>(self.append("streams"))
			} 
		}
	}

	/**  The media type of the entry  */
	public var mediaType: MediaType? = nil
	/**  Override the default conversion quality  */
	public var conversionQuality: String? = nil
	/**  The source type of the entry  */
	public var sourceType: SourceType? = nil
	/**  The search provider type used to import this entry  */
	public var searchProviderType: SearchProviderType? = nil
	/**  The ID of the media in the importing site  */
	public var searchProviderId: String? = nil
	/**  The user name used for credits  */
	public var creditUserName: String? = nil
	/**  The URL for credits  */
	public var creditUrl: String? = nil
	/**  The media date extracted from EXIF data (For images) as Unix timestamp (In
	  seconds)  */
	public var mediaDate: Int? = nil
	/**  The URL used for playback. This is not the download URL.  */
	public var dataUrl: String? = nil
	/**  Comma separated flavor params ids that exists for this media entry  */
	public var flavorParamsIds: String? = nil
	/**  True if trim action is disabled for this entry  */
	public var isTrimDisabled: Bool? = nil
	/**  Array of streams that exists on the entry  */
	public var streams: Array<StreamContainer>? = nil


	public func setMultiRequestToken(mediaType: String) {
		self.dict["mediaType"] = mediaType
	}
	
	public func setMultiRequestToken(conversionQuality: String) {
		self.dict["conversionQuality"] = conversionQuality
	}
	
	public func setMultiRequestToken(sourceType: String) {
		self.dict["sourceType"] = sourceType
	}
	
	public func setMultiRequestToken(searchProviderType: String) {
		self.dict["searchProviderType"] = searchProviderType
	}
	
	public func setMultiRequestToken(searchProviderId: String) {
		self.dict["searchProviderId"] = searchProviderId
	}
	
	public func setMultiRequestToken(creditUserName: String) {
		self.dict["creditUserName"] = creditUserName
	}
	
	public func setMultiRequestToken(creditUrl: String) {
		self.dict["creditUrl"] = creditUrl
	}
	
	public func setMultiRequestToken(mediaDate: String) {
		self.dict["mediaDate"] = mediaDate
	}
	
	public func setMultiRequestToken(dataUrl: String) {
		self.dict["dataUrl"] = dataUrl
	}
	
	public func setMultiRequestToken(flavorParamsIds: String) {
		self.dict["flavorParamsIds"] = flavorParamsIds
	}
	
	public func setMultiRequestToken(isTrimDisabled: String) {
		self.dict["isTrimDisabled"] = isTrimDisabled
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mediaType"] != nil {
			mediaType = MediaType(rawValue: (dict["mediaType"] as? Int)!)
		}
		if dict["conversionQuality"] != nil {
			conversionQuality = dict["conversionQuality"] as? String
		}
		if dict["sourceType"] != nil {
			sourceType = SourceType(rawValue: "\(dict["sourceType"]!)")
		}
		if dict["searchProviderType"] != nil {
			searchProviderType = SearchProviderType(rawValue: (dict["searchProviderType"] as? Int)!)
		}
		if dict["searchProviderId"] != nil {
			searchProviderId = dict["searchProviderId"] as? String
		}
		if dict["creditUserName"] != nil {
			creditUserName = dict["creditUserName"] as? String
		}
		if dict["creditUrl"] != nil {
			creditUrl = dict["creditUrl"] as? String
		}
		if dict["mediaDate"] != nil {
			mediaDate = dict["mediaDate"] as? Int
		}
		if dict["dataUrl"] != nil {
			dataUrl = dict["dataUrl"] as? String
		}
		if dict["flavorParamsIds"] != nil {
			flavorParamsIds = dict["flavorParamsIds"] as? String
		}
		if dict["isTrimDisabled"] != nil {
			isTrimDisabled = dict["isTrimDisabled"] as? Bool
		}
		if dict["streams"] != nil {
			streams = try JSONParser.parse(array: dict["streams"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mediaType != nil) {
			dict["mediaType"] = mediaType!.rawValue
		}
		if(conversionQuality != nil) {
			dict["conversionQuality"] = conversionQuality!
		}
		if(sourceType != nil) {
			dict["sourceType"] = sourceType!.rawValue
		}
		if(searchProviderType != nil) {
			dict["searchProviderType"] = searchProviderType!.rawValue
		}
		if(searchProviderId != nil) {
			dict["searchProviderId"] = searchProviderId!
		}
		if(creditUserName != nil) {
			dict["creditUserName"] = creditUserName!
		}
		if(creditUrl != nil) {
			dict["creditUrl"] = creditUrl!
		}
		if(streams != nil) {
			dict["streams"] = streams!.map { value in value.toDictionary() }
		}
		return dict
	}
}

