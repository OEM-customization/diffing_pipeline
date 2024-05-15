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
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 70
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;)V
    .registers 2
    .param p1, "-this0"    # Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
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

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
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

.method generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 13
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

    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/4 v10, 0x0

    .line 72
    if-nez p1, :cond_c

    .line 73
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v9, "inStream == null"

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 76
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    .line 77
    .local v6, "markable":Z
    if-eqz v6, :cond_1a

    .line 78
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 81
    :cond_1a
    new-instance v7, Ljava/io/PushbackInputStream;

    const/16 v8, 0x40

    invoke-direct {v7, p1, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 83
    .local v7, "pbis":Ljava/io/PushbackInputStream;
    :try_start_21
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    array-length v8, v8

    new-array v0, v8, [B

    .line 85
    .local v0, "buffer":[B
    invoke-virtual {v7, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v5

    .line 86
    .local v5, "len":I
    if-gez v5, :cond_43

    .line 88
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v9, "inStream is empty"

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_37} :catch_37

    .line 114
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catch_37
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_3d

    .line 117
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_8f

    .line 121
    :cond_3d
    :goto_3d
    new-instance v8, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v8, v2}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v5    # "len":I
    :cond_43
    const/4 v8, 0x0

    :try_start_44
    invoke-virtual {v7, v0, v8, v5}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 92
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6e

    .line 93
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    array-length v8, v8

    if-ne v5, v8, :cond_7f

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 94
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 95
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6a

    .line 96
    return-object v10

    .line 98
    :cond_6a
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_6e
    const/4 v8, 0x4

    aget-byte v8, v0, v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8a

    .line 106
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_84

    .line 108
    return-object v10

    .line 100
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_7f
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 110
    .restart local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_84
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 112
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_8a
    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_8d} :catch_37

    move-result-object v8

    return-object v8

    .line 118
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_8f
    move-exception v3

    .local v3, "ignored":Ljava/io/IOException;
    goto :goto_3d
.end method

.method generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 15
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/16 v12, 0x40

    .line 127
    if-nez p1, :cond_d

    .line 128
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v11, "inStream == null"

    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 131
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v10

    if-nez v10, :cond_22

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_18

    move-result-object v10

    return-object v10

    .line 134
    :catch_18
    move-exception v4

    .line 135
    .local v4, "e":Ljava/io/IOException;
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v11, "Problem reading input stream"

    invoke-direct {v10, v11, v4}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 138
    .end local v4    # "e":Ljava/io/IOException;
    :cond_22
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v8

    .line 139
    .local v8, "markable":Z
    if-eqz v8, :cond_2b

    .line 140
    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    .line 144
    :cond_2b
    new-instance v9, Ljava/io/PushbackInputStream;

    invoke-direct {v9, p1, v12}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 146
    .local v9, "pbis":Ljava/io/PushbackInputStream;
    :try_start_30
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v10

    array-length v10, v10

    new-array v0, v10, [B

    .line 148
    .local v0, "buffer":[B
    invoke-virtual {v9, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v7

    .line 149
    .local v7, "len":I
    if-gez v7, :cond_52

    .line 151
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string/jumbo v11, "inStream is empty"

    invoke-direct {v10, v11}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_46} :catch_46

    .line 163
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    :catch_46
    move-exception v5

    .line 164
    .local v5, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_4c

    .line 166
    :try_start_49
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_77

    .line 170
    :cond_4c
    :goto_4c
    new-instance v10, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v10, v5}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 153
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v7    # "len":I
    :cond_52
    const/4 v10, 0x0

    :try_start_53
    invoke-virtual {v9, v0, v10, v7}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 155
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v10

    array-length v10, v10

    if-ne v7, v10, :cond_6c

    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->-get0()[B

    move-result-object v10

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_6c

    .line 156
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v10

    return-object v10

    .line 160
    :cond_6c
    const/4 v10, 0x4

    aget-byte v10, v0, v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_79

    .line 161
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_75} :catch_46

    move-result-object v10

    return-object v10

    .line 167
    .end local v0    # "buffer":[B
    .end local v7    # "len":I
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v6

    .local v6, "ignored":Ljava/io/IOException;
    goto :goto_4c

    .line 177
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ignored":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v7    # "len":I
    :cond_79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_7e
    if-eqz v8, :cond_83

    .line 185
    invoke-virtual {p1, v12}, Ljava/io/InputStream;->mark(I)V

    .line 189
    :cond_83
    :try_start_83
    invoke-virtual {p0, v9}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_83 .. :try_end_8a} :catch_8d

    .line 205
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    :goto_8a
    if-nez v1, :cond_7e

    .line 207
    return-object v2

    .line 191
    :catch_8d
    move-exception v3

    .line 196
    .local v3, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v8, :cond_93

    .line 198
    :try_start_90
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_95

    .line 203
    :cond_93
    :goto_93
    const/4 v1, 0x0

    .restart local v1    # "c":Ljava/lang/Object;, "TT;"
    goto :goto_8a

    .line 199
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    :catch_95
    move-exception v6

    .restart local v6    # "ignored":Ljava/io/IOException;
    goto :goto_93
.end method
