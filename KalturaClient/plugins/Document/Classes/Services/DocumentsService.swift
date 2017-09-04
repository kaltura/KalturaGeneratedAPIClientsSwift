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

/**  Document service lets you upload and manage document files  */
public final class DocumentsService{

	public class AddFromEntryTokenizer: ClientTokenizer  {
		
		public var sourceEntryId: BaseTokenizedObject {
			get {
				return self.append("sourceEntryId") 
			}
		}
		
		public func documentEntry<T: DocumentEntry.DocumentEntryTokenizer>() -> T {
			return T(self.append("documentEntry"))
		}
		
		public var sourceFlavorParamsId: BaseTokenizedObject {
			get {
				return self.append("sourceFlavorParamsId") 
			}
		}
	}

	public static func addFromEntry(sourceEntryId: String) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromEntryTokenizer> {
		return addFromEntry(sourceEntryId: sourceEntryId, documentEntry: nil)
	}

	public static func addFromEntry(sourceEntryId: String, documentEntry: DocumentEntry?) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromEntryTokenizer> {
		return addFromEntry(sourceEntryId: sourceEntryId, documentEntry: documentEntry, sourceFlavorParamsId: nil)
	}

	/**  Copy entry into new entry  */
	public static func addFromEntry(sourceEntryId: String, documentEntry: DocumentEntry?, sourceFlavorParamsId: Int?) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromEntryTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromEntryTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromEntryTokenizer>(service: "document_documents", action: "addFromEntry")
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "documentEntry", value: documentEntry)
			.setBody(key: "sourceFlavorParamsId", value: sourceFlavorParamsId)

		return request
	}

	public class AddFromFlavorAssetTokenizer: ClientTokenizer  {
		
		public var sourceFlavorAssetId: BaseTokenizedObject {
			get {
				return self.append("sourceFlavorAssetId") 
			}
		}
		
		public func documentEntry<T: DocumentEntry.DocumentEntryTokenizer>() -> T {
			return T(self.append("documentEntry"))
		}
	}

	public static func addFromFlavorAsset(sourceFlavorAssetId: String) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromFlavorAssetTokenizer> {
		return addFromFlavorAsset(sourceFlavorAssetId: sourceFlavorAssetId, documentEntry: nil)
	}

	/**  Copy flavor asset into new entry  */
	public static func addFromFlavorAsset(sourceFlavorAssetId: String, documentEntry: DocumentEntry?) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromFlavorAssetTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromFlavorAssetTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromFlavorAssetTokenizer>(service: "document_documents", action: "addFromFlavorAsset")
			.setBody(key: "sourceFlavorAssetId", value: sourceFlavorAssetId)
			.setBody(key: "documentEntry", value: documentEntry)

		return request
	}

	public class AddFromUploadedFileTokenizer: ClientTokenizer  {
		
		public func documentEntry<T: DocumentEntry.DocumentEntryTokenizer>() -> T {
			return T(self.append("documentEntry"))
		}
		
		public var uploadTokenId: BaseTokenizedObject {
			get {
				return self.append("uploadTokenId") 
			}
		}
	}

	/**  Add new document entry after the specific document file was uploaded and the
	  upload token id exists  */
	public static func addFromUploadedFile(documentEntry: DocumentEntry, uploadTokenId: String) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromUploadedFileTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromUploadedFileTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, AddFromUploadedFileTokenizer>(service: "document_documents", action: "addFromUploadedFile")
			.setBody(key: "documentEntry", value: documentEntry)
			.setBody(key: "uploadTokenId", value: uploadTokenId)

		return request
	}

	public class ApproveReplaceTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Approves document replacement  */
	public static func approveReplace(entryId: String) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, ApproveReplaceTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, ApproveReplaceTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, ApproveReplaceTokenizer>(service: "document_documents", action: "approveReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class CancelReplaceTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Cancels document replacement  */
	public static func cancelReplace(entryId: String) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, CancelReplaceTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, CancelReplaceTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, CancelReplaceTokenizer>(service: "document_documents", action: "cancelReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class ConvertTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
		
		public var dynamicConversionAttributes: ArrayTokenizedObject<ConversionAttribute.ConversionAttributeTokenizer> {
			get {
				return ArrayTokenizedObject<ConversionAttribute.ConversionAttributeTokenizer>(self.append("dynamicConversionAttributes"))
			} 
		}
	}

	public static func convert(entryId: String) -> RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> {
		return convert(entryId: entryId, conversionProfileId: nil)
	}

	public static func convert(entryId: String, conversionProfileId: Int?) -> RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> {
		return convert(entryId: entryId, conversionProfileId: conversionProfileId, dynamicConversionAttributes: nil)
	}

	/**  Convert entry  */
	public static func convert(entryId: String, conversionProfileId: Int?, dynamicConversionAttributes: Array<ConversionAttribute>?) -> RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> {
		let request: RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer> = RequestBuilder<Int64, BaseTokenizedObject, ConvertTokenizer>(service: "document_documents", action: "convert")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "dynamicConversionAttributes", value: dynamicConversionAttributes)

		return request
	}

	public class ConvertPptToSwfTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  This will queue a batch job for converting the document file to swf   Returns
	  the URL where the new swf will be available  */
	public static func convertPptToSwf(entryId: String) -> RequestBuilder<String, BaseTokenizedObject, ConvertPptToSwfTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, ConvertPptToSwfTokenizer> = RequestBuilder<String, BaseTokenizedObject, ConvertPptToSwfTokenizer>(service: "document_documents", action: "convertPptToSwf")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class DeleteTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
	}

	/**  Delete a document entry.  */
	public static func delete(entryId: String) -> NullRequestBuilder {
		let request: NullRequestBuilder = NullRequestBuilder(service: "document_documents", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public class GetTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public var version: BaseTokenizedObject {
			get {
				return self.append("version") 
			}
		}
	}

	public static func get(entryId: String) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, GetTokenizer> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get document entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, GetTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, GetTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, GetTokenizer>(service: "document_documents", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	public class ListTokenizer: ClientTokenizer  {
		
		public func filter<T: DocumentEntryFilter.DocumentEntryFilterTokenizer>() -> T {
			return T(self.append("filter"))
		}
		
		public func pager<T: FilterPager.FilterPagerTokenizer>() -> T {
			return T(self.append("pager"))
		}
	}

	public static func list() -> RequestBuilder<DocumentListResponse, DocumentListResponse.DocumentListResponseTokenizer, ListTokenizer> {
		return list(filter: nil)
	}

	public static func list(filter: DocumentEntryFilter?) -> RequestBuilder<DocumentListResponse, DocumentListResponse.DocumentListResponseTokenizer, ListTokenizer> {
		return list(filter: filter, pager: nil)
	}

	/**  List document entries by filter with paging support.  */
	public static func list(filter: DocumentEntryFilter?, pager: FilterPager?) -> RequestBuilder<DocumentListResponse, DocumentListResponse.DocumentListResponseTokenizer, ListTokenizer> {
		let request: RequestBuilder<DocumentListResponse, DocumentListResponse.DocumentListResponseTokenizer, ListTokenizer> = RequestBuilder<DocumentListResponse, DocumentListResponse.DocumentListResponseTokenizer, ListTokenizer>(service: "document_documents", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	public class UpdateTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func documentEntry<T: DocumentEntry.DocumentEntryTokenizer>() -> T {
			return T(self.append("documentEntry"))
		}
	}

	/**  Update document entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, documentEntry: DocumentEntry) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateTokenizer>(service: "document_documents", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "documentEntry", value: documentEntry)

		return request
	}

	public class UpdateContentTokenizer: ClientTokenizer  {
		
		public var entryId: BaseTokenizedObject {
			get {
				return self.append("entryId") 
			}
		}
		
		public func resource<T: Resource.ResourceTokenizer>() -> T {
			return T(self.append("resource"))
		}
		
		public var conversionProfileId: BaseTokenizedObject {
			get {
				return self.append("conversionProfileId") 
			}
		}
	}

	public static func updateContent(entryId: String, resource: Resource) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateContentTokenizer> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: nil)
	}

	/**  Replace content associated with the given document entry.  */
	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?) -> RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateContentTokenizer> {
		let request: RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateContentTokenizer> = RequestBuilder<DocumentEntry, DocumentEntry.DocumentEntryTokenizer, UpdateContentTokenizer>(service: "document_documents", action: "updateContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)
			.setBody(key: "conversionProfileId", value: conversionProfileId)

		return request
	}

	public class UploadTokenizer: ClientTokenizer  {
	}

	/**  Upload a document file to Kaltura, then the file can be used to create a
	  document entry.  */
	public static func upload(fileData: RequestFile) -> RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> {
		let request: RequestBuilder<String, BaseTokenizedObject, UploadTokenizer> = RequestBuilder<String, BaseTokenizedObject, UploadTokenizer>(service: "document_documents", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
