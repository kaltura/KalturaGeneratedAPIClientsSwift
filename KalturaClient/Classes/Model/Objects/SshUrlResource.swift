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
// Copyright (C) 2006-2023  Kaltura Inc.
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

/**  Used to ingest media that is available on remote SSH server and accessible using
  the supplied URL, media file will be downloaded using import job in order to
  make the asset ready.  */
open class SshUrlResource: UrlResource {

	public class SshUrlResourceTokenizer: UrlResource.UrlResourceTokenizer {
		
		public var privateKey: BaseTokenizedObject {
			get {
				return self.append("privateKey") 
			}
		}
		
		public var publicKey: BaseTokenizedObject {
			get {
				return self.append("publicKey") 
			}
		}
		
		public var keyPassphrase: BaseTokenizedObject {
			get {
				return self.append("keyPassphrase") 
			}
		}
	}

	/**  SSH private key  */
	public var privateKey: String? = nil
	/**  SSH public key  */
	public var publicKey: String? = nil
	/**  Passphrase for SSH keys  */
	public var keyPassphrase: String? = nil


	public func setMultiRequestToken(privateKey: String) {
		self.dict["privateKey"] = privateKey
	}
	
	public func setMultiRequestToken(publicKey: String) {
		self.dict["publicKey"] = publicKey
	}
	
	public func setMultiRequestToken(keyPassphrase: String) {
		self.dict["keyPassphrase"] = keyPassphrase
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["privateKey"] != nil {
			privateKey = dict["privateKey"] as? String
		}
		if dict["publicKey"] != nil {
			publicKey = dict["publicKey"] as? String
		}
		if dict["keyPassphrase"] != nil {
			keyPassphrase = dict["keyPassphrase"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(privateKey != nil) {
			dict["privateKey"] = privateKey!
		}
		if(publicKey != nil) {
			dict["publicKey"] = publicKey!
		}
		if(keyPassphrase != nil) {
			dict["keyPassphrase"] = keyPassphrase!
		}
		return dict
	}
}

