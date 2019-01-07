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
// Copyright (C) 2006-2019  Kaltura Inc.
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

/**  Live Stream service lets you manage live stream entries  */
extension LiveStreamService{

	public class CreatePeriodicSyncPointsTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var interval: BaseTokenizedObject {
			get {
				return self.append("interval") 
			}
		}
		
		public var duration: BaseTokenizedObject {
			get {
				return self.append("duration") 
			}
		}
	}

	/**  Creates perioding metadata sync-point events on a live stream  */
	public static func createPeriodicSyncPoints(entryId: String, interval: Int, duration: Int) -> NullRequestBuilder<CreatePeriodicSyncPointsTokenizer> {
		let request: NullRequestBuilder<CreatePeriodicSyncPointsTokenizer> = NullRequestBuilder<CreatePeriodicSyncPointsTokenizer>(service: "livestream", action: "createPeriodicSyncPoints")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "interval", value: interval)
			.setParam(key: "duration", value: duration)

		return request
	}
}
