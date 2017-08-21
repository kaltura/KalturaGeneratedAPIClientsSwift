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

open class Playlist: BaseEntry {

	/**  Content of the playlist -    XML if the playlistType is dynamic    text if the
	  playlistType is static    url if the playlistType is mRss  */
	public var playlistContent: String? = nil
	public var filters: Array<MediaEntryFilterForPlaylist>? = nil
	/**  Maximum count of results to be returned in playlist execution  */
	public var totalResults: Int? = nil
	/**  Type of playlist  */
	public var playlistType: PlaylistType? = nil
	/**  Number of plays  */
	public var plays: Int? = nil
	/**  Number of views  */
	public var views: Int? = nil
	/**  The duration in seconds  */
	public var duration: Int? = nil
	/**  The url for this playlist  */
	public var executeUrl: String? = nil


	internal override func populate(_ dict: [String: Any]) throws {
		try super.populate(dict);
		// set members values:
		if dict["playlistContent"] != nil {
			playlistContent = dict["playlistContent"] as? String
		}
		if dict["filters"] != nil {
			filters = try JSONParser.parse(array: dict["filters"] as! [Any])
		}
		if dict["totalResults"] != nil {
			totalResults = dict["totalResults"] as? Int
		}
		if dict["playlistType"] != nil {
			playlistType = PlaylistType(rawValue: (dict["playlistType"] as? Int)!)
		}
		if dict["plays"] != nil {
			plays = dict["plays"] as? Int
		}
		if dict["views"] != nil {
			views = dict["views"] as? Int
		}
		if dict["duration"] != nil {
			duration = dict["duration"] as? Int
		}
		if dict["executeUrl"] != nil {
			executeUrl = dict["executeUrl"] as? String
		}

	}

	public override func toDictionary() -> [String: Any] {
		var dict: [String: Any] = super.toDictionary()
		if(playlistContent != nil) {
			dict["playlistContent"] = playlistContent!
		}
		if(filters != nil) {
			dict["filters"] = filters!.map { value in value.toDictionary() }
		}
		if(totalResults != nil) {
			dict["totalResults"] = totalResults!
		}
		if(playlistType != nil) {
			dict["playlistType"] = playlistType!.rawValue
		}
		return dict
	}
}

