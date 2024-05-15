.class public final Lsun/security/provider/certpath/OCSPResponse;
.super Ljava/lang/Object;
.source "OCSPResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/OCSPResponse$SingleResponse;,
        Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    }
.end annotation


# static fields
.field private static final blacklist CERT_STATUS_GOOD:I = 0x0

.field private static final blacklist CERT_STATUS_REVOKED:I = 0x1

.field private static final blacklist CERT_STATUS_UNKNOWN:I = 0x2

.field private static final blacklist DEFAULT_MAX_CLOCK_SKEW:I = 0xdbba0

.field private static final blacklist KEY_TAG:I = 0x2

.field private static final blacklist KP_OCSP_SIGNING_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"

.field private static final blacklist MAX_CLOCK_SKEW:I

.field private static final blacklist NAME_TAG:I = 0x1

.field private static final blacklist OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final blacklist debug:Lsun/security/util/Debug;

.field private static final blacklist dump:Z

.field private static blacklist rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private static blacklist values:[Ljava/security/cert/CRLReason;


# instance fields
.field private blacklist certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist responderKeyId:Lsun/security/x509/KeyIdentifier;

.field private blacklist responderName:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist responseNonce:[B

.field private final blacklist responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

.field private final blacklist sigAlgId:Lsun/security/x509/AlgorithmId;

.field private final blacklist signature:[B

.field private blacklist signerCert:Lsun/security/x509/X509CertImpl;

.field private final blacklist singleResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/provider/certpath/CertId;",
            "Lsun/security/provider/certpath/OCSPResponse$SingleResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist tbsResponseData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->values()[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 134
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    .line 135
    if-eqz v0, :cond_1a

    const-string v0, "ocsp"

    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    sput-boolean v0, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    .line 136
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    .line 137
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    .line 157
    invoke-static {}, Lsun/security/provider/certpath/OCSPResponse;->initializeClockSkew()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    .line 176
    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-void

    nop

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

.method constructor blacklist <init>([B)V
    .registers 25
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 186
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    .line 187
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 193
    sget-boolean v3, Lsun/security/provider/certpath/OCSPResponse;->dump:Z

    if-eqz v3, :cond_36

    .line 194
    new-instance v3, Lsun/misc/HexDumpEncoder;

    invoke-direct {v3}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 195
    .local v3, "hexEnc":Lsun/misc/HexDumpEncoder;
    sget-object v4, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OCSPResponse bytes...\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, v2}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 198
    .end local v3    # "hexEnc":Lsun/misc/HexDumpEncoder;
    :cond_36
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 199
    .local v3, "der":Lsun/security/util/DerValue;
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-ne v4, v5, :cond_395

    .line 203
    invoke-virtual {v3}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v4

    .line 206
    .local v4, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getEnumerated()I

    move-result v6

    .line 207
    .local v6, "status":I
    if-ltz v6, :cond_37e

    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->rsvalues:[Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    array-length v8, v7

    if-ge v6, v8, :cond_37e

    .line 208
    aget-object v7, v7, v6

    iput-object v7, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    .line 213
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_6e

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OCSP response status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_6e
    iget-object v7, v1, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    sget-object v8, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->SUCCESSFUL:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    if-eq v7, v8, :cond_8a

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    .line 219
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 220
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 221
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    .line 222
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    .line 223
    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    .line 224
    return-void

    .line 228
    :cond_8a
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    .line 229
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v8

    if-eqz v8, :cond_376

    .line 233
    iget-object v8, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v8}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v8

    .line 234
    .local v8, "tmp":Lsun/security/util/DerValue;
    iget-byte v9, v8, Lsun/security/util/DerValue;->tag:B

    if-ne v9, v5, :cond_36e

    .line 240
    iget-object v4, v8, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 241
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    .line 242
    .local v9, "responseType":Lsun/security/util/ObjectIdentifier;
    sget-object v10, Lsun/security/provider/certpath/OCSPResponse;->OCSP_BASIC_RESPONSE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v9, v10}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33b

    .line 243
    sget-object v10, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_b6

    .line 244
    const-string v11, "OCSP response type: basic"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 255
    :cond_b6
    new-instance v10, Lsun/security/util/DerInputStream;

    .line 256
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 258
    .local v10, "basicOCSPResponse":Lsun/security/util/DerInputStream;
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v12

    .line 259
    .local v12, "seqTmp":[Lsun/security/util/DerValue;
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_333

    .line 263
    aget-object v13, v12, v7

    .line 266
    .local v13, "responseData":Lsun/security/util/DerValue;
    aget-object v15, v12, v7

    invoke-virtual {v15}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v15

    iput-object v15, v1, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    .line 269
    iget-byte v15, v13, Lsun/security/util/DerValue;->tag:B

    if-ne v15, v5, :cond_32b

    .line 273
    iget-object v5, v13, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 274
    .local v5, "seqDerIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v15

    .line 277
    .local v15, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v15, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v16

    if-eqz v16, :cond_10e

    .line 279
    invoke-virtual {v15}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v16

    if-eqz v16, :cond_10e

    invoke-virtual {v15}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v16

    if-eqz v16, :cond_10e

    .line 281
    iget-object v7, v15, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v7}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 282
    .end local v15    # "seq":Lsun/security/util/DerValue;
    .local v7, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v7}, Lsun/security/util/DerValue;->getInteger()I

    move-result v15

    .line 283
    .local v15, "version":I
    iget-object v14, v7, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v14}, Lsun/security/util/DerInputStream;->available()I

    move-result v14

    if-nez v14, :cond_106

    .line 287
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    move-object v15, v7

    goto :goto_10e

    .line 284
    :cond_106
    new-instance v0, Ljava/io/IOException;

    const-string v11, "Bad encoding in version  element of OCSP response: bad format"

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    .end local v7    # "seq":Lsun/security/util/DerValue;
    .local v15, "seq":Lsun/security/util/DerValue;
    :cond_10e
    :goto_10e
    iget-byte v7, v15, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v7, v7, 0x1f

    int-to-byte v7, v7

    int-to-short v7, v7

    .line 293
    .local v7, "tag":S
    const/4 v14, 0x1

    if-ne v7, v14, :cond_141

    .line 294
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v15}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v0, v14}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    .line 295
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_175

    .line 296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Responder\'s name: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_175

    .line 298
    :cond_141
    const/4 v0, 0x2

    if-ne v7, v0, :cond_323

    .line 299
    new-instance v0, Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v15}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v11

    invoke-direct {v0, v11}, Lsun/security/x509/KeyIdentifier;-><init>([B)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 300
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_175

    .line 301
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Responder\'s key ID: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    .line 302
    invoke-virtual {v14}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v14

    invoke-static {v14}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 301
    invoke-virtual {v0, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 310
    :cond_175
    :goto_175
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 311
    .end local v15    # "seq":Lsun/security/util/DerValue;
    .local v0, "seq":Lsun/security/util/DerValue;
    sget-object v11, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_19a

    .line 312
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v11

    .line 313
    .local v11, "producedAtDate":Ljava/util/Date;
    sget-object v14, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    .end local v0    # "seq":Lsun/security/util/DerValue;
    .local v20, "seq":Lsun/security/util/DerValue;
    const-string v0, "OCSP response produced at: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_19c

    .line 311
    .end local v11    # "producedAtDate":Ljava/util/Date;
    .end local v20    # "seq":Lsun/security/util/DerValue;
    .restart local v0    # "seq":Lsun/security/util/DerValue;
    :cond_19a
    move-object/from16 v20, v0

    .line 317
    .end local v0    # "seq":Lsun/security/util/DerValue;
    .restart local v20    # "seq":Lsun/security/util/DerValue;
    :goto_19c
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v11

    .line 318
    .local v11, "singleResponseDer":[Lsun/security/util/DerValue;
    new-instance v0, Ljava/util/HashMap;

    array-length v14, v11

    invoke-direct {v0, v14}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    .line 319
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1c2

    .line 320
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OCSP number of SingleResponses: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 323
    :cond_1c2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c3
    array-length v14, v11

    if-ge v0, v14, :cond_1dc

    .line 324
    new-instance v14, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    aget-object v15, v11, v0

    const/4 v2, 0x0

    invoke-direct {v14, v15, v2}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;-><init>(Lsun/security/util/DerValue;Lsun/security/provider/certpath/OCSPResponse$1;)V

    .line 326
    .local v14, "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    iget-object v15, v1, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    # invokes: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertId()Lsun/security/provider/certpath/CertId;
    invoke-static {v14}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$100(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Lsun/security/provider/certpath/CertId;

    move-result-object v2

    invoke-interface {v15, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v14    # "singleResponse":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    goto :goto_1c3

    .line 330
    .end local v0    # "i":I
    :cond_1dc
    const/4 v0, 0x0

    .line 331
    .local v0, "nonce":[B
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-lez v2, :cond_274

    .line 332
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 333
    .end local v20    # "seq":Lsun/security/util/DerValue;
    .local v2, "seq":Lsun/security/util/DerValue;
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v15

    if-eqz v15, :cond_26c

    .line 334
    iget-object v14, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v14

    .line 335
    .local v14, "responseExtDer":[Lsun/security/util/DerValue;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1f6
    move-object/from16 v18, v0

    .end local v0    # "nonce":[B
    .local v18, "nonce":[B
    array-length v0, v14

    if-ge v15, v0, :cond_263

    .line 336
    new-instance v0, Lsun/security/x509/Extension;

    move-object/from16 v20, v2

    .end local v2    # "seq":Lsun/security/util/DerValue;
    .restart local v20    # "seq":Lsun/security/util/DerValue;
    aget-object v2, v14, v15

    invoke-direct {v0, v2}, Lsun/security/x509/Extension;-><init>(Lsun/security/util/DerValue;)V

    .line 337
    .local v0, "ext":Lsun/security/x509/Extension;
    sget-object v2, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_221

    .line 338
    move-object/from16 v21, v3

    .end local v3    # "der":Lsun/security/util/DerValue;
    .local v21, "der":Lsun/security/util/DerValue;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .local v22, "derIn":Lsun/security/util/DerInputStream;
    const-string v4, "OCSP extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_225

    .line 337
    .end local v21    # "der":Lsun/security/util/DerValue;
    .end local v22    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_221
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 341
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v21    # "der":Lsun/security/util/DerValue;
    .restart local v22    # "derIn":Lsun/security/util/DerInputStream;
    :goto_225
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 344
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v2

    move-object v0, v2

    .end local v18    # "nonce":[B
    .local v2, "nonce":[B
    goto :goto_23f

    .line 345
    .end local v2    # "nonce":[B
    .restart local v18    # "nonce":[B
    :cond_237
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v2

    if-nez v2, :cond_248

    move-object/from16 v0, v18

    .line 335
    .end local v18    # "nonce":[B
    .local v0, "nonce":[B
    :goto_23f
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    goto :goto_1f6

    .line 346
    .local v0, "ext":Lsun/security/x509/Extension;
    .restart local v18    # "nonce":[B
    :cond_248
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported OCSP critical extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    .end local v0    # "ext":Lsun/security/x509/Extension;
    .end local v20    # "seq":Lsun/security/util/DerValue;
    .end local v21    # "der":Lsun/security/util/DerValue;
    .end local v22    # "derIn":Lsun/security/util/DerInputStream;
    .local v2, "seq":Lsun/security/util/DerValue;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_263
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v2    # "seq":Lsun/security/util/DerValue;
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v20    # "seq":Lsun/security/util/DerValue;
    .restart local v21    # "der":Lsun/security/util/DerValue;
    .restart local v22    # "derIn":Lsun/security/util/DerInputStream;
    move-object/from16 v2, v18

    goto :goto_279

    .line 333
    .end local v14    # "responseExtDer":[Lsun/security/util/DerValue;
    .end local v15    # "i":I
    .end local v18    # "nonce":[B
    .end local v20    # "seq":Lsun/security/util/DerValue;
    .end local v21    # "der":Lsun/security/util/DerValue;
    .end local v22    # "derIn":Lsun/security/util/DerInputStream;
    .local v0, "nonce":[B
    .restart local v2    # "seq":Lsun/security/util/DerValue;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_26c
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v2    # "seq":Lsun/security/util/DerValue;
    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v20    # "seq":Lsun/security/util/DerValue;
    .restart local v21    # "der":Lsun/security/util/DerValue;
    .restart local v22    # "derIn":Lsun/security/util/DerInputStream;
    move-object v2, v0

    goto :goto_279

    .line 331
    .end local v21    # "der":Lsun/security/util/DerValue;
    .end local v22    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_274
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v21    # "der":Lsun/security/util/DerValue;
    .restart local v22    # "derIn":Lsun/security/util/DerInputStream;
    move-object v2, v0

    .line 353
    .end local v0    # "nonce":[B
    .local v2, "nonce":[B
    :goto_279
    iput-object v2, v1, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    .line 356
    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-static {v0}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    .line 359
    const/4 v0, 0x2

    aget-object v0, v12, v0

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v0

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    .line 362
    array-length v0, v12

    const/4 v3, 0x3

    if-le v0, v3, :cond_319

    .line 364
    aget-object v4, v12, v3

    .line 365
    .local v4, "seqCert":Lsun/security/util/DerValue;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v0

    if-eqz v0, :cond_30f

    .line 369
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 370
    .local v3, "derCerts":[Lsun/security/util/DerValue;
    new-instance v0, Ljava/util/ArrayList;

    array-length v14, v3

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2ab
    :try_start_2ab
    array-length v14, v3

    if-ge v0, v14, :cond_2fc

    .line 373
    new-instance v14, Lsun/security/x509/X509CertImpl;

    aget-object v15, v3, v0

    .line 374
    invoke-virtual {v15}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 375
    .local v14, "cert":Lsun/security/x509/X509CertImpl;
    iget-object v15, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v15, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_2f1

    .line 378
    sget-object v15, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;
    :try_end_2c4
    .catch Ljava/security/cert/CertificateException; {:try_start_2ab .. :try_end_2c4} :catch_302

    move-object/from16 v16, v2

    .end local v2    # "nonce":[B
    .local v16, "nonce":[B
    :try_start_2c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2cb
    .catch Ljava/security/cert/CertificateException; {:try_start_2c6 .. :try_end_2cb} :catch_2ed

    move-object/from16 v17, v3

    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .local v17, "derCerts":[Lsun/security/util/DerValue;
    :try_start_2cd
    const-string v3, "OCSP response cert #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v14}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-virtual {v15, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_2ea
    .catch Ljava/security/cert/CertificateException; {:try_start_2cd .. :try_end_2ea} :catch_2eb

    goto :goto_2f5

    .line 382
    .end local v0    # "i":I
    .end local v14    # "cert":Lsun/security/x509/X509CertImpl;
    :catch_2eb
    move-exception v0

    goto :goto_307

    .end local v17    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    :catch_2ed
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v17    # "derCerts":[Lsun/security/util/DerValue;
    goto :goto_307

    .line 377
    .end local v16    # "nonce":[B
    .end local v17    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v0    # "i":I
    .restart local v2    # "nonce":[B
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v14    # "cert":Lsun/security/x509/X509CertImpl;
    :cond_2f1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 372
    .end local v2    # "nonce":[B
    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .end local v14    # "cert":Lsun/security/x509/X509CertImpl;
    .restart local v16    # "nonce":[B
    .restart local v17    # "derCerts":[Lsun/security/util/DerValue;
    :goto_2f5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_2ab

    .end local v16    # "nonce":[B
    .end local v17    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v2    # "nonce":[B
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    :cond_2fc
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 384
    .end local v0    # "i":I
    .end local v2    # "nonce":[B
    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v16    # "nonce":[B
    .restart local v17    # "derCerts":[Lsun/security/util/DerValue;
    nop

    .line 385
    .end local v4    # "seqCert":Lsun/security/util/DerValue;
    .end local v17    # "derCerts":[Lsun/security/util/DerValue;
    goto :goto_322

    .line 382
    .end local v16    # "nonce":[B
    .restart local v2    # "nonce":[B
    .restart local v3    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v4    # "seqCert":Lsun/security/util/DerValue;
    :catch_302
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 383
    .end local v2    # "nonce":[B
    .end local v3    # "derCerts":[Lsun/security/util/DerValue;
    .local v0, "ce":Ljava/security/cert/CertificateException;
    .restart local v16    # "nonce":[B
    .restart local v17    # "derCerts":[Lsun/security/util/DerValue;
    :goto_307
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad encoding in X509 Certificate"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 366
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .end local v16    # "nonce":[B
    .end local v17    # "derCerts":[Lsun/security/util/DerValue;
    .restart local v2    # "nonce":[B
    :cond_30f
    move-object/from16 v16, v2

    .end local v2    # "nonce":[B
    .restart local v16    # "nonce":[B
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in certs element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    .end local v4    # "seqCert":Lsun/security/util/DerValue;
    .end local v16    # "nonce":[B
    .restart local v2    # "nonce":[B
    :cond_319
    move-object/from16 v16, v2

    .end local v2    # "nonce":[B
    .restart local v16    # "nonce":[B
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    .line 388
    :goto_322
    return-void

    .line 305
    .end local v11    # "singleResponseDer":[Lsun/security/util/DerValue;
    .end local v16    # "nonce":[B
    .end local v20    # "seq":Lsun/security/util/DerValue;
    .end local v21    # "der":Lsun/security/util/DerValue;
    .end local v22    # "derIn":Lsun/security/util/DerInputStream;
    .local v3, "der":Lsun/security/util/DerValue;
    .local v4, "derIn":Lsun/security/util/DerInputStream;
    .local v15, "seq":Lsun/security/util/DerValue;
    :cond_323
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in responderID element of OCSP response: expected ASN.1 context specific tag 0 or 1"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    .end local v5    # "seqDerIn":Lsun/security/util/DerInputStream;
    .end local v7    # "tag":S
    .end local v15    # "seq":Lsun/security/util/DerValue;
    :cond_32b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in tbsResponseData element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    .end local v13    # "responseData":Lsun/security/util/DerValue;
    :cond_333
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected BasicOCSPResponse value"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    .end local v10    # "basicOCSPResponse":Lsun/security/util/DerInputStream;
    .end local v12    # "seqTmp":[Lsun/security/util/DerValue;
    :cond_33b
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .end local v3    # "der":Lsun/security/util/DerValue;
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v21    # "der":Lsun/security/util/DerValue;
    .restart local v22    # "derIn":Lsun/security/util/DerInputStream;
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_357

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OCSP response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 250
    :cond_357
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported OCSP response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    .end local v9    # "responseType":Lsun/security/util/ObjectIdentifier;
    .end local v21    # "der":Lsun/security/util/DerValue;
    .end local v22    # "derIn":Lsun/security/util/DerInputStream;
    .restart local v3    # "der":Lsun/security/util/DerValue;
    .restart local v4    # "derIn":Lsun/security/util/DerInputStream;
    :cond_36e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    .end local v8    # "tmp":Lsun/security/util/DerValue;
    :cond_376
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in responseBytes element of OCSP response: expected ASN.1 context specific tag 0."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_37e
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown OCSPResponse status: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    .end local v4    # "derIn":Lsun/security/util/DerInputStream;
    .end local v6    # "status":I
    :cond_395
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad encoding in OCSP response: expected ASN.1 SEQUENCE tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$400()[Ljava/security/cert/CRLReason;
    .registers 1

    .line 121
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->values:[Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method static synthetic blacklist access$500()Lsun/security/util/Debug;
    .registers 1

    .line 121
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method private static blacklist initializeClockSkew()I
    .registers 2

    .line 165
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "com.sun.security.ocsp.clockSkew"

    invoke-direct {v0, v1}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_16

    goto :goto_1d

    .line 172
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 168
    :cond_1d
    :goto_1d
    const v1, 0xdbba0

    return v1
.end method

.method private blacklist verifySignature(Ljava/security/cert/X509Certificate;)Z
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 640
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 641
    .local v0, "respSignature":Ljava/security/Signature;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 642
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->tbsResponseData:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 644
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signature:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 645
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_29

    .line 646
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v2, "Verified signature of OCSP Response"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 648
    :cond_29
    const/4 v1, 0x1

    return v1

    .line 651
    :cond_2b
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_36

    .line 652
    sget-object v1, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v2, "Error verifying signature of OCSP Response"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_36} :catch_38
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_36} :catch_38
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_36} :catch_38

    .line 655
    :cond_36
    const/4 v1, 0x0

    return v1

    .line 657
    .end local v0    # "respSignature":Ljava/security/Signature;
    :catch_38
    move-exception v0

    .line 660
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method blacklist getResponseStatus()Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;
    .registers 2

    .line 630
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    return-object v0
.end method

.method blacklist getSignerCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 676
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    return-object v0
.end method

.method blacklist getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    .registers 3
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;

    .line 669
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    return-object v0
.end method

.method blacklist verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    .registers 16
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "responderCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "date"    # Ljava/util/Date;
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 394
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    const-string v0, "Responder\'s certificate not valid for signing OCSP responses"

    sget-object v1, Lsun/security/provider/certpath/OCSPResponse$1;->$SwitchMap$sun$security$provider$certpath$OCSPResponse$ResponseStatus:[I

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v2}, Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4b

    const/4 v0, 0x2

    const-string v2, "OCSP response error: "

    if-eq v1, v0, :cond_2e

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2e

    .line 404
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_2e
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->responseStatus:Lsun/security/provider/certpath/OCSPResponse$ResponseStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget-object v7, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 396
    :cond_4b
    nop

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/CertId;

    .line 411
    .local v2, "certId":Lsun/security/provider/certpath/CertId;
    invoke-virtual {p0, v2}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v3

    .line 412
    .local v3, "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    if-nez v3, :cond_82

    .line 413
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_7a

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No response found for CertId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 416
    :cond_7a
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "OCSP response does not include a response for a certificate supplied in the OCSP request"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_82
    sget-object v4, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_aa

    .line 421
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status of certificate (with serial number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v2}, Lsun/security/provider/certpath/CertId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 424
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v3    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_aa
    goto :goto_50

    .line 427
    :cond_ab
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-nez v1, :cond_133

    .line 431
    :try_start_af
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static {p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    if-eqz p3, :cond_c3

    .line 433
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-static {p3}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catch Ljava/security/cert/CertificateException; {:try_start_af .. :try_end_c3} :catch_12a

    .line 438
    :cond_c3
    nop

    .line 440
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_eb

    .line 441
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ea

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X509CertImpl;

    .line 442
    .local v2, "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v4, p0, Lsun/security/provider/certpath/OCSPResponse;->responderName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 443
    iput-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 444
    goto :goto_ea

    .line 446
    .end local v2    # "cert":Lsun/security/x509/X509CertImpl;
    :cond_e9
    goto :goto_ce

    :cond_ea
    :goto_ea
    goto :goto_133

    .line 447
    :cond_eb
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    if-eqz v1, :cond_133

    .line 448
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X509CertImpl;

    .line 452
    .restart local v2    # "cert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v3

    .line 453
    .local v3, "certKeyId":Lsun/security/x509/KeyIdentifier;
    if-eqz v3, :cond_112

    iget-object v4, p0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v4, v3}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 454
    iput-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 455
    goto :goto_133

    .line 463
    :cond_112
    :try_start_112
    new-instance v4, Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/KeyIdentifier;-><init>(Ljava/security/PublicKey;)V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_11b} :catch_11d

    move-object v3, v4

    .line 466
    goto :goto_11e

    .line 464
    :catch_11d
    move-exception v4

    .line 467
    :goto_11e
    iget-object v4, p0, Lsun/security/provider/certpath/OCSPResponse;->responderKeyId:Lsun/security/x509/KeyIdentifier;

    invoke-virtual {v4, v3}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_129

    .line 468
    iput-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 469
    goto :goto_133

    .line 472
    .end local v2    # "cert":Lsun/security/x509/X509CertImpl;
    .end local v3    # "certKeyId":Lsun/security/x509/KeyIdentifier;
    :cond_129
    goto :goto_f5

    .line 435
    :catch_12a
    move-exception v0

    .line 436
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Invalid issuer or trusted responder certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 477
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :cond_133
    :goto_133
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v1, :cond_1ec

    .line 479
    invoke-virtual {v1, p2}, Lsun/security/x509/X509CertImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_148

    .line 480
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1ec

    .line 481
    const-string v1, "OCSP response is signed by the target\'s Issuing CA"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 487
    :cond_148
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v1, p3}, Lsun/security/x509/X509CertImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 488
    sget-object v0, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1ec

    .line 489
    const-string v1, "OCSP response is signed by a Trusted Responder"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 495
    :cond_15b
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 496
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 495
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 500
    :try_start_16b
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    .line 501
    .local v1, "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1d7

    const-string v2, "1.3.6.1.5.5.7.3.9"

    .line 502
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_179
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_16b .. :try_end_179} :catch_1dd

    if-eqz v2, :cond_1d7

    .line 512
    .end local v1    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 516
    new-instance v0, Lsun/security/provider/certpath/AlgorithmChecker;

    new-instance v1, Ljava/security/cert/TrustAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    .line 518
    .local v0, "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V

    .line 519
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    .line 523
    if-nez p4, :cond_19c

    .line 524
    :try_start_196
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->checkValidity()V

    goto :goto_1a1

    .line 526
    :cond_19c
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {v1, p4}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V
    :try_end_1a1
    .catch Ljava/security/cert/CertificateException; {:try_start_196 .. :try_end_1a1} :catch_1ce

    .line 532
    :goto_1a1
    nop

    .line 541
    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    sget-object v3, Lsun/security/x509/PKIXExtensions;->OCSPNoCheck_Id:Lsun/security/util/ObjectIdentifier;

    .line 542
    invoke-virtual {v1, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v1

    .line 543
    .local v1, "noCheck":Lsun/security/x509/Extension;
    if-eqz v1, :cond_1b5

    .line 544
    sget-object v3, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1b5

    .line 545
    const-string v4, "Responder\'s certificate includes the extension id-pkix-ocsp-nocheck."

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 555
    :cond_1b5
    :try_start_1b5
    iget-object v3, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 556
    sget-object v3, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1c9

    .line 557
    sget-object v3, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    const-string v4, "OCSP response is signed by an Authorized Responder"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1c9
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b5 .. :try_end_1c9} :catch_1ca

    .line 564
    :cond_1c9
    goto :goto_1cd

    .line 562
    :catch_1ca
    move-exception v3

    .line 563
    .local v3, "e":Ljava/security/GeneralSecurityException;
    iput-object v2, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    .line 565
    .end local v0    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .end local v1    # "noCheck":Lsun/security/x509/Extension;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :goto_1cd
    goto :goto_1ec

    .line 528
    .restart local v0    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    :catch_1ce
    move-exception v1

    .line 529
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Responder\'s certificate not within the validity period"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 503
    .end local v0    # "algChecker":Lsun/security/provider/certpath/AlgorithmChecker;
    .local v1, "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d7
    :try_start_1d7
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lsun/security/provider/certpath/OCSPResponse;
    .end local p1    # "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .end local p2    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .end local p4    # "date":Ljava/util/Date;
    .end local p5    # "nonce":[B
    throw v2
    :try_end_1dd
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1d7 .. :try_end_1dd} :catch_1dd

    .line 507
    .end local v1    # "keyPurposes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lsun/security/provider/certpath/OCSPResponse;
    .restart local p1    # "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .restart local p2    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "responderCert":Ljava/security/cert/X509Certificate;
    .restart local p4    # "date":Ljava/util/Date;
    .restart local p5    # "nonce":[B
    :catch_1dd
    move-exception v1

    .line 509
    .local v1, "cpe":Ljava/security/cert/CertificateParsingException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 566
    .end local v1    # "cpe":Ljava/security/cert/CertificateParsingException;
    :cond_1e4
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Responder\'s certificate is not authorized to sign OCSP responses"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1ec
    :goto_1ec
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_2d5

    .line 577
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/OCSPResponse;->sigAlgId:Lsun/security/x509/AlgorithmId;

    invoke-static {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    .line 579
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->signerCert:Lsun/security/x509/X509CertImpl;

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/OCSPResponse;->verifySignature(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 589
    if-eqz p5, :cond_216

    .line 590
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPResponse;->responseNonce:[B

    if-eqz v0, :cond_216

    invoke-static {p5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_20e

    goto :goto_216

    .line 591
    :cond_20e
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Nonces don\'t match"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_216
    :goto_216
    if-nez p4, :cond_21d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_221

    :cond_21d
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 598
    .local v0, "now":J
    :goto_221
    new-instance v2, Ljava/util/Date;

    sget v3, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 599
    .local v2, "nowPlusSkew":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    sget v4, Lsun/security/provider/certpath/OCSPResponse;->MAX_CLOCK_SKEW:I

    int-to-long v4, v4

    sub-long v4, v0, v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 600
    .local v3, "nowMinusSkew":Ljava/util/Date;
    iget-object v4, p0, Lsun/security/provider/certpath/OCSPResponse;->singleResponseMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    .line 601
    .local v5, "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    sget-object v6, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_2a3

    .line 602
    const-string v6, ""

    .line 603
    .local v6, "until":Ljava/lang/String;
    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$200(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_26b

    .line 604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " until "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$200(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 606
    :cond_26b
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OCSP response validity interval is from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$300(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 606
    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 608
    sget-object v7, Lsun/security/provider/certpath/OCSPResponse;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking validity of OCSP response on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 615
    .end local v6    # "until":Ljava/lang/String;
    :cond_2a3
    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$300(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_2c4

    .line 617
    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$200(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_2b8

    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->nextUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$200(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    goto :goto_2bc

    :cond_2b8
    # getter for: Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->thisUpdate:Ljava/util/Date;
    invoke-static {v5}, Lsun/security/provider/certpath/OCSPResponse$SingleResponse;->access$300(Lsun/security/provider/certpath/OCSPResponse$SingleResponse;)Ljava/util/Date;

    move-result-object v6

    .line 616
    :goto_2bc
    invoke-virtual {v3, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_2c4

    .line 623
    .end local v5    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    goto/16 :goto_23e

    .line 619
    .restart local v5    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_2c4
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "Response is unreliable: its validity interval is out-of-date"

    invoke-direct {v4, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    .end local v5    # "sr":Lsun/security/provider/certpath/OCSPResponse$SingleResponse;
    :cond_2cc
    return-void

    .line 580
    .end local v0    # "now":J
    .end local v2    # "nowPlusSkew":Ljava/util/Date;
    .end local v3    # "nowMinusSkew":Ljava/util/Date;
    :cond_2cd
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Error verifying OCSP Response\'s signature"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_2d5
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Unable to verify OCSP Response\'s signature"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
