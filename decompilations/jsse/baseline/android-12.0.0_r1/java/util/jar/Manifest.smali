.class public Ljava/util/jar/Manifest;
.super Ljava/lang/Object;
.source "Manifest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Manifest$FastInputStream;
    }
.end annotation


# instance fields
.field private greylist-max-o attr:Ljava/util/jar/Attributes;

.field private greylist-max-o entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 60
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 69
    invoke-virtual {p0, p1}, Ljava/util/jar/Manifest;->read(Ljava/io/InputStream;)V

    .line 70
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/jar/Manifest;)V
    .registers 4
    .param p1, "man"    # Ljava/util/jar/Manifest;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/jar/Attributes;

    invoke-direct {v0}, Ljava/util/jar/Attributes;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 78
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Attributes;->putAll(Ljava/util/Map;)V

    .line 79
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method static greylist-max-o make72Safe(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p0, "line"    # Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 174
    .local v0, "length":I
    const/16 v1, 0x48

    if-le v0, v1, :cond_18

    .line 175
    const/16 v1, 0x46

    .line 176
    .local v1, "index":I
    :goto_a
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_18

    .line 177
    const-string v2, "\r\n "

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v1, v1, 0x48

    .line 179
    add-int/lit8 v0, v0, 0x3

    goto :goto_a

    .line 182
    .end local v1    # "index":I
    :cond_18
    return-void
.end method

.method private greylist-max-o parseName([BI)Ljava/lang/String;
    .registers 7
    .param p1, "lbuf"    # [B
    .param p2, "len"    # I

    .line 265
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_46

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_46

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    .line 266
    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_46

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Ljava/util/jar/Manifest;->toLower(I)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_46

    const/4 v0, 0x4

    aget-byte v0, p1, v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_46

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_46

    .line 269
    :try_start_3a
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, -0x6

    const-string v2, "UTF8"

    const/4 v3, 0x6

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_44} :catch_45

    return-object v0

    .line 271
    :catch_45
    move-exception v0

    .line 274
    :cond_46
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o toLower(I)I
    .registers 3
    .param p1, "c"    # I

    .line 278
    const/16 v0, 0x41

    if-lt p1, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_d

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0x61

    goto :goto_e

    :cond_d
    move v0, p1

    :goto_e
    return v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 133
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clear()V

    .line 134
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 135
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 315
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, p0}, Ljava/util/jar/Manifest;-><init>(Ljava/util/jar/Manifest;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 290
    instance-of v0, p1, Ljava/util/jar/Manifest;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 291
    move-object v0, p1

    check-cast v0, Ljava/util/jar/Manifest;

    .line 292
    .local v0, "m":Ljava/util/jar/Manifest;
    iget-object v2, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/jar/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    .line 293
    invoke-virtual {v0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    nop

    .line 292
    :goto_23
    return v1

    .line 295
    .end local v0    # "m":Ljava/util/jar/Manifest;
    :cond_24
    return v1
.end method

.method public whitelist test-api getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public whitelist test-api getEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api getMainAttributes()Ljava/util/jar/Attributes;
    .registers 2

    .line 87
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 303
    iget-object v0, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api read(Ljava/io/InputStream;)V
    .registers 18
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/jar/Manifest$FastInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v1, "fis":Ljava/util/jar/Manifest$FastInputStream;
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 199
    .local v3, "lbuf":[B
    iget-object v4, v0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v4, v1, v3}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[B)V

    .line 201
    const/4 v4, 0x0

    .local v4, "ecount":I
    const/4 v5, 0x0

    .line 203
    .local v5, "acount":I
    const/4 v6, 0x2

    .line 206
    .local v6, "asize":I
    const/4 v7, 0x0

    .line 207
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    .line 208
    .local v8, "skipEmptyLines":Z
    const/4 v9, 0x0

    .line 210
    .local v9, "lastline":[B
    :goto_18
    invoke-virtual {v1, v3}, Ljava/util/jar/Manifest$FastInputStream;->readLine([B)I

    move-result v10

    move v11, v10

    .local v11, "len":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_af

    .line 211
    add-int/lit8 v11, v11, -0x1

    aget-byte v10, v3, v11

    const/16 v12, 0xa

    if-ne v10, v12, :cond_a7

    .line 214
    if-lez v11, :cond_34

    add-int/lit8 v10, v11, -0x1

    aget-byte v10, v3, v10

    const/16 v12, 0xd

    if-ne v10, v12, :cond_34

    .line 215
    add-int/lit8 v11, v11, -0x1

    .line 217
    :cond_34
    if-nez v11, :cond_39

    if-eqz v8, :cond_39

    .line 218
    goto :goto_18

    .line 220
    :cond_39
    const/4 v8, 0x0

    .line 222
    const/16 v10, 0x20

    const/4 v12, 0x0

    if-nez v7, :cond_5e

    .line 223
    invoke-direct {v0, v3, v11}, Ljava/util/jar/Manifest;->parseName([BI)Ljava/lang/String;

    move-result-object v7

    .line 224
    if-eqz v7, :cond_56

    .line 227
    invoke-virtual {v1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v13

    if-ne v13, v10, :cond_81

    .line 229
    add-int/lit8 v10, v11, -0x6

    new-array v9, v10, [B

    .line 230
    add-int/lit8 v10, v11, -0x6

    const/4 v13, 0x6

    invoke-static {v3, v13, v9, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    goto :goto_18

    .line 225
    :cond_56
    new-instance v10, Ljava/io/IOException;

    const-string v12, "invalid manifest format"

    invoke-direct {v10, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 235
    :cond_5e
    array-length v13, v9

    add-int/2addr v13, v11

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    new-array v13, v13, [B

    .line 236
    .local v13, "buf":[B
    array-length v15, v9

    invoke-static {v9, v12, v13, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    array-length v15, v9

    add-int/lit8 v12, v11, -0x1

    invoke-static {v3, v14, v13, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    invoke-virtual {v1}, Ljava/util/jar/Manifest$FastInputStream;->peek()B

    move-result v12

    if-ne v12, v10, :cond_76

    .line 240
    move-object v9, v13

    .line 241
    goto :goto_18

    .line 243
    :cond_76
    new-instance v10, Ljava/lang/String;

    array-length v12, v13

    const-string v14, "UTF8"

    const/4 v15, 0x0

    invoke-direct {v10, v13, v15, v12, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v7, v10

    .line 244
    const/4 v9, 0x0

    .line 246
    .end local v13    # "buf":[B
    :cond_81
    invoke-virtual {v0, v7}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v10

    .line 247
    .local v10, "attr":Ljava/util/jar/Attributes;
    if-nez v10, :cond_92

    .line 248
    new-instance v12, Ljava/util/jar/Attributes;

    invoke-direct {v12, v6}, Ljava/util/jar/Attributes;-><init>(I)V

    move-object v10, v12

    .line 249
    iget-object v12, v0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v12, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_92
    invoke-virtual {v10, v1, v3}, Ljava/util/jar/Attributes;->read(Ljava/util/jar/Manifest$FastInputStream;[B)V

    .line 252
    add-int/lit8 v4, v4, 0x1

    .line 253
    invoke-virtual {v10}, Ljava/util/jar/Attributes;->size()I

    move-result v12

    add-int/2addr v5, v12

    .line 257
    const/4 v12, 0x2

    div-int v13, v5, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 259
    const/4 v7, 0x0

    .line 260
    const/4 v8, 0x1

    .line 261
    .end local v10    # "attr":Ljava/util/jar/Attributes;
    goto/16 :goto_18

    .line 212
    :cond_a7
    new-instance v10, Ljava/io/IOException;

    const-string v12, "manifest line too long"

    invoke-direct {v10, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 262
    :cond_af
    return-void
.end method

.method public whitelist test-api write(Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget-object v1, p0, Ljava/util/jar/Manifest;->attr:Ljava/util/jar/Attributes;

    invoke-virtual {v1, v0}, Ljava/util/jar/Attributes;->writeMain(Ljava/io/DataOutputStream;)V

    .line 151
    iget-object v1, p0, Ljava/util/jar/Manifest;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;>;"
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 154
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 156
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_3d

    .line 157
    const-string v5, "UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 158
    .local v5, "vb":[B
    new-instance v6, Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x0

    invoke-direct {v6, v5, v8, v8, v7}, Ljava/lang/String;-><init>([BIII)V

    move-object v4, v6

    .line 160
    .end local v5    # "vb":[B
    :cond_3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-static {v3}, Ljava/util/jar/Manifest;->make72Safe(Ljava/lang/StringBuffer;)V

    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/Attributes;

    invoke-virtual {v5, v0}, Ljava/util/jar/Attributes;->write(Ljava/io/DataOutputStream;)V

    .line 165
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_14

    .line 166
    :cond_59
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 167
    return-void
.end method
