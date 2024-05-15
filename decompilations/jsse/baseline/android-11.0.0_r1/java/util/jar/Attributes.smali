.class public Ljava/util/jar/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Attributes$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected whitelist core-platform-api test-api map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 64
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 65
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/jar/Attributes;)V
    .registers 3
    .param p1, "attr"    # Ljava/util/jar/Attributes;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    .line 85
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clear()V
    .registers 2

    .line 223
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    return-void
.end method

.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 2

    .line 291
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0, p0}, Ljava/util/jar/Attributes;-><init>(Ljava/util/jar/Attributes;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;

    .line 133
    invoke-virtual {p0, p1}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 278
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 237
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Ljava/util/jar/Attributes$Name;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 213
    .local p1, "attr":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-class v0, Ljava/util/jar/Attributes;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 216
    .local v1, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 217
    .end local v1    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_28
    return-void

    .line 214
    :cond_29
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, p1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o read(Ljava/util/jar/Manifest$FastInputStream;[B)V
    .registers 16
    .param p1, "is"    # Ljava/util/jar/Manifest$FastInputStream;
    .param p2, "lbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 373
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 376
    .local v2, "lastline":[B
    :goto_3
    invoke-virtual {p1, p2}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_e5

    .line 377
    const/4 v3, 0x0

    .line 378
    .local v3, "lineContinued":Z
    add-int/lit8 v4, v4, -0x1

    aget-byte v5, p2, v4

    const/16 v6, 0xa

    if-ne v5, v6, :cond_dd

    .line 381
    if-lez v4, :cond_20

    add-int/lit8 v5, v4, -0x1

    aget-byte v5, p2, v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_20

    .line 382
    add-int/lit8 v4, v4, -0x1

    .line 384
    :cond_20
    if-nez v4, :cond_24

    .line 385
    goto/16 :goto_e5

    .line 387
    :cond_24
    const/4 v5, 0x0

    .line 388
    .local v5, "i":I
    const/4 v6, 0x0

    aget-byte v7, p2, v6

    const-string v8, "UTF8"

    const/16 v9, 0x20

    if-ne v7, v9, :cond_5a

    .line 390
    if-eqz v0, :cond_52

    .line 393
    const/4 v3, 0x1

    .line 394
    array-length v7, v2

    add-int/2addr v7, v4

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    new-array v7, v7, [B

    .line 395
    .local v7, "buf":[B
    array-length v11, v2

    invoke-static {v2, v6, v7, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    array-length v11, v2

    add-int/lit8 v12, v4, -0x1

    invoke-static {p2, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    invoke-virtual {p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v10

    if-ne v10, v9, :cond_49

    .line 398
    move-object v2, v7

    .line 399
    goto :goto_3

    .line 401
    :cond_49
    new-instance v9, Ljava/lang/String;

    array-length v10, v7

    invoke-direct {v9, v7, v6, v10, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v9

    .line 402
    const/4 v2, 0x0

    .line 403
    .end local v7    # "buf":[B
    goto :goto_95

    .line 391
    :cond_52
    new-instance v6, Ljava/io/IOException;

    const-string v7, "misplaced continuation line"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 404
    :cond_5a
    :goto_5a
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    aget-byte v5, p2, v5

    const/16 v10, 0x3a

    const-string v11, "invalid header field"

    if-eq v5, v10, :cond_6e

    .line 405
    if-ge v7, v4, :cond_68

    move v5, v7

    goto :goto_5a

    .line 406
    :cond_68
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 409
    :cond_6e
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .restart local v5    # "i":I
    aget-byte v7, p2, v7

    if-ne v7, v9, :cond_d7

    .line 412
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v10, v5, -0x2

    invoke-direct {v7, p2, v6, v6, v10}, Ljava/lang/String;-><init>([BIII)V

    move-object v0, v7

    .line 413
    invoke-virtual {p1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v7

    if-ne v7, v9, :cond_8d

    .line 414
    sub-int v7, v4, v5

    new-array v2, v7, [B

    .line 415
    sub-int v7, v4, v5

    invoke-static {p2, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    goto/16 :goto_3

    .line 418
    :cond_8d
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v5

    invoke-direct {v6, p2, v5, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v1, v6

    .line 421
    :goto_95
    :try_start_95
    invoke-virtual {p0, v0, v1}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bc

    if-nez v3, :cond_bc

    .line 422
    const-string v6, "java.util.jar"

    invoke-static {v6}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Duplicate name in Manifest: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".\nEnsure that the manifest does not have duplicate entries, and\nthat blank lines separate individual sections in both your\nmanifest and in the META-INF/MANIFEST.MF entry in the jar file."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_95 .. :try_end_bc} :catch_bf

    .line 434
    :cond_bc
    nop

    .line 435
    .end local v3    # "lineContinued":Z
    .end local v5    # "i":I
    goto/16 :goto_3

    .line 432
    .restart local v3    # "lineContinued":Z
    .restart local v5    # "i":I
    :catch_bf
    move-exception v6

    .line 433
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid header field name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 410
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d7
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 379
    .end local v5    # "i":I
    :cond_dd
    new-instance v5, Ljava/io/IOException;

    const-string v6, "line too long"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 436
    .end local v3    # "lineContinued":Z
    :cond_e5
    :goto_e5
    return-void
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 230
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Ljava/util/jar/Attributes;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o write(Ljava/io/DataOutputStream;)V
    .registers 11
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "\r\n"

    if-eqz v1, :cond_51

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    .line 303
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v4}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_40

    .line 308
    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 309
    .local v5, "vb":[B
    new-instance v6, Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8, v8, v7}, Ljava/lang/String;-><init>([BIII)V

    move-object v4, v6

    .line 311
    .end local v5    # "vb":[B
    :cond_40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    invoke-static {v3}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 316
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_8

    .line 317
    :cond_51
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method greylist-max-o writeMain(Ljava/io/DataOutputStream;)V
    .registers 15
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    sget-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "vername":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "version":Ljava/lang/String;
    if-nez v1, :cond_16

    .line 333
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v2}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    :cond_16
    const-string v2, ": "

    const-string v3, "\r\n"

    if-eqz v1, :cond_34

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 343
    :cond_34
    invoke-virtual {p0}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 344
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 345
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 346
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes$Name;

    invoke-virtual {v6}, Ljava/util/jar/Attributes$Name;->toString()Ljava/lang/String;

    move-result-object v6

    .line 347
    .local v6, "name":Ljava/lang/String;
    if-eqz v1, :cond_88

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_88

    .line 349
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 350
    .local v7, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 353
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_78

    .line 354
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 355
    .local v9, "vb":[B
    new-instance v10, Ljava/lang/String;

    array-length v11, v9

    const/4 v12, 0x0

    invoke-direct {v10, v9, v12, v12, v11}, Ljava/lang/String;-><init>([BIII)V

    move-object v8, v10

    .line 357
    .end local v9    # "vb":[B
    :cond_78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-static {v7}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    .line 361
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 363
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "value":Ljava/lang/String;
    :cond_88
    goto :goto_3c

    .line 364
    :cond_89
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 365
    return-void
.end method
