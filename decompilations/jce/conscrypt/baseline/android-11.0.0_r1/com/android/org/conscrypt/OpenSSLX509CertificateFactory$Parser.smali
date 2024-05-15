.class abstract Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 70
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;

    .line 70
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract greylist-max-o fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract greylist-max-o fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract greylist-max-o fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method greylist-max-o generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 10
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    if-eqz p1, :cond_86

    .line 76
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 77
    .local v0, "markable":Z
    if-eqz v0, :cond_10

    .line 78
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 81
    :cond_10
    new-instance v1, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 83
    .local v1, "pbis":Ljava/io/PushbackInputStream;
    :try_start_17
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    .line 85
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 86
    .local v3, "len":I
    if-ltz v3, :cond_70

    .line 90
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 92
    aget-byte v5, v2, v4

    const/16 v6, 0x2d

    const/4 v7, 0x0

    if-ne v5, v6, :cond_55

    .line 93
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_50

    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    .line 95
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4b

    .line 96
    return-object v7

    .line 98
    :cond_4b
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    nop

    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    goto :goto_55

    .line 100
    :cond_50
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 105
    :cond_55
    :goto_55
    const/4 v5, 0x4

    aget-byte v5, v2, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6b

    .line 106
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    .line 107
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_66

    .line 108
    return-object v7

    .line 110
    :cond_66
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 112
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_6b
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 88
    :cond_70
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    .end local p1    # "inStream":Ljava/io/InputStream;
    throw v4
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_78} :catch_78

    .line 114
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    .restart local v0    # "markable":Z
    .restart local v1    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_78
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_80

    .line 117
    :try_start_7b
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 119
    goto :goto_80

    .line 118
    :catch_7f
    move-exception v3

    .line 121
    :cond_80
    :goto_80
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v3, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 73
    .end local v0    # "markable":Z
    .end local v1    # "pbis":Ljava/io/PushbackInputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_86
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 9
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    if-eqz p1, :cond_90

    .line 131
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_e

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_87

    return-object v0

    .line 138
    :cond_e
    nop

    .line 140
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    .line 141
    .local v0, "markable":Z
    const/16 v1, 0x40

    if-eqz v0, :cond_1a

    .line 142
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 146
    :cond_1a
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 148
    .local v2, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1f
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [B

    .line 150
    .local v3, "buffer":[B
    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 151
    .local v4, "len":I
    if-ltz v4, :cond_71

    .line 155
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 157
    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_46

    # getter for: Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 162
    :cond_46
    const/4 v5, 0x4

    aget-byte v5, v3, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_51

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_50} :catch_79

    return-object v1

    .line 173
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    :cond_51
    nop

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_57
    if-eqz v0, :cond_5c

    .line 187
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 191
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_5c .. :try_end_63} :catch_64

    .line 206
    goto :goto_6e

    .line 193
    .end local v4    # "c":Ljava/lang/Object;, "TT;"
    :catch_64
    move-exception v4

    .line 198
    .local v4, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v0, :cond_6c

    .line 200
    :try_start_67
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 202
    goto :goto_6c

    .line 201
    :catch_6b
    move-exception v5

    .line 205
    :cond_6c
    :goto_6c
    const/4 v5, 0x0

    move-object v4, v5

    .line 207
    .local v4, "c":Ljava/lang/Object;, "TT;"
    :goto_6e
    if-nez v4, :cond_57

    .line 209
    return-object v3

    .line 153
    .local v3, "buffer":[B
    .local v4, "len":I
    :cond_71
    :try_start_71
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v5, "inStream is empty"

    invoke-direct {v1, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "markable":Z
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    .end local p1    # "inStream":Ljava/io/InputStream;
    throw v1
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_79

    .line 165
    .end local v3    # "buffer":[B
    .end local v4    # "len":I
    .restart local v0    # "markable":Z
    .restart local v2    # "pbis":Ljava/io/PushbackInputStream;
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    .restart local p1    # "inStream":Ljava/io/InputStream;
    :catch_79
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_81

    .line 168
    :try_start_7c
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 170
    goto :goto_81

    .line 169
    :catch_80
    move-exception v3

    .line 172
    :cond_81
    :goto_81
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v3, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 136
    .end local v0    # "markable":Z
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "pbis":Ljava/io/PushbackInputStream;
    :catch_87
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v2, "Problem reading input stream"

    invoke-direct {v1, v2, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :cond_90
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
