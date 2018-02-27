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

open class PartnerStatistics: ObjectBase {

	public class PartnerStatisticsTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var packageBandwidthAndStorage: BaseTokenizedObject {
			get {
				return self.append("packageBandwidthAndStorage") 
			}
		}
		
		public var hosting: BaseTokenizedObject {
			get {
				return self.append("hosting") 
			}
		}
		
		public var bandwidth: BaseTokenizedObject {
			get {
				return self.append("bandwidth") 
			}
		}
		
		public var usage: BaseTokenizedObject {
			get {
				return self.append("usage") 
			}
		}
		
		public var usagePercent: BaseTokenizedObject {
			get {
				return self.append("usagePercent") 
			}
		}
		
		public var reachedLimitDate: BaseTokenizedObject {
			get {
				return self.append("reachedLimitDate") 
			}
		}
	}

	/**  Package total allowed bandwidth and storage  */
	public var packageBandwidthAndStorage: Int? = nil
	/**  Partner total hosting in GB on the disk  */
	public var hosting: Double? = nil
	/**  Partner total bandwidth in GB  */
	public var bandwidth: Double? = nil
	/**  total usage in GB - including bandwidth and storage  */
	public var usage: Int? = nil
	/**  Percent of usage out of partner's package. if usage is 5GB and package is 10GB,
	  this value will be 50  */
	public var usagePercent: Double? = nil
	/**  date when partner reached the limit of his package (timestamp)  */
	public var reachedLimitDate: Int? = nil


	public func setMultiRequestToken(packageBandwidthAndStorage: String) {
		self.dict["packageBandwidthAndStorage"] = packageBandwidthAndStorage
	}
	
	public func setMultiRequestToken(hosting: String) {
		self.dict["hosting"] = hosting
	}
	
	public func setMultiRequestToken(bandwidth: String) {
		self.dict["bandwidth"] = bandwidth
	}
	
	public func setMultiRequestToken(usage: String) {
		self.dict["usage"] = usage
	}
	
	public func setMultiRequestToken(usagePercent: String) {
		self.dict["usagePercent"] = usagePercent
	}
	
	public func setMultiRequestToken(reachedLimitDate: String) {
		self.dict["reachedLimitDate"] = reachedLimitDate
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["packageBandwidthAndStorage"] != nil {
			packageBandwidthAndStorage = dict["packageBandwidthAndStorage"] as? Int
		}
		if dict["hosting"] != nil {
			hosting = dict["hosting"] as? Double
		}
		if dict["bandwidth"] != nil {
			bandwidth = dict["bandwidth"] as? Double
		}
		if dict["usage"] != nil {
			usage = dict["usage"] as? Int
		}
		if dict["usagePercent"] != nil {
			usagePercent = dict["usagePercent"] as? Double
		}
		if dict["reachedLimitDate"] != nil {
			reachedLimitDate = dict["reachedLimitDate"] as? Int
		}

	}

}

