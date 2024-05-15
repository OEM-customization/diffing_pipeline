.class public final Lcom/android/org/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1ba5daf1d5fc5de0L


# instance fields
.field private final transient greylist mContext:J

.field private transient greylist-max-o mHashCode:Ljava/lang/Integer;

.field private final greylist-max-o notAfter:Ljava/util/Date;

.field private final greylist-max-o notBefore:Ljava/util/Date;


# direct methods
.method constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 70
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 73
    invoke-static {p1, p2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notBefore(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 74
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notAfter(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    .line 75
    return-void
.end method

.method private constructor greylist-max-o <init>(JLjava/util/Date;Ljava/util/Date;)V
    .registers 5
    .param p1, "ctx"    # J
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;

    .line 78
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 80
    iput-object p3, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 81
    iput-object p4, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    .line 82
    return-void
.end method

.method private static greylist-max-o alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p0, "altNameArray"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 518
    if-nez p0, :cond_4

    .line 519
    const/4 v0, 0x0

    return-object v0

    .line 522
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 524
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 523
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 527
    .end local v1    # "i":I
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 196
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_8

    .line 197
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    return-object v0

    .line 198
    :cond_8
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_15

    .line 199
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0

    .line 201
    :cond_15
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Only X.509 certificates are supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 125
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_3d
    .catchall {:try_start_6 .. :try_end_e} :catchall_3b

    .line 129
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 130
    nop

    .line 132
    if-nez v1, :cond_1a

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 138
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    array-length v4, v1

    if-ge v3, v4, :cond_3a

    .line 141
    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2d

    .line 142
    goto :goto_37

    .line 144
    :cond_2d
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v5, v1, v3

    invoke-direct {v4, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 146
    .end local v3    # "i":I
    :cond_3a
    return-object v2

    .line 129
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    :catchall_3b
    move-exception v1

    goto :goto_44

    .line 126
    :catch_3d
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3e
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_44
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 130
    throw v1
.end method

.method public static greylist-max-o fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 175
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_35
    .catchall {:try_start_6 .. :try_end_e} :catchall_33

    .line 180
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 181
    nop

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    array-length v4, v1

    if-ge v3, v4, :cond_32

    .line 186
    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_25

    .line 187
    goto :goto_2f

    .line 189
    :cond_25
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v5, v1, v3

    invoke-direct {v4, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 191
    .end local v3    # "i":I
    :cond_32
    return-object v2

    .line 180
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    :catchall_33
    move-exception v1

    goto :goto_3c

    .line 177
    :catch_35
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    :try_start_36
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_33

    .line 180
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_3c
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 181
    throw v1
.end method

.method public static greylist-max-o fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 4
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_9
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 113
    :catch_a
    move-exception v0

    .line 114
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static greylist-max-o fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 97
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_bio(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    .line 98
    .local v1, "certCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 99
    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 99
    return-object v3

    .line 101
    :cond_19
    :try_start_19
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 105
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 101
    return-object v3

    .line 105
    .end local v1    # "certCtx":J
    :catchall_22
    move-exception v1

    goto :goto_2b

    .line 102
    :catch_24
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 106
    throw v1
.end method

.method public static greylist fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 156
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    .line 157
    .local v1, "certCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 158
    const/4 v3, 0x0

    .line 164
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 158
    return-object v3

    .line 160
    :cond_19
    :try_start_19
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 164
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 160
    return-object v3

    .line 164
    .end local v1    # "certCtx":J
    :catchall_22
    move-exception v1

    goto :goto_2b

    .line 161
    :catch_24
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 165
    throw v1
.end method

.method private static greylist-max-o toDate(J)Ljava/util/Date;
    .registers 5
    .param p0, "asn1time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 85
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 86
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 87
    invoke-static {p0, p1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 398
    if-nez p2, :cond_b

    .line 399
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sig":Ljava/security/Signature;
    goto :goto_13

    .line 401
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 404
    .restart local v0    # "sig":Ljava/security/Signature;
    :goto_13
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 406
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 409
    return-void

    .line 407
    :cond_28
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 386
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_verify(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_b

    .line 391
    nop

    .line 392
    return-void

    .line 389
    :catch_b
    move-exception v0

    .line 390
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1}, Ljava/security/SignatureException;-><init>()V

    throw v1

    .line 387
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_12
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 257
    return-void
.end method

.method public whitelist core-platform-api test-api checkValidity(Ljava/util/Date;)V
    .registers 7
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    const-string v1, ")"

    const-string v2, " (compared to "

    if-gtz v0, :cond_45

    .line 267
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-ltz v0, :cond_19

    .line 271
    return-void

    .line 268
    :cond_19
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate expired at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_45
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate not valid until "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 544
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_17

    .line 545
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 547
    .local v0, "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    move-object v3, p0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->X509_cmp(JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1

    .line 550
    .end local v0    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_17
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 588
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 589
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_free(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_12

    .line 592
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 593
    nop

    .line 594
    return-void

    .line 592
    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 593
    throw v0
.end method

.method public whitelist core-platform-api test-api getBasicConstraints()I
    .registers 5

    .line 365
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, -0x1

    if-nez v0, :cond_c

    .line 366
    return v1

    .line 369
    :cond_c
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_pathlen(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    .line 370
    .local v0, "pathLen":I
    if-ne v0, v1, :cond_18

    .line 371
    const v1, 0x7fffffff

    return v1

    .line 374
    :cond_18
    return v0
.end method

.method public greylist-max-o getContext()J
    .registers 3

    .line 569
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 208
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v3, 0x0

    .line 216
    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 218
    const/4 v1, 0x0

    return-object v1

    .line 221
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 379
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 509
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_xkusage(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "extUsage":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 511
    const/4 v1, 0x0

    return-object v1

    .line 514
    :cond_a
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .line 226
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_ext_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 538
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 285
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIssuerUniqueID()[Z
    .registers 3

    .line 339
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_issuerUID(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 497
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_issuer_name(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 498
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api getKeyUsage()[Z
    .registers 5

    .line 349
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_kusage(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    .line 350
    .local v0, "kusage":[Z
    if-nez v0, :cond_a

    .line 351
    const/4 v1, 0x0

    return-object v1

    .line 354
    :cond_a
    array-length v1, v0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_10

    .line 355
    return-object v0

    .line 358
    :cond_10
    new-array v1, v2, [Z

    .line 359
    .local v1, "resized":[Z
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    return-object v1
.end method

.method public whitelist core-platform-api test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 232
    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v3, 0x1

    .line 240
    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 242
    const/4 v1, 0x0

    return-object v1

    .line 245
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api getNotAfter()Ljava/util/Date;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getNotBefore()Ljava/util/Date;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPublicKey()Ljava/security/PublicKey;
    .registers 5

    .line 472
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_pubkey(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 473
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v1

    .line 475
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_10
    move-exception v0

    goto :goto_14

    .line 474
    :catch_12
    move-exception v0

    .line 476
    nop

    .line 479
    :goto_14
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_pubkey_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "oid":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    .line 482
    .local v1, "encoded":[B
    :try_start_20
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 483
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_2d} :catch_30
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_20 .. :try_end_2d} :catch_2e

    return-object v3

    .line 485
    .end local v2    # "kf":Ljava/security/KeyFactory;
    :catch_2e
    move-exception v2

    goto :goto_32

    .line 484
    :catch_30
    move-exception v2

    .line 486
    nop

    .line 492
    :goto_32
    new-instance v2, Lcom/android/org/conscrypt/X509PublicKey;

    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    return-object v2
.end method

.method public whitelist core-platform-api test-api getSerialNumber()Ljava/math/BigInteger;
    .registers 4

    .line 280
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_serialNumber(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSigAlgName()Ljava/lang/String;
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "oid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 318
    return-object v1

    .line 320
    :cond_b
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_12

    .line 322
    return-object v1

    .line 324
    :cond_12
    return-object v0
.end method

.method public whitelist core-platform-api test-api getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 329
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSigAlgParams()[B
    .registers 3

    .line 334
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSignature()[B
    .registers 3

    .line 310
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_signature(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 532
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLcom/android/org/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSubjectDN()Ljava/security/Principal;
    .registers 2

    .line 290
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSubjectUniqueID()[Z
    .registers 3

    .line 344
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_subjectUID(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 503
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_subject_name(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 504
    .local v0, "subject":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 305
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_cert_info_enc(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getVersion()I
    .registers 3

    .line 275
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_version(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api hasUnsupportedCriticalExtension()Z
    .registers 3

    .line 250
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 556
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 558
    :cond_9
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    .line 559
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 13

    .line 458
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 459
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v10

    .line 461
    .local v10, "bioCtx":J
    :try_start_9
    iget-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide v1, v10

    move-object v5, p0

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->X509_print_ex(JJLcom/android/org/conscrypt/OpenSSLX509Certificate;JJ)V

    .line 462
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1c

    .line 464
    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 462
    return-object v1

    .line 464
    :catchall_1c
    move-exception v1

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 465
    throw v1
.end method

.method public whitelist core-platform-api test-api verify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 414
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_f

    .line 415
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 416
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 417
    return-void

    .line 420
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_f
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public whitelist core-platform-api test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public whitelist core-platform-api test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 436
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_13

    instance-of v0, p2, Lcom/android/org/conscrypt/OpenSSLProvider;

    if-eqz v0, :cond_13

    .line 437
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 438
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 439
    return-void

    .line 443
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_13
    if-nez p2, :cond_1e

    .line 444
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .local v0, "sig":Ljava/security/Signature;
    goto :goto_26

    .line 446
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 449
    .restart local v0    # "sig":Ljava/security/Signature;
    :goto_26
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 451
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 454
    return-void

    .line 452
    :cond_3b
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o withDeletedExtension(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 7
    .param p1, "oid"    # Ljava/lang/String;

    .line 580
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_dup(JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(JLjava/util/Date;Ljava/util/Date;)V

    .line 581
    .local v0, "copy":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v1

    invoke-static {v1, v2, v0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_delete_ext(JLcom/android/org/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)V

    .line 582
    return-object v0
.end method
