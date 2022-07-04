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

public final class BumperService{

	public class AddTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func bumper<T: Bumper.BumperTokenizer>() -> T {
			return T(self.append("bumper"))
		}
	}

	/**  Adds a bumper to an entry  */
	public static func add(entryId: String, bumper: Bumper) -> RequestBuilder<Bumper, Bumper.BumperTokenizer, AddTokenizer> {
		let request: RequestBuilder<Bumper, Bumper.BumperTokenizer, AddTokenizer> = RequestBuilder<Bumper, Bumper.BumperTokenizer, AddTokenizer>(service: "bumper_bumper", action: "add")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "bumper", value: bumper)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete bumper by EntryId  */
	public static func delete(entryId: String) -> RequestBuilder<Bumper, Bumper.BumperTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<Bumper, Bumper.BumperTokenizer, DeleteTokenizer> = RequestBuilder<Bumper, Bumper.BumperTokenizer, DeleteTokenizer>(service: "bumper_bumper", action: "delete")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Allows to get the bumper  */
	public static func get(entryId: String) -> RequestBuilder<Bumper, Bumper.BumperTokenizer, GetTokenizer> {
		let request: RequestBuilder<Bumper, Bumper.BumperTokenizer, GetTokenizer> = RequestBuilder<Bumper, Bumper.BumperTokenizer, GetTokenizer>(service: "bumper_bumper", action: "get")
			.setParam(key: "entryId", value: entryId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func bumper<T: Bumper.BumperTokenizer>() -> T {
			return T(self.append("bumper"))
		}
	}

	/**  Allows to update a bumper  */
	public static func update(entryId: String, bumper: Bumper) -> RequestBuilder<Bumper, Bumper.BumperTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Bumper, Bumper.BumperTokenizer, UpdateTokenizer> = RequestBuilder<Bumper, Bumper.BumperTokenizer, UpdateTokenizer>(service: "bumper_bumper", action: "update")
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "bumper", value: bumper)

		return request
	}
}
