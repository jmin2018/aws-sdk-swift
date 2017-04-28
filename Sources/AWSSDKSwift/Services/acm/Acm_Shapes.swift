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

extension Acm {

    public struct RemoveTagsFromCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The key-value pair that defines the tag to remove.
        public let tags: [Tag]
        /// String that contains the ARN of the ACM Certificate with one or more tags that you want to remove. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String

        public init(tags: [Tag], certificateArn: String) {
            self.tags = tags
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let tags = dictionary["Tags"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("Tags") }
            self.tags = try tags.map({ try Tag(dictionary: $0) })
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
        }
    }

    public struct ListCertificatesResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// When the list is truncated, this value is present and contains the value to use for the NextToken parameter in a subsequent pagination request.
        public let nextToken: String?
        /// A list of ACM Certificates.
        public let certificateSummaryList: [CertificateSummary]?

        public init(nextToken: String? = nil, certificateSummaryList: [CertificateSummary]? = nil) {
            self.nextToken = nextToken
            self.certificateSummaryList = certificateSummaryList
        }

        public init(dictionary: [String: Any]) throws {
            self.nextToken = dictionary["NextToken"] as? String
            if let certificateSummaryList = dictionary["CertificateSummaryList"] as? [[String: Any]] {
                self.certificateSummaryList = try certificateSummaryList.map({ try CertificateSummary(dictionary: $0) })
            } else { 
                self.certificateSummaryList = nil
            }
        }
    }

    public struct RequestCertificateResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// String that contains the ARN of the issued certificate. This must be of the form:  arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012 
        public let certificateArn: String?

        public init(certificateArn: String? = nil) {
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            self.certificateArn = dictionary["CertificateArn"] as? String
        }
    }

    public struct ImportCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The certificate to import. It must meet the following requirements:   Must be PEM-encoded.   Must contain a 1024-bit or 2048-bit RSA public key.   Must be valid at the time of import. You cannot import a certificate before its validity period begins (the certificate's NotBefore date) or after it expires (the certificate's NotAfter date).  
        public let certificate: Data
        /// The Amazon Resource Name (ARN) of an imported certificate to replace. To import a new certificate, omit this field.
        public let certificateArn: String?
        /// The private key that matches the public key in the certificate. It must meet the following requirements:   Must be PEM-encoded.   Must be unencrypted. You cannot import a private key that is protected by a password or passphrase.  
        public let privateKey: Data
        /// The certificate chain. It must be PEM-encoded.
        public let certificateChain: Data?

        public init(certificate: Data, certificateArn: String? = nil, privateKey: Data, certificateChain: Data? = nil) {
            self.certificate = certificate
            self.certificateArn = certificateArn
            self.privateKey = privateKey
            self.certificateChain = certificateChain
        }

        public init(dictionary: [String: Any]) throws {
            guard let certificate = dictionary["Certificate"] as? Data else { throw InitializableError.missingRequiredParam("Certificate") }
            self.certificate = certificate
            self.certificateArn = dictionary["CertificateArn"] as? String
            guard let privateKey = dictionary["PrivateKey"] as? Data else { throw InitializableError.missingRequiredParam("PrivateKey") }
            self.privateKey = privateKey
            self.certificateChain = dictionary["CertificateChain"] as? Data
        }
    }

    public struct ListTagsForCertificateResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The key-value pairs that define the applied tags.
        public let tags: [Tag]?

        public init(tags: [Tag]? = nil) {
            self.tags = tags
        }

        public init(dictionary: [String: Any]) throws {
            if let tags = dictionary["Tags"] as? [[String: Any]] {
                self.tags = try tags.map({ try Tag(dictionary: $0) })
            } else { 
                self.tags = nil
            }
        }
    }

    public struct Tag: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The value of the tag.
        public let value: String?
        /// The key of the tag.
        public let key: String

        public init(value: String? = nil, key: String) {
            self.value = value
            self.key = key
        }

        public init(dictionary: [String: Any]) throws {
            self.value = dictionary["Value"] as? String
            guard let key = dictionary["Key"] as? String else { throw InitializableError.missingRequiredParam("Key") }
            self.key = key
        }
    }

    public struct GetCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// String that contains a certificate ARN in the following format:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String

        public init(certificateArn: String) {
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
        }
    }

    public struct DomainValidation: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The domain name that ACM used to send domain validation emails.
        public let validationDomain: String?
        /// The validation status of the domain name.
        public let validationStatus: String?
        /// A fully qualified domain name (FQDN) in the certificate. For example, www.example.com or example.com.
        public let domainName: String
        /// A list of email addresses that ACM used to send domain validation emails.
        public let validationEmails: [String]?

        public init(validationDomain: String? = nil, validationStatus: String? = nil, domainName: String, validationEmails: [String]? = nil) {
            self.validationDomain = validationDomain
            self.validationStatus = validationStatus
            self.domainName = domainName
            self.validationEmails = validationEmails
        }

        public init(dictionary: [String: Any]) throws {
            self.validationDomain = dictionary["ValidationDomain"] as? String
            self.validationStatus = dictionary["ValidationStatus"] as? String
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
            self.validationEmails = dictionary["ValidationEmails"] as? [String]
        }
    }

    public struct AddTagsToCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The key-value pair that defines the tag. The tag value is optional.
        public let tags: [Tag]
        /// String that contains the ARN of the ACM Certificate to which the tag is to be applied. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String

        public init(tags: [Tag], certificateArn: String) {
            self.tags = tags
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let tags = dictionary["Tags"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("Tags") }
            self.tags = try tags.map({ try Tag(dictionary: $0) })
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
        }
    }

    public struct GetCertificateResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// String that contains the ACM Certificate represented by the ARN specified at input.
        public let certificate: String?
        /// The certificate chain that contains the root certificate issued by the certificate authority (CA).
        public let certificateChain: String?

        public init(certificate: String? = nil, certificateChain: String? = nil) {
            self.certificate = certificate
            self.certificateChain = certificateChain
        }

        public init(dictionary: [String: Any]) throws {
            self.certificate = dictionary["Certificate"] as? String
            self.certificateChain = dictionary["CertificateChain"] as? String
        }
    }

    public struct ResendValidationEmailRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The base validation domain that will act as the suffix of the email addresses that are used to send the emails. This must be the same as the Domain value or a superdomain of the Domain value. For example, if you requested a certificate for site.subdomain.example.com and specify a ValidationDomain of subdomain.example.com, ACM sends email to the domain registrant, technical contact, and administrative contact in WHOIS and the following five addresses:   admin@subdomain.example.com   administrator@subdomain.example.com   hostmaster@subdomain.example.com   postmaster@subdomain.example.com   webmaster@subdomain.example.com  
        public let validationDomain: String
        /// String that contains the ARN of the requested certificate. The certificate ARN is generated and returned by the RequestCertificate action as soon as the request is made. By default, using this parameter causes email to be sent to all top-level domains you specified in the certificate request. The ARN must be of the form:  arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012 
        public let certificateArn: String
        /// The fully qualified domain name (FQDN) of the certificate that needs to be validated.
        public let domain: String

        public init(validationDomain: String, certificateArn: String, domain: String) {
            self.validationDomain = validationDomain
            self.certificateArn = certificateArn
            self.domain = domain
        }

        public init(dictionary: [String: Any]) throws {
            guard let validationDomain = dictionary["ValidationDomain"] as? String else { throw InitializableError.missingRequiredParam("ValidationDomain") }
            self.validationDomain = validationDomain
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
            guard let domain = dictionary["Domain"] as? String else { throw InitializableError.missingRequiredParam("Domain") }
            self.domain = domain
        }
    }

    public struct RenewalSummary: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Contains information about the validation of each domain name in the certificate, as it pertains to ACM's managed renewal. This is different from the initial validation that occurs as a result of the RequestCertificate request. This field exists only when the certificate type is AMAZON_ISSUED.
        public let domainValidationOptions: [DomainValidation]
        /// The status of ACM's managed renewal of the certificate.
        public let renewalStatus: String

        public init(domainValidationOptions: [DomainValidation], renewalStatus: String) {
            self.domainValidationOptions = domainValidationOptions
            self.renewalStatus = renewalStatus
        }

        public init(dictionary: [String: Any]) throws {
            guard let domainValidationOptions = dictionary["DomainValidationOptions"] as? [[String: Any]] else { throw InitializableError.missingRequiredParam("DomainValidationOptions") }
            self.domainValidationOptions = try domainValidationOptions.map({ try DomainValidation(dictionary: $0) })
            guard let renewalStatus = dictionary["RenewalStatus"] as? String else { throw InitializableError.missingRequiredParam("RenewalStatus") }
            self.renewalStatus = renewalStatus
        }
    }

    public struct DomainValidationOption: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the DomainName value or a superdomain of the DomainName value. For example, if you request a certificate for testing.example.com, you can specify example.com for this value. In that case, ACM sends domain validation emails to the following five addresses:   admin@example.com   administrator@example.com   hostmaster@example.com   postmaster@example.com   webmaster@example.com  
        public let validationDomain: String
        /// A fully qualified domain name (FQDN) in the certificate request.
        public let domainName: String

        public init(validationDomain: String, domainName: String) {
            self.validationDomain = validationDomain
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            guard let validationDomain = dictionary["ValidationDomain"] as? String else { throw InitializableError.missingRequiredParam("ValidationDomain") }
            self.validationDomain = validationDomain
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
        }
    }

    public struct CertificateSummary: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Amazon Resource Name (ARN) of the certificate. This is of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String?
        /// Fully qualified domain name (FQDN), such as www.example.com or example.com, for the certificate.
        public let domainName: String?

        public init(certificateArn: String? = nil, domainName: String? = nil) {
            self.certificateArn = certificateArn
            self.domainName = domainName
        }

        public init(dictionary: [String: Any]) throws {
            self.certificateArn = dictionary["CertificateArn"] as? String
            self.domainName = dictionary["DomainName"] as? String
        }
    }

    public struct DescribeCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The Amazon Resource Name (ARN) of the ACM Certificate. The ARN must have the following form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String

        public init(certificateArn: String) {
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
        }
    }

    public struct ListCertificatesRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The status or statuses on which to filter the list of ACM Certificates.
        public let certificateStatuses: [String]?
        /// Use this parameter only when paginating results and only in a subsequent request after you receive a response with truncated results. Set it to the value of NextToken from the response you just received.
        public let nextToken: String?
        /// Use this parameter when paginating results to specify the maximum number of items to return in the response. If additional items exist beyond the number you specify, the NextToken element is sent in the response. Use this NextToken value in a subsequent request to retrieve additional items.
        public let maxItems: Int32?

        public init(certificateStatuses: [String]? = nil, nextToken: String? = nil, maxItems: Int32? = nil) {
            self.certificateStatuses = certificateStatuses
            self.nextToken = nextToken
            self.maxItems = maxItems
        }

        public init(dictionary: [String: Any]) throws {
            self.certificateStatuses = dictionary["CertificateStatuses"] as? [String]
            self.nextToken = dictionary["NextToken"] as? String
            self.maxItems = dictionary["MaxItems"] as? Int32
        }
    }

    public struct DescribeCertificateResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Metadata about an ACM certificate.
        public let certificate: CertificateDetail?

        public init(certificate: CertificateDetail? = nil) {
            self.certificate = certificate
        }

        public init(dictionary: [String: Any]) throws {
            if let certificate = dictionary["Certificate"] as? [String: Any] { self.certificate = try Acm.CertificateDetail(dictionary: certificate) } else { self.certificate = nil }
        }
    }

    public struct RequestCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The domain name that you want ACM to use to send you emails to validate your ownership of the domain.
        public let domainValidationOptions: [DomainValidationOption]?
        /// Additional FQDNs to be included in the Subject Alternative Name extension of the ACM Certificate. For example, add the name www.example.net to a certificate for which the DomainName field is www.example.com if users can reach your site by using either name.
        public let subjectAlternativeNames: [String]?
        /// Fully qualified domain name (FQDN), such as www.example.com, of the site that you want to secure with an ACM Certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com.
        public let domainName: String
        /// Customer chosen string that can be used to distinguish between calls to RequestCertificate. Idempotency tokens time out after one hour. Therefore, if you call RequestCertificate multiple times with the same idempotency token within one hour, ACM recognizes that you are requesting only one certificate and will issue only one. If you change the idempotency token for each call, ACM recognizes that you are requesting multiple certificates.
        public let idempotencyToken: String?

        public init(domainValidationOptions: [DomainValidationOption]? = nil, subjectAlternativeNames: [String]? = nil, domainName: String, idempotencyToken: String? = nil) {
            self.domainValidationOptions = domainValidationOptions
            self.subjectAlternativeNames = subjectAlternativeNames
            self.domainName = domainName
            self.idempotencyToken = idempotencyToken
        }

        public init(dictionary: [String: Any]) throws {
            if let domainValidationOptions = dictionary["DomainValidationOptions"] as? [[String: Any]] {
                self.domainValidationOptions = try domainValidationOptions.map({ try DomainValidationOption(dictionary: $0) })
            } else { 
                self.domainValidationOptions = nil
            }
            self.subjectAlternativeNames = dictionary["SubjectAlternativeNames"] as? [String]
            guard let domainName = dictionary["DomainName"] as? String else { throw InitializableError.missingRequiredParam("DomainName") }
            self.domainName = domainName
            self.idempotencyToken = dictionary["IdempotencyToken"] as? String
        }
    }

    public struct ImportCertificateResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The Amazon Resource Name (ARN) of the imported certificate.
        public let certificateArn: String?

        public init(certificateArn: String? = nil) {
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            self.certificateArn = dictionary["CertificateArn"] as? String
        }
    }

    public struct ListTagsForCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// String that contains the ARN of the ACM Certificate for which you want to list the tags. This has the following form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String

        public init(certificateArn: String) {
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
        }
    }

    public struct DeleteCertificateRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// String that contains the ARN of the ACM Certificate to be deleted. This must be of the form:  arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012  For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces.
        public let certificateArn: String

        public init(certificateArn: String) {
            self.certificateArn = certificateArn
        }

        public init(dictionary: [String: Any]) throws {
            guard let certificateArn = dictionary["CertificateArn"] as? String else { throw InitializableError.missingRequiredParam("CertificateArn") }
            self.certificateArn = certificateArn
        }
    }

    public struct CertificateDetail: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// The reason the certificate request failed. This value exists only when the certificate status is FAILED. For more information, see Certificate Request Failed in the AWS Certificate Manager User Guide.
        public let failureReason: String?
        /// The time at which the certificate was issued. This value exists only when the certificate type is AMAZON_ISSUED.
        public let issuedAt: Date?
        /// The date and time at which the certificate was imported. This value exists only when the certificate type is IMPORTED.
        public let importedAt: Date?
        /// The time at which the certificate was revoked. This value exists only when the certificate status is REVOKED.
        public let revokedAt: Date?
        /// Contains information about the status of ACM's managed renewal for the certificate. This field exists only when the certificate type is AMAZON_ISSUED.
        public let renewalSummary: RenewalSummary?
        /// The algorithm that was used to sign the certificate.
        public let signatureAlgorithm: String?
        /// The serial number of the certificate.
        public let serial: String?
        /// The reason the certificate was revoked. This value exists only when the certificate status is REVOKED.
        public let revocationReason: String?
        /// The time after which the certificate is not valid.
        public let notAfter: Date?
        /// The status of the certificate.
        public let status: String?
        /// The time at which the certificate was requested. This value exists only when the certificate type is AMAZON_ISSUED.
        public let createdAt: Date?
        /// The time before which the certificate is not valid.
        public let notBefore: Date?
        /// One or more domain names (subject alternative names) included in the certificate. This list contains the domain names that are bound to the public key that is contained in the certificate. The subject alternative names include the canonical domain name (CN) of the certificate and additional domain names that can be used to connect to the website.
        public let subjectAlternativeNames: [String]?
        /// Contains information about the initial validation of each domain name that occurs as a result of the RequestCertificate request. This field exists only when the certificate type is AMAZON_ISSUED.
        public let domainValidationOptions: [DomainValidation]?
        /// The algorithm that was used to generate the key pair (the public and private key).
        public let keyAlgorithm: String?
        /// The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see Amazon Resource Names (ARNs) and AWS Service Namespaces in the AWS General Reference.
        public let certificateArn: String?
        /// The fully qualified domain name for the certificate, such as www.example.com or example.com.
        public let domainName: String?
        /// The source of the certificate. For certificates provided by ACM, this value is AMAZON_ISSUED. For certificates that you imported with ImportCertificate, this value is IMPORTED. ACM does not provide managed renewal for imported certificates. For more information about the differences between certificates that you import and those that ACM provides, see Importing Certificates in the AWS Certificate Manager User Guide.
        public let type: String?
        /// A list of ARNs for the AWS resources that are using the certificate. A certificate can be used by multiple AWS resources.
        public let inUseBy: [String]?
        /// The name of the certificate authority that issued and signed the certificate.
        public let issuer: String?
        /// The name of the entity that is associated with the public key contained in the certificate.
        public let subject: String?

        public init(failureReason: String? = nil, issuedAt: Date? = nil, importedAt: Date? = nil, revokedAt: Date? = nil, renewalSummary: RenewalSummary? = nil, signatureAlgorithm: String? = nil, serial: String? = nil, revocationReason: String? = nil, notAfter: Date? = nil, status: String? = nil, createdAt: Date? = nil, notBefore: Date? = nil, subjectAlternativeNames: [String]? = nil, domainValidationOptions: [DomainValidation]? = nil, keyAlgorithm: String? = nil, certificateArn: String? = nil, domainName: String? = nil, type: String? = nil, inUseBy: [String]? = nil, issuer: String? = nil, subject: String? = nil) {
            self.failureReason = failureReason
            self.issuedAt = issuedAt
            self.importedAt = importedAt
            self.revokedAt = revokedAt
            self.renewalSummary = renewalSummary
            self.signatureAlgorithm = signatureAlgorithm
            self.serial = serial
            self.revocationReason = revocationReason
            self.notAfter = notAfter
            self.status = status
            self.createdAt = createdAt
            self.notBefore = notBefore
            self.subjectAlternativeNames = subjectAlternativeNames
            self.domainValidationOptions = domainValidationOptions
            self.keyAlgorithm = keyAlgorithm
            self.certificateArn = certificateArn
            self.domainName = domainName
            self.type = type
            self.inUseBy = inUseBy
            self.issuer = issuer
            self.subject = subject
        }

        public init(dictionary: [String: Any]) throws {
            self.failureReason = dictionary["FailureReason"] as? String
            self.issuedAt = dictionary["IssuedAt"] as? Date
            self.importedAt = dictionary["ImportedAt"] as? Date
            self.revokedAt = dictionary["RevokedAt"] as? Date
            if let renewalSummary = dictionary["RenewalSummary"] as? [String: Any] { self.renewalSummary = try Acm.RenewalSummary(dictionary: renewalSummary) } else { self.renewalSummary = nil }
            self.signatureAlgorithm = dictionary["SignatureAlgorithm"] as? String
            self.serial = dictionary["Serial"] as? String
            self.revocationReason = dictionary["RevocationReason"] as? String
            self.notAfter = dictionary["NotAfter"] as? Date
            self.status = dictionary["Status"] as? String
            self.createdAt = dictionary["CreatedAt"] as? Date
            self.notBefore = dictionary["NotBefore"] as? Date
            self.subjectAlternativeNames = dictionary["SubjectAlternativeNames"] as? [String]
            if let domainValidationOptions = dictionary["DomainValidationOptions"] as? [[String: Any]] {
                self.domainValidationOptions = try domainValidationOptions.map({ try DomainValidation(dictionary: $0) })
            } else { 
                self.domainValidationOptions = nil
            }
            self.keyAlgorithm = dictionary["KeyAlgorithm"] as? String
            self.certificateArn = dictionary["CertificateArn"] as? String
            self.domainName = dictionary["DomainName"] as? String
            self.type = dictionary["Type"] as? String
            self.inUseBy = dictionary["InUseBy"] as? [String]
            self.issuer = dictionary["Issuer"] as? String
            self.subject = dictionary["Subject"] as? String
        }
    }

}