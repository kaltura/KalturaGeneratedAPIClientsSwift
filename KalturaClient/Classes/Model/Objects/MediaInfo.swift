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

open class MediaInfo: ObjectBase {

	/**  The id of the media info  */
	public var id: Int? = nil
	/**  The id of the related flavor asset  */
	public var flavorAssetId: String? = nil
	/**  The file size  */
	public var fileSize: Int? = nil
	/**  The container format  */
	public var containerFormat: String? = nil
	/**  The container id  */
	public var containerId: String? = nil
	/**  The container profile  */
	public var containerProfile: String? = nil
	/**  The container duration  */
	public var containerDuration: Int? = nil
	/**  The container bit rate  */
	public var containerBitRate: Int? = nil
	/**  The video format  */
	public var videoFormat: String? = nil
	/**  The video codec id  */
	public var videoCodecId: String? = nil
	/**  The video duration  */
	public var videoDuration: Int? = nil
	/**  The video bit rate  */
	public var videoBitRate: Int? = nil
	/**  The video bit rate mode  */
	public var videoBitRateMode: BitRateMode? = nil
	/**  The video width  */
	public var videoWidth: Int? = nil
	/**  The video height  */
	public var videoHeight: Int? = nil
	/**  The video frame rate  */
	public var videoFrameRate: Double? = nil
	/**  The video display aspect ratio (dar)  */
	public var videoDar: Double? = nil
	public var videoRotation: Int? = nil
	/**  The audio format  */
	public var audioFormat: String? = nil
	/**  The audio codec id  */
	public var audioCodecId: String? = nil
	/**  The audio duration  */
	public var audioDuration: Int? = nil
	/**  The audio bit rate  */
	public var audioBitRate: Int? = nil
	/**  The audio bit rate mode  */
	public var audioBitRateMode: BitRateMode? = nil
	/**  The number of audio channels  */
	public var audioChannels: Int? = nil
	/**  The audio sampling rate  */
	public var audioSamplingRate: Int? = nil
	/**  The audio resolution  */
	public var audioResolution: Int? = nil
	/**  The writing library  */
	public var writingLib: String? = nil
	/**  The data as returned by the mediainfo command line  */
	public var rawData: String? = nil
	public var multiStreamInfo: String? = nil
	public var scanType: Int? = nil
	public var multiStream: String? = nil
	public var isFastStart: Int? = nil
	public var contentStreams: String? = nil
	public var complexityValue: Int? = nil
	public var maxGOP: Double? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["id"] != nil {
			id = dict["id"] as? Int
		}
		if dict["flavorAssetId"] != nil {
			flavorAssetId = dict["flavorAssetId"] as? String
		}
		if dict["fileSize"] != nil {
			fileSize = dict["fileSize"] as? Int
		}
		if dict["containerFormat"] != nil {
			containerFormat = dict["containerFormat"] as? String
		}
		if dict["containerId"] != nil {
			containerId = dict["containerId"] as? String
		}
		if dict["containerProfile"] != nil {
			containerProfile = dict["containerProfile"] as? String
		}
		if dict["containerDuration"] != nil {
			containerDuration = dict["containerDuration"] as? Int
		}
		if dict["containerBitRate"] != nil {
			containerBitRate = dict["containerBitRate"] as? Int
		}
		if dict["videoFormat"] != nil {
			videoFormat = dict["videoFormat"] as? String
		}
		if dict["videoCodecId"] != nil {
			videoCodecId = dict["videoCodecId"] as? String
		}
		if dict["videoDuration"] != nil {
			videoDuration = dict["videoDuration"] as? Int
		}
		if dict["videoBitRate"] != nil {
			videoBitRate = dict["videoBitRate"] as? Int
		}
		if dict["videoBitRateMode"] != nil {
			videoBitRateMode = BitRateMode(rawValue: (dict["videoBitRateMode"] as? Int)!)
		}
		if dict["videoWidth"] != nil {
			videoWidth = dict["videoWidth"] as? Int
		}
		if dict["videoHeight"] != nil {
			videoHeight = dict["videoHeight"] as? Int
		}
		if dict["videoFrameRate"] != nil {
			videoFrameRate = dict["videoFrameRate"] as? Double
		}
		if dict["videoDar"] != nil {
			videoDar = dict["videoDar"] as? Double
		}
		if dict["videoRotation"] != nil {
			videoRotation = dict["videoRotation"] as? Int
		}
		if dict["audioFormat"] != nil {
			audioFormat = dict["audioFormat"] as? String
		}
		if dict["audioCodecId"] != nil {
			audioCodecId = dict["audioCodecId"] as? String
		}
		if dict["audioDuration"] != nil {
			audioDuration = dict["audioDuration"] as? Int
		}
		if dict["audioBitRate"] != nil {
			audioBitRate = dict["audioBitRate"] as? Int
		}
		if dict["audioBitRateMode"] != nil {
			audioBitRateMode = BitRateMode(rawValue: (dict["audioBitRateMode"] as? Int)!)
		}
		if dict["audioChannels"] != nil {
			audioChannels = dict["audioChannels"] as? Int
		}
		if dict["audioSamplingRate"] != nil {
			audioSamplingRate = dict["audioSamplingRate"] as? Int
		}
		if dict["audioResolution"] != nil {
			audioResolution = dict["audioResolution"] as? Int
		}
		if dict["writingLib"] != nil {
			writingLib = dict["writingLib"] as? String
		}
		if dict["rawData"] != nil {
			rawData = dict["rawData"] as? String
		}
		if dict["multiStreamInfo"] != nil {
			multiStreamInfo = dict["multiStreamInfo"] as? String
		}
		if dict["scanType"] != nil {
			scanType = dict["scanType"] as? Int
		}
		if dict["multiStream"] != nil {
			multiStream = dict["multiStream"] as? String
		}
		if dict["isFastStart"] != nil {
			isFastStart = dict["isFastStart"] as? Int
		}
		if dict["contentStreams"] != nil {
			contentStreams = dict["contentStreams"] as? String
		}
		if dict["complexityValue"] != nil {
			complexityValue = dict["complexityValue"] as? Int
		}
		if dict["maxGOP"] != nil {
			maxGOP = dict["maxGOP"] as? Double
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(flavorAssetId != nil) {
			dict["flavorAssetId"] = flavorAssetId!
		}
		if(fileSize != nil) {
			dict["fileSize"] = fileSize!
		}
		if(containerFormat != nil) {
			dict["containerFormat"] = containerFormat!
		}
		if(containerId != nil) {
			dict["containerId"] = containerId!
		}
		if(containerProfile != nil) {
			dict["containerProfile"] = containerProfile!
		}
		if(containerDuration != nil) {
			dict["containerDuration"] = containerDuration!
		}
		if(containerBitRate != nil) {
			dict["containerBitRate"] = containerBitRate!
		}
		if(videoFormat != nil) {
			dict["videoFormat"] = videoFormat!
		}
		if(videoCodecId != nil) {
			dict["videoCodecId"] = videoCodecId!
		}
		if(videoDuration != nil) {
			dict["videoDuration"] = videoDuration!
		}
		if(videoBitRate != nil) {
			dict["videoBitRate"] = videoBitRate!
		}
		if(videoBitRateMode != nil) {
			dict["videoBitRateMode"] = videoBitRateMode!.rawValue
		}
		if(videoWidth != nil) {
			dict["videoWidth"] = videoWidth!
		}
		if(videoHeight != nil) {
			dict["videoHeight"] = videoHeight!
		}
		if(videoFrameRate != nil) {
			dict["videoFrameRate"] = videoFrameRate!
		}
		if(videoDar != nil) {
			dict["videoDar"] = videoDar!
		}
		if(videoRotation != nil) {
			dict["videoRotation"] = videoRotation!
		}
		if(audioFormat != nil) {
			dict["audioFormat"] = audioFormat!
		}
		if(audioCodecId != nil) {
			dict["audioCodecId"] = audioCodecId!
		}
		if(audioDuration != nil) {
			dict["audioDuration"] = audioDuration!
		}
		if(audioBitRate != nil) {
			dict["audioBitRate"] = audioBitRate!
		}
		if(audioBitRateMode != nil) {
			dict["audioBitRateMode"] = audioBitRateMode!.rawValue
		}
		if(audioChannels != nil) {
			dict["audioChannels"] = audioChannels!
		}
		if(audioSamplingRate != nil) {
			dict["audioSamplingRate"] = audioSamplingRate!
		}
		if(audioResolution != nil) {
			dict["audioResolution"] = audioResolution!
		}
		if(writingLib != nil) {
			dict["writingLib"] = writingLib!
		}
		if(rawData != nil) {
			dict["rawData"] = rawData!
		}
		if(multiStreamInfo != nil) {
			dict["multiStreamInfo"] = multiStreamInfo!
		}
		if(scanType != nil) {
			dict["scanType"] = scanType!
		}
		if(multiStream != nil) {
			dict["multiStream"] = multiStream!
		}
		if(isFastStart != nil) {
			dict["isFastStart"] = isFastStart!
		}
		if(contentStreams != nil) {
			dict["contentStreams"] = contentStreams!
		}
		if(complexityValue != nil) {
			dict["complexityValue"] = complexityValue!
		}
		if(maxGOP != nil) {
			dict["maxGOP"] = maxGOP!
		}
		return dict
	}
}

