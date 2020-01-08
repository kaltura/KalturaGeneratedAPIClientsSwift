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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class ModifyEntryObjectTask: ObjectTask {

	public class ModifyEntryObjectTaskTokenizer: ObjectTask.ObjectTaskTokenizer {
		
		public var inputMetadataProfileId: BaseTokenizedObject {
			get {
				return self.append("inputMetadataProfileId") 
			}
		}
		
		public var inputMetadata: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("inputMetadata"))
			} 
		}
		
		public var outputMetadataProfileId: BaseTokenizedObject {
			get {
				return self.append("outputMetadataProfileId") 
			}
		}
		
		public var outputMetadata: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("outputMetadata"))
			} 
		}
		
		public var inputUserId: BaseTokenizedObject {
			get {
				return self.append("inputUserId") 
			}
		}
		
		public var inputEntitledUsersEdit: BaseTokenizedObject {
			get {
				return self.append("inputEntitledUsersEdit") 
			}
		}
		
		public var inputEntitledUsersPublish: BaseTokenizedObject {
			get {
				return self.append("inputEntitledUsersPublish") 
			}
		}
	}

	/**  The input metadata profile id  */
	public var inputMetadataProfileId: Int? = nil
	/**  array of {input metadata xpath location,entry field} objects  */
	public var inputMetadata: Array<KeyValue>? = nil
	/**  The output metadata profile id  */
	public var outputMetadataProfileId: Int? = nil
	/**  array of {output metadata xpath location,entry field} objects  */
	public var outputMetadata: Array<KeyValue>? = nil
	/**  The input user id to set on the entry  */
	public var inputUserId: String? = nil
	/**  The input entitled users edit to set on the entry  */
	public var inputEntitledUsersEdit: String? = nil
	/**  The input entitled users publish to set on the entry  */
	public var inputEntitledUsersPublish: String? = nil


	public func setMultiRequestToken(inputMetadataProfileId: String) {
		self.dict["inputMetadataProfileId"] = inputMetadataProfileId
	}
	
	public func setMultiRequestToken(outputMetadataProfileId: String) {
		self.dict["outputMetadataProfileId"] = outputMetadataProfileId
	}
	
	public func setMultiRequestToken(inputUserId: String) {
		self.dict["inputUserId"] = inputUserId
	}
	
	public func setMultiRequestToken(inputEntitledUsersEdit: String) {
		self.dict["inputEntitledUsersEdit"] = inputEntitledUsersEdit
	}
	
	public func setMultiRequestToken(inputEntitledUsersPublish: String) {
		self.dict["inputEntitledUsersPublish"] = inputEntitledUsersPublish
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["inputMetadataProfileId"] != nil {
			inputMetadataProfileId = dict["inputMetadataProfileId"] as? Int
		}
		if dict["inputMetadata"] != nil {
			inputMetadata = try JSONParser.parse(array: dict["inputMetadata"] as! [Any])
		}
		if dict["outputMetadataProfileId"] != nil {
			outputMetadataProfileId = dict["outputMetadataProfileId"] as? Int
		}
		if dict["outputMetadata"] != nil {
			outputMetadata = try JSONParser.parse(array: dict["outputMetadata"] as! [Any])
		}
		if dict["inputUserId"] != nil {
			inputUserId = dict["inputUserId"] as? String
		}
		if dict["inputEntitledUsersEdit"] != nil {
			inputEntitledUsersEdit = dict["inputEntitledUsersEdit"] as? String
		}
		if dict["inputEntitledUsersPublish"] != nil {
			inputEntitledUsersPublish = dict["inputEntitledUsersPublish"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(inputMetadataProfileId != nil) {
			dict["inputMetadataProfileId"] = inputMetadataProfileId!
		}
		if(inputMetadata != nil) {
			dict["inputMetadata"] = inputMetadata!.map { value in value.toDictionary() }
		}
		if(outputMetadataProfileId != nil) {
			dict["outputMetadataProfileId"] = outputMetadataProfileId!
		}
		if(outputMetadata != nil) {
			dict["outputMetadata"] = outputMetadata!.map { value in value.toDictionary() }
		}
		if(inputUserId != nil) {
			dict["inputUserId"] = inputUserId!
		}
		if(inputEntitledUsersEdit != nil) {
			dict["inputEntitledUsersEdit"] = inputEntitledUsersEdit!
		}
		if(inputEntitledUsersPublish != nil) {
			dict["inputEntitledUsersPublish"] = inputEntitledUsersPublish!
		}
		return dict
	}
}

