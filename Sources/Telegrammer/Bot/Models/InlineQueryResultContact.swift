// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/// Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the contact.
///
/// [- SeeAlso: ]<https://core.telegram.org/bots/api#inlinequeryresultcontact>

public final class InlineQueryResultContact: Codable {
    
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case id = "id"
        case phoneNumber = "phone_number"
        case firstName = "first_name"
        case lastName = "last_name"
        case replyMarkup = "reply_markup"
        case inputMessageContent = "input_message_content"
        case thumbUrl = "thumb_url"
        case thumbWidth = "thumb_width"
        case thumbHeight = "thumb_height"
    }

    public var type: String
    public var id: String
    public var phoneNumber: String
    public var firstName: String
    public var lastName: String?
    public var replyMarkup: InlineKeyboardMarkup?
    public var inputMessageContent: InputMessageContent?
    public var thumbUrl: String?
    public var thumbWidth: Int?
    public var thumbHeight: Int?

    public init (type: String, id: String, phoneNumber: String, firstName: String, lastName: String? = nil, replyMarkup: InlineKeyboardMarkup? = nil, inputMessageContent: InputMessageContent? = nil, thumbUrl: String? = nil, thumbWidth: Int? = nil, thumbHeight: Int? = nil) {
        self.type = type
        self.id = id
        self.phoneNumber = phoneNumber
        self.firstName = firstName
        self.lastName = lastName
        self.replyMarkup = replyMarkup
        self.inputMessageContent = inputMessageContent
        self.thumbUrl = thumbUrl
        self.thumbWidth = thumbWidth
        self.thumbHeight = thumbHeight
    }

}
