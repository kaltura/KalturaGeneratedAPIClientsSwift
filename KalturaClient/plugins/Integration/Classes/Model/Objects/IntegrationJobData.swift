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

open class IntegrationJobData: JobData {

	public class IntegrationJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var callbackNotificationUrl: BaseTokenizedObject {
			get {
				return self.append("callbackNotificationUrl") 
			}
		}
		
		public var providerType: BaseTokenizedObject {
			get {
				return self.append("providerType") 
			}
		}
		
		public func providerData<T: IntegrationJobProviderData.IntegrationJobProviderDataTokenizer>() -> T {
			return T(self.append("providerData"))
		}
		
		public var triggerType: BaseTokenizedObject {
			get {
				return self.append("triggerType") 
			}
		}
		
		public func triggerData<T: IntegrationJobTriggerData.IntegrationJobTriggerDataTokenizer>() -> T {
			return T(self.append("triggerData"))
		}
	}

	public var callbackNotificationUrl: String? = nil
	public var providerType: IntegrationProviderType? = nil
	/**  Additional data that relevant for the provider only  */
	public var providerData: IntegrationJobProviderData? = nil
	public var triggerType: IntegrationTriggerType? = nil
	/**  Additional data that relevant for the trigger only  */
	public var triggerData: IntegrationJobTriggerData? = nil


	public func setMultiRequestToken(callbackNotificationUrl: String) {
		self.dict["callbackNotificationUrl"] = callbackNotificationUrl
	}
	
	public func setMultiRequestToken(providerType: String) {
		self.dict["providerType"] = providerType
	}
	
	public func setMultiRequestToken(triggerType: String) {
		self.dict["triggerType"] = triggerType
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["callbackNotificationUrl"] != nil {
			callbackNotificationUrl = dict["callbackNotificationUrl"] as? String
		}
		if dict["providerType"] != nil {
			providerType = IntegrationProviderType(rawValue: "\(dict["providerType"]!)")
		}
		if dict["providerData"] != nil {
		providerData = try JSONParser.parse(object: dict["providerData"] as! [String: Any])		}
		if dict["triggerType"] != nil {
			triggerType = IntegrationTriggerType(rawValue: "\(dict["triggerType"]!)")
		}
		if dict["triggerData"] != nil {
		triggerData = try JSONParser.parse(object: dict["triggerData"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(providerType != nil) {
			dict["providerType"] = providerType!.rawValue
		}
		if(providerData != nil) {
			dict["providerData"] = providerData!.toDictionary()
		}
		if(triggerType != nil) {
			dict["triggerType"] = triggerType!.rawValue
		}
		if(triggerData != nil) {
			dict["triggerData"] = triggerData!.toDictionary()
		}
		return dict
	}
}

