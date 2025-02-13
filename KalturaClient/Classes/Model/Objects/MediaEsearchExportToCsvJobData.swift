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

open class MediaEsearchExportToCsvJobData: ExportCsvJobData {

	public class MediaEsearchExportToCsvJobDataTokenizer: ExportCsvJobData.ExportCsvJobDataTokenizer {
		
		public func searchParams<T: ESearchEntryParams.ESearchEntryParamsTokenizer>() -> T {
			return T(self.append("searchParams"))
		}
		
		public var options: ArrayTokenizedObject<ExportToCsvOptions.ExportToCsvOptionsTokenizer> {
			get {
				return ArrayTokenizedObject<ExportToCsvOptions.ExportToCsvOptionsTokenizer>(self.append("options"))
			} 
		}
	}

	/**  Esearch parameters for the entry search  */
	public var searchParams: ESearchEntryParams? = nil
	/**  options  */
	public var options: Array<ExportToCsvOptions>? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["searchParams"] != nil {
		searchParams = try JSONParser.parse(object: dict["searchParams"] as! [String: Any])		}
		if dict["options"] != nil {
			options = try JSONParser.parse(array: dict["options"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(searchParams != nil) {
			dict["searchParams"] = searchParams!.toDictionary()
		}
		if(options != nil) {
			dict["options"] = options!.map { value in value.toDictionary() }
		}
		return dict
	}
}

