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

open class MailJobData: JobData {

	public class MailJobDataTokenizer: JobData.JobDataTokenizer {
		
		public var mailType: BaseTokenizedObject {
			get {
				return self.append("mailType") 
			}
		}
		
		public var mailPriority: BaseTokenizedObject {
			get {
				return self.append("mailPriority") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
		
		public var recipientName: BaseTokenizedObject {
			get {
				return self.append("recipientName") 
			}
		}
		
		public var recipientEmail: BaseTokenizedObject {
			get {
				return self.append("recipientEmail") 
			}
		}
		
		public var recipientId: BaseTokenizedObject {
			get {
				return self.append("recipientId") 
			}
		}
		
		public var fromName: BaseTokenizedObject {
			get {
				return self.append("fromName") 
			}
		}
		
		public var fromEmail: BaseTokenizedObject {
			get {
				return self.append("fromEmail") 
			}
		}
		
		public var bodyParams: BaseTokenizedObject {
			get {
				return self.append("bodyParams") 
			}
		}
		
		public var subjectParams: BaseTokenizedObject {
			get {
				return self.append("subjectParams") 
			}
		}
		
		public func dynamicEmailContents<T: DynamicEmailContents.DynamicEmailContentsTokenizer>() -> T {
			return T(self.append("dynamicEmailContents"))
		}
		
		public var templatePath: BaseTokenizedObject {
			get {
				return self.append("templatePath") 
			}
		}
		
		public var language: BaseTokenizedObject {
			get {
				return self.append("language") 
			}
		}
		
		public var campaignId: BaseTokenizedObject {
			get {
				return self.append("campaignId") 
			}
		}
		
		public var minSendDate: BaseTokenizedObject {
			get {
				return self.append("minSendDate") 
			}
		}
		
		public var isHtml: BaseTokenizedObject {
			get {
				return self.append("isHtml") 
			}
		}
		
		public var separator: BaseTokenizedObject {
			get {
				return self.append("separator") 
			}
		}
	}

	public var mailType: MailType? = nil
	public var mailPriority: Int? = nil
	public var status: MailJobStatus? = nil
	public var recipientName: String? = nil
	public var recipientEmail: String? = nil
	/**  kuserId  */
	public var recipientId: Int? = nil
	public var fromName: String? = nil
	public var fromEmail: String? = nil
	public var bodyParams: String? = nil
	public var subjectParams: String? = nil
	public var dynamicEmailContents: DynamicEmailContents? = nil
	public var templatePath: String? = nil
	public var language: LanguageCode? = nil
	public var campaignId: Int? = nil
	public var minSendDate: Int? = nil
	public var isHtml: Bool? = nil
	public var separator: String? = nil


	public func setMultiRequestToken(mailType: String) {
		self.dict["mailType"] = mailType
	}
	
	public func setMultiRequestToken(mailPriority: String) {
		self.dict["mailPriority"] = mailPriority
	}
	
	public func setMultiRequestToken(status: String) {
		self.dict["status"] = status
	}
	
	public func setMultiRequestToken(recipientName: String) {
		self.dict["recipientName"] = recipientName
	}
	
	public func setMultiRequestToken(recipientEmail: String) {
		self.dict["recipientEmail"] = recipientEmail
	}
	
	public func setMultiRequestToken(recipientId: String) {
		self.dict["recipientId"] = recipientId
	}
	
	public func setMultiRequestToken(fromName: String) {
		self.dict["fromName"] = fromName
	}
	
	public func setMultiRequestToken(fromEmail: String) {
		self.dict["fromEmail"] = fromEmail
	}
	
	public func setMultiRequestToken(bodyParams: String) {
		self.dict["bodyParams"] = bodyParams
	}
	
	public func setMultiRequestToken(subjectParams: String) {
		self.dict["subjectParams"] = subjectParams
	}
	
	public func setMultiRequestToken(templatePath: String) {
		self.dict["templatePath"] = templatePath
	}
	
	public func setMultiRequestToken(language: String) {
		self.dict["language"] = language
	}
	
	public func setMultiRequestToken(campaignId: String) {
		self.dict["campaignId"] = campaignId
	}
	
	public func setMultiRequestToken(minSendDate: String) {
		self.dict["minSendDate"] = minSendDate
	}
	
	public func setMultiRequestToken(isHtml: String) {
		self.dict["isHtml"] = isHtml
	}
	
	public func setMultiRequestToken(separator: String) {
		self.dict["separator"] = separator
	}
	
	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["mailType"] != nil {
			mailType = MailType(rawValue: "\(dict["mailType"]!)")
		}
		if dict["mailPriority"] != nil {
			mailPriority = dict["mailPriority"] as? Int
		}
		if dict["status"] != nil {
			status = MailJobStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["recipientName"] != nil {
			recipientName = dict["recipientName"] as? String
		}
		if dict["recipientEmail"] != nil {
			recipientEmail = dict["recipientEmail"] as? String
		}
		if dict["recipientId"] != nil {
			recipientId = dict["recipientId"] as? Int
		}
		if dict["fromName"] != nil {
			fromName = dict["fromName"] as? String
		}
		if dict["fromEmail"] != nil {
			fromEmail = dict["fromEmail"] as? String
		}
		if dict["bodyParams"] != nil {
			bodyParams = dict["bodyParams"] as? String
		}
		if dict["subjectParams"] != nil {
			subjectParams = dict["subjectParams"] as? String
		}
		if dict["dynamicEmailContents"] != nil {
		dynamicEmailContents = try JSONParser.parse(object: dict["dynamicEmailContents"] as! [String: Any])		}
		if dict["templatePath"] != nil {
			templatePath = dict["templatePath"] as? String
		}
		if dict["language"] != nil {
			language = LanguageCode(rawValue: "\(dict["language"]!)")
		}
		if dict["campaignId"] != nil {
			campaignId = dict["campaignId"] as? Int
		}
		if dict["minSendDate"] != nil {
			minSendDate = dict["minSendDate"] as? Int
		}
		if dict["isHtml"] != nil {
			isHtml = dict["isHtml"] as? Bool
		}
		if dict["separator"] != nil {
			separator = dict["separator"] as? String
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(mailType != nil) {
			dict["mailType"] = mailType!.rawValue
		}
		if(mailPriority != nil) {
			dict["mailPriority"] = mailPriority!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(recipientName != nil) {
			dict["recipientName"] = recipientName!
		}
		if(recipientEmail != nil) {
			dict["recipientEmail"] = recipientEmail!
		}
		if(recipientId != nil) {
			dict["recipientId"] = recipientId!
		}
		if(fromName != nil) {
			dict["fromName"] = fromName!
		}
		if(fromEmail != nil) {
			dict["fromEmail"] = fromEmail!
		}
		if(bodyParams != nil) {
			dict["bodyParams"] = bodyParams!
		}
		if(subjectParams != nil) {
			dict["subjectParams"] = subjectParams!
		}
		if(dynamicEmailContents != nil) {
			dict["dynamicEmailContents"] = dynamicEmailContents!.toDictionary()
		}
		if(templatePath != nil) {
			dict["templatePath"] = templatePath!
		}
		if(language != nil) {
			dict["language"] = language!.rawValue
		}
		if(campaignId != nil) {
			dict["campaignId"] = campaignId!
		}
		if(minSendDate != nil) {
			dict["minSendDate"] = minSendDate!
		}
		if(isHtml != nil) {
			dict["isHtml"] = isHtml!
		}
		if(separator != nil) {
			dict["separator"] = separator!
		}
		return dict
	}
}

