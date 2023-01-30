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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class PartnerUsage: ObjectBase {

	public class PartnerUsageTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var hostingGB: BaseTokenizedObject {
			get {
				return self.append("hostingGB") 
			}
		}
		
		public var Percent: BaseTokenizedObject {
			get {
				return self.append("Percent") 
			}
		}
		
		public var packageBW: BaseTokenizedObject {
			get {
				return self.append("packageBW") 
			}
		}
		
		public var usageGB: BaseTokenizedObject {
			get {
				return self.append("usageGB") 
			}
		}
		
		public var reachedLimitDate: BaseTokenizedObject {
			get {
				return self.append("reachedLimitDate") 
			}
		}
		
		public var usageGraph: BaseTokenizedObject {
			get {
				return self.append("usageGraph") 
			}
		}
	}

	/**  Partner total hosting in GB on the disk  */
	public var hostingGB: Double? = nil
	/**  percent of usage out of partner's package. if usageGB is 5 and package is 10GB,
	  this value will be 50  */
	public var Percent: Double? = nil
	/**  package total BW - actually this is usage, which represents BW+storage  */
	public var packageBW: Int? = nil
	/**  total usage in GB - including bandwidth and storage  */
	public var usageGB: Double? = nil
	/**  date when partner reached the limit of his package (timestamp)  */
	public var reachedLimitDate: Int? = nil
	/**  a semi-colon separated list of comma-separated key-values to represent a usage
	  graph.   keys could be 1-12 for a year view (1,1.2;2,1.1;3,0.9;...;12,1.4;)  
	  keys could be 1-[28,29,30,31] depending on the requested month, for a daily view
	  in a given month (1,0.4;2,0.2;...;31,0.1;)  */
	public var usageGraph: String? = nil


	public func setMultiRequestToken(hostingGB: String) {
		self.dict["hostingGB"] = hostingGB
	}
	
	public func setMultiRequestToken(Percent: String) {
		self.dict["Percent"] = Percent
	}
	
	public func setMultiRequestToken(packageBW: String) {
		self.dict["packageBW"] = packageBW
	}
	
	public func setMultiRequestToken(usageGB: String) {
		self.dict["usageGB"] = usageGB
	}
	
	public func setMultiRequestToken(reachedLimitDate: String) {
		self.dict["reachedLimitDate"] = reachedLimitDate
	}
	
	public func setMultiRequestToken(usageGraph: String) {
		self.dict["usageGraph"] = usageGraph
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["hostingGB"] != nil {
			hostingGB = dict["hostingGB"] as? Double
		}
		if dict["Percent"] != nil {
			Percent = dict["Percent"] as? Double
		}
		if dict["packageBW"] != nil {
			packageBW = dict["packageBW"] as? Int
		}
		if dict["usageGB"] != nil {
			usageGB = dict["usageGB"] as? Double
		}
		if dict["reachedLimitDate"] != nil {
			reachedLimitDate = dict["reachedLimitDate"] as? Int
		}
		if dict["usageGraph"] != nil {
			usageGraph = dict["usageGraph"] as? String
		}

	}

}

