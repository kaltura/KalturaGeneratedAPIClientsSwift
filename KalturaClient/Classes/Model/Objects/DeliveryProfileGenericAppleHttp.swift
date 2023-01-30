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
// Copyright (C) 2006-2023  Kaltura Inc.
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

open class DeliveryProfileGenericAppleHttp: DeliveryProfile {

	public class DeliveryProfileGenericAppleHttpTokenizer: DeliveryProfile.DeliveryProfileTokenizer {
		
		public var pattern: BaseTokenizedObject {
			get {
				return self.append("pattern") 
			}
		}
		
		public var rendererClass: BaseTokenizedObject {
			get {
				return self.append("rendererClass") 
			}
		}
		
		public var manifestRedirect: BaseTokenizedObject {
			get {
				return self.append("manifestRedirect") 
			}
		}
	}

	public var pattern: String? = nil
	/**  rendererClass  */
	public var rendererClass: String? = nil
	/**  Enable to make playManifest redirect to the domain of the delivery profile  */
	public var manifestRedirect: Bool? = nil


	public func setMultiRequestToken(pattern: String) {
		self.dict["pattern"] = pattern
	}
	
	public func setMultiRequestToken(rendererClass: String) {
		self.dict["rendererClass"] = rendererClass
	}
	
	public func setMultiRequestToken(manifestRedirect: String) {
		self.dict["manifestRedirect"] = manifestRedirect
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["pattern"] != nil {
			pattern = dict["pattern"] as? String
		}
		if dict["rendererClass"] != nil {
			rendererClass = dict["rendererClass"] as? String
		}
		if dict["manifestRedirect"] != nil {
			manifestRedirect = dict["manifestRedirect"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(pattern != nil) {
			dict["pattern"] = pattern!
		}
		if(rendererClass != nil) {
			dict["rendererClass"] = rendererClass!
		}
		if(manifestRedirect != nil) {
			dict["manifestRedirect"] = manifestRedirect!
		}
		return dict
	}
}

