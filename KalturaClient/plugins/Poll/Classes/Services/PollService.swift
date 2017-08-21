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

/**  Poll service  The poll service works against the cache entirely no DB instance
  should be used here  */
public final class PollService{

	public static func add() -> RequestBuilder<String> {
		return add(pollType: "SINGLE_ANONYMOUS")
	}

	/**  Add Action  */
	public static func add(pollType: String?) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "poll_poll", action: "add")
			.setBody(key: "pollType", value: pollType)

		return request
	}

	/**  Vote Action  */
	public static func getVote(pollId: String, userId: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "poll_poll", action: "getVote")
			.setBody(key: "pollId", value: pollId)
			.setBody(key: "userId", value: userId)

		return request
	}

	/**  Get Votes Action  */
	public static func getVotes(pollId: String, answerIds: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "poll_poll", action: "getVotes")
			.setBody(key: "pollId", value: pollId)
			.setBody(key: "answerIds", value: answerIds)

		return request
	}

	/**  Get resetVotes Action  */
	public static func resetVotes(pollId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "poll_poll", action: "resetVotes")
			.setBody(key: "pollId", value: pollId)

		return request
	}

	/**  Vote Action  */
	public static func vote(pollId: String, userId: String, answerIds: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "poll_poll", action: "vote")
			.setBody(key: "pollId", value: pollId)
			.setBody(key: "userId", value: userId)
			.setBody(key: "answerIds", value: answerIds)

		return request
	}
}
