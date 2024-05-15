.class public abstract Ljava/net/URLStreamHandler;
.super Ljava/lang/Object;
.source "URLStreamHandler.java"


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist core-platform-api test-api equals(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 395
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 396
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 399
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 395
    :goto_25
    return v0
.end method

.method protected whitelist core-platform-api test-api getDefaultPort()I
    .registers 2

    .line 378
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized whitelist core-platform-api test-api getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
    .registers 5
    .param p1, "u"    # Ljava/net/URL;

    monitor-enter p0

    .line 469
    :try_start_1
    iget-object v0, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_9

    .line 470
    iget-object v0, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 472
    .end local p0    # "this":Ljava/net/URLStreamHandler;
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "host":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2e

    if-eqz v2, :cond_19

    goto :goto_2c

    .line 477
    :cond_19
    :try_start_19
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_1d
    .catch Ljava/net/UnknownHostException; {:try_start_19 .. :try_end_1d} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1d} :catch_26
    .catchall {:try_start_19 .. :try_end_1d} :catchall_2e

    :try_start_1d
    iput-object v2, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_1f
    .catch Ljava/net/UnknownHostException; {:try_start_1d .. :try_end_1f} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_1d .. :try_end_1f} :catch_26
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2e

    .line 482
    nop

    .line 484
    :try_start_20
    iget-object v1, p1, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 478
    :catch_24
    move-exception v2

    goto :goto_2a

    .line 480
    :catch_26
    move-exception v2

    .line 481
    .local v2, "se":Ljava/lang/SecurityException;
    monitor-exit p0

    return-object v1

    .line 478
    .end local v2    # "se":Ljava/lang/SecurityException;
    .restart local p0    # "this":Ljava/net/URLStreamHandler;
    :catch_29
    move-exception v2

    .line 479
    .local v2, "ex":Ljava/net/UnknownHostException;
    :goto_2a
    monitor-exit p0

    return-object v1

    .line 474
    .end local v2    # "ex":Ljava/net/UnknownHostException;
    .end local p0    # "this":Ljava/net/URLStreamHandler;
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-object v1

    .line 468
    .end local v0    # "host":Ljava/lang/String;
    .end local p1    # "u":Ljava/net/URL;
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected whitelist core-platform-api test-api hashCode(Ljava/net/URL;)I
    .registers 5
    .param p1, "u"    # Ljava/net/URL;

    .line 413
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 414
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 415
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 416
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 417
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 418
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 419
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 413
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 5
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 497
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 498
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 500
    :cond_19
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method protected abstract whitelist core-platform-api test-api openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected whitelist core-platform-api test-api openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 31
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 124
    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, "protocol":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "authority":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "userInfo":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "host":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 129
    .local v6, "port":I
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "query":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "ref":Ljava/lang/String;
    const/4 v9, 0x0

    .line 136
    .local v9, "isRelPath":Z
    const/4 v12, 0x0

    .line 138
    .local v12, "queryOnly":Z
    const/4 v13, 0x0

    .line 143
    .local v13, "querySet":Z
    const/16 v14, 0x3f

    if-ge v1, v2, :cond_56

    .line 144
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 145
    .local v15, "queryStart":I
    if-ne v15, v1, :cond_36

    const/16 v19, 0x1

    goto :goto_38

    :cond_36
    const/16 v19, 0x0

    :goto_38
    move/from16 v12, v19

    .line 146
    const/4 v14, -0x1

    if-eq v15, v14, :cond_52

    if-ge v15, v2, :cond_52

    .line 147
    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v0, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 148
    if-le v2, v15, :cond_48

    .line 149
    move v2, v15

    .line 150
    .end local p4    # "limit":I
    .local v2, "limit":I
    :cond_48
    const/4 v14, 0x0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 152
    .end local p2    # "spec":Ljava/lang/String;
    .local v0, "spec":Ljava/lang/String;
    const/4 v13, 0x1

    move v14, v13

    move v13, v12

    move-object v12, v0

    goto :goto_59

    .line 157
    .end local v0    # "spec":Ljava/lang/String;
    .end local v2    # "limit":I
    .end local v15    # "queryStart":I
    .restart local p2    # "spec":Ljava/lang/String;
    .restart local p4    # "limit":I
    :cond_52
    move v14, v13

    move v13, v12

    move-object v12, v0

    goto :goto_59

    .line 143
    :cond_56
    move v14, v13

    move v13, v12

    move-object v12, v0

    .line 157
    .end local p2    # "spec":Ljava/lang/String;
    .end local p4    # "limit":I
    .restart local v2    # "limit":I
    .local v12, "spec":Ljava/lang/String;
    .local v13, "queryOnly":Z
    .local v14, "querySet":Z
    :goto_59
    const/4 v0, 0x0

    .line 165
    .local v0, "i":I
    const/4 v15, 0x0

    .line 167
    .local v15, "isUNCName":Z
    move/from16 p2, v0

    .end local v0    # "i":I
    .local p2, "i":I
    if-nez v15, :cond_22d

    add-int/lit8 v0, v2, -0x2

    if-gt v1, v0, :cond_22d

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object/from16 v21, v3

    const/16 v3, 0x2f

    .end local v3    # "authority":Ljava/lang/String;
    .local v21, "authority":Ljava/lang/String;
    if-ne v0, v3, :cond_224

    add-int/lit8 v0, v1, 0x1

    .line 168
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_21b

    .line 169
    add-int/lit8 v0, v1, 0x2

    .line 179
    .end local p3    # "start":I
    .local v0, "start":I
    move v1, v0

    .end local p2    # "i":I
    .local v1, "i":I
    :goto_78
    if-ge v1, v2, :cond_96

    .line 180
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move-object/from16 v22, v4

    .end local v4    # "userInfo":Ljava/lang/String;
    .local v22, "userInfo":Ljava/lang/String;
    const/16 v4, 0x23

    if-eq v3, v4, :cond_95

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_95

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_95

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_95

    .line 179
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v4, v22

    goto :goto_78

    .line 185
    :cond_95
    goto :goto_98

    .line 179
    .end local v22    # "userInfo":Ljava/lang/String;
    .restart local v4    # "userInfo":Ljava/lang/String;
    :cond_96
    move-object/from16 v22, v4

    .line 190
    .end local v4    # "userInfo":Ljava/lang/String;
    .restart local v22    # "userInfo":Ljava/lang/String;
    :goto_98
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 192
    .end local v5    # "host":Ljava/lang/String;
    .end local v21    # "authority":Ljava/lang/String;
    .local v3, "host":Ljava/lang/String;
    .local v4, "authority":Ljava/lang/String;
    const/16 v5, 0x40

    move/from16 p3, v0

    .end local v0    # "start":I
    .restart local p3    # "start":I
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 193
    .local v0, "ind":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_c1

    .line 194
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v0, v5, :cond_b3

    .line 196
    const/4 v5, 0x0

    .line 197
    .end local v22    # "userInfo":Ljava/lang/String;
    .local v5, "userInfo":Ljava/lang/String;
    const/4 v3, 0x0

    goto :goto_c2

    .line 199
    .end local v5    # "userInfo":Ljava/lang/String;
    .restart local v22    # "userInfo":Ljava/lang/String;
    :cond_b3
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 200
    .end local v22    # "userInfo":Ljava/lang/String;
    .local v19, "userInfo":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v19

    goto :goto_c2

    .line 203
    .end local v19    # "userInfo":Ljava/lang/String;
    .restart local v22    # "userInfo":Ljava/lang/String;
    :cond_c1
    const/4 v5, 0x0

    .line 205
    .end local v22    # "userInfo":Ljava/lang/String;
    .restart local v5    # "userInfo":Ljava/lang/String;
    :goto_c2
    if-eqz v3, :cond_1df

    .line 208
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 p2, v0

    .end local v0    # "ind":I
    .local p2, "ind":I
    if-lez v19, :cond_17d

    move-object/from16 v21, v5

    const/4 v0, 0x0

    .end local v5    # "userInfo":Ljava/lang/String;
    .local v21, "userInfo":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x5b

    if-ne v5, v0, :cond_176

    .line 209
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v5, v0

    move/from16 v23, v6

    .end local v6    # "port":I
    .end local p2    # "ind":I
    .local v5, "ind":I
    .local v23, "port":I
    const-string v6, "Invalid authority field: "

    move-object/from16 v24, v7

    const/4 v7, 0x2

    .end local v7    # "path":Ljava/lang/String;
    .local v24, "path":Ljava/lang/String;
    if-le v0, v7, :cond_161

    .line 211
    move-object v0, v3

    .line 212
    .local v0, "nhost":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    move-object/from16 v25, v8

    const/4 v8, 0x0

    .end local v8    # "query":Ljava/lang/String;
    .local v25, "query":Ljava/lang/String;
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 213
    nop

    .line 214
    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14a

    .line 219
    const/4 v7, -0x1

    .line 220
    .end local v23    # "port":I
    .local v7, "port":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    move/from16 p2, v7

    .end local v7    # "port":I
    .local p2, "port":I
    add-int/lit8 v7, v5, 0x1

    if-le v8, v7, :cond_141

    .line 221
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_12c

    .line 222
    add-int/lit8 v5, v5, 0x1

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    if-le v6, v7, :cond_128

    .line 225
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v5

    .end local p2    # "port":I
    .restart local v7    # "port":I
    goto :goto_144

    .line 224
    .end local v7    # "port":I
    .restart local p2    # "port":I
    :cond_128
    move/from16 v7, p2

    move v0, v5

    goto :goto_144

    .line 228
    :cond_12c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 220
    :cond_141
    move/from16 v7, p2

    move v0, v5

    .line 232
    .end local v5    # "ind":I
    .end local p2    # "port":I
    .local v0, "ind":I
    .restart local v7    # "port":I
    :goto_144
    move-object v5, v3

    move-object/from16 v19, v4

    move v6, v7

    goto/16 :goto_1f0

    .line 215
    .end local v7    # "port":I
    .local v0, "nhost":Ljava/lang/String;
    .restart local v5    # "ind":I
    .restart local v23    # "port":I
    :cond_14a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid host: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 233
    .end local v0    # "nhost":Ljava/lang/String;
    .end local v25    # "query":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    :cond_161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    .end local v5    # "ind":I
    .end local v23    # "port":I
    .end local v24    # "path":Ljava/lang/String;
    .restart local v6    # "port":I
    .local v7, "path":Ljava/lang/String;
    .local p2, "ind":I
    :cond_176
    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v6    # "port":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    goto :goto_185

    .end local v21    # "userInfo":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "query":Ljava/lang/String;
    .local v5, "userInfo":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    :cond_17d
    move-object/from16 v21, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 237
    .end local v5    # "userInfo":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .restart local v21    # "userInfo":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    :goto_185
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 238
    .end local p2    # "ind":I
    .local v0, "ind":I
    const/4 v5, -0x1

    .line 239
    .end local v23    # "port":I
    .local v5, "port":I
    if-ltz v0, :cond_1da

    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    if-le v6, v7, :cond_1d0

    .line 244
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 245
    .local v6, "firstPortChar":C
    const/16 v7, 0x30

    if-lt v6, v7, :cond_1b1

    const/16 v7, 0x39

    if-gt v6, v7, :cond_1b1

    .line 246
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v19, v4

    goto :goto_1d2

    .line 248
    :cond_1b1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "authority":Ljava/lang/String;
    .local v19, "authority":Ljava/lang/String;
    const-string v4, "invalid port: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 241
    .end local v6    # "firstPortChar":C
    .end local v19    # "authority":Ljava/lang/String;
    .restart local v4    # "authority":Ljava/lang/String;
    :cond_1d0
    move-object/from16 v19, v4

    .line 253
    .end local v4    # "authority":Ljava/lang/String;
    .restart local v19    # "authority":Ljava/lang/String;
    :goto_1d2
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move v6, v5

    move-object v5, v3

    goto :goto_1f0

    .line 239
    .end local v19    # "authority":Ljava/lang/String;
    .restart local v4    # "authority":Ljava/lang/String;
    :cond_1da
    move-object/from16 v19, v4

    .end local v4    # "authority":Ljava/lang/String;
    .restart local v19    # "authority":Ljava/lang/String;
    move v6, v5

    move-object v5, v3

    goto :goto_1f0

    .line 257
    .end local v19    # "authority":Ljava/lang/String;
    .end local v21    # "userInfo":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "query":Ljava/lang/String;
    .restart local v4    # "authority":Ljava/lang/String;
    .local v5, "userInfo":Ljava/lang/String;
    .local v6, "port":I
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    :cond_1df
    move/from16 p2, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v0    # "ind":I
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "userInfo":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .restart local v19    # "authority":Ljava/lang/String;
    .restart local v21    # "userInfo":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    .restart local p2    # "ind":I
    const-string v0, ""

    move-object v5, v0

    move/from16 v0, p2

    .line 259
    .end local v3    # "host":Ljava/lang/String;
    .end local v23    # "port":I
    .end local p2    # "ind":I
    .restart local v0    # "ind":I
    .local v5, "host":Ljava/lang/String;
    .restart local v6    # "port":I
    :goto_1f0
    const/4 v3, -0x1

    if-lt v6, v3, :cond_204

    .line 262
    move v3, v1

    .line 269
    .end local p3    # "start":I
    .local v3, "start":I
    const/4 v7, 0x0

    .line 270
    .end local v24    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    if-nez v14, :cond_1ff

    .line 271
    const/4 v8, 0x0

    move v0, v1

    move/from16 v23, v6

    move-object/from16 v25, v8

    move v8, v3

    .end local v25    # "query":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    goto :goto_240

    .line 270
    .end local v8    # "query":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    :cond_1ff
    move v0, v1

    move v8, v3

    move/from16 v23, v6

    goto :goto_240

    .line 260
    .end local v3    # "start":I
    .end local v7    # "path":Ljava/lang/String;
    .restart local v24    # "path":Ljava/lang/String;
    .restart local p3    # "start":I
    :cond_204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid port number :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    .end local v0    # "ind":I
    .end local v1    # "i":I
    .end local v19    # "authority":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "query":Ljava/lang/String;
    .local v4, "userInfo":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    .local v21, "authority":Ljava/lang/String;
    .local p2, "i":I
    :cond_21b
    move-object/from16 v22, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v4    # "userInfo":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .restart local v22    # "userInfo":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    goto :goto_237

    .line 167
    .end local v22    # "userInfo":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "query":Ljava/lang/String;
    .restart local v4    # "userInfo":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    :cond_224
    move-object/from16 v22, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v4    # "userInfo":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .restart local v22    # "userInfo":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    goto :goto_237

    .end local v21    # "authority":Ljava/lang/String;
    .end local v22    # "userInfo":Ljava/lang/String;
    .end local v23    # "port":I
    .end local v24    # "path":Ljava/lang/String;
    .end local v25    # "query":Ljava/lang/String;
    .local v3, "authority":Ljava/lang/String;
    .restart local v4    # "userInfo":Ljava/lang/String;
    .restart local v6    # "port":I
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "query":Ljava/lang/String;
    :cond_22d
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 276
    .end local v3    # "authority":Ljava/lang/String;
    .end local v4    # "userInfo":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "query":Ljava/lang/String;
    .restart local v21    # "authority":Ljava/lang/String;
    .restart local v22    # "userInfo":Ljava/lang/String;
    .restart local v23    # "port":I
    .restart local v24    # "path":Ljava/lang/String;
    .restart local v25    # "query":Ljava/lang/String;
    :goto_237
    move/from16 v0, p2

    move v8, v1

    move-object/from16 v19, v21

    move-object/from16 v21, v22

    move-object/from16 v7, v24

    .end local v22    # "userInfo":Ljava/lang/String;
    .end local v24    # "path":Ljava/lang/String;
    .end local p2    # "i":I
    .end local p3    # "start":I
    .local v0, "i":I
    .restart local v7    # "path":Ljava/lang/String;
    .local v8, "start":I
    .restart local v19    # "authority":Ljava/lang/String;
    .local v21, "userInfo":Ljava/lang/String;
    :goto_240
    if-nez v5, :cond_247

    .line 277
    const-string v5, ""

    move-object/from16 v22, v5

    goto :goto_249

    .line 276
    :cond_247
    move-object/from16 v22, v5

    .line 281
    .end local v5    # "host":Ljava/lang/String;
    .local v22, "host":Ljava/lang/String;
    :goto_249
    if-ge v8, v2, :cond_2b8

    .line 284
    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_2b1

    invoke-virtual {v12, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_25c

    goto :goto_2b1

    .line 286
    :cond_25c
    if-eqz v7, :cond_294

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_294

    .line 287
    const/4 v9, 0x1

    .line 288
    const/16 v1, 0x2f

    invoke-virtual {v7, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 289
    .local v3, "ind":I
    const-string v1, ""

    .line 290
    .local v1, "seperator":Ljava/lang/String;
    const/4 v4, -0x1

    if-ne v3, v4, :cond_274

    if-eqz v19, :cond_274

    .line 291
    const-string v1, "/"

    .line 292
    :cond_274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .end local v1    # "seperator":Ljava/lang/String;
    .end local v3    # "ind":I
    move/from16 v16, v9

    goto :goto_2ba

    .line 296
    :cond_294
    if-eqz v19, :cond_299

    const-string v1, "/"

    goto :goto_29b

    :cond_299
    const-string v1, ""

    .line 297
    .restart local v1    # "seperator":Ljava/lang/String;
    :goto_29b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move/from16 v16, v9

    goto :goto_2ba

    .line 285
    .end local v1    # "seperator":Ljava/lang/String;
    :cond_2b1
    :goto_2b1
    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move/from16 v16, v9

    goto :goto_2ba

    .line 281
    :cond_2b8
    move/from16 v16, v9

    .line 308
    .end local v9    # "isRelPath":Z
    .local v16, "isRelPath":Z
    :goto_2ba
    if-nez v7, :cond_2be

    .line 309
    const-string v7, ""

    .line 316
    :cond_2be
    :goto_2be
    const-string v1, "/./"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_2e2

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2be

    .line 320
    :cond_2e2
    const/4 v0, 0x0

    .line 321
    :goto_2e3
    const-string v1, "/../"

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_328

    .line 326
    if-nez v0, :cond_2f6

    .line 327
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 328
    const/4 v0, 0x0

    goto :goto_2e3

    .line 338
    :cond_2f6
    if-lez v0, :cond_325

    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x2f

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_325

    .line 339
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_325

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    const/4 v0, 0x0

    goto :goto_2e3

    .line 343
    :cond_325
    add-int/lit8 v0, v0, 0x3

    goto :goto_2e3

    .line 347
    :cond_328
    :goto_328
    const-string v1, "/.."

    invoke-virtual {v7, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34c

    .line 348
    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 349
    add-int/lit8 v1, v0, -0x1

    const/16 v3, 0x2f

    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    move v2, v1

    if-ltz v1, :cond_347

    .line 350
    add-int/lit8 v1, v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_328

    .line 349
    :cond_347
    move/from16 v20, v0

    move/from16 v24, v2

    goto :goto_350

    .line 347
    :cond_34c
    move/from16 v20, v0

    move/from16 v24, v2

    .line 356
    .end local v0    # "i":I
    .end local v2    # "limit":I
    .local v20, "i":I
    .local v24, "limit":I
    :goto_350
    const-string v0, "./"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_363

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_363

    .line 357
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 360
    :cond_363
    const-string v0, "/."

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_377

    .line 361
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_379

    .line 360
    :cond_377
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    :goto_379
    const-string v0, "?"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38d

    .line 365
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_38f

    .line 364
    :cond_38d
    move-object/from16 v17, v7

    .line 368
    .end local v7    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    :goto_38f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object/from16 v3, v22

    move/from16 v4, v23

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v7, v17

    move/from16 v18, v8

    .end local v8    # "start":I
    .local v18, "start":I
    move-object/from16 v8, v25

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method protected whitelist core-platform-api test-api sameFile(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 7
    .param p1, "u1"    # Ljava/net/URL;
    .param p2, "u2"    # Ljava/net/URL;

    .line 435
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_20

    .line 436
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 437
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 438
    :cond_1f
    return v2

    .line 441
    :cond_20
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_3f

    .line 442
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 443
    :cond_3e
    return v2

    .line 447
    :cond_3f
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4b

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_51

    :cond_4b
    iget-object v0, p1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    .line 448
    .local v0, "port1":I
    :goto_51
    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v3

    if-eq v3, v1, :cond_5c

    invoke-virtual {p2}, Ljava/net/URL;->getPort()I

    move-result v1

    goto :goto_62

    :cond_5c
    iget-object v1, p2, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v1}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v1

    .line 449
    .local v1, "port2":I
    :goto_62
    if-eq v0, v1, :cond_65

    .line 450
    return v2

    .line 453
    :cond_65
    invoke-virtual {p0, p1, p2}, Ljava/net/URLStreamHandler;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 454
    return v2

    .line 456
    :cond_6c
    const/4 v2, 0x1

    return v2
.end method

.method protected whitelist core-platform-api test-api setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 600
    move-object/from16 v0, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    const/4 v1, 0x0

    .line 601
    .local v1, "authority":Ljava/lang/String;
    const/4 v2, 0x0

    .line 602
    .local v2, "userInfo":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v0, :cond_45

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_45

    .line 603
    if-ne v10, v4, :cond_16

    move-object v5, v0

    goto :goto_2a

    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2a
    move-object v1, v5

    .line 604
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 605
    .local v5, "at":I
    if-eq v5, v4, :cond_41

    .line 606
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 607
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    .end local p3    # "host":Ljava/lang/String;
    .local v0, "host":Ljava/lang/String;
    goto :goto_48

    .line 605
    .end local v0    # "host":Ljava/lang/String;
    .restart local p3    # "host":Ljava/lang/String;
    :cond_41
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    goto :goto_48

    .line 614
    .end local v5    # "at":I
    :cond_45
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    .end local v1    # "authority":Ljava/lang/String;
    .end local v2    # "userInfo":Ljava/lang/String;
    .end local p3    # "host":Ljava/lang/String;
    .local v12, "host":Ljava/lang/String;
    .local v13, "authority":Ljava/lang/String;
    .local v14, "userInfo":Ljava/lang/String;
    :goto_48
    const/4 v0, 0x0

    .line 615
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 616
    .local v1, "query":Ljava/lang/String;
    if-eqz v11, :cond_68

    .line 617
    const/16 v2, 0x3f

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 618
    .local v2, "q":I
    if-eq v2, v4, :cond_62

    .line 619
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 620
    invoke-virtual {v11, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move-object/from16 v16, v1

    goto :goto_6b

    .line 622
    :cond_62
    move-object/from16 v0, p5

    move-object v15, v0

    move-object/from16 v16, v1

    goto :goto_6b

    .line 616
    .end local v2    # "q":I
    :cond_68
    move-object v15, v0

    move-object/from16 v16, v1

    .line 624
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "query":Ljava/lang/String;
    .local v15, "path":Ljava/lang/String;
    .local v16, "query":Ljava/lang/String;
    :goto_6b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    move/from16 v4, p4

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Ljava/net/URLStreamHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method protected whitelist core-platform-api test-api setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "authority"    # Ljava/lang/String;
    .param p6, "userInfo"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "query"    # Ljava/lang/String;
    .param p9, "ref"    # Ljava/lang/String;

    .line 569
    move-object v9, p1

    iget-object v0, v9, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    move-object v10, p0

    if-ne v10, v0, :cond_1b

    .line 574
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void

    .line 570
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "handler for url different from this handler"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist core-platform-api test-api toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .registers 6
    .param p1, "u"    # Ljava/net/URL;

    .line 513
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 514
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 515
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 516
    :cond_25
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 517
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_34
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 520
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 522
    :cond_45
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 523
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 527
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 531
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_79
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, "fileAndQuery":Ljava/lang/String;
    if-eqz v2, :cond_82

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    :cond_82
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_94

    .line 540
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
