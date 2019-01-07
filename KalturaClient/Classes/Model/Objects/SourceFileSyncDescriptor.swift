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
// Copyright (C) 2006-2019  Kaltura Inc.
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

open class SourceFileSyncDescriptor: FileSyncDescriptor {

	public class SourceFileSyncDescriptorTokenizer: FileSyncDescriptor.FileSyncDescriptorTokenizer {
		
		public var actualFileSyncLocalPath: BaseTokenizedObject {
			get {
				return self.append("actualFileSyncLocalPath") 
			}
		}
		
		public var assetId: BaseTokenizedObject {
			get {
				return self.append("assetId") 
			}
		}
		
		public var assetParamsId: BaseTokenizedObject {
			get {
				return self.append("assetParamsId") 
			}
		}
	}

	/**  The translated path as used by the scheduler  */
	public var actualFileSyncLocalPath: String? = nil
	public var assetId: String? = nil
	public var assetParamsId: Int? = nil


	public func setMultiRequestToken(actualFileSyncLocalPath: String) {
		self.dict["actualFileSyncLocalPath"] = actualFileSyncLocalPath
	}
	
	public func setMultiRequestToken(assetId: String) {
		self.dict["assetId"] = assetId
	}
	
	public func setMultiRequestToken(assetParamsId: String) {
		self.dict["assetParamsId"] = assetParamsId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["actualFileSyncLocalPath"] != nil {
			actualFileSyncLocalPath = dict["actualFileSyncLocalPath"] as? String
		}
		if dict["assetId"] != nil {
			assetId = dict["assetId"] as? String
		}
		if dict["assetParamsId"] != nil {
			assetParamsId = dict["assetParamsId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(actualFileSyncLocalPath != nil) {
			dict["actualFileSyncLocalPath"] = actualFileSyncLocalPath!
		}
		if(assetId != nil) {
			dict["assetId"] = assetId!
		}
		if(assetParamsId != nil) {
			dict["assetParamsId"] = assetParamsId!
		}
		return dict
	}
}

