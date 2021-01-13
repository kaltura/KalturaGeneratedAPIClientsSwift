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

open class BulkDownloadJobData: JobData {

	public class BulkDownloadJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var entryIds: BaseTokenizedObject {
			get {
				return self.append("entryIds") 
			}
		}
		
		public var flavorParamsId: BaseTokenizedObject {
			get {
				return self.append("flavorParamsId") 
			}
		}
		
		public var puserId: BaseTokenizedObject {
			get {
				return self.append("puserId") 
			}
		}
	}

	/**  Comma separated list of entry ids  */
	public var entryIds: String? = nil
	/**  Flavor params id to use for conversion  */
	public var flavorParamsId: Int? = nil
	/**  The id of the requesting user  */
	public var puserId: String? = nil


	public func setMultiRequestToken(entryIds: String) {
		self.dict["entryIds"] = entryIds
	}
	
	public func setMultiRequestToken(flavorParamsId: String) {
		self.dict["flavorParamsId"] = flavorParamsId
	}
	
	public func setMultiRequestToken(puserId: String) {
		self.dict["puserId"] = puserId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryIds"] != nil {
			entryIds = dict["entryIds"] as? String
		}
		if dict["flavorParamsId"] != nil {
			flavorParamsId = dict["flavorParamsId"] as? Int
		}
		if dict["puserId"] != nil {
			puserId = dict["puserId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryIds != nil) {
			dict["entryIds"] = entryIds!
		}
		if(flavorParamsId != nil) {
			dict["flavorParamsId"] = flavorParamsId!
		}
		if(puserId != nil) {
			dict["puserId"] = puserId!
		}
		return dict
	}
}

