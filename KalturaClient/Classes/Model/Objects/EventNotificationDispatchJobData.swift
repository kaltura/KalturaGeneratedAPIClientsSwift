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

open class EventNotificationDispatchJobData: JobData {

	public class EventNotificationDispatchJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var templateId: BaseTokenizedObject {
			get {
				return self.append("templateId") 
			}
		}
		
		public var contentParameters: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("contentParameters"))
			} 
		}
	}

	public var templateId: Int? = nil
	/**  Define the content dynamic parameters  */
	public var contentParameters: Array<KeyValue>? = nil


	public func setMultiRequestToken(templateId: String) {
		self.dict["templateId"] = templateId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["templateId"] != nil {
			templateId = dict["templateId"] as? Int
		}
		if dict["contentParameters"] != nil {
			contentParameters = try JSONParser.parse(array: dict["contentParameters"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(templateId != nil) {
			dict["templateId"] = templateId!
		}
		if(contentParameters != nil) {
			dict["contentParameters"] = contentParameters!.map { value in value.toDictionary() }
		}
		return dict
	}
}

