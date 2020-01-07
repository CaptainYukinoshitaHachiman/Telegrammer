// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendLocation` method
    struct SendLocationParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Latitude of the location
        var latitude: Float

        /// Longitude of the location
        var longitude: Float

        /// Period in seconds for which the location will be updated (see Live Locations, should be between 60 and 86400.
        var livePeriod: Int?

        /// Sends the message silently. Users will receive a notification with no sound.
        var disableNotification: Bool?

        /// If the message is a reply, ID of the original message
        var replyToMessageId: Int?

        /// Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to remove reply keyboard or to force a reply from the user.
        var replyMarkup: ReplyMarkup?

        /// Custom keys for coding/decoding `SendLocationParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case latitude = "latitude"
            case longitude = "longitude"
            case livePeriod = "live_period"
            case disableNotification = "disable_notification"
            case replyToMessageId = "reply_to_message_id"
            case replyMarkup = "reply_markup"
        }

        public init(chatId: ChatId, latitude: Float, longitude: Float, livePeriod: Int? = nil, disableNotification: Bool? = nil, replyToMessageId: Int? = nil, replyMarkup: ReplyMarkup? = nil) {
            self.chatId = chatId
            self.latitude = latitude
            self.longitude = longitude
            self.livePeriod = livePeriod
            self.disableNotification = disableNotification
            self.replyToMessageId = replyToMessageId
            self.replyMarkup = replyMarkup
        }
    }

    /**
     Use this method to send point on the map. On success, the sent Message is returned.

     SeeAlso Telegram Bot API Reference:
     [SendLocationParams](https://core.telegram.org/bots/api#sendlocation)
     
     - Parameters:
         - params: Parameters container, see `SendLocationParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Message` type
     */
    @discardableResult
    func sendLocation(params: SendLocationParams) throws -> Future<Message> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendLocation", body: body, headers: headers)
            .flatMapThrowing { (container) -> Message in
                return try self.processContainer(container)
        }
    }
}
