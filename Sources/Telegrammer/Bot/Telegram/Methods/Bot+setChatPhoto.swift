// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.



public extension Bot {

    /// Parameters container struct for `setChatPhoto` method
    struct SetChatPhotoParams: MultipartEncodable {

        /// Unique identifier for the target chat or username of the target channel (in the format @channelusername)
        var chatId: ChatId

        /// New chat photo, uploaded using multipart/form-data
        var photo: InputFile

        /// Custom keys for coding/decoding `SetChatPhotoParams` struct
        enum CodingKeys: String, CodingKey {
            case chatId = "chat_id"
            case photo = "photo"
        }

        public init(chatId: ChatId, photo: InputFile) {
            self.chatId = chatId
            self.photo = photo
        }
    }

    /**
     Use this method to set a new profile photo for the chat. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns True on success.

     SeeAlso Telegram Bot API Reference:
     [SetChatPhotoParams](https://core.telegram.org/bots/api#setchatphoto)
     
     - Parameters:
         - params: Parameters container, see `SetChatPhotoParams` struct
     - Throws: Throws on errors
     - Returns: Future of `Bool` type
     */
    @discardableResult
    func setChatPhoto(params: SetChatPhotoParams) throws -> Future<Bool> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        return try client
            .request(endpoint: "setChatPhoto", body: body, headers: headers)
            .flatMapThrowing { (container) -> Bool in
                return try self.processContainer(container)
        }
    }
}
