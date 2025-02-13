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

open class ClippingTaskEntryServerNode: TaskEntryServerNode {

	public class ClippingTaskEntryServerNodeTokenizer: TaskEntryServerNode.TaskEntryServerNodeTokenizer {
		
		public func clipAttributes<T: ClipAttributes.ClipAttributesTokenizer>() -> T {
			return T(self.append("clipAttributes"))
		}
		
		public var clippedEntryId: BaseTokenizedObject {
			get {
				return self.append("clippedEntryId") 
			}
		}
		
		public var liveEntryId: BaseTokenizedObject {
			get {
				return self.append("liveEntryId") 
			}
		}
	}

	public var clipAttributes: ClipAttributes? = nil
	public var clippedEntryId: String? = nil
	public var liveEntryId: String? = nil


	public func setMultiRequestToken(clippedEntryId: String) {
		self.dict["clippedEntryId"] = clippedEntryId
	}
	
	public func setMultiRequestToken(liveEntryId: String) {
		self.dict["liveEntryId"] = liveEntryId
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["clipAttributes"] != nil {
		clipAttributes = try JSONParser.parse(object: dict["clipAttributes"] as! [String: Any])		}
		if dict["clippedEntryId"] != nil {
			clippedEntryId = dict["clippedEntryId"] as? String
		}
		if dict["liveEntryId"] != nil {
			liveEntryId = dict["liveEntryId"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(clipAttributes != nil) {
			dict["clipAttributes"] = clipAttributes!.toDictionary()
		}
		if(clippedEntryId != nil) {
			dict["clippedEntryId"] = clippedEntryId!
		}
		if(liveEntryId != nil) {
			dict["liveEntryId"] = liveEntryId!
		}
		return dict
	}
}

