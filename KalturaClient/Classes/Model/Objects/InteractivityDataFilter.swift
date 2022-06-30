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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class InteractivityDataFilter: ObjectBase {

	public class InteractivityDataFilterTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public func rootFilter<T: InteractivityRootFilter.InteractivityRootFilterTokenizer>() -> T {
			return T(self.append("rootFilter"))
		}
		
		public func nodeFilter<T: InteractivityNodeFilter.InteractivityNodeFilterTokenizer>() -> T {
			return T(self.append("nodeFilter"))
		}
		
		public func interactionFilter<T: InteractivityInteractionFilter.InteractivityInteractionFilterTokenizer>() -> T {
			return T(self.append("interactionFilter"))
		}
	}

	public var rootFilter: InteractivityRootFilter? = nil
	public var nodeFilter: InteractivityNodeFilter? = nil
	public var interactionFilter: InteractivityInteractionFilter? = nil


	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["rootFilter"] != nil {
		rootFilter = try JSONParser.parse(object: dict["rootFilter"] as! [String: Any])		}
		if dict["nodeFilter"] != nil {
		nodeFilter = try JSONParser.parse(object: dict["nodeFilter"] as! [String: Any])		}
		if dict["interactionFilter"] != nil {
		interactionFilter = try JSONParser.parse(object: dict["interactionFilter"] as! [String: Any])		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(rootFilter != nil) {
			dict["rootFilter"] = rootFilter!.toDictionary()
		}
		if(nodeFilter != nil) {
			dict["nodeFilter"] = nodeFilter!.toDictionary()
		}
		if(interactionFilter != nil) {
			dict["interactionFilter"] = interactionFilter!.toDictionary()
		}
		return dict
	}
}

