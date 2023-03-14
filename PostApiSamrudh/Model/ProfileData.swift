/* 
Copyright (c) 2023 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct ProfileData : Codable {
	let id : String?
	let user_id : String?
	let name : String?
	let contact_no : String?
	let address : String?
	let country_name : String?
	let state_name : String?
	let city_name : String?
	let postal_code : String?
	let dob : String?
	let dob1 : String?
	let gender : String?
	let profile_image : String?
	let profile_image_crop : String?
	let avatar : String?
	let distance : String?
	let age : String?
	let referral_code : String?
	let is_online : Int?
	let maching_per : Int?
	let completion_perc : Int?
	let like : Int?
	let available : Int?
	let other_profile_image : [Other_profile_image]?
	let membership_id : String?
	let allow_praposal : String?
	let allow_distance : String?
	let notification_status : String?
	let is_verified : String?
	let actual_distance : Double?
	let is_invisible_profile : Int?
	let is_invisible_mode : Int?
	let selfie_image : String?
	let is_profile_verified : Int?
	let other_like : Int?
	let is_selfie_uploaded : String?
	let native_language : String?
	let search_distance : Int?
	let is_premium_purchased : String?
	let is_2_photos_uploaded : String?
	let star : String?
	let star_history : String?
	let matching_perc : String?
	let marital_status : String?
	let marital_status_obj : Marital_status_obj?
	let user_type : Int?
	let vip_badge : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case user_id = "user_id"
		case name = "name"
		case contact_no = "contact_no"
		case address = "address"
		case country_name = "country_name"
		case state_name = "state_name"
		case city_name = "city_name"
		case postal_code = "postal_code"
		case dob = "dob"
		case dob1 = "dob1"
		case gender = "gender"
		case profile_image = "profile_image"
		case profile_image_crop = "profile_image_crop"
		case avatar = "avatar"
		case distance = "distance"
		case age = "age"
		case referral_code = "referral_code"
		case is_online = "is_online"
		case maching_per = "maching_per"
		case completion_perc = "completion_perc"
		case like = "like"
		case available = "available"
		case other_profile_image = "other_profile_image"
		case membership_id = "membership_id"
		case allow_praposal = "allow_praposal"
		case allow_distance = "allow_distance"
		case notification_status = "notification_status"
		case is_verified = "is_verified"
		case actual_distance = "actual_distance"
		case is_invisible_profile = "is_invisible_profile"
		case is_invisible_mode = "is_invisible_mode"
		case selfie_image = "selfie_image"
		case is_profile_verified = "is_profile_verified"
		case other_like = "other_like"
		case is_selfie_uploaded = "is_selfie_uploaded"
		case native_language = "native_language"
		case search_distance = "search_distance"
		case is_premium_purchased = "is_premium_purchased"
		case is_2_photos_uploaded = "is_2_photos_uploaded"
		case star = "star"
		case star_history = "star_history"
		case matching_perc = "matching_perc"
		case marital_status = "marital_status"
		case marital_status_obj = "marital_status_obj"
		case user_type = "user_type"
		case vip_badge = "vip_badge"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		user_id = try values.decodeIfPresent(String.self, forKey: .user_id)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		contact_no = try values.decodeIfPresent(String.self, forKey: .contact_no)
		address = try values.decodeIfPresent(String.self, forKey: .address)
		country_name = try values.decodeIfPresent(String.self, forKey: .country_name)
		state_name = try values.decodeIfPresent(String.self, forKey: .state_name)
		city_name = try values.decodeIfPresent(String.self, forKey: .city_name)
		postal_code = try values.decodeIfPresent(String.self, forKey: .postal_code)
		dob = try values.decodeIfPresent(String.self, forKey: .dob)
		dob1 = try values.decodeIfPresent(String.self, forKey: .dob1)
		gender = try values.decodeIfPresent(String.self, forKey: .gender)
		profile_image = try values.decodeIfPresent(String.self, forKey: .profile_image)
		profile_image_crop = try values.decodeIfPresent(String.self, forKey: .profile_image_crop)
		avatar = try values.decodeIfPresent(String.self, forKey: .avatar)
		distance = try values.decodeIfPresent(String.self, forKey: .distance)
		age = try values.decodeIfPresent(String.self, forKey: .age)
		referral_code = try values.decodeIfPresent(String.self, forKey: .referral_code)
		is_online = try values.decodeIfPresent(Int.self, forKey: .is_online)
		maching_per = try values.decodeIfPresent(Int.self, forKey: .maching_per)
		completion_perc = try values.decodeIfPresent(Int.self, forKey: .completion_perc)
		like = try values.decodeIfPresent(Int.self, forKey: .like)
		available = try values.decodeIfPresent(Int.self, forKey: .available)
		other_profile_image = try values.decodeIfPresent([Other_profile_image].self, forKey: .other_profile_image)
		membership_id = try values.decodeIfPresent(String.self, forKey: .membership_id)
		allow_praposal = try values.decodeIfPresent(String.self, forKey: .allow_praposal)
		allow_distance = try values.decodeIfPresent(String.self, forKey: .allow_distance)
		notification_status = try values.decodeIfPresent(String.self, forKey: .notification_status)
		is_verified = try values.decodeIfPresent(String.self, forKey: .is_verified)
		actual_distance = try values.decodeIfPresent(Double.self, forKey: .actual_distance)
		is_invisible_profile = try values.decodeIfPresent(Int.self, forKey: .is_invisible_profile)
		is_invisible_mode = try values.decodeIfPresent(Int.self, forKey: .is_invisible_mode)
		selfie_image = try values.decodeIfPresent(String.self, forKey: .selfie_image)
		is_profile_verified = try values.decodeIfPresent(Int.self, forKey: .is_profile_verified)
		other_like = try values.decodeIfPresent(Int.self, forKey: .other_like)
		is_selfie_uploaded = try values.decodeIfPresent(String.self, forKey: .is_selfie_uploaded)
		native_language = try values.decodeIfPresent(String.self, forKey: .native_language)
		search_distance = try values.decodeIfPresent(Int.self, forKey: .search_distance)
		is_premium_purchased = try values.decodeIfPresent(String.self, forKey: .is_premium_purchased)
		is_2_photos_uploaded = try values.decodeIfPresent(String.self, forKey: .is_2_photos_uploaded)
		star = try values.decodeIfPresent(String.self, forKey: .star)
		star_history = try values.decodeIfPresent(String.self, forKey: .star_history)
		matching_perc = try values.decodeIfPresent(String.self, forKey: .matching_perc)
		marital_status = try values.decodeIfPresent(String.self, forKey: .marital_status)
		marital_status_obj = try values.decodeIfPresent(Marital_status_obj.self, forKey: .marital_status_obj)
		user_type = try values.decodeIfPresent(Int.self, forKey: .user_type)
		vip_badge = try values.decodeIfPresent(Int.self, forKey: .vip_badge)
	}

}
