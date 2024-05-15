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
.field private static final synthetic -com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I = null

.field private static final ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40

.field private static final serialVersionUID:J = -0x2d1724b280d2aac9L


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->values()[Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_25

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-com-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues:[I

    return-object v0

    :catch_23
    move-exception v1

    goto :goto_20

    :catch_25
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 74
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->-get0(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 72
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    .line 78
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 37
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 40
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

.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/X509Certificate;>;"
    const-string/jumbo v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    .line 90
    return-void
.end method

.method static fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p0, :cond_b

    .line 252
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_b
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method private static fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .registers 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-getcom-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 232
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_16
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 230
    :pswitch_1b
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 226
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method static fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 6
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p0, :cond_b

    .line 239
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "inStream == null"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_b
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 243
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-nez v0, :cond_2b

    .line 244
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_2b
    invoke-static {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1
.end method

.method private static fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 10
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x40

    .line 184
    if-eqz p0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_1e

    .line 185
    :cond_a
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_14

    return-object v7

    .line 187
    :catch_14
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "Problem reading input stream"

    invoke-direct {v7, v8, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 191
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    .line 192
    .local v5, "markable":Z
    if-eqz v5, :cond_27

    .line 193
    invoke-virtual {p0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 197
    :cond_27
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-direct {v6, p0, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 199
    .local v6, "pbis":Ljava/io/PushbackInputStream;
    :try_start_2c
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v7, v7

    new-array v0, v7, [B

    .line 201
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 202
    .local v4, "len":I
    if-gez v4, :cond_4c

    .line 204
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v8, "inStream is empty"

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_40} :catch_40

    .line 213
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catch_40
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_46

    .line 216
    :try_start_43
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_71

    .line 220
    :cond_46
    :goto_46
    new-instance v7, Ljava/security/cert/CertificateException;

    invoke-direct {v7, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 206
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    :cond_4c
    const/4 v7, 0x0

    :try_start_4d
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 208
    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v7, v7

    if-ne v4, v7, :cond_67

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 209
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v7

    .line 212
    :cond_67
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_70} :catch_40

    return-object v7

    .line 217
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_71
    move-exception v3

    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_46
.end method

.method private static fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 13
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 146
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    .line 147
    .local v6, "markable":Z
    if-eqz v6, :cond_11

    .line 148
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/io/InputStream;->mark(I)V

    .line 153
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_28
    .catchall {:try_start_11 .. :try_end_18} :catchall_34

    move-result-object v1

    .line 163
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 166
    if-nez v1, :cond_3b

    .line 167
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v7

    .line 154
    .end local v1    # "certRefs":[J
    :catch_28
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_2e

    .line 157
    :try_start_2b
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_39
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    .line 161
    :cond_2e
    :goto_2e
    :try_start_2e
    new-instance v7, Ljava/security/cert/CertificateException;

    invoke-direct {v7, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_34

    .line 162
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_34
    move-exception v7

    .line 163
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 162
    throw v7

    .line 158
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_39
    move-exception v5

    .local v5, "ignored":Ljava/io/IOException;
    goto :goto_2e

    .line 171
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "ignored":Ljava/io/IOException;
    .restart local v1    # "certRefs":[J
    :cond_3b
    new-instance v2, Ljava/util/ArrayList;

    array-length v7, v1

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    array-length v7, v1

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_44
    if-ltz v4, :cond_5c

    .line 173
    aget-wide v8, v1, v4

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_51

    .line 172
    :goto_4e
    add-int/lit8 v4, v4, -0x1

    goto :goto_44

    .line 176
    :cond_51
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v8, v1, v4

    invoke-direct {v7, v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 179
    :cond_5c
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v7, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v7
.end method

.method private getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .registers 10
    .param p1, "encoding"    # Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 99
    .local v2, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v5, v2

    new-array v1, v5, [J

    .line 101
    .local v1, "certRefs":[J
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .local v4, "j":I
    :goto_f
    if-ltz v4, :cond_39

    .line 102
    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 104
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    instance-of v5, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_2e

    .line 105
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    aput-object v0, v2, v4

    .line 110
    :goto_21
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 101
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 107
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2e
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_21

    .line 113
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_39
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->-getcom-android-org-conscrypt-OpenSSLX509CertPath$EncodingSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_5a

    .line 119
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v6, "Unknown encoding"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :pswitch_4f
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object v5

    return-object v5

    .line 117
    :pswitch_54
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object v5

    return-object v5

    .line 113
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_4f
    .end packed-switch
.end method

.method static getEncodingsIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 6
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 131
    .local v0, "enc":Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;
    if-nez v0, :cond_20

    .line 132
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_20
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/android/org/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v1

    return-object v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
