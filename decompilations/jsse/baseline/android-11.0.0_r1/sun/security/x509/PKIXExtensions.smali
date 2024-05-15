.class public Lsun/security/x509/PKIXExtensions;
.super Ljava/lang/Object;
.source "PKIXExtensions.java"


# static fields
.field public static final blacklist AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist AuthInfoAccess_data:[I

.field public static final blacklist AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist AuthorityKey_data:[I

.field public static final blacklist BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist BasicConstraints_data:[I

.field public static final blacklist CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CRLDistributionPoints_data:[I

.field public static final blacklist CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CRLNumber_data:[I

.field public static final greylist CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CertificateIssuer_data:[I

.field public static final blacklist CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist CertificatePolicies_data:[I

.field public static final blacklist DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist DeltaCRLIndicator_data:[I

.field public static final blacklist ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist ExtendedKeyUsage_data:[I

.field public static final blacklist FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist FreshestCRL_data:[I

.field public static final blacklist HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist HoldInstructionCode_data:[I

.field public static final blacklist InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist InhibitAnyPolicy_data:[I

.field public static final blacklist InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist InvalidityDate_data:[I

.field public static final blacklist IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist IssuerAlternativeName_data:[I

.field public static final blacklist IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist IssuingDistributionPoint_data:[I

.field public static final blacklist KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist KeyUsage_data:[I

.field public static final blacklist NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist NameConstraints_data:[I

.field public static final blacklist OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist OCSPNoCheck_data:[I

.field public static final blacklist PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist PolicyConstraints_data:[I

.field public static final blacklist PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist PolicyMappings_data:[I

.field public static final blacklist PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist PrivateKeyUsage_data:[I

.field public static final blacklist ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist ReasonCode_data:[I

.field public static final blacklist SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectAlternativeName_data:[I

.field public static final blacklist SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectDirectoryAttributes_data:[I

.field public static final blacklist SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectInfoAccess_data:[I

.field public static final blacklist SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist SubjectKey_data:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 52
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_18a

    sput-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    .line 53
    new-array v2, v0, [I

    fill-array-data v2, :array_196

    sput-object v2, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    .line 54
    new-array v2, v0, [I

    fill-array-data v2, :array_1a2

    sput-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    .line 55
    new-array v2, v0, [I

    fill-array-data v2, :array_1ae

    sput-object v2, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    .line 56
    new-array v2, v0, [I

    fill-array-data v2, :array_1ba

    sput-object v2, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    .line 57
    new-array v2, v0, [I

    fill-array-data v2, :array_1c6

    sput-object v2, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    .line 58
    new-array v2, v0, [I

    fill-array-data v2, :array_1d2

    sput-object v2, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    .line 59
    new-array v2, v0, [I

    fill-array-data v2, :array_1de

    sput-object v2, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    .line 60
    new-array v2, v0, [I

    fill-array-data v2, :array_1ea

    sput-object v2, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    .line 61
    new-array v2, v0, [I

    fill-array-data v2, :array_1f6

    sput-object v2, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    .line 62
    new-array v2, v0, [I

    fill-array-data v2, :array_202

    sput-object v2, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    .line 63
    new-array v2, v0, [I

    fill-array-data v2, :array_20e

    sput-object v2, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    .line 64
    new-array v2, v0, [I

    fill-array-data v2, :array_21a

    sput-object v2, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    .line 65
    new-array v2, v0, [I

    fill-array-data v2, :array_226

    sput-object v2, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    .line 66
    new-array v2, v0, [I

    fill-array-data v2, :array_232

    sput-object v2, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    .line 67
    new-array v2, v0, [I

    fill-array-data v2, :array_23e

    sput-object v2, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    .line 68
    new-array v2, v0, [I

    fill-array-data v2, :array_24a

    sput-object v2, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    .line 69
    new-array v2, v0, [I

    fill-array-data v2, :array_256

    sput-object v2, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    .line 70
    new-array v2, v0, [I

    fill-array-data v2, :array_262

    sput-object v2, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    .line 71
    new-array v2, v0, [I

    fill-array-data v2, :array_26e

    sput-object v2, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    .line 72
    new-array v2, v0, [I

    fill-array-data v2, :array_27a

    sput-object v2, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    .line 73
    new-array v2, v0, [I

    fill-array-data v2, :array_286

    sput-object v2, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    .line 74
    const/16 v2, 0x9

    new-array v3, v2, [I

    fill-array-data v3, :array_292

    sput-object v3, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    .line 75
    new-array v2, v2, [I

    fill-array-data v2, :array_2a8

    sput-object v2, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    .line 76
    new-array v0, v0, [I

    fill-array-data v0, :array_2be

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2ca

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    .line 228
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 229
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 230
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 231
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 232
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    .line 233
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    .line 234
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    .line 235
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    .line 236
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 237
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    .line 238
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 239
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 240
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    .line 241
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    .line 242
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

    .line 243
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    .line 244
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 245
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 246
    sget-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    .line 247
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 248
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    .line 250
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 251
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    .line 252
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 253
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    .line 254
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 255
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    .line 256
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    .line 257
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    .line 258
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    .line 259
    sget-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    .line 260
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    .line 261
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    .line 262
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    .line 263
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    .line 264
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 265
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    .line 266
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 267
    sget-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    .line 268
    sget-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 269
    return-void

    :array_18a
    .array-data 4
        0x2
        0x5
        0x1d
        0x23
    .end array-data

    :array_196
    .array-data 4
        0x2
        0x5
        0x1d
        0xe
    .end array-data

    :array_1a2
    .array-data 4
        0x2
        0x5
        0x1d
        0xf
    .end array-data

    :array_1ae
    .array-data 4
        0x2
        0x5
        0x1d
        0x10
    .end array-data

    :array_1ba
    .array-data 4
        0x2
        0x5
        0x1d
        0x20
    .end array-data

    :array_1c6
    .array-data 4
        0x2
        0x5
        0x1d
        0x21
    .end array-data

    :array_1d2
    .array-data 4
        0x2
        0x5
        0x1d
        0x11
    .end array-data

    :array_1de
    .array-data 4
        0x2
        0x5
        0x1d
        0x12
    .end array-data

    :array_1ea
    .array-data 4
        0x2
        0x5
        0x1d
        0x9
    .end array-data

    :array_1f6
    .array-data 4
        0x2
        0x5
        0x1d
        0x13
    .end array-data

    :array_202
    .array-data 4
        0x2
        0x5
        0x1d
        0x1e
    .end array-data

    :array_20e
    .array-data 4
        0x2
        0x5
        0x1d
        0x24
    .end array-data

    :array_21a
    .array-data 4
        0x2
        0x5
        0x1d
        0x1f
    .end array-data

    :array_226
    .array-data 4
        0x2
        0x5
        0x1d
        0x14
    .end array-data

    :array_232
    .array-data 4
        0x2
        0x5
        0x1d
        0x1c
    .end array-data

    :array_23e
    .array-data 4
        0x2
        0x5
        0x1d
        0x1b
    .end array-data

    :array_24a
    .array-data 4
        0x2
        0x5
        0x1d
        0x15
    .end array-data

    :array_256
    .array-data 4
        0x2
        0x5
        0x1d
        0x17
    .end array-data

    :array_262
    .array-data 4
        0x2
        0x5
        0x1d
        0x18
    .end array-data

    :array_26e
    .array-data 4
        0x2
        0x5
        0x1d
        0x25
    .end array-data

    :array_27a
    .array-data 4
        0x2
        0x5
        0x1d
        0x36
    .end array-data

    :array_286
    .array-data 4
        0x2
        0x5
        0x1d
        0x1d
    .end array-data

    :array_292
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0x1
    .end array-data

    :array_2a8
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x1
        0xb
    .end array-data

    :array_2be
    .array-data 4
        0x2
        0x5
        0x1d
        0x2e
    .end array-data

    :array_2ca
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
        0x5
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
