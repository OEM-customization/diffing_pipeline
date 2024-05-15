.class public Lsun/security/pkcs/PKCS9Attribute;
.super Ljava/lang/Object;
.source "PKCS9Attribute.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field private static final BYTE_ARRAY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CHALLENGE_PASSWORD_STR:Ljava/lang/String; = "ChallengePassword"

.field public static final CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final CONTENT_TYPE_STR:Ljava/lang/String; = "ContentType"

.field public static final COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final COUNTERSIGNATURE_STR:Ljava/lang/String; = "Countersignature"

.field public static final EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EMAIL_ADDRESS_STR:Ljava/lang/String; = "EmailAddress"

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENDED_CERTIFICATE_ATTRIBUTES_STR:Ljava/lang/String; = "ExtendedCertificateAttributes"

.field public static final EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final EXTENSION_REQUEST_STR:Ljava/lang/String; = "ExtensionRequest"

.field public static final ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field public static final ISSUER_SERIALNUMBER_STR:Ljava/lang/String; = "IssuerAndSerialNumber"

.field public static final MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

.field public static final MESSAGE_DIGEST_STR:Ljava/lang/String; = "MessageDigest"

.field private static final NAME_OID_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_NAME_TABLE:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

.field private static final PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

.field private static final RSA_PROPRIETARY_STR:Ljava/lang/String; = "RSAProprietary"

.field public static final SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNATURE_TIMESTAMP_TOKEN_STR:Ljava/lang/String; = "SignatureTimestampToken"

.field public static final SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_CERTIFICATE_STR:Ljava/lang/String; = "SigningCertificate"

.field public static final SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SIGNING_TIME_STR:Ljava/lang/String; = "SigningTime"

.field private static final SINGLE_VALUED:[Z

.field public static final SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

.field public static final SMIME_CAPABILITY_STR:Ljava/lang/String; = "SMIMECapability"

.field private static final SMIME_SIGNING_DESC_STR:Ljava/lang/String; = "SMIMESigningDesc"

.field public static final UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_ADDRESS_STR:Ljava/lang/String; = "UnstructuredAddress"

.field public static final UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

.field public static final UNSTRUCTURED_NAME_STR:Ljava/lang/String; = "UnstructuredName"

.field private static final VALUE_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private index:I

.field private oid:Lsun/security/util/ObjectIdentifier;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 183
    const-string/jumbo v3, "jar"

    invoke-static {v3}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    .line 188
    const/16 v3, 0x12

    new-array v3, v3, [Lsun/security/util/ObjectIdentifier;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    .line 193
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_16
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ge v1, v3, :cond_42

    .line 194
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    .line 195
    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v7, v4, v8

    aput v10, v4, v7

    const/16 v5, 0x348

    aput v5, v4, v10

    const v5, 0x1bb8d

    const/4 v6, 0x3

    aput v5, v4, v6

    const/4 v5, 0x4

    aput v7, v4, v5

    const/4 v5, 0x5

    aput v11, v4, v5

    const/4 v5, 0x6

    aput v1, v4, v5

    invoke-static {v4}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    .line 194
    aput-object v4, v3, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 199
    :cond_42
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    .line 200
    new-array v5, v11, [I

    fill-array-data v5, :array_460

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    .line 199
    aput-object v5, v3, v4

    .line 201
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 202
    new-array v5, v11, [I

    fill-array-data v5, :array_476

    invoke-static {v5}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    .line 201
    aput-object v5, v3, v4

    .line 205
    :try_start_66
    const-string/jumbo v3, "[B"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;
    :try_end_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_6f} :catch_44a

    .line 212
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v7

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 213
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v10

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_NAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 214
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CONTENT_TYPE_OID:Lsun/security/util/ObjectIdentifier;

    .line 215
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->MESSAGE_DIGEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 216
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_TIME_OID:Lsun/security/util/ObjectIdentifier;

    .line 217
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->COUNTERSIGNATURE_OID:Lsun/security/util/ObjectIdentifier;

    .line 218
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->CHALLENGE_PASSWORD_OID:Lsun/security/util/ObjectIdentifier;

    .line 219
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->UNSTRUCTURED_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    .line 221
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v11

    .line 220
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENDED_CERTIFICATE_ATTRIBUTES_OID:Lsun/security/util/ObjectIdentifier;

    .line 222
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->ISSUER_SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 225
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->EXTENSION_REQUEST_OID:Lsun/security/util/ObjectIdentifier;

    .line 226
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SMIME_CAPABILITY_OID:Lsun/security/util/ObjectIdentifier;

    .line 227
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNING_CERTIFICATE_OID:Lsun/security/util/ObjectIdentifier;

    .line 229
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    .line 228
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SIGNATURE_TIMESTAMP_TOKEN_OID:Lsun/security/util/ObjectIdentifier;

    .line 257
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 256
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    .line 260
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "emailaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredname"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v10

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "contenttype"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "messagedigest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingtime"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "countersignature"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "challengepassword"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "unstructuredaddress"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extendedcertificateattributes"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v5, v5, v11

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "issuerandserialnumber"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "rsaproprietary"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xc

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingdescription"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xd

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "extensionrequest"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "smimecapability"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signingcertificate"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    const-string/jumbo v4, "signaturetimestamptoken"

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    .line 283
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v7

    const-string/jumbo v5, "EmailAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v10

    const-string/jumbo v5, "UnstructuredName"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-string/jumbo v5, "ContentType"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const-string/jumbo v5, "MessageDigest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningTime"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    const-string/jumbo v5, "Countersignature"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    const-string/jumbo v5, "ChallengePassword"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    const-string/jumbo v5, "UnstructuredAddress"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v11

    const-string/jumbo v5, "ExtendedCertificateAttributes"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    const-string/jumbo v5, "IssuerAndSerialNumber"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    const-string/jumbo v5, "RSAProprietary"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMESigningDesc"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xe

    aget-object v4, v4, v5

    const-string/jumbo v5, "ExtensionRequest"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0xf

    aget-object v4, v4, v5

    const-string/jumbo v5, "SMIMECapability"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x10

    aget-object v4, v4, v5

    const-string/jumbo v5, "SigningCertificate"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    const-string/jumbo v5, "SignatureTimestampToken"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/16 v3, 0x12

    new-array v3, v3, [[Ljava/lang/Byte;

    .line 311
    aput-object v9, v3, v8

    .line 312
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v7

    .line 313
    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    .line 314
    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    .line 313
    aput-object v4, v3, v10

    .line 315
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 316
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 317
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 318
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 319
    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    .line 320
    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    .line 319
    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 321
    new-array v4, v10, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    .line 322
    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v7

    .line 321
    const/16 v5, 0x8

    aput-object v4, v3, v5

    .line 323
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    aput-object v4, v3, v11

    .line 324
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 325
    const/16 v4, 0xb

    aput-object v9, v3, v4

    .line 326
    const/16 v4, 0xc

    aput-object v9, v3, v4

    .line 327
    const/16 v4, 0xd

    aput-object v9, v3, v4

    .line 328
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 329
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 330
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 331
    new-array v4, v7, [Ljava/lang/Byte;

    new-instance v5, Ljava/lang/Byte;

    const/16 v6, 0x30

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    aput-object v5, v4, v8

    const/16 v5, 0x11

    aput-object v4, v3, v5

    .line 310
    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    .line 334
    const/16 v3, 0x12

    new-array v3, v3, [Ljava/lang/Class;

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 338
    :try_start_3a6
    const-string/jumbo v3, "[Ljava.lang.String;"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 340
    .local v2, "str":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 341
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 342
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 343
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 344
    const-string/jumbo v4, "sun.security.util.ObjectIdentifier"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 343
    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 345
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 346
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const-string/jumbo v4, "java.util.Date"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 347
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 348
    const-string/jumbo v4, "[Lsun.security.pkcs.SignerInfo;"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 347
    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 349
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 350
    const-string/jumbo v4, "java.lang.String"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 349
    const/4 v5, 0x7

    aput-object v4, v3, v5

    .line 351
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/16 v4, 0x8

    aput-object v2, v3, v4

    .line 352
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x9

    aput-object v4, v3, v5

    .line 353
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xa

    aput-object v4, v3, v5

    .line 354
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput-object v4, v3, v5

    .line 355
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xc

    aput-object v4, v3, v5

    .line 356
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xd

    aput-object v4, v3, v5

    .line 357
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    .line 358
    const-string/jumbo v4, "sun.security.x509.CertificateExtensions"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 357
    const/16 v5, 0xe

    aput-object v4, v3, v5

    .line 359
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput-object v4, v3, v5

    .line 360
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput-object v4, v3, v5

    .line 361
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    const/16 v5, 0x11

    aput-object v4, v3, v5
    :try_end_440
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a6 .. :try_end_440} :catch_455

    .line 371
    const/16 v3, 0x12

    new-array v3, v3, [Z

    fill-array-data v3, :array_48c

    sput-object v3, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    .line 180
    return-void

    .line 206
    .end local v2    # "str":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_44a
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_455
    move-exception v0

    .line 363
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :array_460
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xc
    .end array-data

    .line 202
    :array_476
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x2
        0xe
    .end array-data

    .line 371
    :array_48c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 449
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_2a

    .line 450
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    const-string/jumbo v3, " constructing PKCS9Attribute."

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_2a
    invoke-direct {p0, v0, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 15
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    invoke-direct {v1, v8}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 485
    .local v1, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v9}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 487
    .local v5, "val":[Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v8

    if-eqz v8, :cond_23

    .line 488
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Excess data parsing PKCS9Attribute"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 490
    :cond_23
    array-length v8, v5

    if-eq v8, v9, :cond_2f

    .line 491
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9Attribute doesn\'t have two components"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 494
    :cond_2f
    aget-object v8, v5, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 495
    aget-object v8, v5, v11

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    .line 496
    .local v0, "content":[B
    new-instance v8, Lsun/security/util/DerInputStream;

    invoke-direct {v8, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v8, v11}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 498
    .local v2, "elems":[Lsun/security/util/DerValue;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    invoke-static {v8, v9, v11}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    iput v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 499
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v8, v12, :cond_76

    .line 500
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_73

    .line 501
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported signer attribute: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 503
    :cond_73
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 504
    return-void

    .line 508
    :cond_76
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_84

    array-length v8, v2

    if-le v8, v11, :cond_84

    .line 509
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attribute;->throwSingleValuedException()V

    .line 513
    :cond_84
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_85
    array-length v8, v2

    if-ge v3, v8, :cond_a3

    .line 514
    new-instance v4, Ljava/lang/Byte;

    aget-object v8, v2, v3

    iget-byte v8, v8, Lsun/security/util/DerValue;->tag:B

    invoke-direct {v4, v8}, Ljava/lang/Byte;-><init>(B)V

    .line 516
    .local v4, "tag":Ljava/lang/Byte;
    sget-object v8, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v9, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v8, v8, v9

    invoke-static {v4, v8, v10}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v8

    if-ne v8, v12, :cond_a0

    .line 517
    invoke-direct {p0, v4}, Lsun/security/pkcs/PKCS9Attribute;->throwTagException(Ljava/lang/Byte;)V

    .line 513
    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 520
    .end local v4    # "tag":Ljava/lang/Byte;
    :cond_a3
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_160

    .line 594
    :goto_a8
    return-void

    .line 525
    :pswitch_a9
    array-length v8, v2

    new-array v6, v8, [Ljava/lang/String;

    .line 527
    .local v6, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_ad
    array-length v8, v2

    if-ge v3, v8, :cond_bb

    .line 528
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 529
    :cond_bb
    iput-object v6, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_a8

    .line 534
    .end local v6    # "values":[Ljava/lang/String;
    :pswitch_be
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_a8

    .line 538
    :pswitch_c7
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_a8

    .line 542
    :pswitch_d0
    new-instance v8, Lsun/security/util/DerInputStream;

    aget-object v9, v2, v10

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_a8

    .line 547
    :pswitch_e2
    array-length v8, v2

    new-array v7, v8, [Lsun/security/pkcs/SignerInfo;

    .line 548
    .local v7, "values":[Lsun/security/pkcs/SignerInfo;
    const/4 v3, 0x0

    :goto_e6
    array-length v8, v2

    if-ge v3, v8, :cond_f9

    .line 550
    new-instance v8, Lsun/security/pkcs/SignerInfo;

    aget-object v9, v2, v3

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    .line 549
    aput-object v8, v7, v3

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 551
    :cond_f9
    iput-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_a8

    .line 556
    .end local v7    # "values":[Lsun/security/pkcs/SignerInfo;
    :pswitch_fc
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto :goto_a8

    .line 560
    :pswitch_105
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 564
    :pswitch_10e
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 569
    :pswitch_117
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 573
    :pswitch_120
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 577
    :pswitch_129
    new-instance v8, Lsun/security/x509/CertificateExtensions;

    .line 578
    new-instance v9, Lsun/security/util/DerInputStream;

    aget-object v10, v2, v10

    invoke-virtual {v10}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 577
    invoke-direct {v8, v9}, Lsun/security/x509/CertificateExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_a8

    .line 582
    :pswitch_13d
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 SMIMECapability attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 586
    :pswitch_146
    new-instance v8, Lsun/security/pkcs/SigningCertificateInfo;

    aget-object v9, v2, v10

    invoke-virtual {v9}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/SigningCertificateInfo;-><init>([B)V

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_a8

    .line 590
    :pswitch_155
    aget-object v8, v2, v10

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    iput-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    goto/16 :goto_a8

    .line 520
    nop

    :pswitch_data_160
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_a9
        :pswitch_be
        :pswitch_c7
        :pswitch_d0
        :pswitch_e2
        :pswitch_fc
        :pswitch_a9
        :pswitch_105
        :pswitch_10e
        :pswitch_117
        :pswitch_117
        :pswitch_120
        :pswitch_129
        :pswitch_13d
        :pswitch_146
        :pswitch_155
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .registers 3
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    invoke-direct {p0, p1, p2}, Lsun/security/pkcs/PKCS9Attribute;->init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public static getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 786
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 778
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->NAME_OID_TABLE:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method static indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 836
    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 837
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v0

    .line 836
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 839
    :cond_10
    const/4 v1, -0x1

    return v1
.end method

.method private init(Lsun/security/util/ObjectIdentifier;Ljava/lang/Object;)V
    .registers 7
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 460
    iput-object p1, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 461
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lsun/security/pkcs/PKCS9Attribute;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    .line 462
    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_54

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    .line 463
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_12
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 464
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wrong value class  for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 467
    const-string/jumbo v3, " constructing PKCS9Attribute; was "

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    const-string/jumbo v3, ", should be "

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_54
    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->VALUE_CLASSES:[Ljava/lang/Class;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v1, v2

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_12

    .line 471
    :cond_5b
    iput-object p2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    .line 472
    return-void
.end method

.method private throwSingleValuedException()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Single-value attribute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    const-string/jumbo v2, " ("

    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 848
    const-string/jumbo v2, ")"

    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 849
    const-string/jumbo v2, " has multiple values."

    .line 847
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwTagException(Ljava/lang/Byte;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_VALUE_TAGS:[[Ljava/lang/Byte;

    iget v4, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v0, v3, v4

    .line 860
    .local v0, "expectedTags":[Ljava/lang/Byte;
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 861
    .local v2, "msg":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "Value of attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 862
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    invoke-virtual {p0}, Lsun/security/pkcs/PKCS9Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 865
    const-string/jumbo v3, ") has wrong tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    invoke-virtual {p1}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 867
    const-string/jumbo v3, ".  Expected tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_47
    array-length v3, v0

    if-ge v1, v3, :cond_5c

    .line 872
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 873
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 875
    :cond_5c
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .registers 13
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x31

    .line 605
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 606
    .local v4, "temp":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 607
    iget v8, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    packed-switch v8, :pswitch_data_12a

    .line 721
    :goto_11
    :pswitch_11
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 722
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v0, v9, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    .line 724
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 726
    return-void

    .line 609
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    :pswitch_27
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v8}, Lsun/security/util/DerOutputStream;->write([B)V

    goto :goto_11

    .line 614
    :pswitch_2f
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 616
    .local v7, "values":[Ljava/lang/String;
    array-length v8, v7

    .line 615
    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    .line 618
    .local v6, "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    array-length v8, v7

    if-ge v3, v8, :cond_4b

    .line 619
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    .line 620
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putIA5String(Ljava/lang/String;)V

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 622
    :cond_4b
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto :goto_11

    .line 628
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_4f
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 629
    .local v5, "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 630
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_11

    .line 636
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_63
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 637
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 638
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_11

    .line 644
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_77
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 645
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/util/Date;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 646
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto :goto_11

    .line 651
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_8b
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [Lsun/security/util/DerEncoder;

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_11

    .line 656
    :pswitch_94
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 657
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_11

    .line 664
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_a9
    iget-object v7, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 666
    .restart local v7    # "values":[Ljava/lang/String;
    array-length v8, v7

    .line 665
    new-array v6, v8, [Lsun/security/util/DerOutputStream;

    .line 668
    .restart local v6    # "temps":[Lsun/security/util/DerOutputStream;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b1
    array-length v8, v7

    if-ge v3, v8, :cond_c5

    .line 669
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    aput-object v8, v6, v3

    .line 670
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, Lsun/security/util/DerOutputStream;->putPrintableString(Ljava/lang/String;)V

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    .line 672
    :cond_c5
    invoke-virtual {v4, v10, v6}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    goto/16 :goto_11

    .line 677
    .end local v3    # "i":I
    .end local v6    # "temps":[Lsun/security/util/DerOutputStream;
    .end local v7    # "values":[Ljava/lang/String;
    :pswitch_ca
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 extended-certificate attribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 681
    :pswitch_d3
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 IssuerAndSerialNumberattribute not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 686
    :pswitch_dc
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 RSA DSI attributes11 and 12, not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 690
    :pswitch_e5
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #13 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 695
    :pswitch_ee
    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 696
    .restart local v5    # "temp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v2, Lsun/security/x509/CertificateExtensions;

    .line 698
    .local v2, "exts":Lsun/security/x509/CertificateExtensions;
    const/4 v8, 0x1

    :try_start_f8
    invoke-virtual {v2, v5, v8}, Lsun/security/x509/CertificateExtensions;->encode(Ljava/io/OutputStream;Z)V
    :try_end_fb
    .catch Ljava/security/cert/CertificateException; {:try_start_f8 .. :try_end_fb} :catch_104

    .line 702
    invoke-virtual {v5}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_11

    .line 699
    :catch_104
    move-exception v1

    .line 700
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 706
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    .end local v2    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v5    # "temp2":Lsun/security/util/DerOutputStream;
    :pswitch_10f
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "PKCS9 attribute #15 not supported."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 710
    :pswitch_118
    new-instance v8, Ljava/io/IOException;

    .line 711
    const-string/jumbo v9, "PKCS9 SigningCertificate attribute not supported."

    .line 710
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 715
    :pswitch_121
    iget-object v8, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v8, [B

    invoke-virtual {v4, v10, v8}, Lsun/security/util/DerOutputStream;->write(B[B)V

    goto/16 :goto_11

    .line 607
    :pswitch_data_12a
    .packed-switch -0x1
        :pswitch_27
        :pswitch_11
        :pswitch_2f
        :pswitch_2f
        :pswitch_4f
        :pswitch_63
        :pswitch_77
        :pswitch_8b
        :pswitch_94
        :pswitch_a9
        :pswitch_ca
        :pswitch_d3
        :pswitch_dc
        :pswitch_dc
        :pswitch_e5
        :pswitch_ee
        :pswitch_10f
        :pswitch_118
        :pswitch_121
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 768
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 769
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    :goto_b
    return-object v0

    .line 770
    :cond_c
    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v1, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v2, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isKnown()Z
    .registers 3

    .prologue
    .line 733
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isSingleValued()Z
    .registers 3

    .prologue
    .line 754
    iget v0, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    sget-object v0, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v1, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, -0x1

    .line 793
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 795
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-ne v5, v8, :cond_4e

    .line 798
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    :goto_1b
    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    iget v5, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    if-eq v5, v8, :cond_2d

    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->SINGLE_VALUED:[Z

    iget v6, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_6a

    .line 805
    :cond_2d
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_60

    .line 806
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 807
    .local v2, "hexDump":Lsun/misc/HexDumpEncoder;
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v2, v5}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    .end local v2    # "hexDump":Lsun/misc/HexDumpEncoder;
    :goto_43
    const-string/jumbo v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 800
    :cond_4e
    sget-object v5, Lsun/security/pkcs/PKCS9Attribute;->OID_NAME_TABLE:Ljava/util/Hashtable;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    iget v7, p0, Lsun/security/pkcs/PKCS9Attribute;->index:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 809
    :cond_60
    iget-object v5, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43

    .line 814
    :cond_6a
    const/4 v1, 0x1

    .line 815
    .local v1, "first":Z
    iget-object v4, p0, Lsun/security/pkcs/PKCS9Attribute;->value:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 817
    .local v4, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_70
    array-length v5, v4

    if-ge v3, v5, :cond_89

    .line 818
    if-eqz v1, :cond_82

    .line 819
    const/4 v1, 0x0

    .line 823
    :goto_76
    aget-object v5, v4, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 821
    :cond_82
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_76

    .line 825
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
