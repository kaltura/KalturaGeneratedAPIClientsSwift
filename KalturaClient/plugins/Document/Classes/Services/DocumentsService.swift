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

	public static func addFromEntry(sourceEntryId: String) -> RequestBuilder<DocumentEntry> {
		return addFromEntry(sourceEntryId: sourceEntryId, documentEntry: nil)
	}

	public static func addFromEntry(sourceEntryId: String, documentEntry: DocumentEntry?) -> RequestBuilder<DocumentEntry> {
		return addFromEntry(sourceEntryId: sourceEntryId, documentEntry: documentEntry, sourceFlavorParamsId: nil)
	}

	/**  Copy entry into new entry  */
	public static func addFromEntry(sourceEntryId: String, documentEntry: DocumentEntry?, sourceFlavorParamsId: Int?) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "addFromEntry")
			.setBody(key: "sourceEntryId", value: sourceEntryId)
			.setBody(key: "documentEntry", value: documentEntry)
			.setBody(key: "sourceFlavorParamsId", value: sourceFlavorParamsId)

		return request
	}

	public static func addFromFlavorAsset(sourceFlavorAssetId: String) -> RequestBuilder<DocumentEntry> {
		return addFromFlavorAsset(sourceFlavorAssetId: sourceFlavorAssetId, documentEntry: nil)
	}

	/**  Copy flavor asset into new entry  */
	public static func addFromFlavorAsset(sourceFlavorAssetId: String, documentEntry: DocumentEntry?) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "addFromFlavorAsset")
			.setBody(key: "sourceFlavorAssetId", value: sourceFlavorAssetId)
			.setBody(key: "documentEntry", value: documentEntry)

		return request
	}

	/**  Add new document entry after the specific document file was uploaded and the
	  upload token id exists  */
	public static func addFromUploadedFile(documentEntry: DocumentEntry, uploadTokenId: String) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "addFromUploadedFile")
			.setBody(key: "documentEntry", value: documentEntry)
			.setBody(key: "uploadTokenId", value: uploadTokenId)

		return request
	}

	/**  Approves document replacement  */
	public static func approveReplace(entryId: String) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "approveReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Cancels document replacement  */
	public static func cancelReplace(entryId: String) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "cancelReplace")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func convert(entryId: String) -> RequestBuilder<Int64> {
		return convert(entryId: entryId, conversionProfileId: nil)
	}

	public static func convert(entryId: String, conversionProfileId: Int?) -> RequestBuilder<Int64> {
		return convert(entryId: entryId, conversionProfileId: conversionProfileId, dynamicConversionAttributes: nil)
	}

	/**  Convert entry  */
	public static func convert(entryId: String, conversionProfileId: Int?, dynamicConversionAttributes: Array<ConversionAttribute>?) -> RequestBuilder<Int64> {
		let request: RequestBuilder<Int64> = RequestBuilder<Int64>(service: "document_documents", action: "convert")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "conversionProfileId", value: conversionProfileId)
			.setBody(key: "dynamicConversionAttributes", value: dynamicConversionAttributes)

		return request
	}

	/**  This will queue a batch job for converting the document file to swf   Returns
	  the URL where the new swf will be available  */
	public static func convertPptToSwf(entryId: String) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "document_documents", action: "convertPptToSwf")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	/**  Delete a document entry.  */
	public static func delete(entryId: String) -> RequestBuilder<Void> {
		let request: NullRequestBuilder = NullRequestBuilder(service: "document_documents", action: "delete")
			.setBody(key: "entryId", value: entryId)

		return request
	}

	public static func get(entryId: String) -> RequestBuilder<DocumentEntry> {
		return get(entryId: entryId, version: -1)
	}

	/**  Get document entry by ID.  */
	public static func get(entryId: String, version: Int?) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "get")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "version", value: version)

		return request
	}

	public static func list() -> RequestBuilder<DocumentListResponse> {
		return list(filter: nil)
	}

	public static func list(filter: DocumentEntryFilter?) -> RequestBuilder<DocumentListResponse> {
		return list(filter: filter, pager: nil)
	}

	/**  List document entries by filter with paging support.  */
	public static func list(filter: DocumentEntryFilter?, pager: FilterPager?) -> RequestBuilder<DocumentListResponse> {
		let request: RequestBuilder<DocumentListResponse> = RequestBuilder<DocumentListResponse>(service: "document_documents", action: "list")
			.setBody(key: "filter", value: filter)
			.setBody(key: "pager", value: pager)

		return request
	}

	/**  Update document entry. Only the properties that were set will be updated.  */
	public static func update(entryId: String, documentEntry: DocumentEntry) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "update")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "documentEntry", value: documentEntry)

		return request
	}

	public static func updateContent(entryId: String, resource: Resource) -> RequestBuilder<DocumentEntry> {
		return updateContent(entryId: entryId, resource: resource, conversionProfileId: nil)
	}

	/**  Replace content associated with the given document entry.  */
	public static func updateContent(entryId: String, resource: Resource, conversionProfileId: Int?) -> RequestBuilder<DocumentEntry> {
		let request: RequestBuilder<DocumentEntry> = RequestBuilder<DocumentEntry>(service: "document_documents", action: "updateContent")
			.setBody(key: "entryId", value: entryId)
			.setBody(key: "resource", value: resource)
			.setBody(key: "conversionProfileId", value: conversionProfileId)

		return request
	}

	/**  Upload a document file to Kaltura, then the file can be used to create a
	  document entry.  */
	public static func upload(fileData: RequestFile) -> RequestBuilder<String> {
		let request: RequestBuilder<String> = RequestBuilder<String>(service: "document_documents", action: "upload")
			.setFile(key: "fileData", value: fileData)

		return request
	}
}
