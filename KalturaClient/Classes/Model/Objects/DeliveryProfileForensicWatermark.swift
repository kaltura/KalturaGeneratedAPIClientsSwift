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

open class DeliveryProfileForensicWatermark: DeliveryProfile {

	public class DeliveryProfileForensicWatermarkTokenizer: DeliveryProfile.DeliveryProfileTokenizer {
		
		public var internalUrl: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("internalUrl"))
			} 
		}
		
		public var encryptionKey: BaseTokenizedObject {
			get {
				return self.append("encryptionKey") 
			}
		}
		
		public var encryptionIv: BaseTokenizedObject {
			get {
				return self.append("encryptionIv") 
			}
		}
		
		public var encryptionRegex: BaseTokenizedObject {
			get {
				return self.append("encryptionRegex") 
			}
		}
	}

	/**  The URL used to pull manifest from the server, keyed by dc id, asterisk means
	  all dcs  */
	public var internalUrl: Array<KeyValue>? = nil
	/**  The key used to encrypt the URI (256 bits)  */
	public var encryptionKey: String? = nil
	/**  The iv used to encrypt the URI (128 bits)  */
	public var encryptionIv: String? = nil
	/**  The regex used to match the encrypted part of the URI (according to the
	  'encrypt' named group)  */
	public var encryptionRegex: String? = nil


	public func setMultiRequestToken(encryptionKey: String) {
		self.dict["encryptionKey"] = encryptionKey
	}
	
	public func setMultiRequestToken(encryptionIv: String) {
		self.dict["encryptionIv"] = encryptionIv
	}
	
	public func setMultiRequestToken(encryptionRegex: String) {
		self.dict["encryptionRegex"] = encryptionRegex
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["internalUrl"] != nil {
			internalUrl = try JSONParser.parse(array: dict["internalUrl"] as! [Any])
		}
		if dict["encryptionKey"] != nil {
			encryptionKey = dict["encryptionKey"] as? String
		}
		if dict["encryptionIv"] != nil {
			encryptionIv = dict["encryptionIv"] as? String
		}
		if dict["encryptionRegex"] != nil {
			encryptionRegex = dict["encryptionRegex"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(internalUrl != nil) {
			dict["internalUrl"] = internalUrl!.map { value in value.toDictionary() }
		}
		if(encryptionKey != nil) {
			dict["encryptionKey"] = encryptionKey!
		}
		if(encryptionIv != nil) {
			dict["encryptionIv"] = encryptionIv!
		}
		if(encryptionRegex != nil) {
			dict["encryptionRegex"] = encryptionRegex!
		}
		return dict
	}
}

