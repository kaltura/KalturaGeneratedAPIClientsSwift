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

open class ExecuteMetadataXsltObjectTask: ObjectTask {

	public class ExecuteMetadataXsltObjectTaskTokenizer: ObjectTask.ObjectTaskTokenizer {
		
		public var metadataProfileId: BaseTokenizedObject {
			get {
				return self.append("metadataProfileId") 
			}
		}
		
		public var metadataObjectType: BaseTokenizedObject {
			get {
				return self.append("metadataObjectType") 
			}
		}
		
		public var xslt: BaseTokenizedObject {
			get {
				return self.append("xslt") 
			}
		}
	}

	/**  Metadata profile id to lookup the metadata object  */
	public var metadataProfileId: Int? = nil
	/**  Metadata object type to lookup the metadata object  */
	public var metadataObjectType: MetadataObjectType? = nil
	/**  The XSLT to execute  */
	public var xslt: String? = nil


	public func setMultiRequestToken(metadataProfileId: String) {
		self.dict["metadataProfileId"] = metadataProfileId
	}
	
	public func setMultiRequestToken(metadataObjectType: String) {
		self.dict["metadataObjectType"] = metadataObjectType
	}
	
	public func setMultiRequestToken(xslt: String) {
		self.dict["xslt"] = xslt
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["metadataProfileId"] != nil {
			metadataProfileId = dict["metadataProfileId"] as? Int
		}
		if dict["metadataObjectType"] != nil {
			metadataObjectType = MetadataObjectType(rawValue: "\(dict["metadataObjectType"]!)")
		}
		if dict["xslt"] != nil {
			xslt = dict["xslt"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(metadataProfileId != nil) {
			dict["metadataProfileId"] = metadataProfileId!
		}
		if(metadataObjectType != nil) {
			dict["metadataObjectType"] = metadataObjectType!.rawValue
		}
		if(xslt != nil) {
			dict["xslt"] = xslt!
		}
		return dict
	}
}

