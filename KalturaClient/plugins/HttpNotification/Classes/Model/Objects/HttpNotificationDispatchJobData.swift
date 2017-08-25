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

open class HttpNotificationDispatchJobData: EventNotificationDispatchJobData {

	public class HttpNotificationDispatchJobDataTokenizer: EventNotificationDispatchJobData.EventNotificationDispatchJobDataTokenizer {
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var method: BaseTokenizedObject {
			get {
				return self.append("method") 
			}
		}
		
		public var data: BaseTokenizedObject {
			get {
				return self.append("data") 
			}
		}
		
		public var timeout: BaseTokenizedObject {
			get {
				return self.append("timeout") 
			}
		}
		
		public var connectTimeout: BaseTokenizedObject {
			get {
				return self.append("connectTimeout") 
			}
		}
		
		public var username: BaseTokenizedObject {
			get {
				return self.append("username") 
			}
		}
		
		public var password: BaseTokenizedObject {
			get {
				return self.append("password") 
			}
		}
		
		public var authenticationMethod: BaseTokenizedObject {
			get {
				return self.append("authenticationMethod") 
			}
		}
		
		public var sslVersion: BaseTokenizedObject {
			get {
				return self.append("sslVersion") 
			}
		}
		
		public var sslCertificate: BaseTokenizedObject {
			get {
				return self.append("sslCertificate") 
			}
		}
		
		public var sslCertificateType: BaseTokenizedObject {
			get {
				return self.append("sslCertificateType") 
			}
		}
		
		public var sslCertificatePassword: BaseTokenizedObject {
			get {
				return self.append("sslCertificatePassword") 
			}
		}
		
		public var sslEngine: BaseTokenizedObject {
			get {
				return self.append("sslEngine") 
			}
		}
		
		public var sslEngineDefault: BaseTokenizedObject {
			get {
				return self.append("sslEngineDefault") 
			}
		}
		
		public var sslKeyType: BaseTokenizedObject {
			get {
				return self.append("sslKeyType") 
			}
		}
		
		public var sslKey: BaseTokenizedObject {
			get {
				return self.append("sslKey") 
			}
		}
		
		public var sslKeyPassword: BaseTokenizedObject {
			get {
				return self.append("sslKeyPassword") 
			}
		}
		
		public var customHeaders: ArrayTokenizedObject<KeyValue.KeyValueTokenizer> {
			get {
				return ArrayTokenizedObject<KeyValue.KeyValueTokenizer>(self.append("customHeaders"))
			} 
		}
		
		public var signSecret: BaseTokenizedObject {
			get {
				return self.append("signSecret") 
			}
		}
	}

	/**  Remote server URL  */
	public var url: String? = nil
	/**  Request method.  */
	public var method: HttpNotificationMethod? = nil
	/**  Data to send.  */
	public var data: String? = nil
	/**  The maximum number of seconds to allow cURL functions to execute.  */
	public var timeout: Int? = nil
	/**  The number of seconds to wait while trying to connect.   Must be larger than
	  zero.  */
	public var connectTimeout: Int? = nil
	/**  A username to use for the connection.  */
	public var username: String? = nil
	/**  A password to use for the connection.  */
	public var password: String? = nil
	/**  The HTTP authentication method to use.  */
	public var authenticationMethod: HttpNotificationAuthenticationMethod? = nil
	/**  The SSL version (2 or 3) to use.   By default PHP will try to determine this
	  itself, although in some cases this must be set manually.  */
	public var sslVersion: HttpNotificationSslVersion? = nil
	/**  SSL certificate to verify the peer with.  */
	public var sslCertificate: String? = nil
	/**  The format of the certificate.  */
	public var sslCertificateType: HttpNotificationCertificateType? = nil
	/**  The password required to use the certificate.  */
	public var sslCertificatePassword: String? = nil
	/**  The identifier for the crypto engine of the private SSL key specified in ssl
	  key.  */
	public var sslEngine: String? = nil
	/**  The identifier for the crypto engine used for asymmetric crypto operations.  */
	public var sslEngineDefault: String? = nil
	/**  The key type of the private SSL key specified in ssl key - PEM / DER / ENG.  */
	public var sslKeyType: HttpNotificationSslKeyType? = nil
	/**  Private SSL key.  */
	public var sslKey: String? = nil
	/**  The secret password needed to use the private SSL key specified in ssl key.  */
	public var sslKeyPassword: String? = nil
	/**  Adds a e-mail custom header  */
	public var customHeaders: Array<KeyValue>? = nil
	/**  The secret to sign the notification with  */
	public var signSecret: String? = nil


	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(method: String) {
		self.dict["method"] = method
	}
	
	public func setMultiRequestToken(data: String) {
		self.dict["data"] = data
	}
	
	public func setMultiRequestToken(timeout: String) {
		self.dict["timeout"] = timeout
	}
	
	public func setMultiRequestToken(connectTimeout: String) {
		self.dict["connectTimeout"] = connectTimeout
	}
	
	public func setMultiRequestToken(username: String) {
		self.dict["username"] = username
	}
	
	public func setMultiRequestToken(password: String) {
		self.dict["password"] = password
	}
	
	public func setMultiRequestToken(authenticationMethod: String) {
		self.dict["authenticationMethod"] = authenticationMethod
	}
	
	public func setMultiRequestToken(sslVersion: String) {
		self.dict["sslVersion"] = sslVersion
	}
	
	public func setMultiRequestToken(sslCertificate: String) {
		self.dict["sslCertificate"] = sslCertificate
	}
	
	public func setMultiRequestToken(sslCertificateType: String) {
		self.dict["sslCertificateType"] = sslCertificateType
	}
	
	public func setMultiRequestToken(sslCertificatePassword: String) {
		self.dict["sslCertificatePassword"] = sslCertificatePassword
	}
	
	public func setMultiRequestToken(sslEngine: String) {
		self.dict["sslEngine"] = sslEngine
	}
	
	public func setMultiRequestToken(sslEngineDefault: String) {
		self.dict["sslEngineDefault"] = sslEngineDefault
	}
	
	public func setMultiRequestToken(sslKeyType: String) {
		self.dict["sslKeyType"] = sslKeyType
	}
	
	public func setMultiRequestToken(sslKey: String) {
		self.dict["sslKey"] = sslKey
	}
	
	public func setMultiRequestToken(sslKeyPassword: String) {
		self.dict["sslKeyPassword"] = sslKeyPassword
	}
	
	public func setMultiRequestToken(signSecret: String) {
		self.dict["signSecret"] = signSecret
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["method"] != nil {
			method = HttpNotificationMethod(rawValue: (dict["method"] as? Int)!)
		}
		if dict["data"] != nil {
			data = dict["data"] as? String
		}
		if dict["timeout"] != nil {
			timeout = dict["timeout"] as? Int
		}
		if dict["connectTimeout"] != nil {
			connectTimeout = dict["connectTimeout"] as? Int
		}
		if dict["username"] != nil {
			username = dict["username"] as? String
		}
		if dict["password"] != nil {
			password = dict["password"] as? String
		}
		if dict["authenticationMethod"] != nil {
			authenticationMethod = HttpNotificationAuthenticationMethod(rawValue: (dict["authenticationMethod"] as? Int)!)
		}
		if dict["sslVersion"] != nil {
			sslVersion = HttpNotificationSslVersion(rawValue: (dict["sslVersion"] as? Int)!)
		}
		if dict["sslCertificate"] != nil {
			sslCertificate = dict["sslCertificate"] as? String
		}
		if dict["sslCertificateType"] != nil {
			sslCertificateType = HttpNotificationCertificateType(rawValue: "\(dict["sslCertificateType"]!)")
		}
		if dict["sslCertificatePassword"] != nil {
			sslCertificatePassword = dict["sslCertificatePassword"] as? String
		}
		if dict["sslEngine"] != nil {
			sslEngine = dict["sslEngine"] as? String
		}
		if dict["sslEngineDefault"] != nil {
			sslEngineDefault = dict["sslEngineDefault"] as? String
		}
		if dict["sslKeyType"] != nil {
			sslKeyType = HttpNotificationSslKeyType(rawValue: "\(dict["sslKeyType"]!)")
		}
		if dict["sslKey"] != nil {
			sslKey = dict["sslKey"] as? String
		}
		if dict["sslKeyPassword"] != nil {
			sslKeyPassword = dict["sslKeyPassword"] as? String
		}
		if dict["customHeaders"] != nil {
			customHeaders = try JSONParser.parse(array: dict["customHeaders"] as! [Any])
		}
		if dict["signSecret"] != nil {
			signSecret = dict["signSecret"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(url != nil) {
			dict["url"] = url!
		}
		if(method != nil) {
			dict["method"] = method!.rawValue
		}
		if(data != nil) {
			dict["data"] = data!
		}
		if(timeout != nil) {
			dict["timeout"] = timeout!
		}
		if(connectTimeout != nil) {
			dict["connectTimeout"] = connectTimeout!
		}
		if(username != nil) {
			dict["username"] = username!
		}
		if(password != nil) {
			dict["password"] = password!
		}
		if(authenticationMethod != nil) {
			dict["authenticationMethod"] = authenticationMethod!.rawValue
		}
		if(sslVersion != nil) {
			dict["sslVersion"] = sslVersion!.rawValue
		}
		if(sslCertificate != nil) {
			dict["sslCertificate"] = sslCertificate!
		}
		if(sslCertificateType != nil) {
			dict["sslCertificateType"] = sslCertificateType!.rawValue
		}
		if(sslCertificatePassword != nil) {
			dict["sslCertificatePassword"] = sslCertificatePassword!
		}
		if(sslEngine != nil) {
			dict["sslEngine"] = sslEngine!
		}
		if(sslEngineDefault != nil) {
			dict["sslEngineDefault"] = sslEngineDefault!
		}
		if(sslKeyType != nil) {
			dict["sslKeyType"] = sslKeyType!.rawValue
		}
		if(sslKey != nil) {
			dict["sslKey"] = sslKey!
		}
		if(sslKeyPassword != nil) {
			dict["sslKeyPassword"] = sslKeyPassword!
		}
		if(customHeaders != nil) {
			dict["customHeaders"] = customHeaders!.map { value in value.toDictionary() }
		}
		if(signSecret != nil) {
			dict["signSecret"] = signSecret!
		}
		return dict
	}
}

