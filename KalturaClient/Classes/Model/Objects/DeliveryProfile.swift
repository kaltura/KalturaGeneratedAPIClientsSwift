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

open class DeliveryProfile: ObjectBase {

	/**  The id of the Delivery  */
	public var id: Int? = nil
	public var partnerId: Int? = nil
	/**  The name of the Delivery  */
	public var name: String? = nil
	/**  Delivery type  */
	public var type: DeliveryProfileType? = nil
	/**  System name of the delivery  */
	public var systemName: String? = nil
	/**  The description of the Delivery  */
	public var description: String? = nil
	/**  Creation time as Unix timestamp (In seconds)  */
	public var createdAt: Int? = nil
	/**  Update time as Unix timestamp (In seconds)  */
	public var updatedAt: Int? = nil
	public var streamerType: PlaybackProtocol? = nil
	public var url: String? = nil
	/**  the host part of the url  */
	public var hostName: String? = nil
	public var status: DeliveryStatus? = nil
	public var recognizer: UrlRecognizer? = nil
	public var tokenizer: UrlTokenizer? = nil
	/**  True if this is the systemwide default for the protocol  */
	public var isDefault: Bool? = nil
	/**  the object from which this object was cloned (or 0)  */
	public var parentId: Int? = nil
	/**  Comma separated list of supported media protocols. f.i. rtmpe  */
	public var mediaProtocols: String? = nil
	/**  priority used for ordering similar delivery profiles  */
	public var priority: Int? = nil
	/**  Extra query string parameters that should be added to the url  */
	public var extraParams: String? = nil
	/**  A filter that can be used to include additional assets in the URL (e.g.
	  captions)  */
	public var supplementaryAssetsFilter: AssetFilter? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["partnerId"] != nil {
			partnerId = dict["partnerId"] as? Int
		}
		if dict["name"] != nil {
			name = dict["name"] as? String
		}
		if dict["type"] != nil {
			type = DeliveryProfileType(rawValue: "\(dict["type"]!)")
		}
		if dict["systemName"] != nil {
			systemName = dict["systemName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["createdAt"] != nil {
			createdAt = dict["createdAt"] as? Int
		}
		if dict["updatedAt"] != nil {
			updatedAt = dict["updatedAt"] as? Int
		}
		if dict["streamerType"] != nil {
			streamerType = PlaybackProtocol(rawValue: "\(dict["streamerType"]!)")
		}
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["hostName"] != nil {
			hostName = dict["hostName"] as? String
		}
		if dict["status"] != nil {
			status = DeliveryStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["recognizer"] != nil {
		recognizer = try JSONParser.parse(object: dict["recognizer"] as! [String: Any])		}
		if dict["tokenizer"] != nil {
		tokenizer = try JSONParser.parse(object: dict["tokenizer"] as! [String: Any])		}
		if dict["isDefault"] != nil {
			isDefault = dict["isDefault"] as? Bool
		}
		if dict["parentId"] != nil {
			parentId = dict["parentId"] as? Int
		}
		if dict["mediaProtocols"] != nil {
			mediaProtocols = dict["mediaProtocols"] as? String
		}
		if dict["priority"] != nil {
			priority = dict["priority"] as? Int
		}
		if dict["extraParams"] != nil {
			extraParams = dict["extraParams"] as? String
		}
		if dict["supplementaryAssetsFilter"] != nil {
		supplementaryAssetsFilter = try JSONParser.parse(object: dict["supplementaryAssetsFilter"] as! [String: Any])		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(name != nil) {
			dict["name"] = name!
		}
		if(type != nil) {
			dict["type"] = type!.rawValue
		}
		if(systemName != nil) {
			dict["systemName"] = systemName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(streamerType != nil) {
			dict["streamerType"] = streamerType!.rawValue
		}
		if(url != nil) {
			dict["url"] = url!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(recognizer != nil) {
			dict["recognizer"] = recognizer!.toDictionary()
		}
		if(tokenizer != nil) {
			dict["tokenizer"] = tokenizer!.toDictionary()
		}
		if(mediaProtocols != nil) {
			dict["mediaProtocols"] = mediaProtocols!
		}
		if(priority != nil) {
			dict["priority"] = priority!
		}
		if(extraParams != nil) {
			dict["extraParams"] = extraParams!
		}
		if(supplementaryAssetsFilter != nil) {
			dict["supplementaryAssetsFilter"] = supplementaryAssetsFilter!.toDictionary()
		}
		return dict
	}
}

