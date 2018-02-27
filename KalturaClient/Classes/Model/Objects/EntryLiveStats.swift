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
// Copyright (C) 2006-2018  Kaltura Inc.
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

open class EntryLiveStats: LiveStats {

	public class EntryLiveStatsTokenizer: LiveStats.LiveStatsTokenizer {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var peakAudience: BaseTokenizedObject {
			get {
				return self.append("peakAudience") 
			}
		}
		
		public var peakDvrAudience: BaseTokenizedObject {
			get {
				return self.append("peakDvrAudience") 
			}
		}
	}

	public var entryId: String? = nil
	public var peakAudience: Int? = nil
	public var peakDvrAudience: Int? = nil


	public func setMultiRequestToken(entryId: String) {
		self.dict["entryId"] = entryId
	}
	
	public func setMultiRequestToken(peakAudience: String) {
		self.dict["peakAudience"] = peakAudience
	}
	
	public func setMultiRequestToken(peakDvrAudience: String) {
		self.dict["peakDvrAudience"] = peakDvrAudience
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["peakAudience"] != nil {
			peakAudience = dict["peakAudience"] as? Int
		}
		if dict["peakDvrAudience"] != nil {
			peakDvrAudience = dict["peakDvrAudience"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(peakAudience != nil) {
			dict["peakAudience"] = peakAudience!
		}
		if(peakDvrAudience != nil) {
			dict["peakDvrAudience"] = peakDvrAudience!
		}
		return dict
	}
}

