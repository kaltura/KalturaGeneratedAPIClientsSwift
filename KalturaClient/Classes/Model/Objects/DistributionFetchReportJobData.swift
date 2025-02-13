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

open class DistributionFetchReportJobData: DistributionJobData {

	public class DistributionFetchReportJobDataTokenizer: DistributionJobData.DistributionJobDataTokenizer {
		
		public var plays: BaseTokenizedObject {
			get {
				return self.append("plays") 
			}
		}
		
		public var views: BaseTokenizedObject {
			get {
				return self.append("views") 
			}
		}
	}

	public var plays: Int? = nil
	public var views: Int? = nil


	public func setMultiRequestToken(plays: String) {
		self.dict["plays"] = plays
	}
	
	public func setMultiRequestToken(views: String) {
		self.dict["views"] = views
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["plays"] != nil {
			plays = dict["plays"] as? Int
		}
		if dict["views"] != nil {
			views = dict["views"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(plays != nil) {
			dict["plays"] = plays!
		}
		if(views != nil) {
			dict["views"] = views!
		}
		return dict
	}
}

