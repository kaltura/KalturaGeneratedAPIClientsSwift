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

/**  Represents the Bulk upload job data for filter bulk upload  */
open class BulkUploadFilterJobData: BulkUploadJobData {

	public class BulkUploadFilterJobDataTokenizer: BulkUploadJobData.BulkUploadJobDataTokenizer {
		
		public func filter<T: Filter.FilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func templateObject<T: ObjectBase.ObjectBaseTokenizer>() -> T {
			return T(self.append("templateObject"))
		}
	}

	/**  Filter for extracting the objects list to upload  */
	public var filter: Filter? = nil
	/**  Template object for new object creation  */
	public var templateObject: ObjectBase? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filter"] != nil {
		filter = try JSONParser.parse(object: dict["filter"] as! [String: Any])		}
		if dict["templateObject"] != nil {
		templateObject = try JSONParser.parse(object: dict["templateObject"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filter != nil) {
			dict["filter"] = filter!.toDictionary()
		}
		if(templateObject != nil) {
			dict["templateObject"] = templateObject!.toDictionary()
		}
		return dict
	}
}

