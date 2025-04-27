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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class VendorLiveCaptionCatalogItem: VendorLiveCatalogItem {

	public class VendorLiveCaptionCatalogItemTokenizer: VendorLiveCatalogItem.VendorLiveCatalogItemTokenizer {
		
		public var startTimeBuffer: BaseTokenizedObject {
			get {
				return self.append("startTimeBuffer") 
			}
		}
		
		public var endTimeBuffer: BaseTokenizedObject {
			get {
				return self.append("endTimeBuffer") 
			}
		}
	}

	/**  How long before the live stream start should service activate? (in secs)  */
	public var startTimeBuffer: Int? = nil
	/**  How long after the live stream end should service de-activate? (in secs)  */
	public var endTimeBuffer: Int? = nil


	public func setMultiRequestToken(startTimeBuffer: String) {
		self.dict["startTimeBuffer"] = startTimeBuffer
	}
	
	public func setMultiRequestToken(endTimeBuffer: String) {
		self.dict["endTimeBuffer"] = endTimeBuffer
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["startTimeBuffer"] != nil {
			startTimeBuffer = dict["startTimeBuffer"] as? Int
		}
		if dict["endTimeBuffer"] != nil {
			endTimeBuffer = dict["endTimeBuffer"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(startTimeBuffer != nil) {
			dict["startTimeBuffer"] = startTimeBuffer!
		}
		if(endTimeBuffer != nil) {
			dict["endTimeBuffer"] = endTimeBuffer!
		}
		return dict
	}
}

