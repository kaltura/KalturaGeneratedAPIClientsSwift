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
// Copyright (C) 2006-2021  Kaltura Inc.
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

/**  The Audit Trail service allows you to keep track of changes made to various
  Kaltura objects.   This service is disabled by default.  */
public final class AuditTrailService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func auditTrail<T: AuditTrail.AuditTrailTokenizer>() -> T {
			return T(self.append("auditTrail"))
		}
	}

	/**  Allows you to add an audit trail object and audit trail content associated with
	  Kaltura object  */
	public static func add(auditTrail: AuditTrail) -> RequestBuilder<AuditTrail, AuditTrail.AuditTrailTokenizer, AddTokenizer> {
		let request: RequestBuilder<AuditTrail, AuditTrail.AuditTrailTokenizer, AddTokenizer> = RequestBuilder<AuditTrail, AuditTrail.AuditTrailTokenizer, AddTokenizer>(service: "audit_audittrail", action: "add")
			.setParam(key: "auditTrail", value: auditTrail)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Retrieve an audit trail object by id  */
	public static func get(id: Int) -> RequestBuilder<AuditTrail, AuditTrail.AuditTrailTokenizer, GetTokenizer> {
		let request: RequestBuilder<AuditTrail, AuditTrail.AuditTrailTokenizer, GetTokenizer> = RequestBuilder<AuditTrail, AuditTrail.AuditTrailTokenizer, GetTokenizer>(service: "audit_audittrail", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: AuditTrailFilter.AuditTrailFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<AuditTrailListResponse, AuditTrailListResponse.AuditTrailListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: AuditTrailFilter?) -> RequestBuilder<AuditTrailListResponse, AuditTrailListResponse.AuditTrailListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List audit trail objects by filter and pager  */
	public static func list(filter: AuditTrailFilter?, pager: FilterPager?) -> RequestBuilder<AuditTrailListResponse, AuditTrailListResponse.AuditTrailListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AuditTrailListResponse, AuditTrailListResponse.AuditTrailListResponseTokenizer, ListTokenizer> = RequestBuilder<AuditTrailListResponse, AuditTrailListResponse.AuditTrailListResponseTokenizer, ListTokenizer>(service: "audit_audittrail", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}
}
