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

open class FlavorParams: AssetParams {

	/**  The video codec of the Flavor Params  */
	public var videoCodec: VideoCodec? = nil
	/**  The video bitrate (in KBits) of the Flavor Params  */
	public var videoBitrate: Int? = nil
	/**  The audio codec of the Flavor Params  */
	public var audioCodec: AudioCodec? = nil
	/**  The audio bitrate (in KBits) of the Flavor Params  */
	public var audioBitrate: Int? = nil
	/**  The number of audio channels for "downmixing"  */
	public var audioChannels: Int? = nil
	/**  The audio sample rate of the Flavor Params  */
	public var audioSampleRate: Int? = nil
	/**  The desired width of the Flavor Params  */
	public var width: Int? = nil
	/**  The desired height of the Flavor Params  */
	public var height: Int? = nil
	/**  The frame rate of the Flavor Params  */
	public var frameRate: Double? = nil
	/**  The gop size of the Flavor Params  */
	public var gopSize: Int? = nil
	/**  The list of conversion engines (comma separated)  */
	public var conversionEngines: String? = nil
	/**  The list of conversion engines extra params (separated with "|")  */
	public var conversionEnginesExtraParams: String? = nil
	public var twoPass: Bool? = nil
	public var deinterlice: Int? = nil
	public var rotate: Int? = nil
	public var operators: String? = nil
	public var engineVersion: Int? = nil
	/**  The container format of the Flavor Params  */
	public var format: ContainerFormat? = nil
	public var aspectRatioProcessingMode: Int? = nil
	public var forceFrameToMultiplication16: Int? = nil
	public var isGopInSec: Int? = nil
	public var isAvoidVideoShrinkFramesizeToSource: Int? = nil
	public var isAvoidVideoShrinkBitrateToSource: Int? = nil
	public var isVideoFrameRateForLowBrAppleHls: Int? = nil
	public var multiStream: String? = nil
	public var anamorphicPixels: Double? = nil
	public var isAvoidForcedKeyFrames: Int? = nil
	public var forcedKeyFramesMode: Int? = nil
	public var isCropIMX: Int? = nil
	public var optimizationPolicy: Int? = nil
	public var maxFrameRate: Int? = nil
	public var videoConstantBitrate: Int? = nil
	public var videoBitrateTolerance: Int? = nil
	public var watermarkData: String? = nil
	public var subtitlesData: String? = nil
	public var isEncrypted: Int? = nil
	public var contentAwareness: Double? = nil
	public var chunkedEncodeMode: Int? = nil
	public var clipOffset: Int? = nil
	public var clipDuration: Int? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["videoCodec"] != nil {
			videoCodec = VideoCodec(rawValue: "\(dict["videoCodec"]!)")
		}
		if dict["videoBitrate"] != nil {
			videoBitrate = dict["videoBitrate"] as? Int
		}
		if dict["audioCodec"] != nil {
			audioCodec = AudioCodec(rawValue: "\(dict["audioCodec"]!)")
		}
		if dict["audioBitrate"] != nil {
			audioBitrate = dict["audioBitrate"] as? Int
		}
		if dict["audioChannels"] != nil {
			audioChannels = dict["audioChannels"] as? Int
		}
		if dict["audioSampleRate"] != nil {
			audioSampleRate = dict["audioSampleRate"] as? Int
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["frameRate"] != nil {
			frameRate = dict["frameRate"] as? Double
		}
		if dict["gopSize"] != nil {
			gopSize = dict["gopSize"] as? Int
		}
		if dict["conversionEngines"] != nil {
			conversionEngines = dict["conversionEngines"] as? String
		}
		if dict["conversionEnginesExtraParams"] != nil {
			conversionEnginesExtraParams = dict["conversionEnginesExtraParams"] as? String
		}
		if dict["twoPass"] != nil {
			twoPass = dict["twoPass"] as? Bool
		}
		if dict["deinterlice"] != nil {
			deinterlice = dict["deinterlice"] as? Int
		}
		if dict["rotate"] != nil {
			rotate = dict["rotate"] as? Int
		}
		if dict["operators"] != nil {
			operators = dict["operators"] as? String
		}
		if dict["engineVersion"] != nil {
			engineVersion = dict["engineVersion"] as? Int
		}
		if dict["format"] != nil {
			format = ContainerFormat(rawValue: "\(dict["format"]!)")
		}
		if dict["aspectRatioProcessingMode"] != nil {
			aspectRatioProcessingMode = dict["aspectRatioProcessingMode"] as? Int
		}
		if dict["forceFrameToMultiplication16"] != nil {
			forceFrameToMultiplication16 = dict["forceFrameToMultiplication16"] as? Int
		}
		if dict["isGopInSec"] != nil {
			isGopInSec = dict["isGopInSec"] as? Int
		}
		if dict["isAvoidVideoShrinkFramesizeToSource"] != nil {
			isAvoidVideoShrinkFramesizeToSource = dict["isAvoidVideoShrinkFramesizeToSource"] as? Int
		}
		if dict["isAvoidVideoShrinkBitrateToSource"] != nil {
			isAvoidVideoShrinkBitrateToSource = dict["isAvoidVideoShrinkBitrateToSource"] as? Int
		}
		if dict["isVideoFrameRateForLowBrAppleHls"] != nil {
			isVideoFrameRateForLowBrAppleHls = dict["isVideoFrameRateForLowBrAppleHls"] as? Int
		}
		if dict["multiStream"] != nil {
			multiStream = dict["multiStream"] as? String
		}
		if dict["anamorphicPixels"] != nil {
			anamorphicPixels = dict["anamorphicPixels"] as? Double
		}
		if dict["isAvoidForcedKeyFrames"] != nil {
			isAvoidForcedKeyFrames = dict["isAvoidForcedKeyFrames"] as? Int
		}
		if dict["forcedKeyFramesMode"] != nil {
			forcedKeyFramesMode = dict["forcedKeyFramesMode"] as? Int
		}
		if dict["isCropIMX"] != nil {
			isCropIMX = dict["isCropIMX"] as? Int
		}
		if dict["optimizationPolicy"] != nil {
			optimizationPolicy = dict["optimizationPolicy"] as? Int
		}
		if dict["maxFrameRate"] != nil {
			maxFrameRate = dict["maxFrameRate"] as? Int
		}
		if dict["videoConstantBitrate"] != nil {
			videoConstantBitrate = dict["videoConstantBitrate"] as? Int
		}
		if dict["videoBitrateTolerance"] != nil {
			videoBitrateTolerance = dict["videoBitrateTolerance"] as? Int
		}
		if dict["watermarkData"] != nil {
			watermarkData = dict["watermarkData"] as? String
		}
		if dict["subtitlesData"] != nil {
			subtitlesData = dict["subtitlesData"] as? String
		}
		if dict["isEncrypted"] != nil {
			isEncrypted = dict["isEncrypted"] as? Int
		}
		if dict["contentAwareness"] != nil {
			contentAwareness = dict["contentAwareness"] as? Double
		}
		if dict["chunkedEncodeMode"] != nil {
			chunkedEncodeMode = dict["chunkedEncodeMode"] as? Int
		}
		if dict["clipOffset"] != nil {
			clipOffset = dict["clipOffset"] as? Int
		}
		if dict["clipDuration"] != nil {
			clipDuration = dict["clipDuration"] as? Int
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(videoCodec != nil) {
			dict["videoCodec"] = videoCodec!.rawValue
		}
		if(videoBitrate != nil) {
			dict["videoBitrate"] = videoBitrate!
		}
		if(audioCodec != nil) {
			dict["audioCodec"] = audioCodec!.rawValue
		}
		if(audioBitrate != nil) {
			dict["audioBitrate"] = audioBitrate!
		}
		if(audioChannels != nil) {
			dict["audioChannels"] = audioChannels!
		}
		if(audioSampleRate != nil) {
			dict["audioSampleRate"] = audioSampleRate!
		}
		if(width != nil) {
			dict["width"] = width!
		}
		if(height != nil) {
			dict["height"] = height!
		}
		if(frameRate != nil) {
			dict["frameRate"] = frameRate!
		}
		if(gopSize != nil) {
			dict["gopSize"] = gopSize!
		}
		if(conversionEngines != nil) {
			dict["conversionEngines"] = conversionEngines!
		}
		if(conversionEnginesExtraParams != nil) {
			dict["conversionEnginesExtraParams"] = conversionEnginesExtraParams!
		}
		if(twoPass != nil) {
			dict["twoPass"] = twoPass!
		}
		if(deinterlice != nil) {
			dict["deinterlice"] = deinterlice!
		}
		if(rotate != nil) {
			dict["rotate"] = rotate!
		}
		if(operators != nil) {
			dict["operators"] = operators!
		}
		if(engineVersion != nil) {
			dict["engineVersion"] = engineVersion!
		}
		if(format != nil) {
			dict["format"] = format!.rawValue
		}
		if(aspectRatioProcessingMode != nil) {
			dict["aspectRatioProcessingMode"] = aspectRatioProcessingMode!
		}
		if(forceFrameToMultiplication16 != nil) {
			dict["forceFrameToMultiplication16"] = forceFrameToMultiplication16!
		}
		if(isGopInSec != nil) {
			dict["isGopInSec"] = isGopInSec!
		}
		if(isAvoidVideoShrinkFramesizeToSource != nil) {
			dict["isAvoidVideoShrinkFramesizeToSource"] = isAvoidVideoShrinkFramesizeToSource!
		}
		if(isAvoidVideoShrinkBitrateToSource != nil) {
			dict["isAvoidVideoShrinkBitrateToSource"] = isAvoidVideoShrinkBitrateToSource!
		}
		if(isVideoFrameRateForLowBrAppleHls != nil) {
			dict["isVideoFrameRateForLowBrAppleHls"] = isVideoFrameRateForLowBrAppleHls!
		}
		if(multiStream != nil) {
			dict["multiStream"] = multiStream!
		}
		if(anamorphicPixels != nil) {
			dict["anamorphicPixels"] = anamorphicPixels!
		}
		if(isAvoidForcedKeyFrames != nil) {
			dict["isAvoidForcedKeyFrames"] = isAvoidForcedKeyFrames!
		}
		if(forcedKeyFramesMode != nil) {
			dict["forcedKeyFramesMode"] = forcedKeyFramesMode!
		}
		if(isCropIMX != nil) {
			dict["isCropIMX"] = isCropIMX!
		}
		if(optimizationPolicy != nil) {
			dict["optimizationPolicy"] = optimizationPolicy!
		}
		if(maxFrameRate != nil) {
			dict["maxFrameRate"] = maxFrameRate!
		}
		if(videoConstantBitrate != nil) {
			dict["videoConstantBitrate"] = videoConstantBitrate!
		}
		if(videoBitrateTolerance != nil) {
			dict["videoBitrateTolerance"] = videoBitrateTolerance!
		}
		if(watermarkData != nil) {
			dict["watermarkData"] = watermarkData!
		}
		if(subtitlesData != nil) {
			dict["subtitlesData"] = subtitlesData!
		}
		if(isEncrypted != nil) {
			dict["isEncrypted"] = isEncrypted!
		}
		if(contentAwareness != nil) {
			dict["contentAwareness"] = contentAwareness!
		}
		if(chunkedEncodeMode != nil) {
			dict["chunkedEncodeMode"] = chunkedEncodeMode!
		}
		if(clipOffset != nil) {
			dict["clipOffset"] = clipOffset!
		}
		if(clipDuration != nil) {
			dict["clipDuration"] = clipDuration!
		}
		return dict
	}
}

