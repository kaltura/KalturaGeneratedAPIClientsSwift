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

open class UnicornDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class UnicornDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var catalogGuid: BaseTokenizedObject {
			get {
				return self.append("catalogGuid") 
			}
		}
		
		public var title: BaseTokenizedObject {
			get {
				return self.append("title") 
			}
		}
		
		public var mediaChanged: BaseTokenizedObject {
			get {
				return self.append("mediaChanged") 
			}
		}
		
		public var flavorAssetVersion: BaseTokenizedObject {
			get {
				return self.append("flavorAssetVersion") 
			}
		}
		
		public var notificationBaseUrl: BaseTokenizedObject {
			get {
				return self.append("notificationBaseUrl") 
			}
		}
	}

	/**  The Catalog GUID the video is in or will be ingested into.  */
	public var catalogGuid: String? = nil
	/**  The Title assigned to the video. The Foreign Key will be used if no title is
	  provided.  */
	public var title: String? = nil
	/**  Indicates that the media content changed and therefore the job should wait for
	  HTTP callback notification to be closed.  */
	public var mediaChanged: Bool? = nil
	/**  Flavor asset version.  */
	public var flavorAssetVersion: String? = nil
	/**  The schema and host name to the Kaltura server, e.g. http://www.kaltura.com  */
	public var notificationBaseUrl: String? = nil


	public func setMultiRequestToken(catalogGuid: String) {
		self.dict["catalogGuid"] = catalogGuid
	}
	
	public func setMultiRequestToken(title: String) {
		self.dict["title"] = title
	}
	
	public func setMultiRequestToken(mediaChanged: String) {
		self.dict["mediaChanged"] = mediaChanged
	}
	
	public func setMultiRequestToken(flavorAssetVersion: String) {
		self.dict["flavorAssetVersion"] = flavorAssetVersion
	}
	
	public func setMultiRequestToken(notificationBaseUrl: String) {
		self.dict["notificationBaseUrl"] = notificationBaseUrl
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["catalogGuid"] != nil {
			catalogGuid = dict["catalogGuid"] as? String
		}
		if dict["title"] != nil {
			title = dict["title"] as? String
		}
		if dict["mediaChanged"] != nil {
			mediaChanged = dict["mediaChanged"] as? Bool
		}
		if dict["flavorAssetVersion"] != nil {
			flavorAssetVersion = dict["flavorAssetVersion"] as? String
		}
		if dict["notificationBaseUrl"] != nil {
			notificationBaseUrl = dict["notificationBaseUrl"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(catalogGuid != nil) {
			dict["catalogGuid"] = catalogGuid!
		}
		if(title != nil) {
			dict["title"] = title!
		}
		if(mediaChanged != nil) {
			dict["mediaChanged"] = mediaChanged!
		}
		if(flavorAssetVersion != nil) {
			dict["flavorAssetVersion"] = flavorAssetVersion!
		}
		if(notificationBaseUrl != nil) {
			dict["notificationBaseUrl"] = notificationBaseUrl!
		}
		return dict
	}
}

