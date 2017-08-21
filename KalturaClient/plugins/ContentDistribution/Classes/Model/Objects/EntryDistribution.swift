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

open class EntryDistribution: ObjectBase {

	/**  Auto generated unique id  */
	public var id: Int? = nil
	/**  Entry distribution creation date as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Entry distribution last update date as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	/**  Entry distribution submission date as Unix timestamp (In seconds)  */
	public var submittedAt: Int? = nil
	public var entryId: String? = nil
	public var partnerId: Int? = nil
	public var distributionProfileId: Int? = nil
	public var status: EntryDistributionStatus? = nil
	public var sunStatus: EntryDistributionSunStatus? = nil
	public var dirtyStatus: EntryDistributionFlag? = nil
	/**  Comma separated thumbnail asset ids  */
	public var thumbAssetIds: String? = nil
	/**  Comma separated flavor asset ids  */
	public var flavorAssetIds: String? = nil
	/**  Comma separated asset ids  */
	public var assetIds: String? = nil
	/**  Entry distribution publish time as Unix timestamp (In seconds)  */
	public var sunrise: Int? = nil
	/**  Entry distribution un-publish time as Unix timestamp (In seconds)  */
	public var sunset: Int? = nil
	/**  The id as returned from the distributed destination  */
	public var remoteId: String? = nil
	/**  The plays as retrieved from the remote destination reports  */
	public var plays: Int? = nil
	/**  The views as retrieved from the remote destination reports  */
	public var views: Int? = nil
	public var validationErrors: Array<DistributionValidationError>? = nil
	public var errorType: BatchJobErrorTypes? = nil
	public var errorNumber: Int? = nil
	public var errorDescription: String? = nil
	public var hasSubmitResultsLog: Bool? = nil
	public var hasSubmitSentDataLog: Bool? = nil
	public var hasUpdateResultsLog: Bool? = nil
	public var hasUpdateSentDataLog: Bool? = nil
	public var hasDeleteResultsLog: Bool? = nil
	public var hasDeleteSentDataLog: Bool? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["submittedAt"] != nil {
			submittedAt = dict["submittedAt"] as? Int
		}
		if dict["entryId"] != nil {
			entryId = dict["entryId"] as? String
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["distributionProfileId"] != nil {
			distributionProfileId = dict["distributionProfileId"] as? Int
		}
		if dict["status"] != nil {
			status = EntryDistributionStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["sunStatus"] != nil {
			sunStatus = EntryDistributionSunStatus(rawValue: (dict["sunStatus"] as? Int)!)
		}
		if dict["dirtyStatus"] != nil {
			dirtyStatus = EntryDistributionFlag(rawValue: (dict["dirtyStatus"] as? Int)!)
		}
		if dict["thumbAssetIds"] != nil {
			thumbAssetIds = dict["thumbAssetIds"] as? String
		}
		if dict["flavorAssetIds"] != nil {
			flavorAssetIds = dict["flavorAssetIds"] as? String
		}
		if dict["assetIds"] != nil {
			assetIds = dict["assetIds"] as? String
		}
		if dict["sunrise"] != nil {
			sunrise = dict["sunrise"] as? Int
		}
		if dict["sunset"] != nil {
			sunset = dict["sunset"] as? Int
		}
		if dict["remoteId"] != nil {
			remoteId = dict["remoteId"] as? String
		}
		if dict["plays"] != nil {
			plays = dict["plays"] as? Int
		}
		if dict["views"] != nil {
			views = dict["views"] as? Int
		}
		if dict["validationErrors"] != nil {
			validationErrors = try JSONParser.parse(array: dict["validationErrors"] as! [Any])
		}
		if dict["errorType"] != nil {
			errorType = BatchJobErrorTypes(rawValue: (dict["errorType"] as? Int)!)
		}
		if dict["errorNumber"] != nil {
			errorNumber = dict["errorNumber"] as? Int
		}
		if dict["errorDescription"] != nil {
			errorDescription = dict["errorDescription"] as? String
		}
		if dict["hasSubmitResultsLog"] != nil {
			hasSubmitResultsLog = dict["hasSubmitResultsLog"] as? Bool
		}
		if dict["hasSubmitSentDataLog"] != nil {
			hasSubmitSentDataLog = dict["hasSubmitSentDataLog"] as? Bool
		}
		if dict["hasUpdateResultsLog"] != nil {
			hasUpdateResultsLog = dict["hasUpdateResultsLog"] as? Bool
		}
		if dict["hasUpdateSentDataLog"] != nil {
			hasUpdateSentDataLog = dict["hasUpdateSentDataLog"] as? Bool
		}
		if dict["hasDeleteResultsLog"] != nil {
			hasDeleteResultsLog = dict["hasDeleteResultsLog"] as? Bool
		}
		if dict["hasDeleteSentDataLog"] != nil {
			hasDeleteSentDataLog = dict["hasDeleteSentDataLog"] as? Bool
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(entryId != nil) {
			dict["entryId"] = entryId!
		}
		if(distributionProfileId != nil) {
			dict["distributionProfileId"] = distributionProfileId!
		}
		if(thumbAssetIds != nil) {
			dict["thumbAssetIds"] = thumbAssetIds!
		}
		if(flavorAssetIds != nil) {
			dict["flavorAssetIds"] = flavorAssetIds!
		}
		if(assetIds != nil) {
			dict["assetIds"] = assetIds!
		}
		if(sunrise != nil) {
			dict["sunrise"] = sunrise!
		}
		if(sunset != nil) {
			dict["sunset"] = sunset!
		}
		if(validationErrors != nil) {
			dict["validationErrors"] = validationErrors!.map { value in value.toDictionary() }
		}
		return dict
	}
}

