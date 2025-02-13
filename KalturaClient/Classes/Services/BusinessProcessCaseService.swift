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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

/**  Business-process case service lets you get information about processes  */
public final class BusinessProcessCaseService{

	public class AbortTokenizer: ClientTokenizer  {
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
		
		public var businessProcessStartNotificationTemplateId: BaseTokenizedObject {
			get {
				return self.append("businessProcessStartNotificationTemplateId") 
			}
		}
	}

	/**  Abort business-process case  */
	public static func abort(objectType: EventNotificationEventObjectType, objectId: String, businessProcessStartNotificationTemplateId: Int) -> NullRequestBuilder<AbortTokenizer> {
		let request: NullRequestBuilder<AbortTokenizer> = NullRequestBuilder<AbortTokenizer>(service: "businessprocessnotification_businessprocesscase", action: "abort")
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)
			.setParam(key: "businessProcessStartNotificationTemplateId", value: businessProcessStartNotificationTemplateId)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public var objectType: BaseTokenizedObject {
			get {
				return self.append("objectType") 
			}
		}
		
		public var objectId: BaseTokenizedObject {
			get {
				return self.append("objectId") 
			}
		}
	}

	/**  list business-process cases  */
	public static func list(objectType: EventNotificationEventObjectType, objectId: String) -> ArrayRequestBuilder<BusinessProcessCase, ArrayTokenizedObject<BusinessProcessCase.BusinessProcessCaseTokenizer>, ListTokenizer> {
		let request: ArrayRequestBuilder<BusinessProcessCase, ArrayTokenizedObject<BusinessProcessCase.BusinessProcessCaseTokenizer>, ListTokenizer> = ArrayRequestBuilder<BusinessProcessCase, ArrayTokenizedObject<BusinessProcessCase.BusinessProcessCaseTokenizer>, ListTokenizer>(service: "businessprocessnotification_businessprocesscase", action: "list")
			.setParam(key: "objectType", value: objectType.rawValue)
			.setParam(key: "objectId", value: objectId)

		return request
	}
}
