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

/**  Advanced configuration for entry replacement process  */
open class EntryReplacementOptions: ObjectBase {

	public class EntryReplacementOptionsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var keepManualThumbnails: BaseTokenizedObject {
			get {
				return self.append("keepManualThumbnails") 
			}
		}
		
		public var pluginOptionItems: ArrayTokenizedObject<PluginReplacementOptionsItem.PluginReplacementOptionsItemTokenizer> {
			get {
				return ArrayTokenizedObject<PluginReplacementOptionsItem.PluginReplacementOptionsItemTokenizer>(self.append("pluginOptionItems"))
			} 
		}
	}

	/**  If true manually created thumbnails will not be deleted on entry replacement  */
	public var keepManualThumbnails: Int? = nil
	/**  Array of plugin replacement options  */
	public var pluginOptionItems: Array<PluginReplacementOptionsItem>? = nil


	public func setMultiRequestToken(keepManualThumbnails: String) {
		self.dict["keepManualThumbnails"] = keepManualThumbnails
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["keepManualThumbnails"] != nil {
			keepManualThumbnails = dict["keepManualThumbnails"] as? Int
		}
		if dict["pluginOptionItems"] != nil {
			pluginOptionItems = try JSONParser.parse(array: dict["pluginOptionItems"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(keepManualThumbnails != nil) {
			dict["keepManualThumbnails"] = keepManualThumbnails!
		}
		if(pluginOptionItems != nil) {
			dict["pluginOptionItems"] = pluginOptionItems!.map { value in value.toDictionary() }
		}
		return dict
	}
}

