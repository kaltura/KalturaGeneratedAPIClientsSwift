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

/**  Poll service  The poll service works against the cache entirely no DB instance
  should be used here  */
public final class PollService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var pollType: BaseTokenizedObject {
			get {
				return self.append("pollType") 
			}
		}
	}

	public static func add() -> RequestBuilder<String, BaseTokenizedObject, AddTokenizer> {
		return add(pollType: "SINGLE_ANONYMOUS")
	}

	/**  Add Action  */
	public static func add(pollType: String?) -> RequestBuilder<String, BaseTokenizedObject, AddTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, AddTokenizer> = RequestBuilder<String, BaseTokenizedObject, AddTokenizer>(service: "poll_poll", action: "add")
			.setParam(key: "pollType", value: pollType)

		return request
	}

	public class GetVoteTokenizer: ClientTokenizer  {
		
		public var pollId: BaseTokenizedObject {
			get {
				return self.append("pollId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
	}

	/**  Vote Action  */
	public static func getVote(pollId: String, userId: String) -> RequestBuilder<String, BaseTokenizedObject, GetVoteTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetVoteTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetVoteTokenizer>(service: "poll_poll", action: "getVote")
			.setParam(key: "pollId", value: pollId)
			.setParam(key: "userId", value: userId)

		return request
	}

	public class GetVotesTokenizer: ClientTokenizer  {
		
		public var pollId: BaseTokenizedObject {
			get {
				return self.append("pollId") 
			}
		}
		
		public var answerIds: BaseTokenizedObject {
			get {
				return self.append("answerIds") 
			}
		}
	}

	/**  Get Votes Action  */
	public static func getVotes(pollId: String, answerIds: String) -> RequestBuilder<String, BaseTokenizedObject, GetVotesTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, GetVotesTokenizer> = RequestBuilder<String, BaseTokenizedObject, GetVotesTokenizer>(service: "poll_poll", action: "getVotes")
			.setParam(key: "pollId", value: pollId)
			.setParam(key: "answerIds", value: answerIds)

		return request
	}

	public class ResetVotesTokenizer: ClientTokenizer  {
		
		public var pollId: BaseTokenizedObject {
			get {
				return self.append("pollId") 
			}
		}
	}

	/**  Get resetVotes Action  */
	public static func resetVotes(pollId: String) -> NullRequestBuilder<ResetVotesTokenizer> {
		let request: NullRequestBuilder<ResetVotesTokenizer> = NullRequestBuilder<ResetVotesTokenizer>(service: "poll_poll", action: "resetVotes")
			.setParam(key: "pollId", value: pollId)

		return request
	}

	public class VoteTokenizer: ClientTokenizer  {
		
		public var pollId: BaseTokenizedObject {
			get {
				return self.append("pollId") 
			}
		}
		
		public var userId: BaseTokenizedObject {
			get {
				return self.append("userId") 
			}
		}
		
		public var answerIds: BaseTokenizedObject {
			get {
				return self.append("answerIds") 
			}
		}
	}

	/**  Vote Action  */
	public static func vote(pollId: String, userId: String, answerIds: String) -> RequestBuilder<String, BaseTokenizedObject, VoteTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, VoteTokenizer> = RequestBuilder<String, BaseTokenizedObject, VoteTokenizer>(service: "poll_poll", action: "vote")
			.setParam(key: "pollId", value: pollId)
			.setParam(key: "userId", value: userId)
			.setParam(key: "answerIds", value: answerIds)

		return request
	}
}
