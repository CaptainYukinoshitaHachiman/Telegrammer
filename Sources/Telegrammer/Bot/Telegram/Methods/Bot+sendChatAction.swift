// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

public extension Bot {

    /// Parameters container struct for `sendChatAction` method
    struct SendChatActionParams: JSONEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// Type of action to broadcast. Choose one, depending on what the user is about to receive: typing for text messages, upload_photo for photos, record_video or upload_video for videos, record_audio or upload_audio for audio files, upload_document for general files, find_location for location data, record_video_note or upload_video_note for video notes.
        var action: String

        /// Custom keys for coding/decoding `SendChatActionParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case action = "action"
        }

        public init(chatId: ChatId, action: String) {
            self.chatId = chatId
            self.action = action
        }
    }

    /**
     Use this method when you need to tell the user that something is happening on the bot's side. The status is set for 5 seconds or less (when a message arrives from your bot, Telegram clients clear its typing status). Returns True on success.
     Example: The ImageBot needs some time to process a request and upload the image. Instead of sending a text message along the lines of “Retrieving image, please wait…”, the bot may use sendChatAction with action = upload_photo. The user will see a “sending photo” status for the bot.
     We only recommend using this method when a response from the bot will take a noticeable amount of time to arrive.

     SeeAlso Telegram Bot API Reference:
     [SendChatActionParams](https://core.telegram.org/bots/api#sendchataction)
     
     - Parameters:
         - params: Parameters container, see `SendChatActionParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func sendChatAction(params: SendChatActionParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "sendChatAction", body: body, headers: headers)
            .flatMapThrowing { (container) -> Bool in
                return try self.processContainer(container)
        }
    }
}
