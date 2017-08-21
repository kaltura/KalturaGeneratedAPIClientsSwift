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

open class ProvisionJobData: JobData {

	public var streamID: String? = nil
	public var backupStreamID: String? = nil
	public var rtmp: String? = nil
	public var encoderIP: String? = nil
	public var backupEncoderIP: String? = nil
	public var encoderPassword: String? = nil
	public var encoderUsername: String? = nil
	public var endDate: Int? = nil
	public var returnVal: String? = nil
	public var mediaType: Int? = nil
	public var primaryBroadcastingUrl: String? = nil
	public var secondaryBroadcastingUrl: String? = nil
	public var streamName: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["streamID"] != nil {
			streamID = dict["streamID"] as? String
		}
		if dict["backupStreamID"] != nil {
			backupStreamID = dict["backupStreamID"] as? String
		}
		if dict["rtmp"] != nil {
			rtmp = dict["rtmp"] as? String
		}
		if dict["encoderIP"] != nil {
			encoderIP = dict["encoderIP"] as? String
		}
		if dict["backupEncoderIP"] != nil {
			backupEncoderIP = dict["backupEncoderIP"] as? String
		}
		if dict["encoderPassword"] != nil {
			encoderPassword = dict["encoderPassword"] as? String
		}
		if dict["encoderUsername"] != nil {
			encoderUsername = dict["encoderUsername"] as? String
		}
		if dict["endDate"] != nil {
			endDate = dict["endDate"] as? Int
		}
		if dict["returnVal"] != nil {
			returnVal = dict["returnVal"] as? String
		}
		if dict["mediaType"] != nil {
			mediaType = dict["mediaType"] as? Int
		}
		if dict["primaryBroadcastingUrl"] != nil {
			primaryBroadcastingUrl = dict["primaryBroadcastingUrl"] as? String
		}
		if dict["secondaryBroadcastingUrl"] != nil {
			secondaryBroadcastingUrl = dict["secondaryBroadcastingUrl"] as? String
		}
		if dict["streamName"] != nil {
			streamName = dict["streamName"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(streamID != nil) {
			dict["streamID"] = streamID!
		}
		if(backupStreamID != nil) {
			dict["backupStreamID"] = backupStreamID!
		}
		if(rtmp != nil) {
			dict["rtmp"] = rtmp!
		}
		if(encoderIP != nil) {
			dict["encoderIP"] = encoderIP!
		}
		if(backupEncoderIP != nil) {
			dict["backupEncoderIP"] = backupEncoderIP!
		}
		if(encoderPassword != nil) {
			dict["encoderPassword"] = encoderPassword!
		}
		if(encoderUsername != nil) {
			dict["encoderUsername"] = encoderUsername!
		}
		if(endDate != nil) {
			dict["endDate"] = endDate!
		}
		if(returnVal != nil) {
			dict["returnVal"] = returnVal!
		}
		if(mediaType != nil) {
			dict["mediaType"] = mediaType!
		}
		if(primaryBroadcastingUrl != nil) {
			dict["primaryBroadcastingUrl"] = primaryBroadcastingUrl!
		}
		if(secondaryBroadcastingUrl != nil) {
			dict["secondaryBroadcastingUrl"] = secondaryBroadcastingUrl!
		}
		if(streamName != nil) {
			dict["streamName"] = streamName!
		}
		return dict
	}
}

