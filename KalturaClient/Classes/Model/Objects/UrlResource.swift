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

/**  Used to ingest media that is available on remote server and accessible using the
  supplied URL, media file will be downloaded using import job in order to make
  the asset ready.  */
open class UrlResource: ContentResource {

	public class UrlResourceTokenizer: ContentResource.ContentResourceTokenizer {
		
		public var url: BaseTokenizedObject {
			get {
				return self.append("url") 
			}
		}
		
		public var forceAsyncDownload: BaseTokenizedObject {
			get {
				return self.append("forceAsyncDownload") 
			}
		}
	}

	/**  Remote URL, FTP, HTTP or HTTPS  */
	public var url: String? = nil
	/**  Force Import Job  */
	public var forceAsyncDownload: Bool? = nil


	public func setMultiRequestToken(url: String) {
		self.dict["url"] = url
	}
	
	public func setMultiRequestToken(forceAsyncDownload: String) {
		self.dict["forceAsyncDownload"] = forceAsyncDownload
	}
	
	public override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["url"] != nil {
			url = dict["url"] as? String
		}
		if dict["forceAsyncDownload"] != nil {
			forceAsyncDownload = dict["forceAsyncDownload"] as? Bool
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(url != nil) {
			dict["url"] = url!
		}
		if(forceAsyncDownload != nil) {
			dict["forceAsyncDownload"] = forceAsyncDownload!
		}
		return dict
	}
}

