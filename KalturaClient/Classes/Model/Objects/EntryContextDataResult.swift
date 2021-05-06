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

open class EntryContextDataResult: ContextDataResult {

	public class EntryContextDataResultTokenizer: ContextDataResult.ContextDataResultTokenizer {
		
		public var isSiteRestricted: BaseTokenizedObject {
			get {
				return self.append("isSiteRestricted") 
			}
		}
		
		public var isCountryRestricted: BaseTokenizedObject {
			get {
				return self.append("isCountryRestricted") 
			}
		}
		
		public var isSessionRestricted: BaseTokenizedObject {
			get {
				return self.append("isSessionRestricted") 
			}
		}
		
		public var isIpAddressRestricted: BaseTokenizedObject {
			get {
				return self.append("isIpAddressRestricted") 
			}
		}
		
		public var isUserAgentRestricted: BaseTokenizedObject {
			get {
				return self.append("isUserAgentRestricted") 
			}
		}
		
		public var previewLength: BaseTokenizedObject {
			get {
				return self.append("previewLength") 
			}
		}
		
		public var isScheduledNow: BaseTokenizedObject {
			get {
				return self.append("isScheduledNow") 
			}
		}
		
		public var isAdmin: BaseTokenizedObject {
			get {
				return self.append("isAdmin") 
			}
		}
		
		public var streamerType: BaseTokenizedObject {
			get {
				return self.append("streamerType") 
			}
		}
		
		public var mediaProtocol: BaseTokenizedObject {
			get {
				return self.append("mediaProtocol") 
			}
		}
		
		public var storageProfilesXML: BaseTokenizedObject {
			get {
				return self.append("storageProfilesXML") 
			}
		}
		
		public var accessControlMessages: ArrayTokenizedObject<StringHolder.StringHolderTokenizer> {
			get {
				return ArrayTokenizedObject<StringHolder.StringHolderTokenizer>(self.append("accessControlMessages"))
			} 
		}
		
		public var accessControlActions: ArrayTokenizedObject<RuleAction.RuleActionTokenizer> {
			get {
				return ArrayTokenizedObject<RuleAction.RuleActionTokenizer>(self.append("accessControlActions"))
			} 
		}
		
		public var flavorAssets: ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer> {
			get {
				return ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>(self.append("flavorAssets"))
			} 
		}
		
		public var msDuration: BaseTokenizedObject {
			get {
				return self.append("msDuration") 
			}
		}
		
		public var pluginData: DictionaryTokenizedObject<PluginData.PluginDataTokenizer> {
			get {
				return DictionaryTokenizedObject<PluginData.PluginDataTokenizer>(self.append("pluginData"))
			}
		}
	}

	public var isSiteRestricted: Bool? = nil
	public var isCountryRestricted: Bool? = nil
	public var isSessionRestricted: Bool? = nil
	public var isIpAddressRestricted: Bool? = nil
	public var isUserAgentRestricted: Bool? = nil
	public var previewLength: Int? = nil
	public var isScheduledNow: Bool? = nil
	public var isAdmin: Bool? = nil
	/**  http/rtmp/hdnetwork  */
	public var streamerType: String? = nil
	/**  http/https, rtmp/rtmpe  */
	public var mediaProtocol: String? = nil
	public var storageProfilesXML: String? = nil
	/**  Array of messages as received from the access control rules that invalidated  */
	public var accessControlMessages: Array<StringHolder>? = nil
	/**  Array of actions as received from the access control rules that invalidated  */
	public var accessControlActions: Array<RuleAction>? = nil
	/**  Array of allowed flavor assets according to access control limitations and
	  requested tags  */
	public var flavorAssets: Array<FlavorAsset>? = nil
	/**  The duration of the entry in milliseconds  */
	public var msDuration: Int? = nil
	/**  Array of allowed flavor assets according to access control limitations and
	  requested tags  */
	public var pluginData: Dictionary<String, PluginData>? = nil


	public func setMultiRequestToken(isSiteRestricted: String) {
		self.dict["isSiteRestricted"] = isSiteRestricted
	}
	
	public func setMultiRequestToken(isCountryRestricted: String) {
		self.dict["isCountryRestricted"] = isCountryRestricted
	}
	
	public func setMultiRequestToken(isSessionRestricted: String) {
		self.dict["isSessionRestricted"] = isSessionRestricted
	}
	
	public func setMultiRequestToken(isIpAddressRestricted: String) {
		self.dict["isIpAddressRestricted"] = isIpAddressRestricted
	}
	
	public func setMultiRequestToken(isUserAgentRestricted: String) {
		self.dict["isUserAgentRestricted"] = isUserAgentRestricted
	}
	
	public func setMultiRequestToken(previewLength: String) {
		self.dict["previewLength"] = previewLength
	}
	
	public func setMultiRequestToken(isScheduledNow: String) {
		self.dict["isScheduledNow"] = isScheduledNow
	}
	
	public func setMultiRequestToken(isAdmin: String) {
		self.dict["isAdmin"] = isAdmin
	}
	
	public func setMultiRequestToken(streamerType: String) {
		self.dict["streamerType"] = streamerType
	}
	
	public func setMultiRequestToken(mediaProtocol: String) {
		self.dict["mediaProtocol"] = mediaProtocol
	}
	
	public func setMultiRequestToken(storageProfilesXML: String) {
		self.dict["storageProfilesXML"] = storageProfilesXML
	}
	
	public func setMultiRequestToken(msDuration: String) {
		self.dict["msDuration"] = msDuration
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["isSiteRestricted"] != nil {
			isSiteRestricted = dict["isSiteRestricted"] as? Bool
		}
		if dict["isCountryRestricted"] != nil {
			isCountryRestricted = dict["isCountryRestricted"] as? Bool
		}
		if dict["isSessionRestricted"] != nil {
			isSessionRestricted = dict["isSessionRestricted"] as? Bool
		}
		if dict["isIpAddressRestricted"] != nil {
			isIpAddressRestricted = dict["isIpAddressRestricted"] as? Bool
		}
		if dict["isUserAgentRestricted"] != nil {
			isUserAgentRestricted = dict["isUserAgentRestricted"] as? Bool
		}
		if dict["previewLength"] != nil {
			previewLength = dict["previewLength"] as? Int
		}
		if dict["isScheduledNow"] != nil {
			isScheduledNow = dict["isScheduledNow"] as? Bool
		}
		if dict["isAdmin"] != nil {
			isAdmin = dict["isAdmin"] as? Bool
		}
		if dict["streamerType"] != nil {
			streamerType = dict["streamerType"] as? String
		}
		if dict["mediaProtocol"] != nil {
			mediaProtocol = dict["mediaProtocol"] as? String
		}
		if dict["storageProfilesXML"] != nil {
			storageProfilesXML = dict["storageProfilesXML"] as? String
		}
		if dict["accessControlMessages"] != nil {
			accessControlMessages = try JSONParser.parse(array: dict["accessControlMessages"] as! [Any])
		}
		if dict["accessControlActions"] != nil {
			accessControlActions = try JSONParser.parse(array: dict["accessControlActions"] as! [Any])
		}
		if dict["flavorAssets"] != nil {
			flavorAssets = try JSONParser.parse(array: dict["flavorAssets"] as! [Any])
		}
		if dict["msDuration"] != nil {
			msDuration = dict["msDuration"] as? Int
		}
		if dict["pluginData"] != nil {
			pluginData = try JSONParser.parse(map: dict["pluginData"] as! [String: Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(isSiteRestricted != nil) {
			dict["isSiteRestricted"] = isSiteRestricted!
		}
		if(isCountryRestricted != nil) {
			dict["isCountryRestricted"] = isCountryRestricted!
		}
		if(isSessionRestricted != nil) {
			dict["isSessionRestricted"] = isSessionRestricted!
		}
		if(isIpAddressRestricted != nil) {
			dict["isIpAddressRestricted"] = isIpAddressRestricted!
		}
		if(isUserAgentRestricted != nil) {
			dict["isUserAgentRestricted"] = isUserAgentRestricted!
		}
		if(previewLength != nil) {
			dict["previewLength"] = previewLength!
		}
		if(isScheduledNow != nil) {
			dict["isScheduledNow"] = isScheduledNow!
		}
		if(isAdmin != nil) {
			dict["isAdmin"] = isAdmin!
		}
		if(streamerType != nil) {
			dict["streamerType"] = streamerType!
		}
		if(mediaProtocol != nil) {
			dict["mediaProtocol"] = mediaProtocol!
		}
		if(storageProfilesXML != nil) {
			dict["storageProfilesXML"] = storageProfilesXML!
		}
		if(accessControlMessages != nil) {
			dict["accessControlMessages"] = accessControlMessages!.map { value in value.toDictionary() }
		}
		if(accessControlActions != nil) {
			dict["accessControlActions"] = accessControlActions!.map { value in value.toDictionary() }
		}
		if(flavorAssets != nil) {
			dict["flavorAssets"] = flavorAssets!.map { value in value.toDictionary() }
		}
		if(msDuration != nil) {
			dict["msDuration"] = msDuration!
		}
		if(pluginData != nil) {
			dict["pluginData"] = pluginData!.toDictionary()
		}
		return dict
	}
}

