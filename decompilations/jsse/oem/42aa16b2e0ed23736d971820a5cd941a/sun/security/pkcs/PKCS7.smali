.class public Lsun/security/pkcs/PKCS7;
.super Ljava/lang/Object;
.source "PKCS7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/pkcs/PKCS7$WrappedX509Certificate;,
        Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;
    }
.end annotation


# instance fields
.field private greylist-max-o certIssuerNames:[Ljava/security/Principal;

.field private greylist-max-o certificates:[Ljava/security/cert/X509Certificate;

.field private greylist-max-o contentInfo:Lsun/security/pkcs/ContentInfo;

.field private greylist-max-o contentType:Lsun/security/util/ObjectIdentifier;

.field private greylist-max-o crls:[Ljava/security/cert/X509CRL;

.field private greylist-max-o digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

.field private greylist-max-o oldStyle:Z

.field private greylist-max-o signerInfos:[Lsun/security/pkcs/SignerInfo;

.field private greylist-max-o version:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist core-platform-api <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 120
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 122
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 124
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 135
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 136
    return-void
.end method

.method public constructor greylist core-platform-api <init>([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 147
    :try_start_13
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 148
    .local v0, "derin":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1d

    .line 154
    .end local v0    # "derin":Lsun/security/util/DerInputStream;
    nop

    .line 155
    return-void

    .line 149
    :catch_1d
    move-exception v0

    .line 150
    .local v0, "ioe1":Ljava/io/IOException;
    new-instance v1, Lsun/security/pkcs/ParsingException;

    const-string v2, "Unable to parse the encoded bytes"

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v1, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    throw v1
.end method

.method public constructor greylist <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V
    .registers 7
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "crls"    # [Ljava/security/cert/X509CRL;
    .param p5, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 226
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 227
    iput-object p1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 228
    iput-object p2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 229
    iput-object p3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 230
    iput-object p4, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 231
    iput-object p5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 232
    return-void
.end method

.method public constructor greylist <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .registers 11
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .line 238
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lsun/security/pkcs/PKCS7;-><init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V

    .line 239
    return-void
.end method

.method private greylist-max-o parse(Lsun/security/util/DerInputStream;)V
    .registers 6
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    invoke-virtual {p1, v0}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 180
    goto :goto_17

    .line 167
    :catch_c
    move-exception v0

    .line 169
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    .line 172
    iput-boolean v1, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_18

    .line 179
    nop

    .line 181
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_17
    return-void

    .line 173
    .restart local v0    # "ioe":Ljava/io/IOException;
    :catch_18
    move-exception v1

    .line 174
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 177
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 178
    throw v2
.end method

.method private greylist-max-o parse(Lsun/security/util/DerInputStream;Z)V
    .registers 7
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v0, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 194
    iget-object v0, v0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 195
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v0}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    move-result-object v0

    .line 197
    .local v0, "content":Lsun/security/util/DerValue;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 198
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    goto :goto_3a

    .line 199
    :cond_1f
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 201
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    goto :goto_3a

    .line 202
    :cond_2d
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 204
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    .line 209
    :goto_3a
    return-void

    .line 206
    :cond_3b
    new-instance v1, Lsun/security/pkcs/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .registers 11
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 245
    .local v0, "dis":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 246
    .local v1, "contents":[Lsun/security/util/DerValue;
    array-length v2, v1

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_15
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_1b
    .catch Ljava/security/cert/CertificateException; {:try_start_15 .. :try_end_1b} :catch_1d

    move-object v2, v3

    .line 253
    goto :goto_1e

    .line 251
    :catch_1d
    move-exception v3

    .line 255
    :goto_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v1

    if-ge v3, v4, :cond_7e

    .line 256
    const/4 v4, 0x0

    .line 259
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_23
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v5

    .line 260
    .local v5, "original":[B
    if-nez v2, :cond_37

    .line 261
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v7, Lsun/security/x509/X509CertImpl;

    aget-object v8, v1, v3

    invoke-direct {v7, v8, v5}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v7, v6, v3

    goto :goto_50

    .line 263
    :cond_37
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v6

    .line 264
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v7, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 265
    invoke-virtual {v2, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    invoke-direct {v7, v8, v5}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v7, v6, v3

    .line 267
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4f
    .catch Ljava/security/cert/CertificateException; {:try_start_23 .. :try_end_4f} :catch_69
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_4f} :catch_5a
    .catchall {:try_start_23 .. :try_end_4f} :catchall_58

    .line 268
    const/4 v4, 0x0

    .line 280
    .end local v5    # "original":[B
    :goto_50
    if-eqz v4, :cond_55

    .line 281
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 255
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 280
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_58
    move-exception v5

    goto :goto_78

    .line 275
    :catch_5a
    move-exception v5

    .line 276
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_5b
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 277
    .local v6, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 278
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v1    # "contents":[Lsun/security/util/DerValue;
    .end local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6

    .line 271
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v1    # "contents":[Lsun/security/util/DerValue;
    .restart local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "i":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :catch_69
    move-exception v5

    .line 272
    .local v5, "ce":Ljava/security/cert/CertificateException;
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 273
    .restart local v6    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 274
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v1    # "contents":[Lsun/security/util/DerValue;
    .end local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_58

    .line 280
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v1    # "contents":[Lsun/security/util/DerValue;
    .restart local v2    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "i":I
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_78
    if-eqz v4, :cond_7d

    .line 281
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V

    .line 282
    :cond_7d
    throw v5

    .line 284
    .end local v3    # "i":I
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_7e
    return-void
.end method

.method private greylist-max-o parseOldSignedData(Lsun/security/util/DerValue;)V
    .registers 15
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 426
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 429
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 430
    .local v2, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v3, v2

    .line 432
    .local v3, "len":I
    new-array v4, v3, [Lsun/security/x509/AlgorithmId;

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 434
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_2d

    .line 435
    :try_start_17
    aget-object v5, v2, v4

    .line 436
    .local v5, "oid":Lsun/security/util/DerValue;
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_24

    .line 434
    .end local v5    # "oid":Lsun/security/util/DerValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 438
    .end local v4    # "i":I
    :catch_24
    move-exception v1

    .line 439
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lsun/security/pkcs/ParsingException;

    const-string v5, "Error parsing digest AlgorithmId IDs"

    invoke-direct {v4, v5}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2d
    nop

    .line 443
    new-instance v4, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v4, v0, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 446
    const/4 v4, 0x0

    .line 448
    .local v4, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_36
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5
    :try_end_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_36 .. :try_end_3c} :catch_3e

    move-object v4, v5

    .line 451
    goto :goto_3f

    .line 449
    :catch_3e
    move-exception v5

    .line 453
    :goto_3f
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v1}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 454
    .local v5, "certVals":[Lsun/security/util/DerValue;
    array-length v3, v5

    .line 455
    new-array v7, v3, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 457
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4b
    if-ge v7, v3, :cond_a9

    .line 458
    const/4 v8, 0x0

    .line 461
    .local v8, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4e
    aget-object v9, v5, v7

    invoke-virtual {v9}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v9

    .line 462
    .local v9, "original":[B
    if-nez v4, :cond_62

    .line 463
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/x509/X509CertImpl;

    aget-object v12, v5, v7

    invoke-direct {v11, v12, v9}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v11, v10, v7

    goto :goto_7b

    .line 465
    :cond_62
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v10

    .line 466
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 467
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    invoke-direct {v11, v12, v9}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v11, v10, v7

    .line 469
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7a
    .catch Ljava/security/cert/CertificateException; {:try_start_4e .. :try_end_7a} :catch_94
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_7a} :catch_85
    .catchall {:try_start_4e .. :try_end_7a} :catchall_83

    .line 470
    const/4 v8, 0x0

    .line 482
    .end local v9    # "original":[B
    :goto_7b
    if-eqz v8, :cond_80

    .line 483
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 457
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_80
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 482
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_83
    move-exception v1

    goto :goto_a3

    .line 477
    :catch_85
    move-exception v1

    .line 478
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_86
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 479
    .local v6, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 480
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6

    .line 473
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :catch_94
    move-exception v1

    .line 474
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v6, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v6    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v6, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 476
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v6
    :try_end_a3
    .catchall {:try_start_86 .. :try_end_a3} :catchall_83

    .line 482
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v6    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_a3
    if-eqz v8, :cond_a8

    .line 483
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 484
    :cond_a8
    throw v1

    .line 488
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_a9
    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 491
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 492
    .local v6, "signerInfoVals":[Lsun/security/util/DerValue;
    array-length v3, v6

    .line 493
    new-array v7, v3, [Lsun/security/pkcs/SignerInfo;

    iput-object v7, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 494
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_b6
    if-ge v7, v3, :cond_ca

    .line 495
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v8

    .line 496
    .local v8, "in":Lsun/security/util/DerInputStream;
    iget-object v9, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    new-instance v10, Lsun/security/pkcs/SignerInfo;

    invoke-direct {v10, v8, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    aput-object v10, v9, v7

    .line 494
    .end local v8    # "in":Lsun/security/util/DerInputStream;
    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 498
    .end local v7    # "i":I
    :cond_ca
    return-void
.end method

.method private greylist-max-o parseSignedData(Lsun/security/util/DerValue;)V
    .registers 16
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 292
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 295
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 296
    .local v2, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v3, v2

    .line 297
    .local v3, "len":I
    new-array v4, v3, [Lsun/security/x509/AlgorithmId;

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 299
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_43

    .line 300
    :try_start_17
    aget-object v5, v2, v4

    .line 301
    .local v5, "oid":Lsun/security/util/DerValue;
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_24

    .line 299
    .end local v5    # "oid":Lsun/security/util/DerValue;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 304
    .end local v4    # "i":I
    :catch_24
    move-exception v1

    .line 305
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lsun/security/pkcs/ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing digest AlgorithmId IDs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 308
    .local v4, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v4, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 309
    throw v4

    .line 310
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_43
    nop

    .line 312
    new-instance v4, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v4, v0}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 314
    const/4 v4, 0x0

    .line 316
    .local v4, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_4c
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5
    :try_end_52
    .catch Ljava/security/cert/CertificateException; {:try_start_4c .. :try_end_52} :catch_54

    move-object v4, v5

    .line 319
    goto :goto_55

    .line 317
    :catch_54
    move-exception v5

    .line 325
    :goto_55
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, -0x60

    if-ne v5, v6, :cond_e0

    .line 327
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1, v1}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 329
    .local v5, "certVals":[Lsun/security/util/DerValue;
    array-length v3, v5

    .line 330
    new-array v6, v3, [Ljava/security/cert/X509Certificate;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 331
    const/4 v6, 0x0

    .line 333
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6a
    if-ge v7, v3, :cond_d4

    .line 334
    const/4 v8, 0x0

    .line 336
    .local v8, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_6d
    aget-object v9, v5, v7

    invoke-virtual {v9}, Lsun/security/util/DerValue;->getTag()B

    move-result v9

    .line 339
    .local v9, "tag":B
    const/16 v10, 0x30

    if-ne v9, v10, :cond_a6

    .line 341
    aget-object v10, v5, v7

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v10

    .line 342
    .local v10, "original":[B
    if-nez v4, :cond_8b

    .line 343
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/x509/X509CertImpl;

    aget-object v13, v5, v7

    invoke-direct {v12, v13, v10}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v12, v11, v6

    goto :goto_a4

    .line 345
    :cond_8b
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v8, v11

    .line 346
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 347
    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-direct {v12, v13, v10}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v12, v11, v6

    .line 349
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a3
    .catch Ljava/security/cert/CertificateException; {:try_start_6d .. :try_end_a3} :catch_bf
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_a3} :catch_b0
    .catchall {:try_start_6d .. :try_end_a3} :catchall_ae

    .line 350
    const/4 v8, 0x0

    .line 353
    :goto_a4
    add-int/lit8 v6, v6, 0x1

    .line 364
    .end local v9    # "tag":B
    .end local v10    # "original":[B
    :cond_a6
    if-eqz v8, :cond_ab

    .line 365
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 333
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    .line 364
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_ae
    move-exception v1

    goto :goto_ce

    .line 359
    :catch_b0
    move-exception v1

    .line 360
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_b1
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 361
    .local v9, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 362
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v9

    .line 355
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v6    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :catch_bf
    move-exception v1

    .line 356
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v9    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 358
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v6    # "count":I
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v9
    :try_end_ce
    .catchall {:try_start_b1 .. :try_end_ce} :catchall_ae

    .line 364
    .end local v1    # "ce":Ljava/security/cert/CertificateException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certVals":[Lsun/security/util/DerValue;
    .restart local v6    # "count":I
    .restart local v7    # "i":I
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_ce
    if-eqz v8, :cond_d3

    .line 365
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V

    .line 366
    :cond_d3
    throw v1

    .line 368
    .end local v7    # "i":I
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_d4
    if-eq v6, v3, :cond_e0

    .line 369
    iget-object v7, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/security/cert/X509Certificate;

    iput-object v7, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 374
    .end local v5    # "certVals":[Lsun/security/util/DerValue;
    .end local v6    # "count":I
    :cond_e0
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, -0x5f

    if-ne v5, v6, :cond_13d

    .line 375
    invoke-virtual {v0, v1, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v5

    .line 377
    .local v5, "crlVals":[Lsun/security/util/DerValue;
    array-length v3, v5

    .line 378
    new-array v6, v3, [Ljava/security/cert/X509CRL;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 380
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_f3
    if-ge v6, v3, :cond_13d

    .line 381
    const/4 v7, 0x0

    .line 383
    .local v7, "bais":Ljava/io/ByteArrayInputStream;
    if-nez v4, :cond_104

    .line 384
    :try_start_f8
    iget-object v8, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    new-instance v9, Lsun/security/x509/X509CRLImpl;

    aget-object v10, v5, v6

    invoke-direct {v9, v10}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v9, v8, v6

    goto :goto_11e

    .line 386
    :cond_104
    aget-object v8, v5, v6

    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v8

    .line 387
    .local v8, "encoded":[B
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v7, v9

    .line 388
    iget-object v9, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509CRL;

    aput-object v10, v9, v6

    .line 389
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11d
    .catch Ljava/security/cert/CRLException; {:try_start_f8 .. :try_end_11d} :catch_128
    .catchall {:try_start_f8 .. :try_end_11d} :catchall_126

    .line 390
    const/4 v7, 0x0

    .line 398
    .end local v8    # "encoded":[B
    :goto_11e
    if-eqz v7, :cond_123

    .line 399
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 380
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_123
    add-int/lit8 v6, v6, 0x1

    goto :goto_f3

    .line 398
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    :catchall_126
    move-exception v1

    goto :goto_137

    .line 392
    :catch_128
    move-exception v1

    .line 393
    .local v1, "e":Ljava/security/cert/CRLException;
    :try_start_129
    new-instance v8, Lsun/security/pkcs/ParsingException;

    .line 394
    invoke-virtual {v1}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 395
    .local v8, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v8, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 396
    nop

    .end local v0    # "dis":Lsun/security/util/DerInputStream;
    .end local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .end local v3    # "len":I
    .end local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .end local v5    # "crlVals":[Lsun/security/util/DerValue;
    .end local v6    # "i":I
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .end local p0    # "this":Lsun/security/pkcs/PKCS7;
    .end local p1    # "val":Lsun/security/util/DerValue;
    throw v8
    :try_end_137
    .catchall {:try_start_129 .. :try_end_137} :catchall_126

    .line 398
    .end local v1    # "e":Ljava/security/cert/CRLException;
    .end local v8    # "pe":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "dis":Lsun/security/util/DerInputStream;
    .restart local v2    # "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    .restart local v3    # "len":I
    .restart local v4    # "certfac":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v6    # "i":I
    .restart local v7    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local p0    # "this":Lsun/security/pkcs/PKCS7;
    .restart local p1    # "val":Lsun/security/util/DerValue;
    :goto_137
    if-eqz v7, :cond_13c

    .line 399
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 400
    :cond_13c
    throw v1

    .line 405
    .end local v5    # "crlVals":[Lsun/security/util/DerValue;
    .end local v6    # "i":I
    .end local v7    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_13d
    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 407
    .local v1, "signerInfoVals":[Lsun/security/util/DerValue;
    array-length v3, v1

    .line 408
    new-array v5, v3, [Lsun/security/pkcs/SignerInfo;

    iput-object v5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 410
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_147
    if-ge v5, v3, :cond_15b

    .line 411
    aget-object v6, v1, v5

    invoke-virtual {v6}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v6

    .line 412
    .local v6, "in":Lsun/security/util/DerInputStream;
    iget-object v7, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    new-instance v8, Lsun/security/pkcs/SignerInfo;

    invoke-direct {v8, v6}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v8, v7, v5

    .line 410
    .end local v6    # "in":Lsun/security/util/DerInputStream;
    add-int/lit8 v5, v5, 0x1

    goto :goto_147

    .line 414
    .end local v5    # "i":I
    :cond_15b
    return-void
.end method

.method private greylist-max-o populateCertIssuerNames()V
    .registers 6

    .line 750
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_5

    .line 751
    return-void

    .line 753
    :cond_5
    array-length v0, v0

    new-array v0, v0, [Ljava/security/Principal;

    iput-object v0, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v1

    if-ge v0, v2, :cond_35

    .line 755
    aget-object v1, v1, v0

    .line 756
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 757
    .local v2, "certIssuerName":Ljava/security/Principal;
    instance-of v3, v2, Lsun/security/x509/X500Name;

    if-nez v3, :cond_2e

    .line 763
    :try_start_1a
    new-instance v3, Lsun/security/x509/X509CertInfo;

    .line 764
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    .line 765
    .local v3, "tbsCert":Lsun/security/x509/X509CertInfo;
    const-string v4, "issuer.dname"

    .line 766
    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Principal;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2d

    move-object v2, v4

    .line 771
    .end local v3    # "tbsCert":Lsun/security/x509/X509CertInfo;
    goto :goto_2e

    .line 768
    :catch_2d
    move-exception v3

    .line 773
    :cond_2e
    :goto_2e
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v2, v3, v0

    .line 754
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certIssuerName":Ljava/security/Principal;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 775
    .end local v0    # "i":I
    :cond_35
    return-void
.end method


# virtual methods
.method public greylist encodeSignedData(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 508
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    .line 509
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 510
    return-void
.end method

.method public blacklist encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .registers 11
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 524
    .local v0, "signedData":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 527
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 530
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1, v0}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 533
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_50

    array-length v3, v1

    if-eqz v3, :cond_50

    .line 535
    array-length v1, v1

    new-array v1, v1, [Lsun/security/x509/X509CertImpl;

    .line 536
    .local v1, "implCerts":[Lsun/security/x509/X509CertImpl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v4

    if-ge v3, v5, :cond_4b

    .line 537
    aget-object v5, v4, v3

    instance-of v5, v5, Lsun/security/x509/X509CertImpl;

    if-eqz v5, :cond_33

    .line 538
    aget-object v4, v4, v3

    check-cast v4, Lsun/security/x509/X509CertImpl;

    aput-object v4, v1, v3

    goto :goto_41

    .line 541
    :cond_33
    :try_start_33
    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    .line 542
    .local v4, "encoded":[B
    new-instance v5, Lsun/security/x509/X509CertImpl;

    invoke-direct {v5, v4}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v5, v1, v3
    :try_end_40
    .catch Ljava/security/cert/CertificateException; {:try_start_33 .. :try_end_40} :catch_44

    .line 545
    .end local v4    # "encoded":[B
    nop

    .line 536
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 543
    :catch_44
    move-exception v2

    .line 544
    .local v2, "ce":Ljava/security/cert/CertificateException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 551
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v3    # "i":I
    :cond_4b
    const/16 v3, -0x60

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 555
    .end local v1    # "implCerts":[Lsun/security/x509/X509CertImpl;
    :cond_50
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v1, :cond_9a

    array-length v1, v1

    if-eqz v1, :cond_9a

    .line 557
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 558
    .local v1, "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_63
    if-ge v5, v4, :cond_89

    aget-object v6, v3, v5

    .line 559
    .local v6, "crl":Ljava/security/cert/X509CRL;
    instance-of v7, v6, Lsun/security/x509/X509CRLImpl;

    if-eqz v7, :cond_72

    .line 560
    move-object v7, v6

    check-cast v7, Lsun/security/x509/X509CRLImpl;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 563
    :cond_72
    :try_start_72
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v7

    .line 564
    .local v7, "encoded":[B
    new-instance v8, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v8, v7}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/security/cert/CRLException; {:try_start_72 .. :try_end_7e} :catch_82

    .line 567
    nop

    .line 558
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v7    # "encoded":[B
    :goto_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 565
    .restart local v6    # "crl":Ljava/security/cert/X509CRL;
    :catch_82
    move-exception v2

    .line 566
    .local v2, "ce":Ljava/security/cert/CRLException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 573
    .end local v2    # "ce":Ljava/security/cert/CRLException;
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    :cond_89
    const/16 v3, -0x5f

    .line 574
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Lsun/security/x509/X509CRLImpl;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lsun/security/util/DerEncoder;

    .line 573
    invoke-virtual {v0, v3, v4}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 578
    .end local v1    # "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    :cond_9a
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 581
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v2, 0x30

    .line 582
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 585
    .local v1, "signedDataSeq":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/pkcs/ContentInfo;

    sget-object v3, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v2, v3, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    .line 589
    .local v2, "block":Lsun/security/pkcs/ContentInfo;
    invoke-virtual {v2, p1}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 590
    return-void
.end method

.method public blacklist getCRLs()[Ljava/security/cert/X509CRL;
    .registers 2

    .line 705
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_b

    .line 706
    invoke-virtual {v0}, [Ljava/security/cert/X509CRL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509CRL;

    return-object v0

    .line 708
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuerName"    # Lsun/security/x509/X500Name;

    .line 729
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2b

    .line 730
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v0, :cond_b

    .line 731
    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    .line 732
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v1

    if-ge v0, v2, :cond_2b

    .line 733
    aget-object v1, v1, v0

    .line 734
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 735
    .local v2, "thisSerial":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v3, v3, v0

    .line 736
    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 738
    return-object v1

    .line 732
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 742
    .end local v0    # "i":I
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist core-platform-api getCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 693
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    .line 694
    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 696
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist core-platform-api getContentInfo()Lsun/security/pkcs/ContentInfo;
    .registers 2

    .line 684
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public blacklist getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .registers 2

    .line 677
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public greylist core-platform-api getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .registers 2

    .line 717
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/math/BigInteger;
    .registers 2

    .line 668
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isOldStyle()Z
    .registers 2

    .line 814
    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 8

    .line 781
    const-string v0, ""

    .line 783
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v1, :cond_39

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PKCS7 :: version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    :cond_39
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const-string v3, "\t"

    if-eqz v1, :cond_72

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_51
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    array-length v4, v4

    if-ge v1, v4, :cond_72

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 791
    .end local v1    # "i":I
    :cond_72
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    const-string v4, ".   "

    if-eqz v1, :cond_b1

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PKCS7 :: certificates: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8a
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v5

    if-ge v1, v5, :cond_b1

    .line 794
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 796
    .end local v1    # "i":I
    :cond_b1
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v1, :cond_ee

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PKCS7 :: crls: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c7
    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v5, v5

    if-ge v1, v5, :cond_ee

    .line 799
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 801
    .end local v1    # "i":I
    :cond_ee
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    if-eqz v1, :cond_12d

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PKCS7 :: signer infos: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_104
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v4, v4

    if-ge v1, v4, :cond_12d

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    .line 806
    .end local v1    # "i":I
    :cond_12d
    return-object v0
.end method

.method public blacklist core-platform-api verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
    .registers 4
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "dataInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .registers 4
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 603
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist verify()[Lsun/security/pkcs/SignerInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist core-platform-api verify([B)[Lsun/security/pkcs/SignerInfo;
    .registers 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 635
    .local v0, "intResult":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/pkcs/SignerInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 637
    aget-object v2, v2, v1

    invoke-virtual {p0, v2, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v2

    .line 638
    .local v2, "signerInfo":Lsun/security/pkcs/SignerInfo;
    if-eqz v2, :cond_16

    .line 639
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 635
    .end local v2    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 642
    .end local v1    # "i":I
    :cond_19
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 644
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lsun/security/pkcs/SignerInfo;

    .line 645
    .local v1, "result":[Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 646
    return-object v1

    .line 648
    .end local v1    # "result":[Lsun/security/pkcs/SignerInfo;
    :cond_29
    const/4 v1, 0x0

    return-object v1
.end method
