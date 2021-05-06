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
// Copyright (C) 2006-2021  Kaltura Inc.
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

open class DistributionJobData: JobData {

	public class DistributionJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var distributionProfileId: BaseTokenizedObject {
			get {
				return self.append("distributionProfileId") 
			}
		}
		
		public func distributionProfile<T: DistributionProfile.DistributionProfileTokenizer>() -> T {
			return T(self.append("distributionProfile"))
		}
		
		public var entryDistributionId: BaseTokenizedObject {
			get {
				return self.append("entryDistributionId") 
			}
		}
		
		public func entryDistribution<T: EntryDistribution.EntryDistributionTokenizer>() -> T {
			return T(self.append("entryDistribution"))
		}
		
		public var remoteId: BaseTokenizedObject {
			get {
				return self.append("remoteId") 
			}
		}
		
		public var providerType: BaseTokenizedObject {
			get {
				return self.append("providerType") 
			}
		}
		
		public func providerData<T: DistributionJobProviderData.DistributionJobProviderDataTokenizer>() -> T {
			return T(self.append("providerData"))
		}
		
		public var results: BaseTokenizedObject {
			get {
				return self.append("results") 
			}
		}
		
		public var sentData: BaseTokenizedObject {
			get {
				return self.append("sentData") 
			}
		}
		
		public var mediaFiles: ArrayTokenizedObject<DistributionRemoteMediaFile.DistributionRemoteMediaFileTokenizer> {
			get {
				return ArrayTokenizedObject<DistributionRemoteMediaFile.DistributionRemoteMediaFileTokenizer>(self.append("mediaFiles"))
			} 
		}
	}

	public var distributionProfileId: Int? = nil
	public var distributionProfile: DistributionProfile? = nil
	public var entryDistributionId: Int? = nil
	public var entryDistribution: EntryDistribution? = nil
	/**  Id of the media in the remote system  */
	public var remoteId: String? = nil
	public var providerType: DistributionProviderType? = nil
	/**  Additional data that relevant for the provider only  */
	public var providerData: DistributionJobProviderData? = nil
	/**  The results as returned from the remote destination  */
	public var results: String? = nil
	/**  The data as sent to the remote destination  */
	public var sentData: String? = nil
	/**  Stores array of media files that submitted to the destination site   Could be
	  used later for media update  */
	public var mediaFiles: Array<DistributionRemoteMediaFile>? = nil


	public func setMultiRequestToken(distributionProfileId: String) {
		self.dict["distributionProfileId"] = distributionProfileId
	}
	
	public func setMultiRequestToken(entryDistributionId: String) {
		self.dict["entryDistributionId"] = entryDistributionId
	}
	
	public func setMultiRequestToken(remoteId: String) {
		self.dict["remoteId"] = remoteId
	}
	
	public func setMultiRequestToken(providerType: String) {
		self.dict["providerType"] = providerType
	}
	
	public func setMultiRequestToken(results: String) {
		self.dict["results"] = results
	}
	
	public func setMultiRequestToken(sentData: String) {
		self.dict["sentData"] = sentData
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["distributionProfileId"] != nil {
			distributionProfileId = dict["distributionProfileId"] as? Int
		}
		if dict["distributionProfile"] != nil {
		distributionProfile = try JSONParser.parse(object: dict["distributionProfile"] as! [String: Any])		}
		if dict["entryDistributionId"] != nil {
			entryDistributionId = dict["entryDistributionId"] as? Int
		}
		if dict["entryDistribution"] != nil {
		entryDistribution = try JSONParser.parse(object: dict["entryDistribution"] as! [String: Any])		}
		if dict["remoteId"] != nil {
			remoteId = dict["remoteId"] as? String
		}
		if dict["providerType"] != nil {
			providerType = DistributionProviderType(rawValue: "\(dict["providerType"]!)")
		}
		if dict["providerData"] != nil {
		providerData = try JSONParser.parse(object: dict["providerData"] as! [String: Any])		}
		if dict["results"] != nil {
			results = dict["results"] as? String
		}
		if dict["sentData"] != nil {
			sentData = dict["sentData"] as? String
		}
		if dict["mediaFiles"] != nil {
			mediaFiles = try JSONParser.parse(array: dict["mediaFiles"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(distributionProfileId != nil) {
			dict["distributionProfileId"] = distributionProfileId!
		}
		if(distributionProfile != nil) {
			dict["distributionProfile"] = distributionProfile!.toDictionary()
		}
		if(entryDistributionId != nil) {
			dict["entryDistributionId"] = entryDistributionId!
		}
		if(entryDistribution != nil) {
			dict["entryDistribution"] = entryDistribution!.toDictionary()
		}
		if(remoteId != nil) {
			dict["remoteId"] = remoteId!
		}
		if(providerType != nil) {
			dict["providerType"] = providerType!.rawValue
		}
		if(providerData != nil) {
			dict["providerData"] = providerData!.toDictionary()
		}
		if(results != nil) {
			dict["results"] = results!
		}
		if(sentData != nil) {
			dict["sentData"] = sentData!
		}
		if(mediaFiles != nil) {
			dict["mediaFiles"] = mediaFiles!.map { value in value.toDictionary() }
		}
		return dict
	}
}

