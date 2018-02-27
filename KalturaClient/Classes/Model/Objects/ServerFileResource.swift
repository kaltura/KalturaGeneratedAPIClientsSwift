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
// Copyright (C) 2006-2018  Kaltura Inc.
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

/**  Used to ingest media file that is already accessible on the shared disc.  */
open class ServerFileResource: GenericDataCenterContentResource {

	public class ServerFileResourceTokenizer: GenericDataCenterContentResource.GenericDataCenterContentResourceTokenizer {
		
		public var localFilePath: BaseTokenizedObject {
			get {
				return self.append("localFilePath") 
			}
		}
		
		public var keepOriginalFile: BaseTokenizedObject {
			get {
				return self.append("keepOriginalFile") 
			}
		}
	}

	/**  Full path to the local file  */
	public var localFilePath: String? = nil
	/**  Should keep original file (false = mv, true = cp)  */
	public var keepOriginalFile: Bool? = nil


	public func setMultiRequestToken(localFilePath: String) {
		self.dict["localFilePath"] = localFilePath
	}
	
	public func setMultiRequestToken(keepOriginalFile: String) {
		self.dict["keepOriginalFile"] = keepOriginalFile
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["localFilePath"] != nil {
			localFilePath = dict["localFilePath"] as? String
		}
		if dict["keepOriginalFile"] != nil {
			keepOriginalFile = dict["keepOriginalFile"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(localFilePath != nil) {
			dict["localFilePath"] = localFilePath!
		}
		if(keepOriginalFile != nil) {
			dict["keepOriginalFile"] = keepOriginalFile!
		}
		return dict
	}
}

