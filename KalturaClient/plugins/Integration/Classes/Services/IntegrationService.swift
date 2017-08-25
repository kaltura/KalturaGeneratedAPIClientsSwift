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

/**  Integration service lets you dispatch integration tasks  */
public final class IntegrationService{

	public class DispatchTokenizer: ClientTokenizer  {
		
		public var data: IntegrationJobData.IntegrationJobDataTokenizer {
			get {
				return IntegrationJobData.IntegrationJobDataTokenizer(self.append("data")) 
			}
		}
		
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

	/**  Dispatch integration task  */
	public static func dispatch(data: IntegrationJobData, objectType: BatchJobObjectType, objectId: String) -> RequestBuilder<Int, BaseTokenizedObject, DispatchTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, DispatchTokenizer> = RequestBuilder<Int, BaseTokenizedObject, DispatchTokenizer>(service: "integration_integration", action: "dispatch")
			.setBody(key: "data", value: data)
			.setBody(key: "objectType", value: objectType.rawValue)
			.setBody(key: "objectId", value: objectId)

		return request
	}

	public class NotifyTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	public static func notify(id: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "integration_integration", action: "notify")
			.setBody(key: "id", value: id)

		return request
	}
}
