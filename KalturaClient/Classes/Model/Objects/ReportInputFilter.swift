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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class ReportInputFilter: ReportInputBaseFilter {

	public class ReportInputFilterTokenizer: ReportInputBaseFilter.ReportInputBaseFilterTokenizer {
		
		public var keywords: BaseTokenizedObject {
			get {
				return self.append("keywords") 
			}
		}
		
		public var searchInTags: BaseTokenizedObject {
			get {
				return self.append("searchInTags") 
			}
		}
		
		public var searchInAdminTags: BaseTokenizedObject {
			get {
				return self.append("searchInAdminTags") 
			}
		}
		
		public var categories: BaseTokenizedObject {
			get {
				return self.append("categories") 
			}
		}
		
		public var categoriesIdsIn: BaseTokenizedObject {
			get {
				return self.append("categoriesIdsIn") 
			}
		}
		
		public var customVar1In: BaseTokenizedObject {
			get {
				return self.append("customVar1In") 
			}
		}
		
		public var customVar2In: BaseTokenizedObject {
			get {
				return self.append("customVar2In") 
			}
		}
		
		public var customVar3In: BaseTokenizedObject {
			get {
				return self.append("customVar3In") 
			}
		}
		
		public var deviceIn: BaseTokenizedObject {
			get {
				return self.append("deviceIn") 
			}
		}
		
		public var countryIn: BaseTokenizedObject {
			get {
				return self.append("countryIn") 
			}
		}
		
		public var regionIn: BaseTokenizedObject {
			get {
				return self.append("regionIn") 
			}
		}
		
		public var citiesIn: BaseTokenizedObject {
			get {
				return self.append("citiesIn") 
			}
		}
		
		public var operatingSystemFamilyIn: BaseTokenizedObject {
			get {
				return self.append("operatingSystemFamilyIn") 
			}
		}
		
		public var operatingSystemIn: BaseTokenizedObject {
			get {
				return self.append("operatingSystemIn") 
			}
		}
		
		public var browserFamilyIn: BaseTokenizedObject {
			get {
				return self.append("browserFamilyIn") 
			}
		}
		
		public var browserIn: BaseTokenizedObject {
			get {
				return self.append("browserIn") 
			}
		}
		
		public var timeZoneOffset: BaseTokenizedObject {
			get {
				return self.append("timeZoneOffset") 
			}
		}
		
		public var interval: BaseTokenizedObject {
			get {
				return self.append("interval") 
			}
		}
		
		public var mediaTypeIn: BaseTokenizedObject {
			get {
				return self.append("mediaTypeIn") 
			}
		}
		
		public var sourceTypeIn: BaseTokenizedObject {
			get {
				return self.append("sourceTypeIn") 
			}
		}
		
		public var ownerIdsIn: BaseTokenizedObject {
			get {
				return self.append("ownerIdsIn") 
			}
		}
		
		public func entryOperator<T: ESearchEntryOperator.ESearchEntryOperatorTokenizer>() -> T {
			return T(self.append("entryOperator"))
		}
		
		public var entryCreatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("entryCreatedAtGreaterThanOrEqual") 
			}
		}
		
		public var entryCreatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("entryCreatedAtLessThanOrEqual") 
			}
		}
		
		public var entryIdIn: BaseTokenizedObject {
			get {
				return self.append("entryIdIn") 
			}
		}
		
		public var playbackTypeIn: BaseTokenizedObject {
			get {
				return self.append("playbackTypeIn") 
			}
		}
		
		public var playbackContextIdsIn: BaseTokenizedObject {
			get {
				return self.append("playbackContextIdsIn") 
			}
		}
		
		public var rootEntryIdIn: BaseTokenizedObject {
			get {
				return self.append("rootEntryIdIn") 
			}
		}
		
		public var errorCodeIn: BaseTokenizedObject {
			get {
				return self.append("errorCodeIn") 
			}
		}
		
		public var playerVersionIn: BaseTokenizedObject {
			get {
				return self.append("playerVersionIn") 
			}
		}
		
		public var ispIn: BaseTokenizedObject {
			get {
				return self.append("ispIn") 
			}
		}
		
		public var applicationVersionIn: BaseTokenizedObject {
			get {
				return self.append("applicationVersionIn") 
			}
		}
		
		public var nodeIdsIn: BaseTokenizedObject {
			get {
				return self.append("nodeIdsIn") 
			}
		}
		
		public var categoriesAncestorIdIn: BaseTokenizedObject {
			get {
				return self.append("categoriesAncestorIdIn") 
			}
		}
		
		public var hotspotIdIn: BaseTokenizedObject {
			get {
				return self.append("hotspotIdIn") 
			}
		}
		
		public var crmIdIn: BaseTokenizedObject {
			get {
				return self.append("crmIdIn") 
			}
		}
		
		public var playlistIdIn: BaseTokenizedObject {
			get {
				return self.append("playlistIdIn") 
			}
		}
		
		public var domainIn: BaseTokenizedObject {
			get {
				return self.append("domainIn") 
			}
		}
		
		public var canonicalUrlIn: BaseTokenizedObject {
			get {
				return self.append("canonicalUrlIn") 
			}
		}
		
		public var virtualEventIdIn: BaseTokenizedObject {
			get {
				return self.append("virtualEventIdIn") 
			}
		}
	}

	/**  Search keywords to filter objects  */
	public var keywords: String? = nil
	/**  Search keywords in objects tags  */
	public var searchInTags: Bool? = nil
	/**  Search keywords in objects admin tags  */
	public var searchInAdminTags: Bool? = nil
	/**  Search objects in specified categories  */
	public var categories: String? = nil
	/**  Search objects in specified category ids  */
	public var categoriesIdsIn: String? = nil
	/**  Filter by customVar1  */
	public var customVar1In: String? = nil
	/**  Filter by customVar2  */
	public var customVar2In: String? = nil
	/**  Filter by customVar3  */
	public var customVar3In: String? = nil
	/**  Filter by device  */
	public var deviceIn: String? = nil
	/**  Filter by country  */
	public var countryIn: String? = nil
	/**  Filter by region  */
	public var regionIn: String? = nil
	/**  Filter by city  */
	public var citiesIn: String? = nil
	/**  Filter by operating system family  */
	public var operatingSystemFamilyIn: String? = nil
	/**  Filter by operating system  */
	public var operatingSystemIn: String? = nil
	/**  Filter by browser family  */
	public var browserFamilyIn: String? = nil
	/**  Filter by browser  */
	public var browserIn: String? = nil
	/**  Time zone offset in minutes  */
	public var timeZoneOffset: Int? = nil
	/**  Aggregated results according to interval  */
	public var interval: ReportInterval? = nil
	/**  Filter by media types  */
	public var mediaTypeIn: String? = nil
	/**  Filter by source types  */
	public var sourceTypeIn: String? = nil
	/**  Filter by entry owner  */
	public var ownerIdsIn: String? = nil
	public var entryOperator: ESearchEntryOperator? = nil
	/**  Entry created at greater than or equal as Unix timestamp  */
	public var entryCreatedAtGreaterThanOrEqual: Int? = nil
	/**  Entry created at less than or equal as Unix timestamp  */
	public var entryCreatedAtLessThanOrEqual: Int? = nil
	public var entryIdIn: String? = nil
	public var playbackTypeIn: String? = nil
	/**  filter by playback context ids  */
	public var playbackContextIdsIn: String? = nil
	/**  filter by root entry ids  */
	public var rootEntryIdIn: String? = nil
	/**  filter by error code  */
	public var errorCodeIn: String? = nil
	/**  filter by player version  */
	public var playerVersionIn: String? = nil
	/**  filter by isp  */
	public var ispIn: String? = nil
	/**  filter by application version  */
	public var applicationVersionIn: String? = nil
	/**  filter by node id  */
	public var nodeIdsIn: String? = nil
	/**  filter by categories ancestor  */
	public var categoriesAncestorIdIn: String? = nil
	/**  filter by hotspot id  */
	public var hotspotIdIn: String? = nil
	/**  filter by crm id  */
	public var crmIdIn: String? = nil
	/**  filter by playlist id  */
	public var playlistIdIn: String? = nil
	/**  filter by domain  */
	public var domainIn: String? = nil
	/**  filter by canonical url  */
	public var canonicalUrlIn: String? = nil
	/**  filter by virtual event id  */
	public var virtualEventIdIn: String? = nil


	public func setMultiRequestToken(keywords: String) {
		self.dict["keywords"] = keywords
	}
	
	public func setMultiRequestToken(searchInTags: String) {
		self.dict["searchInTags"] = searchInTags
	}
	
	public func setMultiRequestToken(searchInAdminTags: String) {
		self.dict["searchInAdminTags"] = searchInAdminTags
	}
	
	public func setMultiRequestToken(categories: String) {
		self.dict["categories"] = categories
	}
	
	public func setMultiRequestToken(categoriesIdsIn: String) {
		self.dict["categoriesIdsIn"] = categoriesIdsIn
	}
	
	public func setMultiRequestToken(customVar1In: String) {
		self.dict["customVar1In"] = customVar1In
	}
	
	public func setMultiRequestToken(customVar2In: String) {
		self.dict["customVar2In"] = customVar2In
	}
	
	public func setMultiRequestToken(customVar3In: String) {
		self.dict["customVar3In"] = customVar3In
	}
	
	public func setMultiRequestToken(deviceIn: String) {
		self.dict["deviceIn"] = deviceIn
	}
	
	public func setMultiRequestToken(countryIn: String) {
		self.dict["countryIn"] = countryIn
	}
	
	public func setMultiRequestToken(regionIn: String) {
		self.dict["regionIn"] = regionIn
	}
	
	public func setMultiRequestToken(citiesIn: String) {
		self.dict["citiesIn"] = citiesIn
	}
	
	public func setMultiRequestToken(operatingSystemFamilyIn: String) {
		self.dict["operatingSystemFamilyIn"] = operatingSystemFamilyIn
	}
	
	public func setMultiRequestToken(operatingSystemIn: String) {
		self.dict["operatingSystemIn"] = operatingSystemIn
	}
	
	public func setMultiRequestToken(browserFamilyIn: String) {
		self.dict["browserFamilyIn"] = browserFamilyIn
	}
	
	public func setMultiRequestToken(browserIn: String) {
		self.dict["browserIn"] = browserIn
	}
	
	public func setMultiRequestToken(timeZoneOffset: String) {
		self.dict["timeZoneOffset"] = timeZoneOffset
	}
	
	public func setMultiRequestToken(interval: String) {
		self.dict["interval"] = interval
	}
	
	public func setMultiRequestToken(mediaTypeIn: String) {
		self.dict["mediaTypeIn"] = mediaTypeIn
	}
	
	public func setMultiRequestToken(sourceTypeIn: String) {
		self.dict["sourceTypeIn"] = sourceTypeIn
	}
	
	public func setMultiRequestToken(ownerIdsIn: String) {
		self.dict["ownerIdsIn"] = ownerIdsIn
	}
	
	public func setMultiRequestToken(entryCreatedAtGreaterThanOrEqual: String) {
		self.dict["entryCreatedAtGreaterThanOrEqual"] = entryCreatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(entryCreatedAtLessThanOrEqual: String) {
		self.dict["entryCreatedAtLessThanOrEqual"] = entryCreatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(entryIdIn: String) {
		self.dict["entryIdIn"] = entryIdIn
	}
	
	public func setMultiRequestToken(playbackTypeIn: String) {
		self.dict["playbackTypeIn"] = playbackTypeIn
	}
	
	public func setMultiRequestToken(playbackContextIdsIn: String) {
		self.dict["playbackContextIdsIn"] = playbackContextIdsIn
	}
	
	public func setMultiRequestToken(rootEntryIdIn: String) {
		self.dict["rootEntryIdIn"] = rootEntryIdIn
	}
	
	public func setMultiRequestToken(errorCodeIn: String) {
		self.dict["errorCodeIn"] = errorCodeIn
	}
	
	public func setMultiRequestToken(playerVersionIn: String) {
		self.dict["playerVersionIn"] = playerVersionIn
	}
	
	public func setMultiRequestToken(ispIn: String) {
		self.dict["ispIn"] = ispIn
	}
	
	public func setMultiRequestToken(applicationVersionIn: String) {
		self.dict["applicationVersionIn"] = applicationVersionIn
	}
	
	public func setMultiRequestToken(nodeIdsIn: String) {
		self.dict["nodeIdsIn"] = nodeIdsIn
	}
	
	public func setMultiRequestToken(categoriesAncestorIdIn: String) {
		self.dict["categoriesAncestorIdIn"] = categoriesAncestorIdIn
	}
	
	public func setMultiRequestToken(hotspotIdIn: String) {
		self.dict["hotspotIdIn"] = hotspotIdIn
	}
	
	public func setMultiRequestToken(crmIdIn: String) {
		self.dict["crmIdIn"] = crmIdIn
	}
	
	public func setMultiRequestToken(playlistIdIn: String) {
		self.dict["playlistIdIn"] = playlistIdIn
	}
	
	public func setMultiRequestToken(domainIn: String) {
		self.dict["domainIn"] = domainIn
	}
	
	public func setMultiRequestToken(canonicalUrlIn: String) {
		self.dict["canonicalUrlIn"] = canonicalUrlIn
	}
	
	public func setMultiRequestToken(virtualEventIdIn: String) {
		self.dict["virtualEventIdIn"] = virtualEventIdIn
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["keywords"] != nil {
			keywords = dict["keywords"] as? String
		}
		if dict["searchInTags"] != nil {
			searchInTags = dict["searchInTags"] as? Bool
		}
		if dict["searchInAdminTags"] != nil {
			searchInAdminTags = dict["searchInAdminTags"] as? Bool
		}
		if dict["categories"] != nil {
			categories = dict["categories"] as? String
		}
		if dict["categoriesIdsIn"] != nil {
			categoriesIdsIn = dict["categoriesIdsIn"] as? String
		}
		if dict["customVar1In"] != nil {
			customVar1In = dict["customVar1In"] as? String
		}
		if dict["customVar2In"] != nil {
			customVar2In = dict["customVar2In"] as? String
		}
		if dict["customVar3In"] != nil {
			customVar3In = dict["customVar3In"] as? String
		}
		if dict["deviceIn"] != nil {
			deviceIn = dict["deviceIn"] as? String
		}
		if dict["countryIn"] != nil {
			countryIn = dict["countryIn"] as? String
		}
		if dict["regionIn"] != nil {
			regionIn = dict["regionIn"] as? String
		}
		if dict["citiesIn"] != nil {
			citiesIn = dict["citiesIn"] as? String
		}
		if dict["operatingSystemFamilyIn"] != nil {
			operatingSystemFamilyIn = dict["operatingSystemFamilyIn"] as? String
		}
		if dict["operatingSystemIn"] != nil {
			operatingSystemIn = dict["operatingSystemIn"] as? String
		}
		if dict["browserFamilyIn"] != nil {
			browserFamilyIn = dict["browserFamilyIn"] as? String
		}
		if dict["browserIn"] != nil {
			browserIn = dict["browserIn"] as? String
		}
		if dict["timeZoneOffset"] != nil {
			timeZoneOffset = dict["timeZoneOffset"] as? Int
		}
		if dict["interval"] != nil {
			interval = ReportInterval(rawValue: "\(dict["interval"]!)")
		}
		if dict["mediaTypeIn"] != nil {
			mediaTypeIn = dict["mediaTypeIn"] as? String
		}
		if dict["sourceTypeIn"] != nil {
			sourceTypeIn = dict["sourceTypeIn"] as? String
		}
		if dict["ownerIdsIn"] != nil {
			ownerIdsIn = dict["ownerIdsIn"] as? String
		}
		if dict["entryOperator"] != nil {
		entryOperator = try JSONParser.parse(object: dict["entryOperator"] as! [String: Any])		}
		if dict["entryCreatedAtGreaterThanOrEqual"] != nil {
			entryCreatedAtGreaterThanOrEqual = dict["entryCreatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["entryCreatedAtLessThanOrEqual"] != nil {
			entryCreatedAtLessThanOrEqual = dict["entryCreatedAtLessThanOrEqual"] as? Int
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["playbackTypeIn"] != nil {
			playbackTypeIn = dict["playbackTypeIn"] as? String
		}
		if dict["playbackContextIdsIn"] != nil {
			playbackContextIdsIn = dict["playbackContextIdsIn"] as? String
		}
		if dict["rootEntryIdIn"] != nil {
			rootEntryIdIn = dict["rootEntryIdIn"] as? String
		}
		if dict["errorCodeIn"] != nil {
			errorCodeIn = dict["errorCodeIn"] as? String
		}
		if dict["playerVersionIn"] != nil {
			playerVersionIn = dict["playerVersionIn"] as? String
		}
		if dict["ispIn"] != nil {
			ispIn = dict["ispIn"] as? String
		}
		if dict["applicationVersionIn"] != nil {
			applicationVersionIn = dict["applicationVersionIn"] as? String
		}
		if dict["nodeIdsIn"] != nil {
			nodeIdsIn = dict["nodeIdsIn"] as? String
		}
		if dict["categoriesAncestorIdIn"] != nil {
			categoriesAncestorIdIn = dict["categoriesAncestorIdIn"] as? String
		}
		if dict["hotspotIdIn"] != nil {
			hotspotIdIn = dict["hotspotIdIn"] as? String
		}
		if dict["crmIdIn"] != nil {
			crmIdIn = dict["crmIdIn"] as? String
		}
		if dict["playlistIdIn"] != nil {
			playlistIdIn = dict["playlistIdIn"] as? String
		}
		if dict["domainIn"] != nil {
			domainIn = dict["domainIn"] as? String
		}
		if dict["canonicalUrlIn"] != nil {
			canonicalUrlIn = dict["canonicalUrlIn"] as? String
		}
		if dict["virtualEventIdIn"] != nil {
			virtualEventIdIn = dict["virtualEventIdIn"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(keywords != nil) {
			dict["keywords"] = keywords!
		}
		if(searchInTags != nil) {
			dict["searchInTags"] = searchInTags!
		}
		if(searchInAdminTags != nil) {
			dict["searchInAdminTags"] = searchInAdminTags!
		}
		if(categories != nil) {
			dict["categories"] = categories!
		}
		if(categoriesIdsIn != nil) {
			dict["categoriesIdsIn"] = categoriesIdsIn!
		}
		if(customVar1In != nil) {
			dict["customVar1In"] = customVar1In!
		}
		if(customVar2In != nil) {
			dict["customVar2In"] = customVar2In!
		}
		if(customVar3In != nil) {
			dict["customVar3In"] = customVar3In!
		}
		if(deviceIn != nil) {
			dict["deviceIn"] = deviceIn!
		}
		if(countryIn != nil) {
			dict["countryIn"] = countryIn!
		}
		if(regionIn != nil) {
			dict["regionIn"] = regionIn!
		}
		if(citiesIn != nil) {
			dict["citiesIn"] = citiesIn!
		}
		if(operatingSystemFamilyIn != nil) {
			dict["operatingSystemFamilyIn"] = operatingSystemFamilyIn!
		}
		if(operatingSystemIn != nil) {
			dict["operatingSystemIn"] = operatingSystemIn!
		}
		if(browserFamilyIn != nil) {
			dict["browserFamilyIn"] = browserFamilyIn!
		}
		if(browserIn != nil) {
			dict["browserIn"] = browserIn!
		}
		if(timeZoneOffset != nil) {
			dict["timeZoneOffset"] = timeZoneOffset!
		}
		if(interval != nil) {
			dict["interval"] = interval!.rawValue
		}
		if(mediaTypeIn != nil) {
			dict["mediaTypeIn"] = mediaTypeIn!
		}
		if(sourceTypeIn != nil) {
			dict["sourceTypeIn"] = sourceTypeIn!
		}
		if(ownerIdsIn != nil) {
			dict["ownerIdsIn"] = ownerIdsIn!
		}
		if(entryOperator != nil) {
			dict["entryOperator"] = entryOperator!.toDictionary()
		}
		if(entryCreatedAtGreaterThanOrEqual != nil) {
			dict["entryCreatedAtGreaterThanOrEqual"] = entryCreatedAtGreaterThanOrEqual!
		}
		if(entryCreatedAtLessThanOrEqual != nil) {
			dict["entryCreatedAtLessThanOrEqual"] = entryCreatedAtLessThanOrEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(playbackTypeIn != nil) {
			dict["playbackTypeIn"] = playbackTypeIn!
		}
		if(playbackContextIdsIn != nil) {
			dict["playbackContextIdsIn"] = playbackContextIdsIn!
		}
		if(rootEntryIdIn != nil) {
			dict["rootEntryIdIn"] = rootEntryIdIn!
		}
		if(errorCodeIn != nil) {
			dict["errorCodeIn"] = errorCodeIn!
		}
		if(playerVersionIn != nil) {
			dict["playerVersionIn"] = playerVersionIn!
		}
		if(ispIn != nil) {
			dict["ispIn"] = ispIn!
		}
		if(applicationVersionIn != nil) {
			dict["applicationVersionIn"] = applicationVersionIn!
		}
		if(nodeIdsIn != nil) {
			dict["nodeIdsIn"] = nodeIdsIn!
		}
		if(categoriesAncestorIdIn != nil) {
			dict["categoriesAncestorIdIn"] = categoriesAncestorIdIn!
		}
		if(hotspotIdIn != nil) {
			dict["hotspotIdIn"] = hotspotIdIn!
		}
		if(crmIdIn != nil) {
			dict["crmIdIn"] = crmIdIn!
		}
		if(playlistIdIn != nil) {
			dict["playlistIdIn"] = playlistIdIn!
		}
		if(domainIn != nil) {
			dict["domainIn"] = domainIn!
		}
		if(canonicalUrlIn != nil) {
			dict["canonicalUrlIn"] = canonicalUrlIn!
		}
		if(virtualEventIdIn != nil) {
			dict["virtualEventIdIn"] = virtualEventIdIn!
		}
		return dict
	}
}

