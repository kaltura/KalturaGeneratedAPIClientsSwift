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

open class CopyPartnerJobData: JobData {

	public class CopyPartnerJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var fromPartnerId: BaseTokenizedObject {
			get {
				return self.append("fromPartnerId") 
			}
		}
		
		public var toPartnerId: BaseTokenizedObject {
			get {
				return self.append("toPartnerId") 
			}
		}
	}

	/**  Id of the partner to copy from  */
	public var fromPartnerId: Int? = nil
	/**  Id of the partner to copy to  */
	public var toPartnerId: Int? = nil


	public func setMultiRequestToken(fromPartnerId: String) {
		self.dict["fromPartnerId"] = fromPartnerId
	}
	
	public func setMultiRequestToken(toPartnerId: String) {
		self.dict["toPartnerId"] = toPartnerId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fromPartnerId"] != nil {
			fromPartnerId = dict["fromPartnerId"] as? Int
		}
		if dict["toPartnerId"] != nil {
			toPartnerId = dict["toPartnerId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fromPartnerId != nil) {
			dict["fromPartnerId"] = fromPartnerId!
		}
		if(toPartnerId != nil) {
			dict["toPartnerId"] = toPartnerId!
		}
		return dict
	}
}

