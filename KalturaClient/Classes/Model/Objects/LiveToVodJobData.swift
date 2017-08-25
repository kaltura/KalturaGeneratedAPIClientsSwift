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

open class LiveToVodJobData: JobData {

	public class LiveToVodJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var vodEntryId: BaseTokenizedObject {
			get {
				return self.append("vodEntryId") 
			}
		}
		
		public var liveEntryId: BaseTokenizedObject {
			get {
				return self.append("liveEntryId") 
			}
		}
		
		public var totalVodDuration: BaseTokenizedObject {
			get {
				return self.append("totalVodDuration") 
			}
		}
		
		public var lastSegmentDuration: BaseTokenizedObject {
			get {
				return self.append("lastSegmentDuration") 
			}
		}
		
		public var amfArray: BaseTokenizedObject {
			get {
				return self.append("amfArray") 
			}
		}
		
		public var lastCuePointSyncTime: BaseTokenizedObject {
			get {
				return self.append("lastCuePointSyncTime") 
			}
		}
		
		public var lastSegmentDrift: BaseTokenizedObject {
			get {
				return self.append("lastSegmentDrift") 
			}
		}
	}

	/**  $vod Entry Id  */
	public var vodEntryId: String? = nil
	/**  live Entry Id  */
	public var liveEntryId: String? = nil
	/**  total VOD Duration  */
	public var totalVodDuration: Double? = nil
	/**  last Segment Duration  */
	public var lastSegmentDuration: Double? = nil
	/**  amf Array File Path  */
	public var amfArray: String? = nil
	/**  last live to vod sync time  */
	public var lastCuePointSyncTime: Int? = nil
	/**  last segment drift  */
	public var lastSegmentDrift: Int? = nil


	public func setMultiRequestToken(vodEntryId: String) {
		self.dict["vodEntryId"] = vodEntryId
	}
	
	public func setMultiRequestToken(liveEntryId: String) {
		self.dict["liveEntryId"] = liveEntryId
	}
	
	public func setMultiRequestToken(totalVodDuration: String) {
		self.dict["totalVodDuration"] = totalVodDuration
	}
	
	public func setMultiRequestToken(lastSegmentDuration: String) {
		self.dict["lastSegmentDuration"] = lastSegmentDuration
	}
	
	public func setMultiRequestToken(amfArray: String) {
		self.dict["amfArray"] = amfArray
	}
	
	public func setMultiRequestToken(lastCuePointSyncTime: String) {
		self.dict["lastCuePointSyncTime"] = lastCuePointSyncTime
	}
	
	public func setMultiRequestToken(lastSegmentDrift: String) {
		self.dict["lastSegmentDrift"] = lastSegmentDrift
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["vodEntryId"] != nil {
			vodEntryId = dict["vodEntryId"] as? String
		}
		if dict["liveEntryId"] != nil {
			liveEntryId = dict["liveEntryId"] as? String
		}
		if dict["totalVodDuration"] != nil {
			totalVodDuration = dict["totalVodDuration"] as? Double
		}
		if dict["lastSegmentDuration"] != nil {
			lastSegmentDuration = dict["lastSegmentDuration"] as? Double
		}
		if dict["amfArray"] != nil {
			amfArray = dict["amfArray"] as? String
		}
		if dict["lastCuePointSyncTime"] != nil {
			lastCuePointSyncTime = dict["lastCuePointSyncTime"] as? Int
		}
		if dict["lastSegmentDrift"] != nil {
			lastSegmentDrift = dict["lastSegmentDrift"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(vodEntryId != nil) {
			dict["vodEntryId"] = vodEntryId!
		}
		if(liveEntryId != nil) {
			dict["liveEntryId"] = liveEntryId!
		}
		if(totalVodDuration != nil) {
			dict["totalVodDuration"] = totalVodDuration!
		}
		if(lastSegmentDuration != nil) {
			dict["lastSegmentDuration"] = lastSegmentDuration!
		}
		if(amfArray != nil) {
			dict["amfArray"] = amfArray!
		}
		if(lastCuePointSyncTime != nil) {
			dict["lastCuePointSyncTime"] = lastCuePointSyncTime!
		}
		if(lastSegmentDrift != nil) {
			dict["lastSegmentDrift"] = lastSegmentDrift!
		}
		return dict
	}
}

