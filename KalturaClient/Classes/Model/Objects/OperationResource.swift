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

/**  A resource that perform operation (transcoding, clipping, cropping) before the
  flavor is ready.  */
open class OperationResource: ContentResource {

	public class OperationResourceTokenizer: ContentResource.ContentResourceTokenizer {
		
		public func resource<T: ContentResource.ContentResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var operationAttributes: ArrayTokenizedObject<OperationAttributes.OperationAttributesTokenizer> {
			get {
				return ArrayTokenizedObject<OperationAttributes.OperationAttributesTokenizer>(self.append("operationAttributes"))
			} 
		}
		
		public var assetParamsId: BaseTokenizedObject {
			get {
				return self.append("assetParamsId") 
			}
		}
	}

	/**  Only KalturaEntryResource and KalturaAssetResource are supported  */
	public var resource: ContentResource? = nil
	public var operationAttributes: Array<OperationAttributes>? = nil
	/**  ID of alternative asset params to be used instead of the system default flavor
	  params  */
	public var assetParamsId: Int? = nil


	public func setMultiRequestToken(assetParamsId: String) {
		self.dict["assetParamsId"] = assetParamsId
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["resource"] != nil {
		resource = try JSONParser.parse(object: dict["resource"] as! [String: Any])		}
		if dict["operationAttributes"] != nil {
			operationAttributes = try JSONParser.parse(array: dict["operationAttributes"] as! [Any])
		}
		if dict["assetParamsId"] != nil {
			assetParamsId = dict["assetParamsId"] as? Int
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(resource != nil) {
			dict["resource"] = resource!.toDictionary()
		}
		if(operationAttributes != nil) {
			dict["operationAttributes"] = operationAttributes!.map { value in value.toDictionary() }
		}
		if(assetParamsId != nil) {
			dict["assetParamsId"] = assetParamsId!
		}
		return dict
	}
}

