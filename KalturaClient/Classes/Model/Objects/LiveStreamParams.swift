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

open class LiveStreamParams: ObjectBase {

	/**  Bit rate of the stream. (i.e. 900)  */
	public var bitrate: Int? = nil
	/**  flavor asset id  */
	public var flavorId: String? = nil
	/**  Stream's width  */
	public var width: Int? = nil
	/**  Stream's height  */
	public var height: Int? = nil
	/**  Live stream's codec  */
	public var codec: String? = nil
	/**  Live stream's farme rate  */
	public var frameRate: Int? = nil
	/**  Live stream's key frame interval  */
	public var keyFrameInterval: Double? = nil
	/**  Live stream's language  */
	public var language: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["bitrate"] != nil {
			bitrate = dict["bitrate"] as? Int
		}
		if dict["flavorId"] != nil {
			flavorId = dict["flavorId"] as? String
		}
		if dict["width"] != nil {
			width = dict["width"] as? Int
		}
		if dict["height"] != nil {
			height = dict["height"] as? Int
		}
		if dict["codec"] != nil {
			codec = dict["codec"] as? String
		}
		if dict["frameRate"] != nil {
			frameRate = dict["frameRate"] as? Int
		}
		if dict["keyFrameInterval"] != nil {
			keyFrameInterval = dict["keyFrameInterval"] as? Double
		}
		if dict["language"] != nil {
			language = dict["language"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(bitrate != nil) {
			dict["bitrate"] = bitrate!
		}
		if(flavorId != nil) {
			dict["flavorId"] = flavorId!
		}
		if(width != nil) {
			dict["width"] = width!
		}
		if(height != nil) {
			dict["height"] = height!
		}
		if(codec != nil) {
			dict["codec"] = codec!
		}
		if(frameRate != nil) {
			dict["frameRate"] = frameRate!
		}
		if(keyFrameInterval != nil) {
			dict["keyFrameInterval"] = keyFrameInterval!
		}
		if(language != nil) {
			dict["language"] = language!
		}
		return dict
	}
}

