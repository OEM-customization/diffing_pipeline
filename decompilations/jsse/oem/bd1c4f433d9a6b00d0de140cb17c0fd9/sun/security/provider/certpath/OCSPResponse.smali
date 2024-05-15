.class public final Lsun/security/provider/certpath/OCSPResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;,
        Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    }
.end annotation


# static fields
.field private static final synthetic -sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I = null

.field private static final CERT_STATUS_GOOD:I = 0x0

.field private static final CERT_STATUS_REVOKED:I = 0x1

.field private static final CERT_STATUS_UNKNOWN:I = 0x2

.field private static final DEFAULT_MAX_CLOCK_SKEW:I = 0xdbba0

.field private static final KEY_TAG:I = 0x2

.field private static final KP_OCSP_SIGNING_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final MAX_CLOCK_SKEW:I

.field private static final NAME_TAG:I = 0x1

.field private static final OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final debug:Lsun/security/util/Debug;

.field private static final dump:Z

.field private static rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private static values:[Ljava/security/cert/CRLReason;


# instance fields
.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private responderKeyId:Lsun/security/x509/KeyIdentifier;

.field private responderName:Ljavax/security/auth/x500/X500Principal;

.field private final responseNonce:[B

.field private final responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private final sigAlgId:Lsun/security/x509/AlgorithmId;

.field private final signature:[B

.field private signerCert:Lsun/security/x509/X509CertImpl;

.field private final singleResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            "Lsun/security/provider/certpath/OCSPResponse$SingleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final tbsResponseData:[B


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/security/cert/CRLReason;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method private static synthetic -getsun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues()[I
    .registers 3

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->INTERNAL_ERROR:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_5c

    :goto_17
    :try_start_17
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->MALFORMED_REQUEST:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_5a

    :goto_20
    :try_start_20
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SIG_REQUIRED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_58

    :goto_29
    :try_start_29
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_56

    :goto_32
    :try_start_32
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->TRY_LATER:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_54

    :goto_3b
    :try_start_3b
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNAUTHORIZED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_52

    :goto_44
    :try_start_44
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->UNUSED:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_50

    :goto_4d
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->-sun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues:[I

    return-object v0

    :catch_50
    move-exception v1

    goto :goto_4d

    :catch_52
    move-exception v1

    goto :goto_44

    :catch_54
    move-exception v1

    goto :goto_3b

    :catch_56
    move-exception v1

    goto :goto_32

    :catch_58
    move-exception v1

    goto :goto_29

    :catch_5a
    move-exception v1

    goto :goto_20

    :catch_5c
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 134
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    .line 135
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_36

    const-string/jumbo v0, "ocsp"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    :goto_1a
    sput-boolean v0, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    .line 137
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 136
    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    .line 157
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->initializeClockSkew()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    .line 176
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    .line 121
    return-void

    .line 135
    :cond_36
    const/4 v0, 0x0

    goto :goto_1a

    .line 137
    :array_38
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
        0x1
    .end array-data
.end method

.method constructor <init>([B)V
    .registers 32
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 186
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    .line 187
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 193
    sget-boolean v27, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    if-eqz v27, :cond_4a

    .line 194
    new-instance v10, Lsun/misc/HexDumpEncoder;

    invoke-direct {v10}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 195
    .local v10, "hexEnc":Lsun/misc/HexDumpEncoder;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSPResponse bytes...\n\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v29

    .line 195
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 196
    const-string/jumbo v29, "\n"

    .line 195
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 198
    .end local v10    # "hexEnc":Lsun/misc/HexDumpEncoder;
    :cond_4a
    new-instance v6, Lsun/security/util/DerValue;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lsun/security/util/DerValue;-><init>([B)V

    .line 199
    .local v6, "der":Lsun/security/util/DerValue;
    iget-byte v0, v6, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_66

    .line 200
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 203
    :cond_66
    invoke-virtual {v6}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v8

    .line 206
    .local v8, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v23

    .line 207
    .local v23, "status":I
    if-ltz v23, :cond_ee

    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_ee

    .line 208
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    aget-object v27, v27, v23

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 213
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_aa

    .line 214
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response status: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v27, v0

    sget-object v28, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_10c

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    .line 219
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 220
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 221
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    .line 222
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    .line 223
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    .line 224
    return-void

    .line 211
    :cond_ee
    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unknown OCSPResponse status: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 228
    :cond_10c
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v6

    .line 229
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-nez v27, :cond_123

    .line 230
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 233
    :cond_123
    iget-object v0, v6, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v25

    .line 234
    .local v25, "tmp":Lsun/security/util/DerValue;
    move-object/from16 v0, v25

    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_142

    .line 235
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 240
    :cond_142
    move-object/from16 v0, v25

    iget-object v8, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 241
    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v16

    .line 242
    .local v16, "responseType":Lsun/security/util/ObjectIdentifier;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_18b

    .line 243
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_162

    .line 244
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v28, "OCSP response type: basic"

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 256
    :cond_162
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v3, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 258
    .local v3, "basicOCSPResponse":Lsun/security/util/DerInputStream;
    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v20

    .line 259
    .local v20, "seqTmp":[Lsun/security/util/DerValue;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1ca

    .line 260
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Unexpected BasicOCSPResponse value"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 247
    .end local v3    # "basicOCSPResponse":Lsun/security/util/DerInputStream;
    .end local v20    # "seqTmp":[Lsun/security/util/DerValue;
    :cond_18b
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_1ac

    .line 248
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 250
    :cond_1ac
    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unsupported OCSP response type: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 263
    .restart local v3    # "basicOCSPResponse":Lsun/security/util/DerInputStream;
    .restart local v20    # "seqTmp":[Lsun/security/util/DerValue;
    :cond_1ca
    const/16 v27, 0x0

    aget-object v14, v20, v27

    .line 266
    .local v14, "responseData":Lsun/security/util/DerValue;
    const/16 v27, 0x0

    aget-object v27, v20, v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    .line 269
    iget-byte v0, v14, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    const/16 v28, 0x30

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f1

    .line 270
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in tbsResponseData element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 273
    :cond_1f1
    iget-object v0, v14, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v19, v0

    .line 274
    .local v19, "seqDerIn":Lsun/security/util/DerInputStream;
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    .line 277
    .local v17, "seq":Lsun/security/util/DerValue;
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-eqz v27, :cond_238

    .line 279
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v27

    if-eqz v27, :cond_238

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v27

    if-eqz v27, :cond_238

    .line 281
    move-object/from16 v0, v17

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    .line 282
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getInteger()I

    move-result v26

    .line 283
    .local v26, "version":I
    move-object/from16 v0, v17

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerInputStream;->available()I

    move-result v27

    if-eqz v27, :cond_234

    .line 284
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in version  element of OCSP response: bad format"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 287
    :cond_234
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    .line 292
    .end local v26    # "version":I
    :cond_238
    move-object/from16 v0, v17

    iget-byte v0, v0, Lsun/security/util/DerValue;->tag:B

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1f

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v24, v0

    .line 293
    .local v24, "tag":S
    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_31a

    .line 294
    new-instance v27, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    .line 295
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_288

    .line 296
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Responder\'s name: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 310
    :cond_288
    :goto_288
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    .line 311
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_2af

    .line 312
    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v13

    .line 313
    .local v13, "producedAtDate":Ljava/util/Date;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response produced at: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 317
    .end local v13    # "producedAtDate":Ljava/util/Date;
    :cond_2af
    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v22

    .line 318
    .local v22, "singleResponseDer":[Lsun/security/util/DerValue;
    new-instance v27, Ljava/util/HashMap;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    .line 319
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_2eb

    .line 320
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP number of SingleResponses: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 321
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    .line 320
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 323
    :cond_2eb
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2ec
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_36b

    .line 325
    new-instance v21, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    aget-object v27, v22, v11

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)V

    .line 326
    .local v21, "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-static/range {v21 .. v21}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-wrap0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    add-int/lit8 v11, v11, 0x1

    goto :goto_2ec

    .line 298
    .end local v11    # "i":I
    .end local v21    # "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .end local v22    # "singleResponseDer":[Lsun/security/util/DerValue;
    :cond_31a
    const/16 v27, 0x2

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_362

    .line 299
    new-instance v27, Lsun/security/x509/KeyIdentifier;

    invoke-virtual/range {v17 .. v17}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 300
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_288

    .line 301
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Responder\'s key ID: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v29

    .line 301
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_288

    .line 305
    :cond_362
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in responderID element of OCSP response: expected ASN.1 context specific tag 0 or 1"

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 330
    .restart local v11    # "i":I
    .restart local v22    # "singleResponseDer":[Lsun/security/util/DerValue;
    :cond_36b
    const/4 v12, 0x0

    .line 331
    .local v12, "nonce":[B
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->available()I

    move-result v27

    if-lez v27, :cond_3f5

    .line 332
    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v17

    .line 333
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-eqz v27, :cond_3f5

    .line 334
    move-object/from16 v0, v17

    iget-object v0, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v15

    .line 335
    .local v15, "responseExtDer":[Lsun/security/util/DerValue;
    const/4 v11, 0x0

    .end local v12    # "nonce":[B
    :goto_38f
    array-length v0, v15

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_3f5

    .line 336
    new-instance v9, Lsun/security/x509/Extension;

    aget-object v27, v15, v11

    move-object/from16 v0, v27

    invoke-direct {v9, v0}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 337
    .local v9, "ext":Lsun/security/x509/Extension;
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_3be

    .line 338
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP extension: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 341
    :cond_3be
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v27

    .line 342
    sget-object v28, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    .line 341
    invoke-virtual/range {v27 .. v28}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3d1

    .line 344
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v12

    .line 335
    :cond_3ce
    add-int/lit8 v11, v11, 0x1

    goto :goto_38f

    .line 345
    :cond_3d1
    invoke-virtual {v9}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v27

    if-eqz v27, :cond_3ce

    .line 346
    new-instance v27, Ljava/io/IOException;

    .line 347
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unsupported OCSP critical extension: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 348
    invoke-virtual {v9}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v29

    .line 347
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 346
    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 353
    .end local v9    # "ext":Lsun/security/x509/Extension;
    .end local v15    # "responseExtDer":[Lsun/security/util/DerValue;
    :cond_3f5
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    .line 356
    const/16 v27, 0x1

    aget-object v27, v20, v27

    invoke-static/range {v27 .. v27}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 359
    const/16 v27, 0x2

    aget-object v27, v20, v27

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    .line 362
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4b2

    .line 364
    const/16 v27, 0x3

    aget-object v18, v20, v27

    .line 365
    .local v18, "seqCert":Lsun/security/util/DerValue;
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v27

    if-nez v27, :cond_43b

    .line 366
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in certs element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 369
    :cond_43b
    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v27

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v7

    .line 370
    .local v7, "derCerts":[Lsun/security/util/DerValue;
    new-instance v27, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 372
    const/4 v11, 0x0

    :goto_454
    :try_start_454
    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_4bd

    .line 374
    new-instance v5, Lsun/security/x509/X509CertImpl;

    aget-object v27, v7, v11

    invoke-virtual/range {v27 .. v27}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 375
    .local v5, "cert":Lsun/security/x509/X509CertImpl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v27, :cond_4a1

    .line 378
    sget-object v27, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OCSP response cert #"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v11, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 379
    invoke-virtual {v5}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v29

    .line 378
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_4a1
    .catch Ljava/security/cert/CertificateException; {:try_start_454 .. :try_end_4a1} :catch_4a4

    .line 372
    :cond_4a1
    add-int/lit8 v11, v11, 0x1

    goto :goto_454

    .line 382
    .end local v5    # "cert":Lsun/security/x509/X509CertImpl;
    :catch_4a4
    move-exception v4

    .line 383
    .local v4, "ce":Ljava/security/cert/CertificateException;
    new-instance v27, Ljava/io/IOException;

    const-string/jumbo v28, "Bad encoding in X509 Certificate"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 386
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    .end local v7    # "derCerts":[Lsun/security/util/DerValue;
    .end local v18    # "seqCert":Lsun/security/util/DerValue;
    :cond_4b2
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 388
    :cond_4bd
    return-void
.end method

.method private static initializeClockSkew()I
    .registers 3

    .prologue
    .line 166
    new-instance v1, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v2, "com.sun.security.ocsp.clockSkew"

    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1a

    .line 168
    :cond_16
    const v1, 0xdbba0

    return v1

    .line 172
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private verifySignature(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 640
    :try_start_0
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 641
    .local v1, "respSignature":Ljava/security/Signature;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 642
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 644
    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 645
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2a

    .line 646
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Verified signature of OCSP Response"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 648
    :cond_2a
    const/4 v2, 0x1

    return v2

    .line 651
    :cond_2c
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_38

    .line 652
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    .line 653
    const-string/jumbo v3, "Error verifying signature of OCSP Response"

    .line 652
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_38} :catch_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_38} :catch_3a
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_38} :catch_3a

    .line 655
    :cond_38
    const/4 v2, 0x0

    return v2

    .line 659
    .end local v1    # "respSignature":Ljava/security/Signature;
    :catch_3a
    move-exception v0

    .line 660
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method getResponseStatus()Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method getSignerCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    return-object v0
.end method

.method getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .registers 3
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;

    .prologue
    .line 669
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    return-object v0
.end method

.method verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    .registers 35
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->-getsun-security-provider-certpath-OCSPResponse$ResponseStatusSwitchesValues()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v3}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_378

    .line 404
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OCSP response error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :pswitch_2f
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OCSP response error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    sget-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 400
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 399
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 410
    :pswitch_52
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "certId$iterator":Ljava/util/Iterator;
    :cond_56
    :goto_56
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/provider/certpath/CertId;

    .line 411
    .local v12, "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v26

    .line 412
    .local v26, "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    if-nez v26, :cond_90

    .line 413
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_87

    .line 414
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No response found for CertId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 416
    :cond_87
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 417
    const-string/jumbo v3, "OCSP response does not include a response for a certificate supplied in the OCSP request"

    .line 416
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_90
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_56

    .line 421
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status of certificate (with serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    invoke-virtual {v12}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    const-string/jumbo v4, ") is: "

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    invoke-virtual/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v4

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 427
    .end local v12    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-nez v2, :cond_10b

    .line 431
    :try_start_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    if-eqz p3, :cond_df

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static/range {p3 .. p3}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catch Ljava/security/cert/CertificateException; {:try_start_c7 .. :try_end_df} :catch_153

    .line 440
    :cond_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    if-eqz v2, :cond_15d

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "cert$iterator":Ljava/util/Iterator;
    :cond_ed
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/x509/X509CertImpl;

    .line 442
    .local v10, "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 443
    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 477
    .end local v10    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v11    # "cert$iterator":Ljava/util/Iterator;
    :cond_10b
    :goto_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v2, :cond_129

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lsun/security/x509/X509CertImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 480
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_129

    .line 481
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "OCSP response is signed by the target\'s Issuing CA"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 574
    :cond_129
    :goto_129
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v2, :cond_27b

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-static {v2, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lsun/security/provider/certpath/OCSPResponse;->verifySignature(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_284

    .line 580
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 581
    const-string/jumbo v3, "Error verifying OCSP Response\'s signature"

    .line 580
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :catch_153
    move-exception v9

    .line 436
    .local v9, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 437
    const-string/jumbo v3, "Invalid issuer or trusted responder certificate"

    .line 436
    invoke-direct {v2, v3, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 447
    .end local v9    # "ce":Ljava/security/cert/CertificateException;
    :cond_15d
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    if-eqz v2, :cond_10b

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "cert$iterator":Ljava/util/Iterator;
    :cond_16b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/x509/X509CertImpl;

    .line 452
    .restart local v10    # "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getSubjectKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v14

    .line 453
    .local v14, "certKeyId":Lsun/security/x509/KeyIdentifier;
    if-eqz v14, :cond_18c

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2, v14}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 454
    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    goto :goto_10b

    .line 463
    :cond_18c
    :try_start_18c
    new-instance v15, Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v10}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v15, v2}, Lsun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_195} :catch_374

    .end local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    .local v15, "certKeyId":Lsun/security/x509/KeyIdentifier;
    move-object v14, v15

    .line 467
    .end local v15    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    .restart local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :goto_196
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2, v14}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 468
    move-object/from16 v0, p0

    iput-object v10, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    goto/16 :goto_10b

    .line 487
    .end local v10    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v11    # "cert$iterator":Ljava/util/Iterator;
    .end local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lsun/security/x509/X509CertImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    .line 488
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_129

    .line 489
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "OCSP response is signed by a Trusted Responder"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_129

    .line 495
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 496
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 495
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_272

    .line 500
    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v20

    .line 501
    .local v20, "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v20, :cond_1e9

    .line 502
    const-string/jumbo v2, "1.3.6.1.5.5.7.3.9"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 501
    if-eqz v2, :cond_1fe

    .line 503
    :cond_1e9
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 504
    const-string/jumbo v3, "Responder\'s certificate not valid for signing OCSP responses"

    .line 503
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f2
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1d2 .. :try_end_1f2} :catch_1f2

    .line 507
    .end local v20    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1f2
    move-exception v16

    .line 509
    .local v16, "cpe":Ljava/security/cert/CertificateParsingException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 510
    const-string/jumbo v3, "Responder\'s certificate not valid for signing OCSP responses"

    .line 509
    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 516
    .end local v16    # "cpe":Ljava/security/cert/CertificateParsingException;
    .restart local v20    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1fe
    new-instance v8, Lsun/security/provider/certpath/AlgorithmChecker;

    .line 517
    new-instance v2, Ljava/security/cert/TrustAnchor;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 516
    invoke-direct {v8, v2}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    .line 518
    .local v8, "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 523
    if-nez p4, :cond_25c

    .line 524
    :try_start_21c
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->checkValidity()V
    :try_end_223
    .catch Ljava/security/cert/CertificateException; {:try_start_21c .. :try_end_223} :catch_266

    .line 542
    :goto_223
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    sget-object v3, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v21

    .line 543
    .local v21, "noCheck":Lsun/security/x509/Extension;
    if-eqz v21, :cond_23b

    .line 544
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_23b

    .line 545
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Responder\'s certificate includes the extension id-pkix-ocsp-nocheck."

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 555
    :cond_23b
    :try_start_23b
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 556
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_129

    .line 557
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "OCSP response is signed by an Authorized Responder"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_252
    .catch Ljava/security/GeneralSecurityException; {:try_start_23b .. :try_end_252} :catch_254

    goto/16 :goto_129

    .line 562
    :catch_254
    move-exception v18

    .line 563
    .local v18, "e":Ljava/security/GeneralSecurityException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    goto/16 :goto_129

    .line 526
    .end local v18    # "e":Ljava/security/GeneralSecurityException;
    .end local v21    # "noCheck":Lsun/security/x509/Extension;
    :cond_25c
    :try_start_25c
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V
    :try_end_265
    .catch Ljava/security/cert/CertificateException; {:try_start_25c .. :try_end_265} :catch_266

    goto :goto_223

    .line 528
    :catch_266
    move-exception v19

    .line 529
    .local v19, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 530
    const-string/jumbo v3, "Responder\'s certificate not within the validity period"

    .line 529
    move-object/from16 v0, v19

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 566
    .end local v8    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v19    # "e":Ljava/security/cert/CertificateException;
    .end local v20    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_272
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 567
    const-string/jumbo v3, "Responder\'s certificate is not authorized to sign OCSP responses"

    .line 566
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :cond_27b
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 586
    const-string/jumbo v3, "Unable to verify OCSP Response\'s signature"

    .line 585
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_284
    if-eqz p5, :cond_2a3

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    if-eqz v2, :cond_2a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2a3

    .line 591
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Nonces don\'t match"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    :cond_2a3
    if-nez p4, :cond_368

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 598
    .local v22, "now":J
    :goto_2a9
    new-instance v25, Ljava/util/Date;

    sget v2, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v2, v2

    add-long v2, v2, v22

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 599
    .local v25, "nowPlusSkew":Ljava/util/Date;
    new-instance v24, Ljava/util/Date;

    sget v2, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v2, v2

    sub-long v2, v22, v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 600
    .local v24, "nowMinusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "sr$iterator":Ljava/util/Iterator;
    :cond_2cd
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_373

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .line 601
    .restart local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_341

    .line 602
    const-string/jumbo v28, ""

    .line 603
    .local v28, "until":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2fe

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " until "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 606
    :cond_2fe
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OCSP response validity interval is from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 607
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v4

    .line 606
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 608
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Checking validity of OCSP response on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 609
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v22

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 608
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 615
    .end local v28    # "until":Ljava/lang/String;
    :cond_341
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_35f

    .line 617
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_36e

    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get0(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    .line 616
    :goto_357
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    .line 615
    if-eqz v2, :cond_2cd

    .line 619
    :cond_35f
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 620
    const-string/jumbo v3, "Response is unreliable: its validity interval is out-of-date"

    .line 619
    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v22    # "now":J
    .end local v24    # "nowMinusSkew":Ljava/util/Date;
    .end local v25    # "nowPlusSkew":Ljava/util/Date;
    .end local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .end local v27    # "sr$iterator":Ljava/util/Iterator;
    :cond_368
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    .restart local v22    # "now":J
    goto/16 :goto_2a9

    .line 617
    .restart local v24    # "nowMinusSkew":Ljava/util/Date;
    .restart local v25    # "nowPlusSkew":Ljava/util/Date;
    .restart local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .restart local v27    # "sr$iterator":Ljava/util/Iterator;
    :cond_36e
    invoke-static/range {v26 .. v26}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->-get1(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v2

    goto :goto_357

    .line 624
    .end local v26    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_373
    return-void

    .line 464
    .end local v22    # "now":J
    .end local v24    # "nowMinusSkew":Ljava/util/Date;
    .end local v25    # "nowPlusSkew":Ljava/util/Date;
    .end local v27    # "sr$iterator":Ljava/util/Iterator;
    .restart local v10    # "cert":Lsun/security/x509/X509CertImpl;
    .restart local v11    # "cert$iterator":Ljava/util/Iterator;
    .restart local v14    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :catch_374
    move-exception v17

    .local v17, "e":Ljava/io/IOException;
    goto/16 :goto_196

    .line 394
    nop

    :pswitch_data_378
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_52
        :pswitch_2f
    .end packed-switch
.end method
