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
    .registers 26

    .line 52
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_17c

    sput-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_data:[I

    .line 53
    new-array v2, v0, [I

    fill-array-data v2, :array_188

    sput-object v2, Lsun/security/x509/PKIXExtensions;->SubjectKey_data:[I

    .line 54
    new-array v3, v0, [I

    fill-array-data v3, :array_194

    sput-object v3, Lsun/security/x509/PKIXExtensions;->KeyUsage_data:[I

    .line 55
    new-array v4, v0, [I

    fill-array-data v4, :array_1a0

    sput-object v4, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_data:[I

    .line 56
    new-array v5, v0, [I

    fill-array-data v5, :array_1ac

    sput-object v5, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_data:[I

    .line 57
    new-array v6, v0, [I

    fill-array-data v6, :array_1b8

    sput-object v6, Lsun/security/x509/PKIXExtensions;->PolicyMappings_data:[I

    .line 58
    new-array v7, v0, [I

    fill-array-data v7, :array_1c4

    sput-object v7, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_data:[I

    .line 59
    new-array v8, v0, [I

    fill-array-data v8, :array_1d0

    sput-object v8, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_data:[I

    .line 60
    new-array v9, v0, [I

    fill-array-data v9, :array_1dc

    sput-object v9, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_data:[I

    .line 61
    new-array v10, v0, [I

    fill-array-data v10, :array_1e8

    sput-object v10, Lsun/security/x509/PKIXExtensions;->BasicConstraints_data:[I

    .line 62
    new-array v11, v0, [I

    fill-array-data v11, :array_1f4

    sput-object v11, Lsun/security/x509/PKIXExtensions;->NameConstraints_data:[I

    .line 63
    new-array v12, v0, [I

    fill-array-data v12, :array_200

    sput-object v12, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_data:[I

    .line 64
    new-array v13, v0, [I

    fill-array-data v13, :array_20c

    sput-object v13, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_data:[I

    .line 65
    new-array v14, v0, [I

    fill-array-data v14, :array_218

    sput-object v14, Lsun/security/x509/PKIXExtensions;->CRLNumber_data:[I

    .line 66
    new-array v15, v0, [I

    fill-array-data v15, :array_224

    sput-object v15, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_data:[I

    .line 67
    move-object/from16 v16, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_230

    sput-object v15, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_data:[I

    .line 68
    move-object/from16 v17, v15

    new-array v15, v0, [I

    fill-array-data v15, :array_23c

    sput-object v15, Lsun/security/x509/PKIXExtensions;->ReasonCode_data:[I

    .line 69
    move-object/from16 v18, v14

    new-array v14, v0, [I

    fill-array-data v14, :array_248

    sput-object v14, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_data:[I

    .line 70
    move-object/from16 v19, v13

    new-array v13, v0, [I

    fill-array-data v13, :array_254

    sput-object v13, Lsun/security/x509/PKIXExtensions;->InvalidityDate_data:[I

    .line 71
    move-object/from16 v20, v12

    new-array v12, v0, [I

    fill-array-data v12, :array_260

    sput-object v12, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_data:[I

    .line 72
    move-object/from16 v21, v11

    new-array v11, v0, [I

    fill-array-data v11, :array_26c

    sput-object v11, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_data:[I

    .line 73
    move-object/from16 v22, v13

    new-array v13, v0, [I

    fill-array-data v13, :array_278

    sput-object v13, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_data:[I

    .line 74
    const/16 v0, 0x9

    move-object/from16 v24, v13

    new-array v13, v0, [I

    fill-array-data v13, :array_284

    sput-object v13, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_data:[I

    .line 75
    new-array v0, v0, [I

    fill-array-data v0, :array_29a

    sput-object v0, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_data:[I

    .line 76
    move-object/from16 v25, v0

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2b0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->FreshestCRL_data:[I

    .line 77
    move-object/from16 v23, v0

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2bc

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_data:[I

    .line 228
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 229
    invoke-static {v2}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    .line 230
    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 231
    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 232
    nop

    .line 233
    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    .line 234
    invoke-static {v6}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    .line 235
    nop

    .line 236
    invoke-static {v7}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 237
    nop

    .line 238
    invoke-static {v8}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    .line 239
    invoke-static {v12}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    .line 240
    invoke-static {v11}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    .line 241
    nop

    .line 242
    invoke-static {v9}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->SubjectDirectoryAttributes_Id:Lsun/security/util/ObjectIdentifier;

    .line 243
    nop

    .line 244
    invoke-static {v10}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 245
    invoke-static {v15}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 246
    nop

    .line 247
    invoke-static {v14}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->HoldInstructionCode_Id:Lsun/security/util/ObjectIdentifier;

    .line 248
    invoke-static/range {v22 .. v22}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    .line 250
    invoke-static/range {v21 .. v21}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 251
    nop

    .line 252
    invoke-static/range {v20 .. v20}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    .line 253
    nop

    .line 254
    invoke-static/range {v19 .. v19}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    .line 255
    nop

    .line 256
    invoke-static/range {v18 .. v18}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->CRLNumber_Id:Lsun/security/util/ObjectIdentifier;

    .line 257
    nop

    .line 258
    invoke-static/range {v16 .. v16}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    .line 259
    nop

    .line 260
    invoke-static/range {v17 .. v17}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->DeltaCRLIndicator_Id:Lsun/security/util/ObjectIdentifier;

    .line 261
    nop

    .line 262
    invoke-static/range {v24 .. v24}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    .line 263
    nop

    .line 264
    invoke-static {v13}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 265
    nop

    .line 266
    invoke-static/range {v25 .. v25}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->SubjectInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    .line 267
    invoke-static/range {v23 .. v23}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lsun/security/x509/PKIXExtensions;->FreshestCRL_Id:Lsun/security/util/ObjectIdentifier;

    .line 268
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 269
    return-void

    nop

    :array_17c
    .array-data 4
        0x2
        0x5
        0x1d
        0x23
    .end array-data

    :array_188
    .array-data 4
        0x2
        0x5
        0x1d
        0xe
    .end array-data

    :array_194
    .array-data 4
        0x2
        0x5
        0x1d
        0xf
    .end array-data

    :array_1a0
    .array-data 4
        0x2
        0x5
        0x1d
        0x10
    .end array-data

    :array_1ac
    .array-data 4
        0x2
        0x5
        0x1d
        0x20
    .end array-data

    :array_1b8
    .array-data 4
        0x2
        0x5
        0x1d
        0x21
    .end array-data

    :array_1c4
    .array-data 4
        0x2
        0x5
        0x1d
        0x11
    .end array-data

    :array_1d0
    .array-data 4
        0x2
        0x5
        0x1d
        0x12
    .end array-data

    :array_1dc
    .array-data 4
        0x2
        0x5
        0x1d
        0x9
    .end array-data

    :array_1e8
    .array-data 4
        0x2
        0x5
        0x1d
        0x13
    .end array-data

    :array_1f4
    .array-data 4
        0x2
        0x5
        0x1d
        0x1e
    .end array-data

    :array_200
    .array-data 4
        0x2
        0x5
        0x1d
        0x24
    .end array-data

    :array_20c
    .array-data 4
        0x2
        0x5
        0x1d
        0x1f
    .end array-data

    :array_218
    .array-data 4
        0x2
        0x5
        0x1d
        0x14
    .end array-data

    :array_224
    .array-data 4
        0x2
        0x5
        0x1d
        0x1c
    .end array-data

    :array_230
    .array-data 4
        0x2
        0x5
        0x1d
        0x1b
    .end array-data

    :array_23c
    .array-data 4
        0x2
        0x5
        0x1d
        0x15
    .end array-data

    :array_248
    .array-data 4
        0x2
        0x5
        0x1d
        0x17
    .end array-data

    :array_254
    .array-data 4
        0x2
        0x5
        0x1d
        0x18
    .end array-data

    :array_260
    .array-data 4
        0x2
        0x5
        0x1d
        0x25
    .end array-data

    :array_26c
    .array-data 4
        0x2
        0x5
        0x1d
        0x36
    .end array-data

    :array_278
    .array-data 4
        0x2
        0x5
        0x1d
        0x1d
    .end array-data

    :array_284
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

    :array_29a
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

    :array_2b0
    .array-data 4
        0x2
        0x5
        0x1d
        0x2e
    .end array-data

    :array_2bc
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
