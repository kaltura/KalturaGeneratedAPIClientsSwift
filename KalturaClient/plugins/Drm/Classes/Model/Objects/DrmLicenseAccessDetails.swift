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

open class DrmLicenseAccessDetails: ObjectBase {

	public class DrmLicenseAccessDetailsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var policy: BaseTokenizedObject {
			get {
				return self.append("policy") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
		
		public var absolute_duration: BaseTokenizedObject {
			get {
				return self.append("absolute_duration") 
			}
		}
		
		public var licenseParams: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("licenseParams"))
			} 
		}
	}

	/**  Drm policy name  */
	public var policy: String? = nil
	/**  movie duration in seconds  */
	public var duration: Int? = nil
	/**  playback window in seconds  */
	public var absolute_duration: Int? = nil
	public var licenseParams: Array<KeyValue>? = nil


	public func setMultiRequestToken(policy: String) {
		self.dict["policy"] = policy
	}
	
	public func setMultiRequestToken(duration: String) {
		self.dict["duration"] = duration
	}
	
	public func setMultiRequestToken(absolute_duration: String) {
		self.dict["absolute_duration"] = absolute_duration
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["policy"] != nil {
			policy = dict["policy"] as? String
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["absolute_duration"] != nil {
			absolute_duration = dict["absolute_duration"] as? Int
		}
		if dict["licenseParams"] != nil {
			licenseParams = try JSONParser.parse(array: dict["licenseParams"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(policy != nil) {
			dict["policy"] = policy!
		}
		if(duration != nil) {
			dict["duration"] = duration!
		}
		if(absolute_duration != nil) {
			dict["absolute_duration"] = absolute_duration!
		}
		if(licenseParams != nil) {
			dict["licenseParams"] = licenseParams!.map { value in value.toDictionary() }
		}
		return dict
	}
}

