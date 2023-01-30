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
 * This class was generated using generate.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class VendorIntegrationService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func integration<T: IntegrationSetting.IntegrationSettingTokenizer>() -> T {
			return T(self.append("integration"))
		}
		
		public var remoteId: BaseTokenizedObject {
			get {
				return self.append("remoteId") 
			}
		}
	}

	/**  Add new integration setting object  */
	public static func add(integration: IntegrationSetting, remoteId: String) -> RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, AddTokenizer> {
		let request: RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, AddTokenizer> = RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, AddTokenizer>(service: "vendor_vendorintegration", action: "add")
			.setParam(key: "integration", value: integration)
			.setParam(key: "remoteId", value: remoteId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var integrationId: BaseTokenizedObject {
			get {
				return self.append("integrationId") 
			}
		}
	}

	/**  Delete integration object by ID  */
	public static func delete(integrationId: Int) -> RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, DeleteTokenizer> {
		let request: RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, DeleteTokenizer> = RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, DeleteTokenizer>(service: "vendor_vendorintegration", action: "delete")
			.setParam(key: "integrationId", value: integrationId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var integrationId: BaseTokenizedObject {
			get {
				return self.append("integrationId") 
			}
		}
	}

	/**  Retrieve integration setting object by ID  */
	public static func get(integrationId: Int) -> RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, GetTokenizer> {
		let request: RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, GetTokenizer> = RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, GetTokenizer>(service: "vendor_vendorintegration", action: "get")
			.setParam(key: "integrationId", value: integrationId)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func integrationSetting<T: IntegrationSetting.IntegrationSettingTokenizer>() -> T {
			return T(self.append("integrationSetting"))
		}
	}

	/**  Update an existing vedor catalog item object  */
	public static func update(id: Int, integrationSetting: IntegrationSetting) -> RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, UpdateTokenizer> = RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, UpdateTokenizer>(service: "vendor_vendorintegration", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "integrationSetting", value: integrationSetting)

		return request
	}

	public class UpdateStatusTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var status: BaseTokenizedObject {
			get {
				return self.append("status") 
			}
		}
	}

	/**  Update vendor catalog item status by id  */
	public static func updateStatus(id: Int, status: VendorIntegrationStatus) -> RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, UpdateStatusTokenizer> {
		let request: RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, UpdateStatusTokenizer> = RequestBuilder<IntegrationSetting, IntegrationSetting.IntegrationSettingTokenizer, UpdateStatusTokenizer>(service: "vendor_vendorintegration", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
