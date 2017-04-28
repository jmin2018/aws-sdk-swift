// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Polly {

    public struct Lexicon: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Lexicon content in string format. The content of a lexicon must be in PLS format.
        public let content: String?
        /// Name of the lexicon.
        public let name: String?

        public init(content: String? = nil, name: String? = nil) {
            self.content = content
            self.name = name
        }

        public init(dictionary: [String: Any]) throws {
            self.content = dictionary["Content"] as? String
            self.name = dictionary["Name"] as? String
        }
    }

    public struct DescribeVoicesInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var queryParams: [String: String] {
            return ["LanguageCode": "LanguageCode", "NextToken": "NextToken"]
        }
        ///  The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. 
        public let languageCode: String?
        /// An opaque pagination token returned from the previous DescribeVoices operation. If present, this indicates where to continue the listing.
        public let nextToken: String?

        public init(languageCode: String? = nil, nextToken: String? = nil) {
            self.languageCode = languageCode
            self.nextToken = nextToken
        }

        public init(dictionary: [String: Any]) throws {
            self.languageCode = dictionary["LanguageCode"] as? String
            self.nextToken = dictionary["NextToken"] as? String
        }
    }

    public struct SynthesizeSpeechOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = "AudioStream"
        public static var headerParams: [String: String] {
            return ["Content-Type": "ContentType", "x-amzn-RequestCharacters": "RequestCharacters"]
        }
        ///  Specifies the type audio stream. This should reflect the OutputFormat parameter in your request.     If you request mp3 as the OutputFormat, the ContentType returned is audio/mpeg.     If you request ogg_vorbis as the OutputFormat, the ContentType returned is audio/ogg.     If you request pcm as the OutputFormat, the ContentType returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.     
        public let contentType: String?
        ///  Stream containing the synthesized speech. 
        public let audioStream: Data?
        /// Number of characters synthesized.
        public let requestCharacters: Int32?

        public init(contentType: String? = nil, audioStream: Data? = nil, requestCharacters: Int32? = nil) {
            self.contentType = contentType
            self.audioStream = audioStream
            self.requestCharacters = requestCharacters
        }

        public init(dictionary: [String: Any]) throws {
            self.contentType = dictionary["ContentType"] as? String
            self.audioStream = dictionary["AudioStream"] as? Data
            self.requestCharacters = dictionary["RequestCharacters"] as? Int32
        }
    }

    public struct PutLexiconInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["LexiconName": "Name"]
        }
        /// Content of the PLS lexicon as string data.
        public let content: String
        /// Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. 
        public let name: String

        public init(content: String, name: String) {
            self.content = content
            self.name = name
        }

        public init(dictionary: [String: Any]) throws {
            guard let content = dictionary["Content"] as? String else { throw InitializableError.missingRequiredParam("Content") }
            self.content = content
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
        }
    }

    public struct GetLexiconOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Lexicon object that provides name and the string content of the lexicon. 
        public let lexicon: Lexicon?
        /// Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.
        public let lexiconAttributes: LexiconAttributes?

        public init(lexicon: Lexicon? = nil, lexiconAttributes: LexiconAttributes? = nil) {
            self.lexicon = lexicon
            self.lexiconAttributes = lexiconAttributes
        }

        public init(dictionary: [String: Any]) throws {
            if let lexicon = dictionary["Lexicon"] as? [String: Any] { self.lexicon = try Polly.Lexicon(dictionary: lexicon) } else { self.lexicon = nil }
            if let lexiconAttributes = dictionary["LexiconAttributes"] as? [String: Any] { self.lexiconAttributes = try Polly.LexiconAttributes(dictionary: lexiconAttributes) } else { self.lexiconAttributes = nil }
        }
    }

    public struct ListLexiconsOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The pagination token to use in the next request to continue the listing of lexicons. NextToken is returned only if the response is truncated.
        public let nextToken: String?
        /// A list of lexicon names and attributes.
        public let lexicons: [LexiconDescription]?

        public init(nextToken: String? = nil, lexicons: [LexiconDescription]? = nil) {
            self.nextToken = nextToken
            self.lexicons = lexicons
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
            if let lexicons = dictionary["Lexicons"] as? [[String: Any]] {
                self.lexicons = try lexicons.map({ try LexiconDescription(dictionary: $0) })
            } else { 
                self.lexicons = nil
            }
        }
    }

    public struct GetLexiconInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["LexiconName": "Name"]
        }
        /// Name of the lexicon.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        public init(dictionary: [String: Any]) throws {
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
        }
    }

    public struct DeleteLexiconOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct SynthesizeSpeechInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        ///  The audio format in which the resulting stream will be encoded. 
        public let outputFormat: String
        ///  Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the DescribeVoices operation. 
        public let voiceId: String
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon.
        public let lexiconNames: [String]?
        ///  Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see Using SSML.
        public let textType: String?
        ///  Input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
        public let text: String
        ///  The audio frequency specified in Hz.  The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050".   Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?

        public init(outputFormat: String, voiceId: String, lexiconNames: [String]? = nil, textType: String? = nil, text: String, sampleRate: String? = nil) {
            self.outputFormat = outputFormat
            self.voiceId = voiceId
            self.lexiconNames = lexiconNames
            self.textType = textType
            self.text = text
            self.sampleRate = sampleRate
        }

        public init(dictionary: [String: Any]) throws {
            guard let outputFormat = dictionary["OutputFormat"] as? String else { throw InitializableError.missingRequiredParam("OutputFormat") }
            self.outputFormat = outputFormat
            guard let voiceId = dictionary["VoiceId"] as? String else { throw InitializableError.missingRequiredParam("VoiceId") }
            self.voiceId = voiceId
            self.lexiconNames = dictionary["LexiconNames"] as? [String]
            self.textType = dictionary["TextType"] as? String
            guard let text = dictionary["Text"] as? String else { throw InitializableError.missingRequiredParam("Text") }
            self.text = text
            self.sampleRate = dictionary["SampleRate"] as? String
        }
    }

    public struct DescribeVoicesOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// A list of voices with their properties.
        public let voices: [Voice]?
        /// The pagination token to use in the next request to continue the listing of voices. NextToken is returned only if the response is truncated.
        public let nextToken: String?

        public init(voices: [Voice]? = nil, nextToken: String? = nil) {
            self.voices = voices
            self.nextToken = nextToken
        }

        public init(dictionary: [String: Any]) throws {
            if let voices = dictionary["Voices"] as? [[String: Any]] {
                self.voices = try voices.map({ try Voice(dictionary: $0) })
            } else { 
                self.voices = nil
            }
            self.nextToken = dictionary["NextToken"] as? String
        }
    }

    public struct ListLexiconsInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var queryParams: [String: String] {
            return ["NextToken": "NextToken"]
        }
        /// An opaque pagination token returned from previous ListLexicons operation. If present, indicates where to continue the list of lexicons.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
        }
    }

    public struct LexiconAttributes: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Amazon Resource Name (ARN) of the lexicon.
        public let lexiconArn: String?
        /// Date lexicon was last modified (a timestamp value).
        public let lastModified: Date?
        /// Number of lexemes in the lexicon.
        public let lexemesCount: Int32?
        /// Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.
        public let languageCode: String?
        /// Phonetic alphabet used in the lexicon. Valid values are ipa and x-sampa.
        public let alphabet: String?
        /// Total size of the lexicon, in characters.
        public let size: Int32?

        public init(lexiconArn: String? = nil, lastModified: Date? = nil, lexemesCount: Int32? = nil, languageCode: String? = nil, alphabet: String? = nil, size: Int32? = nil) {
            self.lexiconArn = lexiconArn
            self.lastModified = lastModified
            self.lexemesCount = lexemesCount
            self.languageCode = languageCode
            self.alphabet = alphabet
            self.size = size
        }

        public init(dictionary: [String: Any]) throws {
            self.lexiconArn = dictionary["LexiconArn"] as? String
            self.lastModified = dictionary["LastModified"] as? Date
            self.lexemesCount = dictionary["LexemesCount"] as? Int32
            self.languageCode = dictionary["LanguageCode"] as? String
            self.alphabet = dictionary["Alphabet"] as? String
            self.size = dictionary["Size"] as? Int32
        }
    }

    public struct LexiconDescription: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Name of the lexicon.
        public let name: String?
        /// Provides lexicon metadata.
        public let attributes: LexiconAttributes?

        public init(name: String? = nil, attributes: LexiconAttributes? = nil) {
            self.name = name
            self.attributes = attributes
        }

        public init(dictionary: [String: Any]) throws {
            self.name = dictionary["Name"] as? String
            if let attributes = dictionary["Attributes"] as? [String: Any] { self.attributes = try Polly.LexiconAttributes(dictionary: attributes) } else { self.attributes = nil }
        }
    }

    public struct PutLexiconOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil

        public init(dictionary: [String: Any]) throws {
        }
    }

    public struct DeleteLexiconInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["LexiconName": "Name"]
        }
        /// The name of the lexicon to delete. Must be an existing lexicon in the region.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        public init(dictionary: [String: Any]) throws {
            guard let name = dictionary["Name"] as? String else { throw InitializableError.missingRequiredParam("Name") }
            self.name = name
        }
    }

    public struct Voice: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Human readable name of the language in English.
        public let languageName: String?
        /// Language code of the voice.
        public let languageCode: String?
        /// Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.
        public let name: String?
        /// Gender of the voice.
        public let gender: String?
        /// Amazon Polly assigned voice ID. This is the ID that you specify when calling the SynthesizeSpeech operation.
        public let id: String?

        public init(languageName: String? = nil, languageCode: String? = nil, name: String? = nil, gender: String? = nil, id: String? = nil) {
            self.languageName = languageName
            self.languageCode = languageCode
            self.name = name
            self.gender = gender
            self.id = id
        }

        public init(dictionary: [String: Any]) throws {
            self.languageName = dictionary["LanguageName"] as? String
            self.languageCode = dictionary["LanguageCode"] as? String
            self.name = dictionary["Name"] as? String
            self.gender = dictionary["Gender"] as? String
            self.id = dictionary["Id"] as? String
        }
    }

}