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
// Copyright (C) 2006-2022  Kaltura Inc.
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

open class PlaybackContext: ObjectBase {

	public class PlaybackContextTokenizer: ObjectBase.ObjectBaseTokenizer {
		
		public var sources: ArrayTokenizedObject<PlaybackSource.PlaybackSourceTokenizer> {
			get {
				return ArrayTokenizedObject<PlaybackSource.PlaybackSourceTokenizer>(self.append("sources"))
			} 
		}
		
		public var playbackCaptions: ArrayTokenizedObject<CaptionPlaybackPluginData.CaptionPlaybackPluginDataTokenizer> {
			get {
				return ArrayTokenizedObject<CaptionPlaybackPluginData.CaptionPlaybackPluginDataTokenizer>(self.append("playbackCaptions"))
			} 
		}
		
		public var flavorAssets: ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer> {
			get {
				return ArrayTokenizedObject<FlavorAsset.FlavorAssetTokenizer>(self.append("flavorAssets"))
			} 
		}
		
		public var actions: ArrayTokenizedObject<RuleAction.RuleActionTokenizer> {
			get {
				return ArrayTokenizedObject<RuleAction.RuleActionTokenizer>(self.append("actions"))
			} 
		}
		
		public var messages: ArrayTokenizedObject<AccessControlMessage.AccessControlMessageTokenizer> {
			get {
				return ArrayTokenizedObject<AccessControlMessage.AccessControlMessageTokenizer>(self.append("messages"))
			} 
		}
		
		public var bumperData: ArrayTokenizedObject<ObjectBase.ObjectBaseTokenizer> {
			get {
				return ArrayTokenizedObject<ObjectBase.ObjectBaseTokenizer>(self.append("bumperData"))
			} 
		}
	}

	public var sources: Array<PlaybackSource>? = nil
	public var playbackCaptions: Array<CaptionPlaybackPluginData>? = nil
	public var flavorAssets: Array<FlavorAsset>? = nil
	/**  Array of actions as received from the rules that invalidated  */
	public var actions: Array<RuleAction>? = nil
	/**  Array of actions as received from the rules that invalidated  */
	public var messages: Array<AccessControlMessage>? = nil
	public var bumperData: Array<ObjectBase>? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["sources"] != nil {
			sources = try JSONParser.parse(array: dict["sources"] as! [Any])
		}
		if dict["playbackCaptions"] != nil {
			playbackCaptions = try JSONParser.parse(array: dict["playbackCaptions"] as! [Any])
		}
		if dict["flavorAssets"] != nil {
			flavorAssets = try JSONParser.parse(array: dict["flavorAssets"] as! [Any])
		}
		if dict["actions"] != nil {
			actions = try JSONParser.parse(array: dict["actions"] as! [Any])
		}
		if dict["messages"] != nil {
			messages = try JSONParser.parse(array: dict["messages"] as! [Any])
		}
		if dict["bumperData"] != nil {
			bumperData = try JSONParser.parse(array: dict["bumperData"] as! [Any])
		}

	}

	internal override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(sources != nil) {
			dict["sources"] = sources!.map { value in value.toDictionary() }
		}
		if(playbackCaptions != nil) {
			dict["playbackCaptions"] = playbackCaptions!.map { value in value.toDictionary() }
		}
		if(flavorAssets != nil) {
			dict["flavorAssets"] = flavorAssets!.map { value in value.toDictionary() }
		}
		if(actions != nil) {
			dict["actions"] = actions!.map { value in value.toDictionary() }
		}
		if(messages != nil) {
			dict["messages"] = messages!.map { value in value.toDictionary() }
		}
		if(bumperData != nil) {
			dict["bumperData"] = bumperData!.map { value in value.toDictionary() }
		}
		return dict
	}
}

