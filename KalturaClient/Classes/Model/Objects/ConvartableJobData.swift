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

open class ConvartableJobData: JobData {

	public var srcFileSyncLocalPath: String? = nil
	/**  The translated path as used by the scheduler  */
	public var actualSrcFileSyncLocalPath: String? = nil
	public var srcFileSyncRemoteUrl: String? = nil
	public var srcFileSyncs: Array<SourceFileSyncDescriptor>? = nil
	public var engineVersion: Int? = nil
	public var flavorParamsOutputId: Int? = nil
	public var flavorParamsOutput: FlavorParamsOutput? = nil
	public var mediaInfoId: Int? = nil
	public var currentOperationSet: Int? = nil
	public var currentOperationIndex: Int? = nil
	public var pluginData: Array<KeyValue>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["srcFileSyncLocalPath"] != nil {
			srcFileSyncLocalPath = dict["srcFileSyncLocalPath"] as? String
		}
		if dict["actualSrcFileSyncLocalPath"] != nil {
			actualSrcFileSyncLocalPath = dict["actualSrcFileSyncLocalPath"] as? String
		}
		if dict["srcFileSyncRemoteUrl"] != nil {
			srcFileSyncRemoteUrl = dict["srcFileSyncRemoteUrl"] as? String
		}
		if dict["srcFileSyncs"] != nil {
			srcFileSyncs = try JSONParser.parse(array: dict["srcFileSyncs"] as! [Any])
		}
		if dict["engineVersion"] != nil {
			engineVersion = dict["engineVersion"] as? Int
		}
		if dict["flavorParamsOutputId"] != nil {
			flavorParamsOutputId = dict["flavorParamsOutputId"] as? Int
		}
		if dict["flavorParamsOutput"] != nil {
		flavorParamsOutput = try JSONParser.parse(object: dict["flavorParamsOutput"] as! [String: Any])		}
		if dict["mediaInfoId"] != nil {
			mediaInfoId = dict["mediaInfoId"] as? Int
		}
		if dict["currentOperationSet"] != nil {
			currentOperationSet = dict["currentOperationSet"] as? Int
		}
		if dict["currentOperationIndex"] != nil {
			currentOperationIndex = dict["currentOperationIndex"] as? Int
		}
		if dict["pluginData"] != nil {
			pluginData = try JSONParser.parse(array: dict["pluginData"] as! [Any])
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(srcFileSyncLocalPath != nil) {
			dict["srcFileSyncLocalPath"] = srcFileSyncLocalPath!
		}
		if(actualSrcFileSyncLocalPath != nil) {
			dict["actualSrcFileSyncLocalPath"] = actualSrcFileSyncLocalPath!
		}
		if(srcFileSyncRemoteUrl != nil) {
			dict["srcFileSyncRemoteUrl"] = srcFileSyncRemoteUrl!
		}
		if(srcFileSyncs != nil) {
			dict["srcFileSyncs"] = srcFileSyncs!.map { value in value.toDictionary() }
		}
		if(engineVersion != nil) {
			dict["engineVersion"] = engineVersion!
		}
		if(flavorParamsOutputId != nil) {
			dict["flavorParamsOutputId"] = flavorParamsOutputId!
		}
		if(flavorParamsOutput != nil) {
			dict["flavorParamsOutput"] = flavorParamsOutput!.toDictionary()
		}
		if(mediaInfoId != nil) {
			dict["mediaInfoId"] = mediaInfoId!
		}
		if(currentOperationSet != nil) {
			dict["currentOperationSet"] = currentOperationSet!
		}
		if(currentOperationIndex != nil) {
			dict["currentOperationIndex"] = currentOperationIndex!
		}
		if(pluginData != nil) {
			dict["pluginData"] = pluginData!.map { value in value.toDictionary() }
		}
		return dict
	}
}

