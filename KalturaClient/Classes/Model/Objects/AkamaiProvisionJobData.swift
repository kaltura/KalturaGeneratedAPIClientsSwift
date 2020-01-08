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

open class AkamaiProvisionJobData: ProvisionJobData {

	public class AkamaiProvisionJobDataTokenizer: ProvisionJobData.ProvisionJobDataTokenizer {
		
		public var wsdlUsername: BaseTokenizedObject {
			get {
				return self.append("wsdlUsername") 
			}
		}
		
		public var wsdlPassword: BaseTokenizedObject {
			get {
				return self.append("wsdlPassword") 
			}
		}
		
		public var cpcode: BaseTokenizedObject {
			get {
				return self.append("cpcode") 
			}
		}
		
		public var emailId: BaseTokenizedObject {
			get {
				return self.append("emailId") 
			}
		}
		
		public var primaryContact: BaseTokenizedObject {
			get {
				return self.append("primaryContact") 
			}
		}
		
		public var secondaryContact: BaseTokenizedObject {
			get {
				return self.append("secondaryContact") 
			}
		}
	}

	public var wsdlUsername: String? = nil
	public var wsdlPassword: String? = nil
	public var cpcode: String? = nil
	public var emailId: String? = nil
	public var primaryContact: String? = nil
	public var secondaryContact: String? = nil


	public func setMultiRequestToken(wsdlUsername: String) {
		self.dict["wsdlUsername"] = wsdlUsername
	}
	
	public func setMultiRequestToken(wsdlPassword: String) {
		self.dict["wsdlPassword"] = wsdlPassword
	}
	
	public func setMultiRequestToken(cpcode: String) {
		self.dict["cpcode"] = cpcode
	}
	
	public func setMultiRequestToken(emailId: String) {
		self.dict["emailId"] = emailId
	}
	
	public func setMultiRequestToken(primaryContact: String) {
		self.dict["primaryContact"] = primaryContact
	}
	
	public func setMultiRequestToken(secondaryContact: String) {
		self.dict["secondaryContact"] = secondaryContact
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["wsdlUsername"] != nil {
			wsdlUsername = dict["wsdlUsername"] as? String
		}
		if dict["wsdlPassword"] != nil {
			wsdlPassword = dict["wsdlPassword"] as? String
		}
		if dict["cpcode"] != nil {
			cpcode = dict["cpcode"] as? String
		}
		if dict["emailId"] != nil {
			emailId = dict["emailId"] as? String
		}
		if dict["primaryContact"] != nil {
			primaryContact = dict["primaryContact"] as? String
		}
		if dict["secondaryContact"] != nil {
			secondaryContact = dict["secondaryContact"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(wsdlUsername != nil) {
			dict["wsdlUsername"] = wsdlUsername!
		}
		if(wsdlPassword != nil) {
			dict["wsdlPassword"] = wsdlPassword!
		}
		if(cpcode != nil) {
			dict["cpcode"] = cpcode!
		}
		if(emailId != nil) {
			dict["emailId"] = emailId!
		}
		if(primaryContact != nil) {
			dict["primaryContact"] = primaryContact!
		}
		if(secondaryContact != nil) {
			dict["secondaryContact"] = secondaryContact!
		}
		return dict
	}
}

