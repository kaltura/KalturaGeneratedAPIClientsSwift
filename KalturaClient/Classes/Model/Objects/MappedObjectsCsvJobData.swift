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

open class MappedObjectsCsvJobData: ExportCsvJobData {

	public class MappedObjectsCsvJobDataTokenizer: ExportCsvJobData.ExportCsvJobDataTokenizer {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var additionalFields: ArrayTokenizedObject<CsvAdditionalFieldInfo.CsvAdditionalFieldInfoTokenizer> {
			get {
				return ArrayTokenizedObject<CsvAdditionalFieldInfo.CsvAdditionalFieldInfoTokenizer>(self.append("additionalFields"))
			} 
		}
		
		public var mappedFields: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("mappedFields"))
			} 
		}
		
		public func options<T: ExportToCsvOptions.ExportToCsvOptionsTokenizer>() -> T {
			return T(self.append("options"))
		}
	}

	/**  The metadata profile we should look the xpath in  */
	public var metadataProfileId: Int? = nil
	/**  The xpath to look in the metadataProfileId  and the wanted csv field name  */
	public var additionalFields: Array<CsvAdditionalFieldInfo>? = nil
	/**  Array of header names and their mapped user fields  */
	public var mappedFields: Array<KeyValue>? = nil
	public var options: ExportToCsvOptions? = nil


	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["additionalFields"] != nil {
			additionalFields = try JSONParser.parse(array: dict["additionalFields"] as! [Any])
		}
		if dict["mappedFields"] != nil {
			mappedFields = try JSONParser.parse(array: dict["mappedFields"] as! [Any])
		}
		if dict["options"] != nil {
		options = try JSONParser.parse(object: dict["options"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(additionalFields != nil) {
			dict["additionalFields"] = additionalFields!.map { value in value.toDictionary() }
		}
		if(mappedFields != nil) {
			dict["mappedFields"] = mappedFields!.map { value in value.toDictionary() }
		}
		if(options != nil) {
			dict["options"] = options!.toDictionary()
		}
		return dict
	}
}

