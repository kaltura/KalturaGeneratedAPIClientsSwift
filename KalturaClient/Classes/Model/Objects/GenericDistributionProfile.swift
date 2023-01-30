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

open class GenericDistributionProfile: DistributionProfile {

	public class GenericDistributionProfileTokenizer: DistributionProfile.DistributionProfileTokenizer {
		
		public var genericProviderId: BaseTokenizedObject {
			get {
				return self.append("genericProviderId") 
			}
		}
		
		public func submitAction<T: GenericDistributionProfileAction.GenericDistributionProfileActionTokenizer>() -> T {
			return T(self.append("submitAction"))
		}
		
		public func updateAction<T: GenericDistributionProfileAction.GenericDistributionProfileActionTokenizer>() -> T {
			return T(self.append("updateAction"))
		}
		
		public func deleteAction<T: GenericDistributionProfileAction.GenericDistributionProfileActionTokenizer>() -> T {
			return T(self.append("deleteAction"))
		}
		
		public func fetchReportAction<T: GenericDistributionProfileAction.GenericDistributionProfileActionTokenizer>() -> T {
			return T(self.append("fetchReportAction"))
		}
		
		public var updateRequiredEntryFields: BaseTokenizedObject {
			get {
				return self.append("updateRequiredEntryFields") 
			}
		}
		
		public var updateRequiredMetadataXPaths: BaseTokenizedObject {
			get {
				return self.append("updateRequiredMetadataXPaths") 
			}
		}
	}

	public var genericProviderId: Int? = nil
	public var submitAction: GenericDistributionProfileAction? = nil
	public var updateAction: GenericDistributionProfileAction? = nil
	public var deleteAction: GenericDistributionProfileAction? = nil
	public var fetchReportAction: GenericDistributionProfileAction? = nil
	public var updateRequiredEntryFields: String? = nil
	public var updateRequiredMetadataXPaths: String? = nil


	public func setMultiRequestToken(genericProviderId: String) {
		self.dict["genericProviderId"] = genericProviderId
	}
	
	public func setMultiRequestToken(updateRequiredEntryFields: String) {
		self.dict["updateRequiredEntryFields"] = updateRequiredEntryFields
	}
	
	public func setMultiRequestToken(updateRequiredMetadataXPaths: String) {
		self.dict["updateRequiredMetadataXPaths"] = updateRequiredMetadataXPaths
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["genericProviderId"] != nil {
			genericProviderId = dict["genericProviderId"] as? Int
		}
		if dict["submitAction"] != nil {
		submitAction = try JSONParser.parse(object: dict["submitAction"] as! [String: Any])		}
		if dict["updateAction"] != nil {
		updateAction = try JSONParser.parse(object: dict["updateAction"] as! [String: Any])		}
		if dict["deleteAction"] != nil {
		deleteAction = try JSONParser.parse(object: dict["deleteAction"] as! [String: Any])		}
		if dict["fetchReportAction"] != nil {
		fetchReportAction = try JSONParser.parse(object: dict["fetchReportAction"] as! [String: Any])		}
		if dict["updateRequiredEntryFields"] != nil {
			updateRequiredEntryFields = dict["updateRequiredEntryFields"] as? String
		}
		if dict["updateRequiredMetadataXPaths"] != nil {
			updateRequiredMetadataXPaths = dict["updateRequiredMetadataXPaths"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(genericProviderId != nil) {
			dict["genericProviderId"] = genericProviderId!
		}
		if(submitAction != nil) {
			dict["submitAction"] = submitAction!.toDictionary()
		}
		if(updateAction != nil) {
			dict["updateAction"] = updateAction!.toDictionary()
		}
		if(deleteAction != nil) {
			dict["deleteAction"] = deleteAction!.toDictionary()
		}
		if(fetchReportAction != nil) {
			dict["fetchReportAction"] = fetchReportAction!.toDictionary()
		}
		if(updateRequiredEntryFields != nil) {
			dict["updateRequiredEntryFields"] = updateRequiredEntryFields!
		}
		if(updateRequiredMetadataXPaths != nil) {
			dict["updateRequiredMetadataXPaths"] = updateRequiredMetadataXPaths!
		}
		return dict
	}
}

