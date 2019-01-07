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

open class IndexJobData: JobData {

	public class IndexJobDataTokenizer: JobData.JobDataTokenizer {
		
		public func filter<T: Filter.FilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public var lastIndexId: BaseTokenizedObject {
			get {
				return self.append("lastIndexId") 
			}
		}
		
		public var lastIndexDepth: BaseTokenizedObject {
			get {
				return self.append("lastIndexDepth") 
			}
		}
		
		public var shouldUpdate: BaseTokenizedObject {
			get {
				return self.append("shouldUpdate") 
			}
		}
	}

	/**  The filter should return the list of objects that need to be reindexed.  */
	public var filter: Filter? = nil
	/**  Indicates the last id that reindexed, used when the batch crached, to re-run
	  from the last crash point.  */
	public var lastIndexId: Int? = nil
	/**  Indicates the last depth that reindexed, used when the batch crached, to re-run
	  from the last crash point.  */
	public var lastIndexDepth: Int? = nil
	/**  Indicates that the object columns and attributes values should be recalculated
	  before reindexed.  */
	public var shouldUpdate: Bool? = nil


	public func setMultiRequestToken(lastIndexId: String) {
		self.dict["lastIndexId"] = lastIndexId
	}
	
	public func setMultiRequestToken(lastIndexDepth: String) {
		self.dict["lastIndexDepth"] = lastIndexDepth
	}
	
	public func setMultiRequestToken(shouldUpdate: String) {
		self.dict["shouldUpdate"] = shouldUpdate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["filter"] != nil {
		filter = try JSONParser.parse(object: dict["filter"] as! [String: Any])		}
		if dict["lastIndexId"] != nil {
			lastIndexId = dict["lastIndexId"] as? Int
		}
		if dict["lastIndexDepth"] != nil {
			lastIndexDepth = dict["lastIndexDepth"] as? Int
		}
		if dict["shouldUpdate"] != nil {
			shouldUpdate = dict["shouldUpdate"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(filter != nil) {
			dict["filter"] = filter!.toDictionary()
		}
		if(lastIndexId != nil) {
			dict["lastIndexId"] = lastIndexId!
		}
		if(lastIndexDepth != nil) {
			dict["lastIndexDepth"] = lastIndexDepth!
		}
		if(shouldUpdate != nil) {
			dict["shouldUpdate"] = shouldUpdate!
		}
		return dict
	}
}

