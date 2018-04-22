// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to upload a .png file with a sticker for later use in createNewStickerSet and addStickerToSet methods (can be used multiple times). Returns the uploaded File on success.
    /// - Parameters:
    ///     - user_id: User identifier of sticker file owner
    ///     - png_sticker: Png image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. More info on Sending Files »
    /// - Returns: Future<File>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#uploadstickerfile>

    public struct UploadStickerFileParams: MultipartEncodable {
        var userId: Int64
        var pngSticker: InputFile

        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case pngSticker = "png_sticker"
        }

        public init(userId: Int64, pngSticker: InputFile) {
            self.userId = userId
            self.pngSticker = pngSticker
        }
    }

    public func uploadStickerFile(params: UploadStickerFileParams) throws -> Future<File> {
        let body = try httpBody(for: params)
        let headers = try httpHeaders(for: params)
        let response: Future<TelegramContainer<File>>
        response = try client.respond(endpoint: "uploadStickerFile", body: body, headers: headers)
        return response.flatMap(to: File.self) { try self.wrap($0) }
    }
}