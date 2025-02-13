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

/**  Annotation service - Video Annotation  */
public final class AnnotationService{

	public class AddTokenizer: ClientTokenizer  {
		
		public func annotation<T: CuePoint.CuePointTokenizer>() -> T {
			return T(self.append("annotation"))
		}
	}

	/**  Allows you to add an annotation object associated with an entry  */
	public static func add(annotation: CuePoint) -> RequestBuilder<Annotation, Annotation.AnnotationTokenizer, AddTokenizer> {
		let request: RequestBuilder<Annotation, Annotation.AnnotationTokenizer, AddTokenizer> = RequestBuilder<Annotation, Annotation.AnnotationTokenizer, AddTokenizer>(service: "annotation_annotation", action: "add")
			.setParam(key: "annotation", value: annotation)

		return request
	}

	public class AddFromBulkTokenizer: ClientTokenizer  {
	}

	/**  Allows you to add multiple cue points objects by uploading XML that contains
	  multiple cue point definitions  */
	public static func addFromBulk(fileData: RequestFile) -> RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, AddFromBulkTokenizer> {
		let request: RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, AddFromBulkTokenizer> = RequestBuilder<CuePointListResponse, CuePointListResponse.CuePointListResponseTokenizer, AddFromBulkTokenizer>(service: "annotation_annotation", action: "addFromBulk")
			.setFile(key: "fileData", value: fileData)

		return request
	}

	public class CloneTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var parentId: BaseTokenizedObject {
			get {
				return self.append("parentId") 
			}
		}
	}

	public static func clone(id: String, entryId: String) -> RequestBuilder<Annotation, Annotation.AnnotationTokenizer, CloneTokenizer> {
		return clone(id: id, entryId: entryId, parentId: nil)
	}

	/**  Clone cuePoint with id to given entry  */
	public static func clone(id: String, entryId: String, parentId: String?) -> RequestBuilder<Annotation, Annotation.AnnotationTokenizer, CloneTokenizer> {
		let request: RequestBuilder<Annotation, Annotation.AnnotationTokenizer, CloneTokenizer> = RequestBuilder<Annotation, Annotation.AnnotationTokenizer, CloneTokenizer>(service: "annotation_annotation", action: "clone")
			.setParam(key: "id", value: id)
			.setParam(key: "entryId", value: entryId)
			.setParam(key: "parentId", value: parentId)

		return request
	}

	public class CountTokenizer: ClientTokenizer  {
		
		public func filter<T: CuePointFilter.CuePointFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
	}

	public static func count() -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		return count(filter: nil)
	}

	/**  count cue point objects by filter  */
	public static func count(filter: CuePointFilter?) -> RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> {
		let request: RequestBuilder<Int, BaseTokenizedObject, CountTokenizer> = RequestBuilder<Int, BaseTokenizedObject, CountTokenizer>(service: "annotation_annotation", action: "count")
			.setParam(key: "filter", value: filter)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  delete cue point by id, and delete all children cue points  */
	public static func delete(id: String) -> NullRequestBuilder<DeleteTokenizer> {
		let request: NullRequestBuilder<DeleteTokenizer> = NullRequestBuilder<DeleteTokenizer>(service: "annotation_annotation", action: "delete")
			.setParam(key: "id", value: id)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
	}

	/**  Retrieve an CuePoint object by id  */
	public static func get(id: String) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, GetTokenizer> {
		let request: RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, GetTokenizer> = RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, GetTokenizer>(service: "annotation_annotation", action: "get")
			.setParam(key: "id", value: id)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: CuePointFilter.CuePointFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<AnnotationListResponse, AnnotationListResponse.AnnotationListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: CuePointFilter?) -> RequestBuilder<AnnotationListResponse, AnnotationListResponse.AnnotationListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List annotation objects by filter and pager  */
	public static func list(filter: CuePointFilter?, pager: FilterPager?) -> RequestBuilder<AnnotationListResponse, AnnotationListResponse.AnnotationListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<AnnotationListResponse, AnnotationListResponse.AnnotationListResponseTokenizer, ListTokenizer> = RequestBuilder<AnnotationListResponse, AnnotationListResponse.AnnotationListResponseTokenizer, ListTokenizer>(service: "annotation_annotation", action: "list")
			.setParam(key: "filter", value: filter)
			.setParam(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public func annotation<T: CuePoint.CuePointTokenizer>() -> T {
			return T(self.append("annotation"))
		}
	}

	/**  Update annotation by id  */
	public static func update(id: String, annotation: CuePoint) -> RequestBuilder<Annotation, Annotation.AnnotationTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<Annotation, Annotation.AnnotationTokenizer, UpdateTokenizer> = RequestBuilder<Annotation, Annotation.AnnotationTokenizer, UpdateTokenizer>(service: "annotation_annotation", action: "update")
			.setParam(key: "id", value: id)
			.setParam(key: "annotation", value: annotation)

		return request
	}

	public class UpdateCuePointsTimesTokenizer: ClientTokenizer  {
		
		public var id: BaseTokenizedObject {
			get {
				return self.append("id") 
			}
		}
		
		public var startTime: BaseTokenizedObject {
			get {
				return self.append("startTime") 
			}
		}
		
		public var endTime: BaseTokenizedObject {
			get {
				return self.append("endTime") 
			}
		}
	}

	public static func updateCuePointsTimes(id: String, startTime: Int) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateCuePointsTimesTokenizer> {
		return updateCuePointsTimes(id: id, startTime: startTime, endTime: nil)
	}

	public static func updateCuePointsTimes(id: String, startTime: Int, endTime: Int?) -> RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateCuePointsTimesTokenizer> {
		let request: RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateCuePointsTimesTokenizer> = RequestBuilder<CuePoint, CuePoint.CuePointTokenizer, UpdateCuePointsTimesTokenizer>(service: "annotation_annotation", action: "updateCuePointsTimes")
			.setParam(key: "id", value: id)
			.setParam(key: "startTime", value: startTime)
			.setParam(key: "endTime", value: endTime)

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

	/**  Update cuePoint status by id  */
	public static func updateStatus(id: String, status: CuePointStatus) -> NullRequestBuilder<UpdateStatusTokenizer> {
		let request: NullRequestBuilder<UpdateStatusTokenizer> = NullRequestBuilder<UpdateStatusTokenizer>(service: "annotation_annotation", action: "updateStatus")
			.setParam(key: "id", value: id)
			.setParam(key: "status", value: status.rawValue)

		return request
	}
}
