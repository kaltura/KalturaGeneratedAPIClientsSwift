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

open class MoveCategoryEntriesJobData: JobData {

	public class MoveCategoryEntriesJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var srcCategoryId: BaseTokenizedObject {
			get {
				return self.append("srcCategoryId") 
			}
		}
		
		public var destCategoryId: BaseTokenizedObject {
			get {
				return self.append("destCategoryId") 
			}
		}
		
		public var lastMovedCategoryId: BaseTokenizedObject {
			get {
				return self.append("lastMovedCategoryId") 
			}
		}
		
		public var lastMovedCategoryPageIndex: BaseTokenizedObject {
			get {
				return self.append("lastMovedCategoryPageIndex") 
			}
		}
		
		public var lastMovedCategoryEntryPageIndex: BaseTokenizedObject {
			get {
				return self.append("lastMovedCategoryEntryPageIndex") 
			}
		}
		
		public var moveFromChildren: BaseTokenizedObject {
			get {
				return self.append("moveFromChildren") 
			}
		}
		
		public var destCategoryFullIds: BaseTokenizedObject {
			get {
				return self.append("destCategoryFullIds") 
			}
		}
	}

	/**  Source category id  */
	public var srcCategoryId: Int? = nil
	/**  Destination category id  */
	public var destCategoryId: Int? = nil
	/**  Saves the last category id that its entries moved completely      In case of
	  crash the batch will restart from that point  */
	public var lastMovedCategoryId: Int? = nil
	/**  Saves the last page index of the child categories filter pager      In case of
	  crash the batch will restart from that point  */
	public var lastMovedCategoryPageIndex: Int? = nil
	/**  Saves the last page index of the category entries filter pager      In case of
	  crash the batch will restart from that point  */
	public var lastMovedCategoryEntryPageIndex: Int? = nil
	/**  All entries from all child categories will be moved as well  */
	public var moveFromChildren: Bool? = nil
	/**  Destination categories fallback ids  */
	public var destCategoryFullIds: String? = nil


	public func setMultiRequestToken(srcCategoryId: String) {
		self.dict["srcCategoryId"] = srcCategoryId
	}
	
	public func setMultiRequestToken(destCategoryId: String) {
		self.dict["destCategoryId"] = destCategoryId
	}
	
	public func setMultiRequestToken(lastMovedCategoryId: String) {
		self.dict["lastMovedCategoryId"] = lastMovedCategoryId
	}
	
	public func setMultiRequestToken(lastMovedCategoryPageIndex: String) {
		self.dict["lastMovedCategoryPageIndex"] = lastMovedCategoryPageIndex
	}
	
	public func setMultiRequestToken(lastMovedCategoryEntryPageIndex: String) {
		self.dict["lastMovedCategoryEntryPageIndex"] = lastMovedCategoryEntryPageIndex
	}
	
	public func setMultiRequestToken(moveFromChildren: String) {
		self.dict["moveFromChildren"] = moveFromChildren
	}
	
	public func setMultiRequestToken(destCategoryFullIds: String) {
		self.dict["destCategoryFullIds"] = destCategoryFullIds
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["srcCategoryId"] != nil {
			srcCategoryId = dict["srcCategoryId"] as? Int
		}
		if dict["destCategoryId"] != nil {
			destCategoryId = dict["destCategoryId"] as? Int
		}
		if dict["lastMovedCategoryId"] != nil {
			lastMovedCategoryId = dict["lastMovedCategoryId"] as? Int
		}
		if dict["lastMovedCategoryPageIndex"] != nil {
			lastMovedCategoryPageIndex = dict["lastMovedCategoryPageIndex"] as? Int
		}
		if dict["lastMovedCategoryEntryPageIndex"] != nil {
			lastMovedCategoryEntryPageIndex = dict["lastMovedCategoryEntryPageIndex"] as? Int
		}
		if dict["moveFromChildren"] != nil {
			moveFromChildren = dict["moveFromChildren"] as? Bool
		}
		if dict["destCategoryFullIds"] != nil {
			destCategoryFullIds = dict["destCategoryFullIds"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(srcCategoryId != nil) {
			dict["srcCategoryId"] = srcCategoryId!
		}
		if(destCategoryId != nil) {
			dict["destCategoryId"] = destCategoryId!
		}
		if(lastMovedCategoryId != nil) {
			dict["lastMovedCategoryId"] = lastMovedCategoryId!
		}
		if(lastMovedCategoryPageIndex != nil) {
			dict["lastMovedCategoryPageIndex"] = lastMovedCategoryPageIndex!
		}
		if(lastMovedCategoryEntryPageIndex != nil) {
			dict["lastMovedCategoryEntryPageIndex"] = lastMovedCategoryEntryPageIndex!
		}
		if(moveFromChildren != nil) {
			dict["moveFromChildren"] = moveFromChildren!
		}
		if(destCategoryFullIds != nil) {
			dict["destCategoryFullIds"] = destCategoryFullIds!
		}
		return dict
	}
}

