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

/**  Abstract class representing the final output recipients going into the batch
  mechanism  */
open class EmailNotificationRecipientJobData: ObjectBase {

	public class EmailNotificationRecipientJobDataTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var providerType: BaseTokenizedObject {
			get {
				return self.append("providerType") 
			}
		}
	}

	/**  Provider type of the job data.  */
	public var providerType: EmailNotificationRecipientProviderType? = nil


	public func setMultiRequestToken(providerType: String) {
		self.dict["providerType"] = providerType
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["providerType"] != nil {
			providerType = EmailNotificationRecipientProviderType(rawValue: "\(dict["providerType"]!)")
		}

	}

}

