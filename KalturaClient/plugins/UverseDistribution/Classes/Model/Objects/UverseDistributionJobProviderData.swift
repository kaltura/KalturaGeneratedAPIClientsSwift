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

open class UverseDistributionJobProviderData: ConfigurableDistributionJobProviderData {

	public class UverseDistributionJobProviderDataTokenizer: ConfigurableDistributionJobProviderData.ConfigurableDistributionJobProviderDataTokenizer {
		
		public var localAssetFilePath: BaseTokenizedObject {
			get {
				return self.append("localAssetFilePath") 
			}
		}
		
		public var remoteAssetUrl: BaseTokenizedObject {
			get {
				return self.append("remoteAssetUrl") 
			}
		}
		
		public var remoteAssetFileName: BaseTokenizedObject {
			get {
				return self.append("remoteAssetFileName") 
			}
		}
	}

	/**  The local file path of the video asset that needs to be distributed  */
	public var localAssetFilePath: String? = nil
	/**  The remote URL of the video asset that was distributed  */
	public var remoteAssetUrl: String? = nil
	/**  The file name of the remote video asset that was distributed  */
	public var remoteAssetFileName: String? = nil


	public func setMultiRequestToken(localAssetFilePath: String) {
		self.dict["localAssetFilePath"] = localAssetFilePath
	}
	
	public func setMultiRequestToken(remoteAssetUrl: String) {
		self.dict["remoteAssetUrl"] = remoteAssetUrl
	}
	
	public func setMultiRequestToken(remoteAssetFileName: String) {
		self.dict["remoteAssetFileName"] = remoteAssetFileName
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["localAssetFilePath"] != nil {
			localAssetFilePath = dict["localAssetFilePath"] as? String
		}
		if dict["remoteAssetUrl"] != nil {
			remoteAssetUrl = dict["remoteAssetUrl"] as? String
		}
		if dict["remoteAssetFileName"] != nil {
			remoteAssetFileName = dict["remoteAssetFileName"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(localAssetFilePath != nil) {
			dict["localAssetFilePath"] = localAssetFilePath!
		}
		if(remoteAssetUrl != nil) {
			dict["remoteAssetUrl"] = remoteAssetUrl!
		}
		if(remoteAssetFileName != nil) {
			dict["remoteAssetFileName"] = remoteAssetFileName!
		}
		return dict
	}
}

