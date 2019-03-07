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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class AlignmentVendorTaskData: VendorTaskData {

	public class AlignmentVendorTaskDataTokenizer: VendorTaskData.VendorTaskDataTokenizer {
		
		public var textTranscriptAssetId: BaseTokenizedObject {
			get {
				return self.append("textTranscriptAssetId") 
			}
		}
		
		public var jsonTranscriptAssetId: BaseTokenizedObject {
			get {
				return self.append("jsonTranscriptAssetId") 
			}
		}
		
		public var captionAssetId: BaseTokenizedObject {
			get {
				return self.append("captionAssetId") 
			}
		}
	}

	/**  The id of the text transcript object the vendor should use while runing the
	  alignment task  */
	public var textTranscriptAssetId: String? = nil
	/**  Optional - The id of the json transcript object the vendor should update once
	  alignment task processing is done  */
	public var jsonTranscriptAssetId: String? = nil
	/**  Optional - The id of the caption asset object the vendor should update once
	  alignment task processing is done  */
	public var captionAssetId: String? = nil


	public func setMultiRequestToken(textTranscriptAssetId: String) {
		self.dict["textTranscriptAssetId"] = textTranscriptAssetId
	}
	
	public func setMultiRequestToken(jsonTranscriptAssetId: String) {
		self.dict["jsonTranscriptAssetId"] = jsonTranscriptAssetId
	}
	
	public func setMultiRequestToken(captionAssetId: String) {
		self.dict["captionAssetId"] = captionAssetId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["textTranscriptAssetId"] != nil {
			textTranscriptAssetId = dict["textTranscriptAssetId"] as? String
		}
		if dict["jsonTranscriptAssetId"] != nil {
			jsonTranscriptAssetId = dict["jsonTranscriptAssetId"] as? String
		}
		if dict["captionAssetId"] != nil {
			captionAssetId = dict["captionAssetId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(textTranscriptAssetId != nil) {
			dict["textTranscriptAssetId"] = textTranscriptAssetId!
		}
		if(jsonTranscriptAssetId != nil) {
			dict["jsonTranscriptAssetId"] = jsonTranscriptAssetId!
		}
		if(captionAssetId != nil) {
			dict["captionAssetId"] = captionAssetId!
		}
		return dict
	}
}

