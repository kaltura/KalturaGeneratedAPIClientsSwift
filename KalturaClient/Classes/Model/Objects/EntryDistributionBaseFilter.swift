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

open class EntryDistributionBaseFilter: RelatedFilter {

	public class EntryDistributionBaseFilterTokenizer: RelatedFilter.RelatedFilterTokenizer {
		
		public var idEqual: BaseTokenizedObject {
			get {
				return self.append("idEqual") 
			}
		}
		
		public var idIn: BaseTokenizedObject {
			get {
				return self.append("idIn") 
			}
		}
		
		public var createdAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtGreaterThanOrEqual") 
			}
		}
		
		public var createdAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("createdAtLessThanOrEqual") 
			}
		}
		
		public var updatedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtGreaterThanOrEqual") 
			}
		}
		
		public var updatedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("updatedAtLessThanOrEqual") 
			}
		}
		
		public var submittedAtGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("submittedAtGreaterThanOrEqual") 
			}
		}
		
		public var submittedAtLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("submittedAtLessThanOrEqual") 
			}
		}
		
		public var entryIdEqual: BaseTokenizedObject {
			get {
				return self.append("entryIdEqual") 
			}
		}
		
		public var entryIdIn: BaseTokenizedObject {
			get {
				return self.append("entryIdIn") 
			}
		}
		
		public var distributionProfileIdEqual: BaseTokenizedObject {
			get {
				return self.append("distributionProfileIdEqual") 
			}
		}
		
		public var distributionProfileIdIn: BaseTokenizedObject {
			get {
				return self.append("distributionProfileIdIn") 
			}
		}
		
		public var statusEqual: BaseTokenizedObject {
			get {
				return self.append("statusEqual") 
			}
		}
		
		public var statusIn: BaseTokenizedObject {
			get {
				return self.append("statusIn") 
			}
		}
		
		public var dirtyStatusEqual: BaseTokenizedObject {
			get {
				return self.append("dirtyStatusEqual") 
			}
		}
		
		public var dirtyStatusIn: BaseTokenizedObject {
			get {
				return self.append("dirtyStatusIn") 
			}
		}
		
		public var sunriseGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sunriseGreaterThanOrEqual") 
			}
		}
		
		public var sunriseLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sunriseLessThanOrEqual") 
			}
		}
		
		public var sunsetGreaterThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sunsetGreaterThanOrEqual") 
			}
		}
		
		public var sunsetLessThanOrEqual: BaseTokenizedObject {
			get {
				return self.append("sunsetLessThanOrEqual") 
			}
		}
	}

	public var idEqual: Int? = nil
	public var idIn: String? = nil
	public var createdAtGreaterThanOrEqual: Int? = nil
	public var createdAtLessThanOrEqual: Int? = nil
	public var updatedAtGreaterThanOrEqual: Int? = nil
	public var updatedAtLessThanOrEqual: Int? = nil
	public var submittedAtGreaterThanOrEqual: Int? = nil
	public var submittedAtLessThanOrEqual: Int? = nil
	public var entryIdEqual: String? = nil
	public var entryIdIn: String? = nil
	public var distributionProfileIdEqual: Int? = nil
	public var distributionProfileIdIn: String? = nil
	public var statusEqual: EntryDistributionStatus? = nil
	public var statusIn: String? = nil
	public var dirtyStatusEqual: EntryDistributionFlag? = nil
	public var dirtyStatusIn: String? = nil
	public var sunriseGreaterThanOrEqual: Int? = nil
	public var sunriseLessThanOrEqual: Int? = nil
	public var sunsetGreaterThanOrEqual: Int? = nil
	public var sunsetLessThanOrEqual: Int? = nil


	public func setMultiRequestToken(idEqual: String) {
		self.dict["idEqual"] = idEqual
	}
	
	public func setMultiRequestToken(idIn: String) {
		self.dict["idIn"] = idIn
	}
	
	public func setMultiRequestToken(createdAtGreaterThanOrEqual: String) {
		self.dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(createdAtLessThanOrEqual: String) {
		self.dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtGreaterThanOrEqual: String) {
		self.dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(updatedAtLessThanOrEqual: String) {
		self.dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(submittedAtGreaterThanOrEqual: String) {
		self.dict["submittedAtGreaterThanOrEqual"] = submittedAtGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(submittedAtLessThanOrEqual: String) {
		self.dict["submittedAtLessThanOrEqual"] = submittedAtLessThanOrEqual
	}
	
	public func setMultiRequestToken(entryIdEqual: String) {
		self.dict["entryIdEqual"] = entryIdEqual
	}
	
	public func setMultiRequestToken(entryIdIn: String) {
		self.dict["entryIdIn"] = entryIdIn
	}
	
	public func setMultiRequestToken(distributionProfileIdEqual: String) {
		self.dict["distributionProfileIdEqual"] = distributionProfileIdEqual
	}
	
	public func setMultiRequestToken(distributionProfileIdIn: String) {
		self.dict["distributionProfileIdIn"] = distributionProfileIdIn
	}
	
	public func setMultiRequestToken(statusEqual: String) {
		self.dict["statusEqual"] = statusEqual
	}
	
	public func setMultiRequestToken(statusIn: String) {
		self.dict["statusIn"] = statusIn
	}
	
	public func setMultiRequestToken(dirtyStatusEqual: String) {
		self.dict["dirtyStatusEqual"] = dirtyStatusEqual
	}
	
	public func setMultiRequestToken(dirtyStatusIn: String) {
		self.dict["dirtyStatusIn"] = dirtyStatusIn
	}
	
	public func setMultiRequestToken(sunriseGreaterThanOrEqual: String) {
		self.dict["sunriseGreaterThanOrEqual"] = sunriseGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(sunriseLessThanOrEqual: String) {
		self.dict["sunriseLessThanOrEqual"] = sunriseLessThanOrEqual
	}
	
	public func setMultiRequestToken(sunsetGreaterThanOrEqual: String) {
		self.dict["sunsetGreaterThanOrEqual"] = sunsetGreaterThanOrEqual
	}
	
	public func setMultiRequestToken(sunsetLessThanOrEqual: String) {
		self.dict["sunsetLessThanOrEqual"] = sunsetLessThanOrEqual
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["idEqual"] != nil {
			idEqual = dict["idEqual"] as? Int
		}
		if dict["idIn"] != nil {
			idIn = dict["idIn"] as? String
		}
		if dict["createdAtGreaterThanOrEqual"] != nil {
			createdAtGreaterThanOrEqual = dict["createdAtGreaterThanOrEqual"] as? Int
		}
		if dict["createdAtLessThanOrEqual"] != nil {
			createdAtLessThanOrEqual = dict["createdAtLessThanOrEqual"] as? Int
		}
		if dict["updatedAtGreaterThanOrEqual"] != nil {
			updatedAtGreaterThanOrEqual = dict["updatedAtGreaterThanOrEqual"] as? Int
		}
		if dict["updatedAtLessThanOrEqual"] != nil {
			updatedAtLessThanOrEqual = dict["updatedAtLessThanOrEqual"] as? Int
		}
		if dict["submittedAtGreaterThanOrEqual"] != nil {
			submittedAtGreaterThanOrEqual = dict["submittedAtGreaterThanOrEqual"] as? Int
		}
		if dict["submittedAtLessThanOrEqual"] != nil {
			submittedAtLessThanOrEqual = dict["submittedAtLessThanOrEqual"] as? Int
		}
		if dict["entryIdEqual"] != nil {
			entryIdEqual = dict["entryIdEqual"] as? String
		}
		if dict["entryIdIn"] != nil {
			entryIdIn = dict["entryIdIn"] as? String
		}
		if dict["distributionProfileIdEqual"] != nil {
			distributionProfileIdEqual = dict["distributionProfileIdEqual"] as? Int
		}
		if dict["distributionProfileIdIn"] != nil {
			distributionProfileIdIn = dict["distributionProfileIdIn"] as? String
		}
		if dict["statusEqual"] != nil {
			statusEqual = EntryDistributionStatus(rawValue: (dict["statusEqual"] as? Int)!)
		}
		if dict["statusIn"] != nil {
			statusIn = dict["statusIn"] as? String
		}
		if dict["dirtyStatusEqual"] != nil {
			dirtyStatusEqual = EntryDistributionFlag(rawValue: (dict["dirtyStatusEqual"] as? Int)!)
		}
		if dict["dirtyStatusIn"] != nil {
			dirtyStatusIn = dict["dirtyStatusIn"] as? String
		}
		if dict["sunriseGreaterThanOrEqual"] != nil {
			sunriseGreaterThanOrEqual = dict["sunriseGreaterThanOrEqual"] as? Int
		}
		if dict["sunriseLessThanOrEqual"] != nil {
			sunriseLessThanOrEqual = dict["sunriseLessThanOrEqual"] as? Int
		}
		if dict["sunsetGreaterThanOrEqual"] != nil {
			sunsetGreaterThanOrEqual = dict["sunsetGreaterThanOrEqual"] as? Int
		}
		if dict["sunsetLessThanOrEqual"] != nil {
			sunsetLessThanOrEqual = dict["sunsetLessThanOrEqual"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(idEqual != nil) {
			dict["idEqual"] = idEqual!
		}
		if(idIn != nil) {
			dict["idIn"] = idIn!
		}
		if(createdAtGreaterThanOrEqual != nil) {
			dict["createdAtGreaterThanOrEqual"] = createdAtGreaterThanOrEqual!
		}
		if(createdAtLessThanOrEqual != nil) {
			dict["createdAtLessThanOrEqual"] = createdAtLessThanOrEqual!
		}
		if(updatedAtGreaterThanOrEqual != nil) {
			dict["updatedAtGreaterThanOrEqual"] = updatedAtGreaterThanOrEqual!
		}
		if(updatedAtLessThanOrEqual != nil) {
			dict["updatedAtLessThanOrEqual"] = updatedAtLessThanOrEqual!
		}
		if(submittedAtGreaterThanOrEqual != nil) {
			dict["submittedAtGreaterThanOrEqual"] = submittedAtGreaterThanOrEqual!
		}
		if(submittedAtLessThanOrEqual != nil) {
			dict["submittedAtLessThanOrEqual"] = submittedAtLessThanOrEqual!
		}
		if(entryIdEqual != nil) {
			dict["entryIdEqual"] = entryIdEqual!
		}
		if(entryIdIn != nil) {
			dict["entryIdIn"] = entryIdIn!
		}
		if(distributionProfileIdEqual != nil) {
			dict["distributionProfileIdEqual"] = distributionProfileIdEqual!
		}
		if(distributionProfileIdIn != nil) {
			dict["distributionProfileIdIn"] = distributionProfileIdIn!
		}
		if(statusEqual != nil) {
			dict["statusEqual"] = statusEqual!.rawValue
		}
		if(statusIn != nil) {
			dict["statusIn"] = statusIn!
		}
		if(dirtyStatusEqual != nil) {
			dict["dirtyStatusEqual"] = dirtyStatusEqual!.rawValue
		}
		if(dirtyStatusIn != nil) {
			dict["dirtyStatusIn"] = dirtyStatusIn!
		}
		if(sunriseGreaterThanOrEqual != nil) {
			dict["sunriseGreaterThanOrEqual"] = sunriseGreaterThanOrEqual!
		}
		if(sunriseLessThanOrEqual != nil) {
			dict["sunriseLessThanOrEqual"] = sunriseLessThanOrEqual!
		}
		if(sunsetGreaterThanOrEqual != nil) {
			dict["sunsetGreaterThanOrEqual"] = sunsetGreaterThanOrEqual!
		}
		if(sunsetLessThanOrEqual != nil) {
			dict["sunsetLessThanOrEqual"] = sunsetLessThanOrEqual!
		}
		return dict
	}
}

