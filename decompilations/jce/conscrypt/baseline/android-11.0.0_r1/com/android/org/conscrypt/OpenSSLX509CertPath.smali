.class final Lcom/android/org/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    }
.end annotation


# static fields
.field private static final blacklist ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final blacklist PKCS7_MARKER:[B

.field private static final blacklist PUSHBACK_SIZE:I = 0x40

.field private static final whitelist serialVersionUID:J = -0x2d1724b280d2aac9L


# instance fields
.field private final blacklist mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 76
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->access$000(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 77
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->apiName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->access$000(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 75
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    .line 80
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void

    nop

    :array_2e
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/X509Certificate;>;"
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    .line 92
    return-void
.end method

.method static blacklist fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 257
    if-eqz p0, :cond_9

    .line 261
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 258
    :cond_9
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .registers 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLX509CertPath$Encoding:[I

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 236
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 238
    :cond_13
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1b
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method static blacklist fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 6
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 244
    if-eqz p0, :cond_24

    .line 248
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 249
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-eqz v0, :cond_d

    .line 253
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1

    .line 250
    :cond_d
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    :cond_24
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 190
    if-eqz p0, :cond_61

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_6b

    if-nez v0, :cond_9

    goto :goto_61

    .line 195
    :cond_9
    nop

    .line 197
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 198
    .local v0, "markable":Z
    const/16 v1, 0x40

    if-eqz v0, :cond_15

    .line 199
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 203
    :cond_15
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v2

    .line 205
    .local v1, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1b
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 207
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 208
    .local v3, "len":I
    if-ltz v3, :cond_4b

    .line 212
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 214
    sget-object v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v4, v4

    if-ne v3, v4, :cond_41

    sget-object v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 215
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v4

    .line 218
    :cond_41
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v4

    .line 210
    :cond_4b
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local p0    # "inStream":Ljava/io/InputStream;
    throw v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_53} :catch_53

    .line 219
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    .restart local v0    # "markable":Z
    .restart local v1    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p0    # "inStream":Ljava/io/InputStream;
    :catch_53
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_5b

    .line 222
    :try_start_56
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 224
    goto :goto_5b

    .line 223
    :catch_5a
    move-exception v3

    .line 226
    :cond_5b
    :goto_5b
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 191
    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_61
    :goto_61
    :try_start_61
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_6b

    return-object v0

    .line 193
    :catch_6b
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Problem reading input stream"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 11
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 148
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    .line 149
    .local v2, "markable":Z
    if-eqz v2, :cond_11

    .line 150
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 155
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J

    move-result-object v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_59
    .catchall {:try_start_11 .. :try_end_19} :catchall_57

    .line 165
    .local v3, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 166
    nop

    .line 168
    if-nez v3, :cond_29

    .line 169
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1

    .line 172
    :cond_29
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    array-length v5, v3

    sub-int/2addr v5, v1

    .local v5, "i":I
    :goto_31
    if-ltz v5, :cond_51

    .line 175
    aget-wide v6, v3, v5

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_3c

    .line 176
    goto :goto_47

    .line 179
    :cond_3c
    :try_start_3c
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v3, v5

    invoke-direct {v1, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_3c .. :try_end_46} :catch_4a

    .line 182
    nop

    .line 174
    :goto_47
    add-int/lit8 v5, v5, -0x1

    goto :goto_31

    .line 180
    :catch_4a
    move-exception v1

    .line 181
    .local v1, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 185
    .end local v1    # "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    .end local v5    # "i":I
    :cond_51
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v1, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1

    .line 165
    .end local v3    # "certRefs":[J
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    :catchall_57
    move-exception v1

    goto :goto_67

    .line 156
    :catch_59
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_61

    .line 159
    :try_start_5c
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60
    .catchall {:try_start_5c .. :try_end_5f} :catchall_57

    .line 161
    goto :goto_61

    .line 160
    :catch_60
    move-exception v3

    .line 163
    :cond_61
    :goto_61
    :try_start_61
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local v2    # "markable":Z
    .end local p0    # "inStream":Ljava/io/InputStream;
    throw v3
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_57

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local v2    # "markable":Z
    .restart local p0    # "inStream":Ljava/io/InputStream;
    :goto_67
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 166
    throw v1
.end method

.method private blacklist getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .registers 10
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 101
    .local v0, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v1, v0

    new-array v1, v1, [J

    .line 103
    .local v1, "certRefs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "j":I
    :goto_f
    if-ltz v3, :cond_3a

    .line 104
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 106
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    instance-of v6, v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v6, :cond_23

    .line 107
    move-object v6, v5

    check-cast v6, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aput-object v6, v0, v3

    goto :goto_2d

    .line 109
    :cond_23
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v6

    aput-object v6, v0, v3

    .line 112
    :goto_2d
    aget-object v6, v0, v3

    invoke-virtual {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 103
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 115
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_3a
    sget-object v2, Lcom/android/org/conscrypt/OpenSSLX509CertPath$1;->$SwitchMap$com$android$org$conscrypt$OpenSSLX509CertPath$Encoding:[I

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_54

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4c

    .line 119
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object v2

    return-object v2

    .line 121
    :cond_4c
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "Unknown encoding"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_54
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object v2

    return-object v2
.end method

.method static blacklist getEncodingsIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getEncoded(Ljava/lang/String;)[B
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 132
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 133
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-eqz v0, :cond_b

    .line 137
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v1

    return-object v1

    .line 134
    :cond_b
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api getEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method