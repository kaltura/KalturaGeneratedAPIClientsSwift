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

/**  EmailIngestionProfile service lets you manage email ingestion profile records  */
public final class EmailIngestionProfileService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var EmailIP: EmailIngestionProfile.EmailIngestionProfileTokenizer {
			get {
				return EmailIngestionProfile.EmailIngestionProfileTokenizer(self.append("EmailIP")) 
			}
		}
	}

	/**  EmailIngestionProfile Add action allows you to add a EmailIngestionProfile to
	  Kaltura DB  */
	public static func add(EmailIP: EmailIngestionProfile) -> RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, AddTokenizer> {
		let request: RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, AddTokenizer> = RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, AddTokenizer>(service: "emailingestionprofile", action: "add")
			.setBody(key: "EmailIP", value: EmailIP)

		return request
	}

	public class AddMediaEntryTokenizer: ClientTokenizer  {
		
		public var mediaEntry: MediaEntry.MediaEntryTokenizer {
			get {
				return MediaEntry.MediaEntryTokenizer(self.append("mediaEntry")) 
			}
		}
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
		
		public var emailProfId: BaseTokenizedObject {
			get {
				return self.append("emailProfId") 
			}
		}
		
		public var fromAddress: BaseTokenizedObject {
			get {
				return self.append("fromAddress") 
			}
		}
		
		public var emailMsgId: BaseTokenizedObject {
			get {
				return self.append("emailMsgId") 
			}
		}
	}

	/**  add KalturaMediaEntry from email ingestion  */
	public static func addMediaEntry(mediaEntry: MediaEntry, uploadTokenId: String, emailProfId: Int, fromAddress: String, emailMsgId: String) -> RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddMediaEntryTokenizer> {
		let request: RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddMediaEntryTokenizer> = RequestBuilder<MediaEntry, MediaEntry.MediaEntryTokenizer, AddMediaEntryTokenizer>(service: "emailingestionprofile", action: "addMediaEntry")
			.setBody(key: "mediaEntry", value: mediaEntry)
			.setBody(key: "uploadTokenId", value: uploadTokenId)
			.setBody(key: "emailProfId", value: emailProfId)
			.setBody(key: "fromAddress", value: fromAddress)
			.setBody(key: "emailMsgId", value: emailMsgId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Delete an existing EmailIngestionProfile  */
	public static func delete(id: Int) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "emailingestionprofile", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Retrieve a EmailIngestionProfile by id  */
	public static func get(id: Int) -> RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, GetTokenizer> {
		let request: RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, GetTokenizer> = RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, GetTokenizer>(service: "emailingestionprofile", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public class GetByEmailAddressTokenizer: ClientTokenizer  {
		
		public var emailAddress: BaseTokenizedObject {
			get {
				return self.append("emailAddress") 
			}
		}
	}

	/**  Retrieve a EmailIngestionProfile by email address  */
	public static func getByEmailAddress(emailAddress: String) -> RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, GetByEmailAddressTokenizer> {
		let request: RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, GetByEmailAddressTokenizer> = RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, GetByEmailAddressTokenizer>(service: "emailingestionprofile", action: "getByEmailAddress")
			.setBody(key: "emailAddress", value: emailAddress)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var EmailIP: EmailIngestionProfile.EmailIngestionProfileTokenizer {
			get {
				return EmailIngestionProfile.EmailIngestionProfileTokenizer(self.append("EmailIP")) 
			}
		}
	}

	/**  Update an existing EmailIngestionProfile  */
	public static func update(id: Int, EmailIP: EmailIngestionProfile) -> RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, UpdateTokenizer> = RequestBuilder<EmailIngestionProfile, EmailIngestionProfile.EmailIngestionProfileTokenizer, UpdateTokenizer>(service: "emailingestionprofile", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "EmailIP", value: EmailIP)

		return request
	}
}
