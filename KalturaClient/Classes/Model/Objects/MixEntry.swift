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
// Copyright (C) 2006-2017  Kaltura Inc.
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

open class MixEntry: PlayableEntry {

	public class MixEntryTokenizer: PlayableEntry.PlayableEntryTokenizer {
		
		public var hasRealThumbnail: BaseTokenizedObject {
			get {
				return self.append("hasRealThumbnail") 
			}
		}
		
		public var editorType: BaseTokenizedObject {
			get {
				return self.append("editorType") 
			}
		}
		
		public var dataContent: BaseTokenizedObject {
			get {
				return self.append("dataContent") 
			}
		}
	}

	/**  Indicates whether the user has submited a real thumbnail to the mix (Not the one
	  that was generated automaticaly)  */
	public var hasRealThumbnail: Bool? = nil
	/**  The editor type used to edit the metadata  */
	public var editorType: EditorType? = nil
	/**  The xml data of the mix  */
	public var dataContent: String? = nil


	public func setMultiRequestToken(hasRealThumbnail: String) {
		self.dict["hasRealThumbnail"] = hasRealThumbnail
	}
	
	public func setMultiRequestToken(editorType: String) {
		self.dict["editorType"] = editorType
	}
	
	public func setMultiRequestToken(dataContent: String) {
		self.dict["dataContent"] = dataContent
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["hasRealThumbnail"] != nil {
			hasRealThumbnail = dict["hasRealThumbnail"] as? Bool
		}
		if dict["editorType"] != nil {
			editorType = EditorType(rawValue: (dict["editorType"] as? Int)!)
		}
		if dict["dataContent"] != nil {
			dataContent = dict["dataContent"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(editorType != nil) {
			dict["editorType"] = editorType!.rawValue
		}
		if(dataContent != nil) {
			dict["dataContent"] = dataContent!
		}
		return dict
	}
}

