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

open class LiveStreamDetails: ObjectBase {

	public class LiveStreamDetailsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var primaryStreamStatus: BaseTokenizedObject {
			get {
				return self.append("primaryStreamStatus") 
			}
		}
		
		public var secondaryStreamStatus: BaseTokenizedObject {
			get {
				return self.append("secondaryStreamStatus") 
			}
		}
		
		public var viewMode: BaseTokenizedObject {
			get {
				return self.append("viewMode") 
			}
		}
		
		public var wasBroadcast: BaseTokenizedObject {
			get {
				return self.append("wasBroadcast") 
			}
		}
		
		public var broadcastStatus: BaseTokenizedObject {
			get {
				return self.append("broadcastStatus") 
			}
		}
	}

	/**  The status of the primary stream  */
	public var primaryStreamStatus: EntryServerNodeStatus? = nil
	/**  The status of the secondary stream  */
	public var secondaryStreamStatus: EntryServerNodeStatus? = nil
	public var viewMode: ViewMode? = nil
	public var wasBroadcast: Bool? = nil
	public var broadcastStatus: LiveStreamBroadcastStatus? = nil


	public func setMultiRequestToken(primaryStreamStatus: String) {
		self.dict["primaryStreamStatus"] = primaryStreamStatus
	}
	
	public func setMultiRequestToken(secondaryStreamStatus: String) {
		self.dict["secondaryStreamStatus"] = secondaryStreamStatus
	}
	
	public func setMultiRequestToken(viewMode: String) {
		self.dict["viewMode"] = viewMode
	}
	
	public func setMultiRequestToken(wasBroadcast: String) {
		self.dict["wasBroadcast"] = wasBroadcast
	}
	
	public func setMultiRequestToken(broadcastStatus: String) {
		self.dict["broadcastStatus"] = broadcastStatus
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["primaryStreamStatus"] != nil {
			primaryStreamStatus = EntryServerNodeStatus(rawValue: (dict["primaryStreamStatus"] as? Int)!)
		}
		if dict["secondaryStreamStatus"] != nil {
			secondaryStreamStatus = EntryServerNodeStatus(rawValue: (dict["secondaryStreamStatus"] as? Int)!)
		}
		if dict["viewMode"] != nil {
			viewMode = ViewMode(rawValue: (dict["viewMode"] as? Int)!)
		}
		if dict["wasBroadcast"] != nil {
			wasBroadcast = dict["wasBroadcast"] as? Bool
		}
		if dict["broadcastStatus"] != nil {
			broadcastStatus = LiveStreamBroadcastStatus(rawValue: (dict["broadcastStatus"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(primaryStreamStatus != nil) {
			dict["primaryStreamStatus"] = primaryStreamStatus!.rawValue
		}
		if(secondaryStreamStatus != nil) {
			dict["secondaryStreamStatus"] = secondaryStreamStatus!.rawValue
		}
		if(viewMode != nil) {
			dict["viewMode"] = viewMode!.rawValue
		}
		if(wasBroadcast != nil) {
			dict["wasBroadcast"] = wasBroadcast!
		}
		if(broadcastStatus != nil) {
			dict["broadcastStatus"] = broadcastStatus!.rawValue
		}
		return dict
	}
}

