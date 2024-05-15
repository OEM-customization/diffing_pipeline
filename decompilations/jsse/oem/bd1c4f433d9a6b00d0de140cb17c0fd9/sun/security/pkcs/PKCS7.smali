.class public Lsun/security/pkcs/PKCS7;
.super Ljava/lang/Object;
.source "PKCS7.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;,
        Lsun/security/pkcs/PKCS7$WrappedX509Certificate;
    }
.end annotation


# instance fields
.field private certIssuerNames:[Ljava/security/Principal;

.field private certificates:[Ljava/security/cert/X509Certificate;

.field private contentInfo:Lsun/security/pkcs/ContentInfo;

.field private contentType:Lsun/security/util/ObjectIdentifier;

.field private crls:[Ljava/security/cert/X509CRL;

.field private digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

.field private oldStyle:Z

.field private signerInfos:[Lsun/security/pkcs/SignerInfo;

.field private version:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 120
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 122
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 124
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
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

.method public constructor <init>([B)V
    .registers 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 70
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 71
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 72
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 73
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 74
    iput-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 76
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    .line 147
    :try_start_13
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 148
    .local v0, "derin":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1c

    .line 155
    return-void

    .line 149
    .end local v0    # "derin":Lsun/security/util/DerInputStream;
    :catch_1c
    move-exception v1

    .line 150
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 151
    const-string/jumbo v3, "Unable to parse the encoded bytes"

    .line 150
    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    throw v2
.end method

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509CRL;[Lsun/security/pkcs/SignerInfo;)V
    .registers 7
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "crls"    # [Ljava/security/cert/X509CRL;
    .param p5, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
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

.method public constructor <init>([Lsun/security/x509/AlgorithmId;Lsun/security/pkcs/ContentInfo;[Ljava/security/cert/X509Certificate;[Lsun/security/pkcs/SignerInfo;)V
    .registers 11
    .param p1, "digestAlgorithmIds"    # [Lsun/security/x509/AlgorithmId;
    .param p2, "contentInfo"    # Lsun/security/pkcs/ContentInfo;
    .param p3, "certificates"    # [Ljava/security/cert/X509Certificate;
    .param p4, "signerInfos"    # [Lsun/security/pkcs/SignerInfo;

    .prologue
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

.method private parse(Lsun/security/util/DerInputStream;)V
    .registers 6
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    invoke-virtual {p1, v3}, Lsun/security/util/DerInputStream;->mark(I)V

    .line 166
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 181
    :goto_b
    return-void

    .line 167
    :catch_c
    move-exception v0

    .line 169
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->reset()V

    .line 171
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lsun/security/pkcs/PKCS7;->parse(Lsun/security/util/DerInputStream;Z)V

    .line 172
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_b

    .line 173
    :catch_18
    move-exception v1

    .line 174
    .local v1, "ioe1":Ljava/io/IOException;
    new-instance v2, Lsun/security/pkcs/ParsingException;

    .line 175
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-direct {v2, v3}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v2, v0}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 177
    invoke-virtual {v2, v1}, Lsun/security/pkcs/ParsingException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 178
    throw v2
.end method

.method private parse(Lsun/security/util/DerInputStream;Z)V
    .registers 7
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Lsun/security/pkcs/ContentInfo;

    invoke-direct {v1, p1, p2}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 194
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    iget-object v1, v1, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 195
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v1}, Lsun/security/pkcs/ContentInfo;->getContent()Lsun/security/util/DerValue;

    move-result-object v0

    .line 197
    .local v0, "content":Lsun/security/util/DerValue;
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 198
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseSignedData(Lsun/security/util/DerValue;)V

    .line 209
    :goto_20
    return-void

    .line 199
    :cond_21
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 201
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseOldSignedData(Lsun/security/util/DerValue;)V

    goto :goto_20

    .line 202
    :cond_2f
    iget-object v1, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 203
    sget-object v2, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    .line 202
    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 204
    invoke-direct {p0, v0}, Lsun/security/pkcs/PKCS7;->parseNetscapeCertChain(Lsun/security/util/DerValue;)V

    goto :goto_20

    .line 206
    :cond_3d
    new-instance v1, Lsun/security/pkcs/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 207
    const-string/jumbo v3, " not supported."

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseNetscapeCertChain(Lsun/security/util/DerValue;)V
    .registers 16
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 243
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v10

    invoke-direct {v5, v10}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 244
    .local v5, "dis":Lsun/security/util/DerInputStream;
    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lsun/security/util/DerInputStream;->getSequence(IZ)[Lsun/security/util/DerValue;

    move-result-object v4

    .line 245
    .local v4, "contents":[Lsun/security/util/DerValue;
    array-length v10, v4

    new-array v10, v10, [Ljava/security/cert/X509Certificate;

    iput-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 247
    const/4 v3, 0x0

    .line 249
    .local v3, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_16
    const-string/jumbo v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_16 .. :try_end_1c} :catch_83

    move-result-object v3

    .line 254
    .end local v3    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_1d
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1e
    array-length v10, v4

    if-ge v6, v10, :cond_79

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_22
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v8

    .line 258
    .local v8, "original":[B
    if-nez v3, :cond_3d

    .line 259
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v11, Lsun/security/x509/X509CertImpl;

    aget-object v12, v4, v6

    invoke-direct {v11, v12, v8}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v11, v10, v6
    :try_end_35
    .catch Ljava/security/cert/CertificateException; {:try_start_22 .. :try_end_35} :catch_6b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_35} :catch_56
    .catchall {:try_start_22 .. :try_end_35} :catchall_64

    .line 277
    :goto_35
    if-eqz v13, :cond_3a

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 254
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 261
    :cond_3d
    :try_start_3d
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_42} :catch_6b
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_56
    .catchall {:try_start_3d .. :try_end_42} :catchall_64

    .line 262
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_42
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    new-instance v12, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 263
    invoke-virtual {v3, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 262
    invoke-direct {v12, v10, v8}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v12, v11, v6

    .line 265
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_54
    .catch Ljava/security/cert/CertificateException; {:try_start_42 .. :try_end_54} :catch_7d
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_54} :catch_80
    .catchall {:try_start_42 .. :try_end_54} :catchall_7a

    .line 266
    const/4 v0, 0x0

    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_35

    .line 272
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v8    # "original":[B
    :catch_56
    move-exception v7

    .line 273
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_57
    :try_start_57
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 274
    .local v9, "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v7}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 275
    throw v9
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_64

    .line 276
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_64
    move-exception v10

    .line 277
    :goto_65
    if-eqz v0, :cond_6a

    .line 278
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 276
    :cond_6a
    throw v10

    .line 268
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_6b
    move-exception v2

    .line 269
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :goto_6c
    :try_start_6c
    new-instance v9, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v9    # "pe":Lsun/security/pkcs/ParsingException;
    invoke-virtual {v9, v2}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 271
    throw v9
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_64

    .line 281
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .end local v9    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_79
    return-void

    .line 276
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "original":[B
    :catchall_7a
    move-exception v10

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_65

    .line 268
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_7d
    move-exception v2

    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6c

    .line 272
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_80
    move-exception v7

    .restart local v7    # "ioe":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_57

    .line 250
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "i":I
    .end local v7    # "ioe":Ljava/io/IOException;
    .end local v8    # "original":[B
    .restart local v3    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_83
    move-exception v2

    .restart local v2    # "ce":Ljava/security/cert/CertificateException;
    goto :goto_1d
.end method

.method private parseOldSignedData(Lsun/security/util/DerValue;)V
    .registers 24
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v9

    .line 420
    .local v9, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v9}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 423
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v8

    .line 424
    .local v8, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v14, v8

    .line 426
    .local v14, "len":I
    new-array v0, v14, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 428
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_22
    if-ge v11, v14, :cond_3f

    .line 429
    :try_start_24
    aget-object v15, v8, v11

    .line 430
    .local v15, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v19, v0

    invoke-static {v15}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v20

    aput-object v20, v19, v11
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_32} :catch_35

    .line 428
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    .line 432
    .end local v15    # "oid":Lsun/security/util/DerValue;
    :catch_35
    move-exception v10

    .line 433
    .local v10, "e":Ljava/io/IOException;
    new-instance v19, Lsun/security/pkcs/ParsingException;

    const-string/jumbo v20, "Error parsing digest AlgorithmId IDs"

    invoke-direct/range {v19 .. v20}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 437
    .end local v10    # "e":Ljava/io/IOException;
    :cond_3f
    new-instance v19, Lsun/security/pkcs/ContentInfo;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 440
    const/4 v7, 0x0

    .line 442
    .local v7, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_51
    const-string/jumbo v19, "X.509"

    invoke-static/range {v19 .. v19}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_57
    .catch Ljava/security/cert/CertificateException; {:try_start_51 .. :try_end_57} :catch_137

    move-result-object v7

    .line 446
    .end local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_58
    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 447
    .local v6, "certVals":[Lsun/security/util/DerValue;
    array-length v14, v6

    .line 448
    new-array v0, v14, [Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 450
    const/4 v11, 0x0

    :goto_74
    if-ge v11, v14, :cond_f2

    .line 451
    const/4 v3, 0x0

    .line 453
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_77
    aget-object v19, v6, v11

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v16

    .line 454
    .local v16, "original":[B
    if-nez v7, :cond_9e

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/x509/X509CertImpl;

    aget-object v21, v6, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v20, v19, v11
    :try_end_94
    .catch Ljava/security/cert/CertificateException; {:try_start_77 .. :try_end_94} :catch_de
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_94} :catch_c3
    .catchall {:try_start_77 .. :try_end_94} :catchall_d7

    .line 473
    :goto_94
    const/16 v19, 0x0

    if-eqz v19, :cond_9b

    .line 474
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 450
    :cond_9b
    add-int/lit8 v11, v11, 0x1

    goto :goto_74

    .line 457
    :cond_9e
    :try_start_9e
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a5
    .catch Ljava/security/cert/CertificateException; {:try_start_9e .. :try_end_a5} :catch_de
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a5} :catch_c3
    .catchall {:try_start_9e .. :try_end_a5} :catchall_d7

    .line 458
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v20, v0

    new-instance v21, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 459
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    .line 458
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v21, v20, v11

    .line 461
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c1
    .catch Ljava/security/cert/CertificateException; {:try_start_a5 .. :try_end_c1} :catch_131
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_c1} :catch_134
    .catchall {:try_start_a5 .. :try_end_c1} :catchall_12e

    .line 462
    const/4 v3, 0x0

    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_94

    .line 468
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v16    # "original":[B
    :catch_c3
    move-exception v13

    .line 469
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "ioe":Ljava/io/IOException;
    :goto_c4
    :try_start_c4
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 470
    .local v17, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 471
    throw v17
    :try_end_d7
    .catchall {:try_start_c4 .. :try_end_d7} :catchall_d7

    .line 472
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_d7
    move-exception v19

    .line 473
    :goto_d8
    if-eqz v3, :cond_dd

    .line 474
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 472
    :cond_dd
    throw v19

    .line 464
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_de
    move-exception v5

    .line 465
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "ce":Ljava/security/cert/CertificateException;
    :goto_df
    :try_start_df
    new-instance v17, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v17    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 467
    throw v17
    :try_end_f2
    .catchall {:try_start_df .. :try_end_f2} :catchall_d7

    .line 479
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v17    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_f2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    .line 482
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v18

    .line 483
    .local v18, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v18

    array-length v14, v0

    .line 484
    new-array v0, v14, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 485
    const/4 v11, 0x0

    :goto_10f
    if-ge v11, v14, :cond_12d

    .line 486
    aget-object v19, v18, v11

    invoke-virtual/range {v19 .. v19}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v12

    .line 487
    .local v12, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v19, v0

    new-instance v20, Lsun/security/pkcs/SignerInfo;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    aput-object v20, v19, v11

    .line 485
    add-int/lit8 v11, v11, 0x1

    goto :goto_10f

    .line 489
    .end local v12    # "in":Lsun/security/util/DerInputStream;
    :cond_12d
    return-void

    .line 472
    .end local v18    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v16    # "original":[B
    :catchall_12e
    move-exception v19

    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_d8

    .line 464
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_131
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_df

    .line 468
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_134
    move-exception v13

    .restart local v13    # "ioe":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_c4

    .line 443
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v13    # "ioe":Ljava/io/IOException;
    .end local v16    # "original":[B
    .restart local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_137
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_58
.end method

.method private parseSignedData(Lsun/security/util/DerValue;)V
    .registers 29
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/security/pkcs/ParsingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual/range {p1 .. p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v11

    .line 289
    .local v11, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    .line 292
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v10

    .line 293
    .local v10, "digestAlgorithmIdVals":[Lsun/security/util/DerValue;
    array-length v0, v10

    move/from16 v18, v0

    .line 294
    .local v18, "len":I
    move/from16 v0, v18

    new-array v0, v0, [Lsun/security/x509/AlgorithmId;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    .line 296
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_26
    move/from16 v0, v18

    if-ge v15, v0, :cond_63

    .line 297
    :try_start_2a
    aget-object v19, v10, v15

    .line 298
    .local v19, "oid":Lsun/security/util/DerValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    move-object/from16 v24, v0

    invoke-static/range {v19 .. v19}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v25

    aput-object v25, v24, v15
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_38} :catch_3b

    .line 296
    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    .line 301
    .end local v19    # "oid":Lsun/security/util/DerValue;
    :catch_3b
    move-exception v12

    .line 303
    .local v12, "e":Ljava/io/IOException;
    new-instance v21, Lsun/security/pkcs/ParsingException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Error parsing digest AlgorithmId IDs: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 304
    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    .line 303
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 305
    .local v21, "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 306
    throw v21

    .line 309
    .end local v12    # "e":Ljava/io/IOException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_63
    new-instance v24, Lsun/security/pkcs/ContentInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    .line 311
    const/4 v7, 0x0

    .line 313
    .local v7, "certfac":Ljava/security/cert/CertificateFactory;
    :try_start_71
    const-string/jumbo v24, "X.509"

    invoke-static/range {v24 .. v24}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_77
    .catch Ljava/security/cert/CertificateException; {:try_start_71 .. :try_end_77} :catch_225

    move-result-object v7

    .line 322
    .end local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :goto_78
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, -0x60

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_154

    .line 323
    const/16 v24, 0x2

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Lsun/security/util/DerInputStream;->getSet(IZZ)[Lsun/security/util/DerValue;

    move-result-object v6

    .line 325
    .local v6, "certVals":[Lsun/security/util/DerValue;
    array-length v0, v6

    move/from16 v18, v0

    .line 326
    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 327
    const/4 v8, 0x0

    .line 329
    .local v8, "count":I
    const/4 v15, 0x0

    :goto_aa
    move/from16 v0, v18

    if-ge v15, v0, :cond_13c

    .line 330
    const/4 v3, 0x0

    .line 332
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_af
    aget-object v24, v6, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getTag()B

    move-result v23

    .line 335
    .local v23, "tag":B
    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_dc

    .line 336
    aget-object v24, v6, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->getOriginalEncodedForm()[B

    move-result-object v20

    .line 337
    .local v20, "original":[B
    if-nez v7, :cond_e6

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/x509/X509CertImpl;

    aget-object v26, v6, v15

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/util/DerValue;[B)V

    aput-object v25, v24, v8
    :try_end_da
    .catch Ljava/security/cert/CertificateException; {:try_start_af .. :try_end_da} :catch_128
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_da} :catch_10b
    .catchall {:try_start_af .. :try_end_da} :catchall_121

    .line 347
    :goto_da
    add-int/lit8 v8, v8, 0x1

    .line 358
    .end local v20    # "original":[B
    :cond_dc
    const/16 v24, 0x0

    if-eqz v24, :cond_e3

    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 329
    :cond_e3
    add-int/lit8 v15, v15, 0x1

    goto :goto_aa

    .line 340
    .restart local v20    # "original":[B
    :cond_e6
    :try_start_e6
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_ed
    .catch Ljava/security/cert/CertificateException; {:try_start_e6 .. :try_end_ed} :catch_128
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ed} :catch_10b
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_121

    .line 341
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v25, v0

    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    new-instance v26, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;

    .line 342
    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;

    .line 341
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lsun/security/pkcs/PKCS7$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    aput-object v26, v25, v8

    .line 344
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_109
    .catch Ljava/security/cert/CertificateException; {:try_start_ed .. :try_end_109} :catch_21d
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_109} :catch_221
    .catchall {:try_start_ed .. :try_end_109} :catchall_219

    .line 345
    const/4 v3, 0x0

    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_da

    .line 353
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v20    # "original":[B
    .end local v23    # "tag":B
    :catch_10b
    move-exception v17

    .line 354
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v17, "ioe":Ljava/io/IOException;
    :goto_10c
    :try_start_10c
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 356
    throw v21
    :try_end_121
    .catchall {:try_start_10c .. :try_end_121} :catchall_121

    .line 357
    .end local v17    # "ioe":Ljava/io/IOException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_121
    move-exception v24

    .line 358
    :goto_122
    if-eqz v3, :cond_127

    .line 359
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 357
    :cond_127
    throw v24

    .line 349
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_128
    move-exception v5

    .line 350
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v5, "ce":Ljava/security/cert/CertificateException;
    :goto_129
    :try_start_129
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 351
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 352
    throw v21
    :try_end_13c
    .catchall {:try_start_129 .. :try_end_13c} :catchall_121

    .line 362
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :cond_13c
    move/from16 v0, v18

    if-eq v8, v0, :cond_154

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    .line 368
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v8    # "count":I
    :cond_154
    invoke-virtual {v11}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    const/16 v25, -0x5f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1da

    .line 369
    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v9

    .line 371
    .local v9, "crlVals":[Lsun/security/util/DerValue;
    array-length v0, v9

    move/from16 v18, v0

    .line 372
    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509CRL;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    .line 374
    const/4 v15, 0x0

    :goto_181
    move/from16 v0, v18

    if-ge v15, v0, :cond_1da

    .line 375
    const/4 v3, 0x0

    .line 377
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    if-nez v7, :cond_1a1

    .line 378
    :try_start_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/x509/X509CRLImpl;

    aget-object v26, v9, v15

    invoke-direct/range {v25 .. v26}, Lsun/security/x509/X509CRLImpl;-><init>(Lsun/security/util/DerValue;)V

    aput-object v25, v24, v15
    :try_end_197
    .catch Ljava/security/cert/CRLException; {:try_start_188 .. :try_end_197} :catch_1bf
    .catchall {:try_start_188 .. :try_end_197} :catchall_1d3

    .line 392
    :goto_197
    const/16 v24, 0x0

    if-eqz v24, :cond_19e

    .line 393
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 374
    :cond_19e
    add-int/lit8 v15, v15, 0x1

    goto :goto_181

    .line 380
    :cond_1a1
    :try_start_1a1
    aget-object v24, v9, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v14

    .line 381
    .local v14, "encoded":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1ac
    .catch Ljava/security/cert/CRLException; {:try_start_1a1 .. :try_end_1ac} :catch_1bf
    .catchall {:try_start_1a1 .. :try_end_1ac} :catchall_1d3

    .line 382
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :try_start_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    move-object/from16 v25, v0

    invoke-virtual {v7, v4}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509CRL;

    aput-object v24, v25, v15

    .line 383
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1bd
    .catch Ljava/security/cert/CRLException; {:try_start_1ac .. :try_end_1bd} :catch_216
    .catchall {:try_start_1ac .. :try_end_1bd} :catchall_213

    .line 384
    const/4 v3, 0x0

    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_197

    .line 386
    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v14    # "encoded":[B
    :catch_1bf
    move-exception v13

    .line 388
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .local v13, "e":Ljava/security/cert/CRLException;
    :goto_1c0
    :try_start_1c0
    new-instance v21, Lsun/security/pkcs/ParsingException;

    invoke-virtual {v13}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lsun/security/pkcs/ParsingException;-><init>(Ljava/lang/String;)V

    .line 389
    .restart local v21    # "pe":Lsun/security/pkcs/ParsingException;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lsun/security/pkcs/ParsingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 390
    throw v21
    :try_end_1d3
    .catchall {:try_start_1c0 .. :try_end_1d3} :catchall_1d3

    .line 391
    .end local v13    # "e":Ljava/security/cert/CRLException;
    .end local v21    # "pe":Lsun/security/pkcs/ParsingException;
    :catchall_1d3
    move-exception v24

    .line 392
    :goto_1d4
    if-eqz v3, :cond_1d9

    .line 393
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 391
    :cond_1d9
    throw v24

    .line 399
    .end local v9    # "crlVals":[Lsun/security/util/DerValue;
    :cond_1da
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Lsun/security/util/DerInputStream;->getSet(I)[Lsun/security/util/DerValue;

    move-result-object v22

    .line 401
    .local v22, "signerInfoVals":[Lsun/security/util/DerValue;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v18, v0

    .line 402
    move/from16 v0, v18

    new-array v0, v0, [Lsun/security/pkcs/SignerInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    .line 404
    const/4 v15, 0x0

    :goto_1f4
    move/from16 v0, v18

    if-ge v15, v0, :cond_212

    .line 405
    aget-object v24, v22, v15

    invoke-virtual/range {v24 .. v24}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v16

    .line 406
    .local v16, "in":Lsun/security/util/DerInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    move-object/from16 v24, v0

    new-instance v25, Lsun/security/pkcs/SignerInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lsun/security/pkcs/SignerInfo;-><init>(Lsun/security/util/DerInputStream;)V

    aput-object v25, v24, v15

    .line 404
    add-int/lit8 v15, v15, 0x1

    goto :goto_1f4

    .line 408
    .end local v16    # "in":Lsun/security/util/DerInputStream;
    :cond_212
    return-void

    .line 391
    .end local v22    # "signerInfoVals":[Lsun/security/util/DerValue;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v9    # "crlVals":[Lsun/security/util/DerValue;
    .restart local v14    # "encoded":[B
    :catchall_213
    move-exception v24

    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1d4

    .line 386
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_216
    move-exception v13

    .restart local v13    # "e":Ljava/security/cert/CRLException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1c0

    .line 357
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v9    # "crlVals":[Lsun/security/util/DerValue;
    .end local v13    # "e":Ljava/security/cert/CRLException;
    .end local v14    # "encoded":[B
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "certVals":[Lsun/security/util/DerValue;
    .restart local v8    # "count":I
    .restart local v20    # "original":[B
    .restart local v23    # "tag":B
    :catchall_219
    move-exception v24

    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_122

    .line 349
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_21d
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_129

    .line 353
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_221
    move-exception v17

    .restart local v17    # "ioe":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_10c

    .line 314
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "certVals":[Lsun/security/util/DerValue;
    .end local v8    # "count":I
    .end local v17    # "ioe":Ljava/io/IOException;
    .end local v20    # "original":[B
    .end local v23    # "tag":B
    .restart local v7    # "certfac":Ljava/security/cert/CertificateFactory;
    :catch_225
    move-exception v5

    .restart local v5    # "ce":Ljava/security/cert/CertificateException;
    goto/16 :goto_78
.end method

.method private populateCertIssuerNames()V
    .registers 8

    .prologue
    .line 738
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-nez v6, :cond_5

    .line 739
    return-void

    .line 741
    :cond_5
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    new-array v6, v6, [Ljava/security/Principal;

    iput-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    .line 742
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v6, v6

    if-ge v4, v6, :cond_39

    .line 743
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v1, v6, v4

    .line 744
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 745
    .local v2, "certIssuerName":Ljava/security/Principal;
    instance-of v6, v2, Lsun/security/x509/X500Name;

    if-nez v6, :cond_32

    .line 752
    :try_start_1e
    new-instance v5, Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/x509/X509CertInfo;-><init>([B)V

    .line 754
    .local v5, "tbsCert":Lsun/security/x509/X509CertInfo;
    const-string/jumbo v6, "issuer.dname"

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 753
    move-object v0, v6

    check-cast v0, Ljava/security/Principal;

    move-object v2, v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_32} :catch_3a

    .line 761
    .end local v5    # "tbsCert":Lsun/security/x509/X509CertInfo;
    :cond_32
    :goto_32
    iget-object v6, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aput-object v2, v6, v4

    .line 742
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 763
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certIssuerName":Ljava/security/Principal;
    :cond_39
    return-void

    .line 756
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "certIssuerName":Ljava/security/Principal;
    :catch_3a
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_32
.end method


# virtual methods
.method public encodeSignedData(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 499
    .local v0, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->encodeSignedData(Lsun/security/util/DerOutputStream;)V

    .line 500
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 501
    return-void
.end method

.method public encodeSignedData(Lsun/security/util/DerOutputStream;)V
    .registers 16
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 515
    .local v8, "signedData":Lsun/security/util/DerOutputStream;
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-virtual {v8, v10}, Lsun/security/util/DerOutputStream;->putInteger(Ljava/math/BigInteger;)V

    .line 518
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    const/16 v11, 0x31

    invoke-virtual {v8, v11, v10}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 521
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v10, v8}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 524
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_59

    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v10, v10

    if-eqz v10, :cond_59

    .line 526
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v10, v10

    new-array v7, v10, [Lsun/security/x509/X509CertImpl;

    .line 527
    .local v7, "implCerts":[Lsun/security/x509/X509CertImpl;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v10, v10

    if-ge v5, v10, :cond_54

    .line 528
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v10, v10, v5

    instance-of v10, v10, Lsun/security/x509/X509CertImpl;

    if-eqz v10, :cond_3d

    .line 529
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v10, v10, v5

    check-cast v10, Lsun/security/x509/X509CertImpl;

    aput-object v10, v7, v5

    .line 527
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 532
    :cond_3d
    :try_start_3d
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    .line 533
    .local v4, "encoded":[B
    new-instance v10, Lsun/security/x509/X509CertImpl;

    invoke-direct {v10, v4}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    aput-object v10, v7, v5
    :try_end_4c
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_4c} :catch_4d

    goto :goto_3a

    .line 534
    .end local v4    # "encoded":[B
    :catch_4d
    move-exception v2

    .line 535
    .local v2, "ce":Ljava/security/cert/CertificateException;
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 542
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    :cond_54
    const/16 v10, -0x60

    invoke-virtual {v8, v10, v7}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 546
    .end local v5    # "i":I
    .end local v7    # "implCerts":[Lsun/security/x509/X509CertImpl;
    :cond_59
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v10, :cond_a3

    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v10, v10

    if-eqz v10, :cond_a3

    .line 548
    new-instance v6, Ljava/util/HashSet;

    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v10, v10

    invoke-direct {v6, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 549
    .local v6, "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    iget-object v11, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_6e
    if-ge v10, v12, :cond_92

    aget-object v3, v11, v10

    .line 550
    .local v3, "crl":Ljava/security/cert/X509CRL;
    instance-of v13, v3, Lsun/security/x509/X509CRLImpl;

    if-eqz v13, :cond_7e

    .line 551
    check-cast v3, Lsun/security/x509/X509CRLImpl;

    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 549
    :goto_7b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 554
    .restart local v3    # "crl":Ljava/security/cert/X509CRL;
    :cond_7e
    :try_start_7e
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v4

    .line 555
    .restart local v4    # "encoded":[B
    new-instance v13, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v13, v4}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/security/cert/CRLException; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_7b

    .line 556
    .end local v4    # "encoded":[B
    :catch_8b
    move-exception v1

    .line 557
    .local v1, "ce":Ljava/security/cert/CRLException;
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 565
    .end local v1    # "ce":Ljava/security/cert/CRLException;
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    :cond_92
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Lsun/security/x509/X509CRLImpl;

    invoke-interface {v6, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lsun/security/util/DerEncoder;

    .line 564
    const/16 v11, -0x5f

    invoke-virtual {v8, v11, v10}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 569
    .end local v6    # "implCRLs":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/X509CRLImpl;>;"
    :cond_a3
    iget-object v10, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    const/16 v11, 0x31

    invoke-virtual {v8, v11, v10}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 572
    new-instance v9, Lsun/security/util/DerValue;

    .line 573
    invoke-virtual {v8}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v10

    .line 572
    const/16 v11, 0x30

    invoke-direct {v9, v11, v10}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 576
    .local v9, "signedDataSeq":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/pkcs/ContentInfo;

    sget-object v10, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v10, v9}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    .line 580
    .local v0, "block":Lsun/security/pkcs/ContentInfo;
    invoke-virtual {v0, p1}, Lsun/security/pkcs/ContentInfo;->encode(Lsun/security/util/DerOutputStream;)V

    .line 581
    return-void
.end method

.method public getCRLs()[Ljava/security/cert/X509CRL;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 693
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v0, :cond_e

    .line 694
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509CRL;

    return-object v0

    .line 696
    :cond_e
    return-object v1
.end method

.method public getCertificate(Ljava/math/BigInteger;Lsun/security/x509/X500Name;)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p1, "serial"    # Ljava/math/BigInteger;
    .param p2, "issuerName"    # Lsun/security/x509/X500Name;

    .prologue
    const/4 v4, 0x0

    .line 717
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_2e

    .line 718
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    if-nez v3, :cond_c

    .line 719
    invoke-direct {p0}, Lsun/security/pkcs/PKCS7;->populateCertIssuerNames()V

    .line 720
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v3, v3

    if-ge v1, v3, :cond_2e

    .line 721
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v0, v3, v1

    .line 722
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 723
    .local v2, "thisSerial":Ljava/math/BigInteger;
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 724
    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certIssuerNames:[Ljava/security/Principal;

    aget-object v3, v3, v1

    invoke-virtual {p2, v3}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 723
    if-eqz v3, :cond_2b

    .line 726
    return-object v0

    .line 720
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 730
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "i":I
    .end local v2    # "thisSerial":Ljava/math/BigInteger;
    :cond_2e
    return-object v4
.end method

.method public getCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 681
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_e

    .line 682
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 684
    :cond_e
    return-object v1
.end method

.method public getContentInfo()Lsun/security/pkcs/ContentInfo;
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithmIds()[Lsun/security/x509/AlgorithmId;
    .registers 2

    .prologue
    .line 665
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getSignerInfos()[Lsun/security/pkcs/SignerInfo;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isOldStyle()Z
    .registers 2

    .prologue
    .line 802
    iget-boolean v0, p0, Lsun/security/pkcs/PKCS7;->oldStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 769
    const-string/jumbo v1, ""

    .line 771
    .local v1, "out":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->contentInfo:Lsun/security/pkcs/ContentInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 772
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    if-eqz v2, :cond_46

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->version:Ljava/math/BigInteger;

    invoke-static {v3}, Lsun/security/util/Debug;->toHexString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 774
    :cond_46
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    if-eqz v2, :cond_8a

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: digest AlgorithmIds: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5f
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    array-length v2, v2

    if-ge v0, v2, :cond_8a

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->digestAlgorithmIds:[Lsun/security/x509/AlgorithmId;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 779
    .end local v0    # "i":I
    :cond_8a
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_d9

    .line 780
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: certificates: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a3
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_d9

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->certificates:[Ljava/security/cert/X509Certificate;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 784
    .end local v0    # "i":I
    :cond_d9
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    if-eqz v2, :cond_128

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: crls: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f2
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    array-length v2, v2

    if-ge v0, v2, :cond_128

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->crls:[Ljava/security/cert/X509CRL;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    .line 789
    .end local v0    # "i":I
    :cond_128
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    if-eqz v2, :cond_177

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PKCS7 :: signer infos: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_141
    iget-object v2, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_177

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_141

    .line 794
    .end local v0    # "i":I
    :cond_177
    return-object v1
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;
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

    .prologue
    .line 608
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;
    .registers 4
    .param p1, "info"    # Lsun/security/pkcs/SignerInfo;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-virtual {p1, p0, p2}, Lsun/security/pkcs/SignerInfo;->verify(Lsun/security/pkcs/PKCS7;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify()[Lsun/security/pkcs/SignerInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    return-object v0
.end method

.method public verify([B)[Lsun/security/pkcs/SignerInfo;
    .registers 8
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 622
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 623
    .local v1, "intResult":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/pkcs/SignerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    array-length v4, v4

    if-ge v0, v4, :cond_1c

    .line 625
    iget-object v4, p0, Lsun/security/pkcs/PKCS7;->signerInfos:[Lsun/security/pkcs/SignerInfo;

    aget-object v4, v4, v0

    invoke-virtual {p0, v4, p1}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;[B)Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 626
    .local v3, "signerInfo":Lsun/security/pkcs/SignerInfo;
    if-eqz v3, :cond_19

    .line 627
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 623
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 630
    .end local v3    # "signerInfo":Lsun/security/pkcs/SignerInfo;
    :cond_1c
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 632
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v2, v4, [Lsun/security/pkcs/SignerInfo;

    .line 633
    .local v2, "result":[Lsun/security/pkcs/SignerInfo;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 634
    return-object v2

    .line 636
    .end local v2    # "result":[Lsun/security/pkcs/SignerInfo;
    :cond_2c
    return-object v5
.end method
