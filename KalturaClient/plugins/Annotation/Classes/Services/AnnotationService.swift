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

/**  Annotation service - Video Annotation  */
public final class AnnotationService{

	/**  Allows you to add an annotation object associated with an entry  */
	public static func add(annotation: CuePoint) -> RequestBuilder<Annotation> {
		let request: RequestBuilder<Annotation> = RequestBuilder<Annotation>(service: "annotation_annotation", action: "add")
			.setBody(key: "annotation", value: annotation)

		return request
	}

	/**  Allows you to add multiple cue points objects by uploading XML that contains
	  multiple cue point definitions  */
	public static func addFromBulk(fileData: RequestFile) -> RequestBuilder<CuePointListResponse> {
		let request: RequestBuilder<CuePointListResponse> = RequestBuilder<CuePointListResponse>(service: "annotation_annotation", action: "addFromBulk")
			.setFile(key: "fileData", value: fileData)

		return request
	}

	/**  Clone cuePoint with id to given entry  */
	public static func clone(id: String, entryId: String) -> RequestBuilder<CuePoint> {
		let request: RequestBuilder<CuePoint> = RequestBuilder<CuePoint>(service: "annotation_annotation", action: "clone")
			.setBody(key: "id", value: id)
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func count() -> RequestBuilder<Int> {
		return count(filter: nil)
	}

	/**  count cue point objects by filter  */
	public static func count(filter: CuePointFilter?) -> RequestBuilder<Int> {
		let request: RequestBuilder<Int> = RequestBuilder<Int>(service: "annotation_annotation", action: "count")
			.setBody(key: "filter", value: filter)

		return request
	}

	/**  delete cue point by id, and delete all children cue points  */
	public static func delete(id: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "annotation_annotation", action: "delete")
			.setBody(key: "id", value: id)

		return request
	}

	/**  Retrieve an CuePoint object by id  */
	public static func get(id: String) -> RequestBuilder<CuePoint> {
		let request: RequestBuilder<CuePoint> = RequestBuilder<CuePoint>(service: "annotation_annotation", action: "get")
			.setBody(key: "id", value: id)

		return request
	}

	public static func list() -> RequestBuilder<AnnotationListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: CuePointFilter?) -> RequestBuilder<AnnotationListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List annotation objects by filter and pager  */
	public static func list(filter: CuePointFilter?, pager: FilterPager?) -> RequestBuilder<AnnotationListResponse> {
		let request: RequestBuilder<AnnotationListResponse> = RequestBuilder<AnnotationListResponse>(service: "annotation_annotation", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update annotation by id  */
	public static func update(id: String, annotation: CuePoint) -> RequestBuilder<Annotation> {
		let request: RequestBuilder<Annotation> = RequestBuilder<Annotation>(service: "annotation_annotation", action: "update")
			.setBody(key: "id", value: id)
			.setBody(key: "annotation", value: annotation)

		return request
	}

	/**  Update cuePoint status by id  */
	public static func updateStatus(id: String, status: CuePointStatus) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "annotation_annotation", action: "updateStatus")
			.setBody(key: "id", value: id)
			.setBody(key: "status", value: status.rawValue)

		return request
	}
}
