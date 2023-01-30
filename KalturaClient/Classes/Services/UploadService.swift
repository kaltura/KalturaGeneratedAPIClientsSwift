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

public final class UploadService{

	public class GetUploadedFileTokenByFileNameTokenizer: ClientTokenizer  {
		
		public var fileName: BaseTokenizedObject {
			get {
				return self.append("fileName") 
			}
		}
	}

	public static func getUploadedFileTokenByFileName(fileName: String) -> RequestBuilder<UploadResponse, UploadResponse.UploadResponseTokenizer, GetUploadedFileTokenByFileNameTokenizer> {
		let request: RequestBuilder<UploadResponse, UploadResponse.UploadResponseTokenizer, GetUploadedFileTokenByFileNameTokenizer> = RequestBuilder<UploadResponse, UploadResponse.UploadResponseTokenizer, GetUploadedFileTokenByFileNameTokenizer>(service: "upload", action: "getUploadedFileTokenByFileName")
			.setParam(key: "fileName", value: fileName)

		return request
	}

	public class UploadTokenizer: ClientTokenizer  {
	}

	public static func upload(fileData: RequestFile) -> RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> = RequestBuilder<String, BaseTokenizedObject, UploadTokenizer>(service: "upload", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
