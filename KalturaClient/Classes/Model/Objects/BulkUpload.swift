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

open class BulkUpload: ObjectBase {

	public var id: Int64? = nil
	public var uploadedBy: String? = nil
	public var uploadedByUserId: String? = nil
	public var uploadedOn: Int? = nil
	public var numOfEntries: Int? = nil
	public var status: BatchJobStatus? = nil
	public var logFileUrl: String? = nil
	public var csvFileUrl: String? = nil
	public var bulkFileUrl: String? = nil
	public var bulkUploadType: BulkUploadType? = nil
	public var results: Array<BulkUploadResult>? = nil
	public var error: String? = nil
	public var errorType: BatchJobErrorTypes? = nil
	public var errorNumber: Int? = nil
	public var fileName: String? = nil
	public var description: String? = nil
	public var numOfObjects: Int? = nil
	public var bulkUploadObjectType: BulkUploadObjectType? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int64
		}
		if dict["uploadedBy"] != nil {
			uploadedBy = dict["uploadedBy"] as? String
		}
		if dict["uploadedByUserId"] != nil {
			uploadedByUserId = dict["uploadedByUserId"] as? String
		}
		if dict["uploadedOn"] != nil {
			uploadedOn = dict["uploadedOn"] as? Int
		}
		if dict["numOfEntries"] != nil {
			numOfEntries = dict["numOfEntries"] as? Int
		}
		if dict["status"] != nil {
			status = BatchJobStatus(rawValue: (dict["status"] as? Int)!)
		}
		if dict["logFileUrl"] != nil {
			logFileUrl = dict["logFileUrl"] as? String
		}
		if dict["csvFileUrl"] != nil {
			csvFileUrl = dict["csvFileUrl"] as? String
		}
		if dict["bulkFileUrl"] != nil {
			bulkFileUrl = dict["bulkFileUrl"] as? String
		}
		if dict["bulkUploadType"] != nil {
			bulkUploadType = BulkUploadType(rawValue: "\(dict["bulkUploadType"]!)")
		}
		if dict["results"] != nil {
			results = try JSONParser.parse(array: dict["results"] as! [Any])
		}
		if dict["error"] != nil {
			error = dict["error"] as? String
		}
		if dict["errorType"] != nil {
			errorType = BatchJobErrorTypes(rawValue: (dict["errorType"] as? Int)!)
		}
		if dict["errorNumber"] != nil {
			errorNumber = dict["errorNumber"] as? Int
		}
		if dict["fileName"] != nil {
			fileName = dict["fileName"] as? String
		}
		if dict["description"] != nil {
			description = dict["description"] as? String
		}
		if dict["numOfObjects"] != nil {
			numOfObjects = dict["numOfObjects"] as? Int
		}
		if dict["bulkUploadObjectType"] != nil {
			bulkUploadObjectType = BulkUploadObjectType(rawValue: "\(dict["bulkUploadObjectType"]!)")
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(id != nil) {
			dict["id"] = id!
		}
		if(uploadedBy != nil) {
			dict["uploadedBy"] = uploadedBy!
		}
		if(uploadedByUserId != nil) {
			dict["uploadedByUserId"] = uploadedByUserId!
		}
		if(uploadedOn != nil) {
			dict["uploadedOn"] = uploadedOn!
		}
		if(numOfEntries != nil) {
			dict["numOfEntries"] = numOfEntries!
		}
		if(status != nil) {
			dict["status"] = status!.rawValue
		}
		if(logFileUrl != nil) {
			dict["logFileUrl"] = logFileUrl!
		}
		if(csvFileUrl != nil) {
			dict["csvFileUrl"] = csvFileUrl!
		}
		if(bulkFileUrl != nil) {
			dict["bulkFileUrl"] = bulkFileUrl!
		}
		if(bulkUploadType != nil) {
			dict["bulkUploadType"] = bulkUploadType!.rawValue
		}
		if(results != nil) {
			dict["results"] = results!.map { value in value.toDictionary() }
		}
		if(error != nil) {
			dict["error"] = error!
		}
		if(errorType != nil) {
			dict["errorType"] = errorType!.rawValue
		}
		if(errorNumber != nil) {
			dict["errorNumber"] = errorNumber!
		}
		if(fileName != nil) {
			dict["fileName"] = fileName!
		}
		if(description != nil) {
			dict["description"] = description!
		}
		if(numOfObjects != nil) {
			dict["numOfObjects"] = numOfObjects!
		}
		if(bulkUploadObjectType != nil) {
			dict["bulkUploadObjectType"] = bulkUploadObjectType!.rawValue
		}
		return dict
	}
}

