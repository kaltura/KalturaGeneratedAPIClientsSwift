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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

open class MailJobData: JobData {

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
	public var templatePath: String? = nil
	public var language: LanguageCode? = nil
	public var campaignId: Int? = nil
	public var minSendDate: Int? = nil
	public var isHtml: Bool? = nil
	public var separator: String? = nil


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

	public override func toDictionary() -> [String: Any] {
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

