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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class ConversionProfile: ObjectBase {

	public class ConversionProfileTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var type: BaseTokenizedObject {
			get {
				return self.append("type") 
			}
		}
		
		public var name: BaseTokenizedObject {
			get {
				return self.append("name") 
			}
		}
		
		public var systemName: BaseTokenizedObject {
			get {
				return self.append("systemName") 
			}
		}
		
		public var tags: BaseTokenizedObject {
			get {
				return self.append("tags") 
			}
		}
		
		public var description: BaseTokenizedObject {
			get {
				return self.append("description") 
			}
		}
		
		public var defaultEntryId: BaseTokenizedObject {
			get {
				return self.append("defaultEntryId") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var flavorParamsIds: BaseTokenizedObject {
			get {
				return self.append("flavorParamsIds") 
			}
		}
		
		public var isDefault: BaseTokenizedObject {
			get {
				return self.append("isDefault") 
			}
		}
		
		public var isPartnerDefault: BaseTokenizedObject {
			get {
				return self.append("isPartnerDefault") 
			}
		}
		
		public func cropDimensions<T: CropDimensions.CropDimensionsTokenizer>() -> T {
			return T(self.append("cropDimensions"))
		}
		
		public var clipStart: BaseTokenizedObject {
			get {
				return self.append("clipStart") 
			}
		}
		
		public var clipDuration: BaseTokenizedObject {
			get {
				return self.append("clipDuration") 
			}
		}
		
		public var xslTransformation: BaseTokenizedObject {
			get {
				return self.append("xslTransformation") 
			}
		}
		
		public var storageProfileId: BaseTokenizedObject {
			get {
				return self.append("storageProfileId") 
			}
		}
		
		public var mediaParserType: BaseTokenizedObject {
			get {
				return self.append("mediaParserType") 
			}
		}
		
		public var calculateComplexity: BaseTokenizedObject {
			get {
				return self.append("calculateComplexity") 
			}
		}
		
		public var collectionTags: BaseTokenizedObject {
			get {
				return self.append("collectionTags") 
			}
		}
		
		public var conditionalProfiles: BaseTokenizedObject {
			get {
				return self.append("conditionalProfiles") 
			}
		}
		
		public var detectGOP: BaseTokenizedObject {
			get {
				return self.append("detectGOP") 
			}
		}
		
		public var mediaInfoXslTransformation: BaseTokenizedObject {
			get {
				return self.append("mediaInfoXslTransformation") 
			}
		}
		
		public func defaultReplacementOptions<T: EntryReplacementOptions.EntryReplacementOptionsTokenizer>() -> T {
			return T(self.append("defaultReplacementOptions"))
		}
		
		public var defaultAudioLang: BaseTokenizedObject {
			get {
				return self.append("defaultAudioLang") 
			}
		}
	}

	/**  The id of the Conversion Profile  */
	public var id: Int? = nil
	public var partnerId: Int? = nil
	public var status: ConversionProfileStatus? = nil
	public var type: ConversionProfileType? = nil
	/**  The name of the Conversion Profile  */
	public var name: String? = nil
	/**  System name of the Conversion Profile  */
	public var systemName: String? = nil
	/**  Comma separated tags  */
	public var tags: String? = nil
	/**  The description of the Conversion Profile  */
	public var description: String? = nil
	/**  ID of the default entry to be used for template data  */
	public var defaultEntryId: String? = nil
	/**  Creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  List of included flavor ids (comma separated)  */
	public var flavorParamsIds: String? = nil
	/**  Indicates that this conversion profile is system default  */
	public var isDefault: Bool? = nil
	/**  Indicates that this conversion profile is partner default  */
	public var isPartnerDefault: Bool? = nil
	/**  Cropping dimensions  */
	public var cropDimensions: CropDimensions? = nil
	/**  Clipping start position (in miliseconds)  */
	public var clipStart: Int? = nil
	/**  Clipping duration (in miliseconds)  */
	public var clipDuration: Int? = nil
	/**  XSL to transform ingestion MRSS XML  */
	public var xslTransformation: String? = nil
	/**  ID of default storage profile to be used for linked net-storage file syncs  */
	public var storageProfileId: Int? = nil
	/**  Media parser type to be used for extract media  */
	public var mediaParserType: MediaParserType? = nil
	/**  Should calculate file conversion complexity  */
	public var calculateComplexity: Bool? = nil
	/**  Defines the tags that should be used to define 'collective'/group/multi-flavor
	  processing,   like 'mbr' or 'ism'  */
	public var collectionTags: String? = nil
	/**  JSON string with array of "condition,profile-id" pairs.  */
	public var conditionalProfiles: String? = nil
	/**  When set, the ExtractMedia job should detect the source file GOP using this
	  value as the max calculated period  */
	public var detectGOP: Int? = nil
	/**  XSL to transform ingestion Media Info XML  */
	public var mediaInfoXslTransformation: String? = nil
	/**  Default replacement options to be applied to entries  */
	public var defaultReplacementOptions: EntryReplacementOptions? = nil
	public var defaultAudioLang: Language? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(type: String) {
		self.dict["type"] = type
	}
	
	public func setMultiRequestToken(name: String) {
		self.dict["name"] = name
	}
	
	public func setMultiRequestToken(systemName: String) {
		self.dict["systemName"] = systemName
	}
	
	public func setMultiRequestToken(tags: String) {
		self.dict["tags"] = tags
	}
	
	public func setMultiRequestToken(description: String) {
		self.dict["description"] = description
	}
	
	public func setMultiRequestToken(defaultEntryId: String) {
		self.dict["defaultEntryId"] = defaultEntryId
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(flavorParamsIds: String) {
		self.dict["flavorParamsIds"] = flavorParamsIds
	}
	
	public func setMultiRequestToken(isDefault: String) {
		self.dict["isDefault"] = isDefault
	}
	
	public func setMultiRequestToken(isPartnerDefault: String) {
		self.dict["isPartnerDefault"] = isPartnerDefault
	}
	
	public func setMultiRequestToken(clipStart: String) {
		self.dict["clipStart"] = clipStart
	}
	
	public func setMultiRequestToken(clipDuration: String) {
		self.dict["clipDuration"] = clipDuration
	}
	
	public func setMultiRequestToken(xslTransformation: String) {
		self.dict["xslTransformation"] = xslTransformation
	}
	
	public func setMultiRequestToken(storageProfileId: String) {
		self.dict["storageProfileId"] = storageProfileId
	}
	
	public func setMultiRequestToken(mediaParserType: String) {
		self.dict["mediaParserType"] = mediaParserType
	}
	
	public func setMultiRequestToken(calculateComplexity: String) {
		self.dict["calculateComplexity"] = calculateComplexity
	}
	
	public func setMultiRequestToken(collectionTags: String) {
		self.dict["collectionTags"] = collectionTags
	}
	
	public func setMultiRequestToken(conditionalProfiles: String) {
		self.dict["conditionalProfiles"] = conditionalProfiles
	}
	
	public func setMultiRequestToken(detectGOP: String) {
		self.dict["detectGOP"] = detectGOP
	}
	
	public func setMultiRequestToken(mediaInfoXslTransformation: String) {
		self.dict["mediaInfoXslTransformation"] = mediaInfoXslTransformation
	}
	
	public func setMultiRequestToken(defaultAudioLang: String) {
		self.dict["defaultAudioLang"] = defaultAudioLang
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["status"] != nil {
			status = ConversionProfileStatus(rawValue: "\(dict["status"]!)")
		}
		if dict["type"] != nil {
			type = ConversionProfileType(rawValue: "\(dict["type"]!)")
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["tags"] != nil {
			tags = dict["tags"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["defaultEntryId"] != nil {
			defaultEntryId = dict["defaultEntryId"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["flavorParamsIds"] != nil {
			flavorParamsIds = dict["flavorParamsIds"] as? String
		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["isPartnerDefault"] != nil {
			isPartnerDefault = dict["isPartnerDefault"] as? Bool
		}
		if dict["cropDimensions"] != nil {
		cropDimensions = try JSONParser.parse(object: dict["cropDimensions"] as! [String: Any])		}
		if dict["clipStart"] != nil {
			clipStart = dict["clipStart"] as? Int
		}
		if dict["clipDuration"] != nil {
			clipDuration = dict["clipDuration"] as? Int
		}
		if dict["xslTransformation"] != nil {
			xslTransformation = dict["xslTransformation"] as? String
		}
		if dict["storageProfileId"] != nil {
			storageProfileId = dict["storageProfileId"] as? Int
		}
		if dict["mediaParserType"] != nil {
			mediaParserType = MediaParserType(rawValue: "\(dict["mediaParserType"]!)")
		}
		if dict["calculateComplexity"] != nil {
			calculateComplexity = dict["calculateComplexity"] as? Bool
		}
		if dict["collectionTags"] != nil {
			collectionTags = dict["collectionTags"] as? String
		}
		if dict["conditionalProfiles"] != nil {
			conditionalProfiles = dict["conditionalProfiles"] as? String
		}
		if dict["detectGOP"] != nil {
			detectGOP = dict["detectGOP"] as? Int
		}
		if dict["mediaInfoXslTransformation"] != nil {
			mediaInfoXslTransformation = dict["mediaInfoXslTransformation"] as? String
		}
		if dict["defaultReplacementOptions"] != nil {
		defaultReplacementOptions = try JSONParser.parse(object: dict["defaultReplacementOptions"] as! [String: Any])		}
		if dict["defaultAudioLang"] != nil {
			defaultAudioLang = Language(rawValue: "\(dict["defaultAudioLang"]!)")
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(name != nil) {
			dict["name"] = name!
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(tags != nil) {
			dict["tags"] = tags!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(defaultEntryId != nil) {
			dict["defaultEntryId"] = defaultEntryId!
		}
		if(flavorParamsIds != nil) {
			dict["flavorParamsIds"] = flavorParamsIds!
		}
		if(isDefault != nil) {
			dict["isDefault"] = isDefault!
		}
		if(cropDimensions != nil) {
			dict["cropDimensions"] = cropDimensions!.toDictionary()
		}
		if(clipStart != nil) {
			dict["clipStart"] = clipStart!
		}
		if(clipDuration != nil) {
			dict["clipDuration"] = clipDuration!
		}
		if(xslTransformation != nil) {
			dict["xslTransformation"] = xslTransformation!
		}
		if(storageProfileId != nil) {
			dict["storageProfileId"] = storageProfileId!
		}
		if(mediaParserType != nil) {
			dict["mediaParserType"] = mediaParserType!.rawValue
		}
		if(calculateComplexity != nil) {
			dict["calculateComplexity"] = calculateComplexity!
		}
		if(collectionTags != nil) {
			dict["collectionTags"] = collectionTags!
		}
		if(conditionalProfiles != nil) {
			dict["conditionalProfiles"] = conditionalProfiles!
		}
		if(detectGOP != nil) {
			dict["detectGOP"] = detectGOP!
		}
		if(mediaInfoXslTransformation != nil) {
			dict["mediaInfoXslTransformation"] = mediaInfoXslTransformation!
		}
		if(defaultReplacementOptions != nil) {
			dict["defaultReplacementOptions"] = defaultReplacementOptions!.toDictionary()
		}
		if(defaultAudioLang != nil) {
			dict["defaultAudioLang"] = defaultAudioLang!.rawValue
		}
		return dict
	}
}

