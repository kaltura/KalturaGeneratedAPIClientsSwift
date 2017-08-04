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
 * This class was generated using exec.php
 * against an XML schema provided by Kaltura.
 * 
 * MANUAL CHANGES TO THIS CLASS WILL BE OVERWRITTEN.
 */

public final class UploadTokenService{

	public static func add() -> RequestBuilder<UploadToken> {
		return add(uploadToken: nil)
	}

	/**  Adds new upload token to upload a file  */
	public static func add(uploadToken: UploadToken?) -> RequestBuilder<UploadToken> {
		let request: RequestBuilder<UploadToken> = RequestBuilder<UploadToken>(service: "uploadtoken", action: "add")
			.setBody(key: "uploadToken", value: uploadToken)

		return request
	}

	/**  Deletes the upload token by upload token id  */
	public static func delete(uploadTokenId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "uploadtoken", action: "delete")
			.setBody(key: "uploadTokenId", value: uploadTokenId)

		return request
	}

	/**  Get upload token by id  */
	public static func get(uploadTokenId: String) -> RequestBuilder<UploadToken> {
		let request: RequestBuilder<UploadToken> = RequestBuilder<UploadToken>(service: "uploadtoken", action: "get")
			.setBody(key: "uploadTokenId", value: uploadTokenId)

		return request
	}

	public static func list() -> RequestBuilder<UploadTokenListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: UploadTokenFilter?) -> RequestBuilder<UploadTokenListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List upload token by filter with pager support.    When using a user session the
	  service will be restricted to users objects only.  */
	public static func list(filter: UploadTokenFilter?, pager: FilterPager?) -> RequestBuilder<UploadTokenListResponse> {
		let request: RequestBuilder<UploadTokenListResponse> = RequestBuilder<UploadTokenListResponse>(service: "uploadtoken", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public static func upload(uploadTokenId: String, fileData: RequestFile) -> RequestBuilder<UploadToken> {
		return upload(uploadTokenId: uploadTokenId, fileData: fileData, resume: false)
	}

	public static func upload(uploadTokenId: String, fileData: RequestFile, resume: Bool?) -> RequestBuilder<UploadToken> {
		return upload(uploadTokenId: uploadTokenId, fileData: fileData, resume: resume, finalChunk: true)
	}

	public static func upload(uploadTokenId: String, fileData: RequestFile, resume: Bool?, finalChunk: Bool?) -> RequestBuilder<UploadToken> {
		return upload(uploadTokenId: uploadTokenId, fileData: fileData, resume: resume, finalChunk: finalChunk, resumeAt: -1)
	}

	/**  Upload a file using the upload token id, returns an error on failure (an
	  exception will be thrown when using one of the Kaltura clients)   Chunks can be
	  uploaded in parallel and they will be appended according to their resumeAt
	  position.   A parallel upload session should have three stages:   1. A single
	  upload with resume=false and finalChunk=false   2. Parallel upload requests each
	  with resume=true,finalChunk=false and the expected resumetAt position.   If a
	  chunk fails to upload it can be re-uploaded.   3. After all of the chunks have
	  been uploaded a final chunk (can be of zero size) should be uploaded    with
	  resume=true, finalChunk=true and the expected resumeAt position. In case an
	  UPLOAD_TOKEN_CANNOT_MATCH_EXPECTED_SIZE exception   has been returned
	  (indicating not all of the chunks were appended yet) the final request can be
	  retried.  */
	public static func upload(uploadTokenId: String, fileData: RequestFile, resume: Bool?, finalChunk: Bool?, resumeAt: Double?) -> RequestBuilder<UploadToken> {
		let request: RequestBuilder<UploadToken> = RequestBuilder<UploadToken>(service: "uploadtoken", action: "upload")
			.setBody(key: "uploadTokenId", value: uploadTokenId)
			.setFile(key: "fileData", value: fileData)
			.setBody(key: "resume", value: resume)
			.setBody(key: "finalChunk", value: finalChunk)
			.setBody(key: "resumeAt", value: resumeAt)

		return request
	}
}
