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

open class Widget: ObjectBase {

	public class WidgetTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var sourceWidgetId: BaseTokenizedObject {
			get {
				return self.append("sourceWidgetId") 
			}
		}
		
		public var rootWidgetId: BaseTokenizedObject {
			get {
				return self.append("rootWidgetId") 
			}
		}
		
		public var partnerId: BaseTokenizedObject {
			get {
				return self.append("partnerId") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var uiConfId: BaseTokenizedObject {
			get {
				return self.append("uiConfId") 
			}
		}
		
		public var securityType: BaseTokenizedObject {
			get {
				return self.append("securityType") 
			}
		}
		
		public var securityPolicy: BaseTokenizedObject {
			get {
				return self.append("securityPolicy") 
			}
		}
		
		public var createdAt: BaseTokenizedObject {
			get {
				return self.append("createdAt") 
			}
		}
		
		public var updatedAt: BaseTokenizedObject {
			get {
				return self.append("updatedAt") 
			}
		}
		
		public var partnerData: BaseTokenizedObject {
			get {
				return self.append("partnerData") 
			}
		}
		
		public var widgetHTML: BaseTokenizedObject {
			get {
				return self.append("widgetHTML") 
			}
		}
		
		public var enforceEntitlement: BaseTokenizedObject {
			get {
				return self.append("enforceEntitlement") 
			}
		}
		
		public var privacyContext: BaseTokenizedObject {
			get {
				return self.append("privacyContext") 
			}
		}
		
		public var addEmbedHtml5Support: BaseTokenizedObject {
			get {
				return self.append("addEmbedHtml5Support") 
			}
		}
		
		public var roles: BaseTokenizedObject {
			get {
				return self.append("roles") 
			}
		}
		
		public var privileges: BaseTokenizedObject {
			get {
				return self.append("privileges") 
			}
		}
	}

	public var id: String? = nil
	public var sourceWidgetId: String? = nil
	public var rootWidgetId: String? = nil
	public var partnerId: Int? = nil
	public var entryId: String? = nil
	public var uiConfId: Int? = nil
	public var securityType: WidgetSecurityType? = nil
	public var securityPolicy: Int? = nil
	public var createdAt: Int? = nil
	public var updatedAt: Int? = nil
	/**  Can be used to store various partner related data as a string  */
	public var partnerData: String? = nil
	public var widgetHTML: String? = nil
	/**  Should enforce entitlement on feed entries  */
	public var enforceEntitlement: Bool? = nil
	/**  Set privacy context for search entries that assiged to private and public
	  categories within a category privacy context.  */
	public var privacyContext: String? = nil
	/**  Addes the HTML5 script line to the widget's embed code  */
	public var addEmbedHtml5Support: Bool? = nil
	public var roles: String? = nil
	public var privileges: String? = nil


	public func setMultiRequestToken(id: String) {
		self.dict["id"] = id
	}
	
	public func setMultiRequestToken(sourceWidgetId: String) {
		self.dict["sourceWidgetId"] = sourceWidgetId
	}
	
	public func setMultiRequestToken(rootWidgetId: String) {
		self.dict["rootWidgetId"] = rootWidgetId
	}
	
	public func setMultiRequestToken(partnerId: String) {
		self.dict["partnerId"] = partnerId
	}
	
	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(uiConfId: String) {
		self.dict["uiConfId"] = uiConfId
	}
	
	public func setMultiRequestToken(securityType: String) {
		self.dict["securityType"] = securityType
	}
	
	public func setMultiRequestToken(securityPolicy: String) {
		self.dict["securityPolicy"] = securityPolicy
	}
	
	public func setMultiRequestToken(createdAt: String) {
		self.dict["createdAt"] = createdAt
	}
	
	public func setMultiRequestToken(updatedAt: String) {
		self.dict["updatedAt"] = updatedAt
	}
	
	public func setMultiRequestToken(partnerData: String) {
		self.dict["partnerData"] = partnerData
	}
	
	public func setMultiRequestToken(widgetHTML: String) {
		self.dict["widgetHTML"] = widgetHTML
	}
	
	public func setMultiRequestToken(enforceEntitlement: String) {
		self.dict["enforceEntitlement"] = enforceEntitlement
	}
	
	public func setMultiRequestToken(privacyContext: String) {
		self.dict["privacyContext"] = privacyContext
	}
	
	public func setMultiRequestToken(addEmbedHtml5Support: String) {
		self.dict["addEmbedHtml5Support"] = addEmbedHtml5Support
	}
	
	public func setMultiRequestToken(roles: String) {
		self.dict["roles"] = roles
	}
	
	public func setMultiRequestToken(privileges: String) {
		self.dict["privileges"] = privileges
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? String
		}
		if dict["sourceWidgetId"] != nil {
			sourceWidgetId = dict["sourceWidgetId"] as? String
		}
		if dict["rootWidgetId"] != nil {
			rootWidgetId = dict["rootWidgetId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["uiConfId"] != nil {
			uiConfId = dict["uiConfId"] as? Int
		}
		if dict["securityType"] != nil {
			securityType = WidgetSecurityType(rawValue: (dict["securityType"] as? Int)!)
		}
		if dict["securityPolicy"] != nil {
			securityPolicy = dict["securityPolicy"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["partnerData"] != nil {
			partnerData = dict["partnerData"] as? String
		}
		if dict["widgetHTML"] != nil {
			widgetHTML = dict["widgetHTML"] as? String
		}
		if dict["enforceEntitlement"] != nil {
			enforceEntitlement = dict["enforceEntitlement"] as? Bool
		}
		if dict["privacyContext"] != nil {
			privacyContext = dict["privacyContext"] as? String
		}
		if dict["addEmbedHtml5Support"] != nil {
			addEmbedHtml5Support = dict["addEmbedHtml5Support"] as? Bool
		}
		if dict["roles"] != nil {
			roles = dict["roles"] as? String
		}
		if dict["privileges"] != nil {
			privileges = dict["privileges"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sourceWidgetId != nil) {
			dict["sourceWidgetId"] = sourceWidgetId!
		}
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(uiConfId != nil) {
			dict["uiConfId"] = uiConfId!
		}
		if(securityType != nil) {
			dict["securityType"] = securityType!.rawValue
		}
		if(securityPolicy != nil) {
			dict["securityPolicy"] = securityPolicy!
		}
		if(partnerData != nil) {
			dict["partnerData"] = partnerData!
		}
		if(enforceEntitlement != nil) {
			dict["enforceEntitlement"] = enforceEntitlement!
		}
		if(privacyContext != nil) {
			dict["privacyContext"] = privacyContext!
		}
		if(addEmbedHtml5Support != nil) {
			dict["addEmbedHtml5Support"] = addEmbedHtml5Support!
		}
		if(roles != nil) {
			dict["roles"] = roles!
		}
		if(privileges != nil) {
			dict["privileges"] = privileges!
		}
		return dict
	}
}

