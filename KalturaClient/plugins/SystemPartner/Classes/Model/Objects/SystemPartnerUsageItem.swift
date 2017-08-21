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

open class SystemPartnerUsageItem: ObjectBase {

	/**  Partner ID  */
	public var partnerId: Int? = nil
	/**  Partner name  */
	public var partnerName: String? = nil
	/**  Partner status  */
	public var partnerStatus: PartnerStatus? = nil
	/**  Partner package  */
	public var partnerPackage: Int? = nil
	/**  Partner creation date (Unix timestamp)  */
	public var partnerCreatedAt: Int? = nil
	/**  Number of player loads in the specific date range  */
	public var views: Int? = nil
	/**  Number of plays in the specific date range  */
	public var plays: Int? = nil
	/**  Number of new entries created during specific date range  */
	public var entriesCount: Int? = nil
	/**  Total number of entries  */
	public var totalEntriesCount: Int? = nil
	/**  Number of new video entries created during specific date range  */
	public var videoEntriesCount: Int? = nil
	/**  Number of new image entries created during specific date range  */
	public var imageEntriesCount: Int? = nil
	/**  Number of new audio entries created during specific date range  */
	public var audioEntriesCount: Int? = nil
	/**  Number of new mix entries created during specific date range  */
	public var mixEntriesCount: Int? = nil
	/**  The total bandwidth usage during the given date range (in MB)  */
	public var bandwidth: Double? = nil
	/**  The total storage consumption (in MB)  */
	public var totalStorage: Double? = nil
	/**  The change in storage consumption (new uploads) during the given date range (in
	  MB)  */
	public var storage: Double? = nil
	/**  The peak amount of storage consumption during the given date range for the
	  specific publisher  */
	public var peakStorage: Double? = nil
	/**  The average amount of storage consumption during the given date range for the
	  specific publisher  */
	public var avgStorage: Double? = nil
	/**  The combined amount of bandwidth and storage consumed during the given date
	  range for the specific publisher  */
	public var combinedBandwidthStorage: Double? = nil
	/**  Amount of deleted storage in MB  */
	public var deletedStorage: Double? = nil
	/**  Amount of transcoding usage in MB  */
	public var transcodingUsage: Double? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["partnerName"] != nil {
			partnerName = dict["partnerName"] as? String
		}
		if dict["partnerStatus"] != nil {
			partnerStatus = PartnerStatus(rawValue: (dict["partnerStatus"] as? Int)!)
		}
		if dict["partnerPackage"] != nil {
			partnerPackage = dict["partnerPackage"] as? Int
		}
		if dict["partnerCreatedAt"] != nil {
			partnerCreatedAt = dict["partnerCreatedAt"] as? Int
		}
		if dict["views"] != nil {
			views = dict["views"] as? Int
		}
		if dict["plays"] != nil {
			plays = dict["plays"] as? Int
		}
		if dict["entriesCount"] != nil {
			entriesCount = dict["entriesCount"] as? Int
		}
		if dict["totalEntriesCount"] != nil {
			totalEntriesCount = dict["totalEntriesCount"] as? Int
		}
		if dict["videoEntriesCount"] != nil {
			videoEntriesCount = dict["videoEntriesCount"] as? Int
		}
		if dict["imageEntriesCount"] != nil {
			imageEntriesCount = dict["imageEntriesCount"] as? Int
		}
		if dict["audioEntriesCount"] != nil {
			audioEntriesCount = dict["audioEntriesCount"] as? Int
		}
		if dict["mixEntriesCount"] != nil {
			mixEntriesCount = dict["mixEntriesCount"] as? Int
		}
		if dict["bandwidth"] != nil {
			bandwidth = dict["bandwidth"] as? Double
		}
		if dict["totalStorage"] != nil {
			totalStorage = dict["totalStorage"] as? Double
		}
		if dict["storage"] != nil {
			storage = dict["storage"] as? Double
		}
		if dict["peakStorage"] != nil {
			peakStorage = dict["peakStorage"] as? Double
		}
		if dict["avgStorage"] != nil {
			avgStorage = dict["avgStorage"] as? Double
		}
		if dict["combinedBandwidthStorage"] != nil {
			combinedBandwidthStorage = dict["combinedBandwidthStorage"] as? Double
		}
		if dict["deletedStorage"] != nil {
			deletedStorage = dict["deletedStorage"] as? Double
		}
		if dict["transcodingUsage"] != nil {
			transcodingUsage = dict["transcodingUsage"] as? Double
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(partnerId != nil) {
			dict["partnerId"] = partnerId!
		}
		if(partnerName != nil) {
			dict["partnerName"] = partnerName!
		}
		if(partnerStatus != nil) {
			dict["partnerStatus"] = partnerStatus!.rawValue
		}
		if(partnerPackage != nil) {
			dict["partnerPackage"] = partnerPackage!
		}
		if(partnerCreatedAt != nil) {
			dict["partnerCreatedAt"] = partnerCreatedAt!
		}
		if(views != nil) {
			dict["views"] = views!
		}
		if(plays != nil) {
			dict["plays"] = plays!
		}
		if(entriesCount != nil) {
			dict["entriesCount"] = entriesCount!
		}
		if(totalEntriesCount != nil) {
			dict["totalEntriesCount"] = totalEntriesCount!
		}
		if(videoEntriesCount != nil) {
			dict["videoEntriesCount"] = videoEntriesCount!
		}
		if(imageEntriesCount != nil) {
			dict["imageEntriesCount"] = imageEntriesCount!
		}
		if(audioEntriesCount != nil) {
			dict["audioEntriesCount"] = audioEntriesCount!
		}
		if(mixEntriesCount != nil) {
			dict["mixEntriesCount"] = mixEntriesCount!
		}
		if(bandwidth != nil) {
			dict["bandwidth"] = bandwidth!
		}
		if(totalStorage != nil) {
			dict["totalStorage"] = totalStorage!
		}
		if(storage != nil) {
			dict["storage"] = storage!
		}
		if(peakStorage != nil) {
			dict["peakStorage"] = peakStorage!
		}
		if(avgStorage != nil) {
			dict["avgStorage"] = avgStorage!
		}
		if(combinedBandwidthStorage != nil) {
			dict["combinedBandwidthStorage"] = combinedBandwidthStorage!
		}
		if(deletedStorage != nil) {
			dict["deletedStorage"] = deletedStorage!
		}
		if(transcodingUsage != nil) {
			dict["transcodingUsage"] = transcodingUsage!
		}
		return dict
	}
}

