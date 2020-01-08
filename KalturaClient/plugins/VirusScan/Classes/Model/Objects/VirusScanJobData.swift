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
// Copyright (C) 2006-2020  Kaltura Inc.
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

open class VirusScanJobData: JobData {

	public class VirusScanJobDataTokenizer: JobData.JobDataTokenizer {
		
		public func fileContainer<T: FileContainer.FileContainerTokenizer>() -> T {
			return T(self.append("fileContainer"))
		}
		
		public var flavorAssetId: BaseTokenizedObject {
			get {
				return self.append("flavorAssetId") 
			}
		}
		
		public var scanResult: BaseTokenizedObject {
			get {
				return self.append("scanResult") 
			}
		}
		
		public var virusFoundAction: BaseTokenizedObject {
			get {
				return self.append("virusFoundAction") 
			}
		}
	}

	public var fileContainer: FileContainer? = nil
	public var flavorAssetId: String? = nil
	public var scanResult: VirusScanJobResult? = nil
	public var virusFoundAction: VirusFoundAction? = nil


	public func setMultiRequestToken(flavorAssetId: String) {
		self.dict["flavorAssetId"] = flavorAssetId
	}
	
	public func setMultiRequestToken(scanResult: String) {
		self.dict["scanResult"] = scanResult
	}
	
	public func setMultiRequestToken(virusFoundAction: String) {
		self.dict["virusFoundAction"] = virusFoundAction
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["fileContainer"] != nil {
		fileContainer = try JSONParser.parse(object: dict["fileContainer"] as! [String: Any])		}
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["scanResult"] != nil {
			scanResult = VirusScanJobResult(rawValue: (dict["scanResult"] as? Int)!)
		}
		if dict["virusFoundAction"] != nil {
			virusFoundAction = VirusFoundAction(rawValue: (dict["virusFoundAction"] as? Int)!)
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(fileContainer != nil) {
			dict["fileContainer"] = fileContainer!.toDictionary()
		}
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(scanResult != nil) {
			dict["scanResult"] = scanResult!.rawValue
		}
		if(virusFoundAction != nil) {
			dict["virusFoundAction"] = virusFoundAction!.rawValue
		}
		return dict
	}
}

