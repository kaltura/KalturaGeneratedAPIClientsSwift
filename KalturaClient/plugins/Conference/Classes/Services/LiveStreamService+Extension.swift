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

/**  Live Stream service lets you manage live stream entries  */
extension LiveStreamService{

	public class AllocateConferenceRoomTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var env: BaseTokenizedObject {
			get {
				return self.append("env") 
			}
		}
	}

	public static func allocateConferenceRoom(entryId: String) -> RequestBuilder<RoomDetails, RoomDetails.RoomDetailsTokenizer, AllocateConferenceRoomTokenizer> {
		return allocateConferenceRoom(entryId: entryId, env: "")
	}

	/**  Allocates a conference room or returns ones that has already been allocated  */
	public static func allocateConferenceRoom(entryId: String, env: String?) -> RequestBuilder<RoomDetails, RoomDetails.RoomDetailsTokenizer, AllocateConferenceRoomTokenizer> {
		let request: RequestBuilder<RoomDetails, RoomDetails.RoomDetailsTokenizer, AllocateConferenceRoomTokenizer> = RequestBuilder<RoomDetails, RoomDetails.RoomDetailsTokenizer, AllocateConferenceRoomTokenizer>(service: "livestream", action: "allocateConferenceRoom")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "env", value: env)

		return request
	}

	public class FinishConfTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var serverNodeId: BaseTokenizedObject {
			get {
				return self.append("serverNodeId") 
			}
		}
	}

	public static func finishConf(entryId: String) -> RequestBuilder<Bool, BaseTokenizedObject, FinishConfTokenizer> {
		return finishConf(entryId: entryId, serverNodeId: nil)
	}

	/**  When the conf is finished this API should be called.  */
	public static func finishConf(entryId: String, serverNodeId: Int?) -> RequestBuilder<Bool, BaseTokenizedObject, FinishConfTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, FinishConfTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, FinishConfTokenizer>(service: "livestream", action: "finishConf")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "serverNodeId", value: serverNodeId)

		return request
	}

	public class RegisterConfTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Mark that the conference has actually started  */
	public static func registerConf(entryId: String) -> RequestBuilder<Bool, BaseTokenizedObject, RegisterConfTokenizer> {
		let request: RequestBuilder<Bool, BaseTokenizedObject, RegisterConfTokenizer> = RequestBuilder<Bool, BaseTokenizedObject, RegisterConfTokenizer>(service: "livestream", action: "registerConf")
			.setParam(key: "entryId", value: entryId)

		return request
	}
}
