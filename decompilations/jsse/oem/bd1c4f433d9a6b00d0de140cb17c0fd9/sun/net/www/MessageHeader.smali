.class public Lsun/net/www/MessageHeader;
.super Ljava/lang/Object;
.source "MessageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/MessageHeader$HeaderIterator;
    }
.end annotation


# instance fields
.field private keys:[Ljava/lang/String;

.field private nkeys:I

.field private values:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lsun/net/www/MessageHeader;

    .prologue
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lsun/net/www/MessageHeader;)I
    .registers 2
    .param p0, "-this"    # Lsun/net/www/MessageHeader;

    .prologue
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    return v0
.end method

.method static synthetic -get2(Lsun/net/www/MessageHeader;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lsun/net/www/MessageHeader;

    .prologue
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->parseHeader(Ljava/io/InputStream;)V

    .line 55
    return-void
.end method

.method public static canonicalID(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x20

    .line 416
    if-nez p0, :cond_8

    .line 417
    const-string/jumbo v4, ""

    return-object v4

    .line 418
    :cond_8
    const/4 v2, 0x0

    .line 419
    .local v2, "st":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 420
    .local v1, "len":I
    const/4 v3, 0x0

    .line 422
    .local v3, "substr":Z
    :goto_e
    if-ge v2, v1, :cond_1e

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":I
    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1a

    .line 423
    if-gt v0, v5, :cond_1e

    .line 424
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    .line 425
    const/4 v3, 0x1

    goto :goto_e

    .line 427
    .end local v0    # "c":I
    :cond_1e
    :goto_1e
    if-ge v2, v1, :cond_30

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "c":I
    const/16 v4, 0x3e

    if-eq v0, v4, :cond_2c

    .line 428
    if-gt v0, v5, :cond_30

    .line 429
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    .line 430
    const/4 v3, 0x1

    goto :goto_1e

    .line 432
    .end local v0    # "c":I
    :cond_30
    if-eqz v3, :cond_36

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "id":Ljava/lang/String;
    :cond_36
    return-object p0
.end method

.method private grow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_c

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_32

    .line 348
    :cond_c
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    .line 349
    .local v0, "nk":[Ljava/lang/String;
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    .line 350
    .local v1, "nv":[Ljava/lang/String;
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 351
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_23
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    if-eqz v2, :cond_2e

    .line 353
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_2e
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    .line 355
    iput-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    .line 357
    .end local v0    # "nk":[Ljava/lang/String;
    .end local v1    # "nv":[Ljava/lang/String;
    :cond_32
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 307
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 308
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p1, v0, v1

    .line 309
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    aput-object p2, v0, v1

    .line 310
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    .line 311
    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 14
    .param p1, "excludeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p2, "include":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    monitor-enter p0

    .line 246
    const/4 v8, 0x0

    .line 247
    .local v8, "skipIt":Z
    :try_start_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v7, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v2, "i":I
    :goto_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4e

    .line 249
    if-eqz p1, :cond_24

    .line 252
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    array-length v9, p1

    if-ge v3, v9, :cond_24

    .line 253
    aget-object v9, p1, v3

    if-eqz v9, :cond_49

    .line 254
    aget-object v9, p1, v3

    iget-object v10, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 253
    if-eqz v9, :cond_49

    .line 255
    const/4 v8, 0x1

    .line 260
    .end local v3    # "j":I
    :cond_24
    if-nez v8, :cond_4c

    .line 261
    iget-object v9, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 262
    .local v6, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_3e

    .line 263
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .restart local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_3e
    iget-object v9, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_46

    goto :goto_9

    .end local v2    # "i":I
    .end local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_46
    move-exception v9

    monitor-exit p0

    throw v9

    .line 252
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v7    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 269
    .end local v3    # "j":I
    :cond_4c
    const/4 v8, 0x0

    goto :goto_9

    .line 273
    :cond_4e
    if-eqz p2, :cond_88

    .line 274
    :try_start_50
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 276
    .restart local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_7e

    .line 277
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .restart local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_7e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    .line 284
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_88
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "key$iterator":Ljava/util/Iterator;
    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 285
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_90

    .line 288
    .end local v4    # "key":Ljava/lang/String;
    :cond_aa
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_ad
    .catchall {:try_start_50 .. :try_end_ad} :catchall_46

    move-result-object v9

    monitor-exit p0

    return-object v9
.end method

.method public filterNTLMResponses(Ljava/lang/String;)Z
    .registers 9
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v1, v3, :cond_34

    .line 154
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 155
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_63

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_63

    .line 156
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NTLM "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 154
    if-eqz v3, :cond_63

    .line 157
    const/4 v0, 0x1

    .line 161
    :cond_34
    if-eqz v0, :cond_83

    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "j":I
    const/4 v1, 0x0

    :goto_38
    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v1, v3, :cond_7b

    .line 164
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 165
    const-string/jumbo v3, "Negotiate"

    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 166
    const-string/jumbo v3, "Kerberos"

    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 164
    if-eqz v3, :cond_66

    .line 163
    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 153
    .end local v2    # "j":I
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    .restart local v2    # "j":I
    :cond_66
    if-eq v1, v2, :cond_78

    .line 170
    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v4, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 171
    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v4, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 173
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 175
    :cond_7b
    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-eq v2, v3, :cond_83

    .line 176
    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 177
    const/4 v3, 0x1

    return v3

    .line 180
    .end local v2    # "j":I
    :cond_83
    return v5
.end method

.method public declared-synchronized findNextValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "foundV":Z
    if-nez p1, :cond_21

    .line 130
    :try_start_5
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v1, "i":I
    :cond_7
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_41

    .line 131
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_7

    .line 132
    if-eqz v0, :cond_19

    .line 133
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_43

    monitor-exit p0

    return-object v2

    .line 134
    :cond_19
    :try_start_19
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, p2, :cond_7

    .line 135
    const/4 v0, 0x1

    goto :goto_7

    .line 137
    .end local v1    # "i":I
    :cond_21
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .restart local v1    # "i":I
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_41

    .line 138
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 139
    if-eqz v0, :cond_39

    .line 140
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_43

    monitor-exit p0

    return-object v2

    .line 141
    :cond_39
    :try_start_39
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v2, v2, v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_43

    if-ne v2, p2, :cond_23

    .line 142
    const/4 v0, 0x1

    goto :goto_23

    :cond_41
    monitor-exit p0

    .line 143
    return-object v3

    .end local v1    # "i":I
    :catchall_43
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized findValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 85
    if-nez p1, :cond_16

    .line 86
    :try_start_4
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2c

    .line 87
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    .line 88
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 90
    .end local v0    # "i":I
    :cond_16
    :try_start_16
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2c

    .line 91
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 92
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2e

    monitor-exit p0

    return-object v1

    :cond_2c
    monitor-exit p0

    .line 94
    return-object v2

    .end local v0    # "i":I
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getHeaderNamesInList()Ljava/lang/String;
    .registers 4

    .prologue
    monitor-enter p0

    .line 61
    :try_start_1
    new-instance v1, Ljava/util/StringJoiner;

    const-string/jumbo v2, ","

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .local v1, "joiner":Ljava/util/StringJoiner;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_18

    .line 63
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 65
    :cond_18
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1e

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0    # "i":I
    .end local v1    # "joiner":Ljava/util/StringJoiner;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaders([Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "excludeList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 241
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lsun/net/www/MessageHeader;->filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKey(Ljava/lang/String;)I
    .registers 4
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 99
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 100
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_19

    .line 101
    if-eqz p1, :cond_3

    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v1

    .line 100
    if-eqz v1, :cond_3

    :cond_19
    monitor-exit p0

    .line 102
    return v0

    .line 103
    :cond_1b
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "i":I
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getKey(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    monitor-enter p0

    .line 107
    if-ltz p1, :cond_7

    :try_start_3
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-lt p1, v0, :cond_a

    :cond_7
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 108
    :cond_a
    :try_start_a
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "n"    # I

    .prologue
    monitor-enter p0

    .line 112
    if-ltz p1, :cond_7

    :try_start_3
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-lt p1, v0, :cond_a

    :cond_7
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 113
    :cond_a
    :try_start_a
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mergeHeader(Ljava/io/InputStream;)V
    .registers 14
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    if-nez p1, :cond_3

    .line 447
    return-void

    .line 448
    :cond_3
    const/16 v10, 0xa

    new-array v8, v10, [C

    .line 449
    .local v8, "s":[C
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 450
    .local v1, "firstc":I
    :goto_b
    const/16 v10, 0xa

    if-eq v1, v10, :cond_b3

    const/16 v10, 0xd

    if-eq v1, v10, :cond_b3

    if-ltz v1, :cond_b3

    .line 451
    const/4 v5, 0x0

    .line 452
    .local v5, "len":I
    const/4 v4, -0x1

    .line 454
    .local v4, "keyend":I
    const/16 v10, 0x20

    if-le v1, v10, :cond_3f

    const/4 v2, 0x1

    .line 451
    .local v2, "inKey":Z
    :goto_1c
    const/4 v10, 0x0

    .line 455
    const/4 v5, 0x1

    int-to-char v11, v1

    aput-char v11, v8, v10

    .line 457
    :goto_21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-ltz v0, :cond_80

    .line 458
    sparse-switch v0, :sswitch_data_b4

    .line 484
    :goto_2a
    array-length v10, v8

    if-lt v5, v10, :cond_38

    .line 485
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x2

    new-array v7, v10, [C

    .line 486
    .local v7, "ns":[C
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v10, v7, v11, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 487
    move-object v8, v7

    .line 489
    .end local v7    # "ns":[C
    :cond_38
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .local v6, "len":I
    int-to-char v10, v0

    aput-char v10, v8, v5

    move v5, v6

    .end local v6    # "len":I
    .restart local v5    # "len":I
    goto :goto_21

    .line 454
    .end local v0    # "c":I
    .end local v2    # "inKey":Z
    :cond_3f
    const/4 v2, 0x0

    .restart local v2    # "inKey":Z
    goto :goto_1c

    .line 460
    .restart local v0    # "c":I
    :sswitch_41
    if-eqz v2, :cond_46

    if-lez v5, :cond_46

    .line 461
    move v4, v5

    .line 462
    :cond_46
    const/4 v2, 0x0

    .line 463
    goto :goto_2a

    .line 465
    :sswitch_48
    const/16 v0, 0x20

    .line 468
    :sswitch_4a
    const/4 v2, 0x0

    .line 469
    goto :goto_2a

    .line 472
    :sswitch_4c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 473
    const/16 v10, 0xd

    if-ne v0, v10, :cond_64

    const/16 v10, 0xa

    if-ne v1, v10, :cond_64

    .line 474
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 475
    const/16 v10, 0xd

    if-ne v1, v10, :cond_64

    .line 476
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 478
    :cond_64
    const/16 v10, 0xa

    if-eq v1, v10, :cond_6c

    const/16 v10, 0xd

    if-ne v1, v10, :cond_79

    .line 493
    :cond_6c
    :goto_6c
    if-lez v5, :cond_82

    add-int/lit8 v10, v5, -0x1

    aget-char v10, v8, v10

    const/16 v11, 0x20

    if-gt v10, v11, :cond_82

    .line 494
    add-int/lit8 v5, v5, -0x1

    goto :goto_6c

    .line 478
    :cond_79
    const/16 v10, 0x20

    if-gt v1, v10, :cond_6c

    .line 481
    const/16 v0, 0x20

    .line 482
    goto :goto_2a

    .line 491
    :cond_80
    const/4 v1, -0x1

    goto :goto_6c

    .line 496
    :cond_82
    if-gtz v4, :cond_92

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "k":Ljava/lang/String;
    const/4 v4, 0x0

    .line 507
    .end local v3    # "k":Ljava/lang/String;
    :cond_86
    if-lt v4, v5, :cond_ac

    .line 508
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 511
    .local v9, "v":Ljava/lang/String;
    :goto_8d
    invoke-virtual {p0, v3, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 500
    .end local v9    # "v":Ljava/lang/String;
    :cond_92
    const/4 v10, 0x0

    invoke-static {v8, v10, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "k":Ljava/lang/String;
    if-ge v4, v5, :cond_a1

    aget-char v10, v8, v4

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_a1

    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 503
    :cond_a1
    :goto_a1
    if-ge v4, v5, :cond_86

    aget-char v10, v8, v4

    const/16 v11, 0x20

    if-gt v10, v11, :cond_86

    .line 504
    add-int/lit8 v4, v4, 0x1

    goto :goto_a1

    .line 510
    .end local v3    # "k":Ljava/lang/String;
    :cond_ac
    sub-int v10, v5, v4

    invoke-static {v8, v4, v10}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "v":Ljava/lang/String;
    goto :goto_8d

    .line 513
    .end local v0    # "c":I
    .end local v2    # "inKey":Z
    .end local v4    # "keyend":I
    .end local v5    # "len":I
    .end local v9    # "v":Ljava/lang/String;
    :cond_b3
    return-void

    .line 458
    :sswitch_data_b4
    .sparse-switch
        0x9 -> :sswitch_48
        0xa -> :sswitch_4c
        0xd -> :sswitch_4c
        0x20 -> :sswitch_4a
        0x3a -> :sswitch_41
    .end sparse-switch
.end method

.method public multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lsun/net/www/MessageHeader$HeaderIterator;

    invoke-direct {v0, p0, p1, p0}, Lsun/net/www/MessageHeader$HeaderIterator;-><init>(Lsun/net/www/MessageHeader;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public parseHeader(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    monitor-enter p0

    .line 438
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_9

    monitor-exit p0

    .line 440
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->mergeHeader(Ljava/io/InputStream;)V

    .line 441
    return-void

    .line 437
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepend(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 316
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V

    .line 317
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_1f

    .line 318
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 319
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 321
    :cond_1f
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 322
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 323
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    .line 324
    return-void

    .end local v0    # "i":I
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized print(Ljava/io/PrintStream;)V
    .registers 6
    .param p1, "p"    # Ljava/io/PrintStream;

    .prologue
    monitor-enter p0

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v1, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v1, :cond_50

    .line 296
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_49

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    :goto_37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 298
    const-string/jumbo v2, "\r\n"

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 298
    :cond_4c
    const-string/jumbo v1, ""

    goto :goto_37

    .line 300
    :cond_50
    const-string/jumbo v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_59
    .catchall {:try_start_2 .. :try_end_59} :catchall_5b

    monitor-exit p0

    .line 302
    return-void

    :catchall_5b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .registers 7
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 367
    if-nez p1, :cond_3d

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_78

    .line 369
    :goto_8
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3a

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_3a

    .line 370
    move v1, v0

    .local v1, "j":I
    :goto_13
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_30

    .line 371
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 372
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 374
    :cond_30
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_37

    goto :goto_8

    .end local v1    # "j":I
    :catchall_37
    move-exception v2

    monitor-exit p0

    throw v2

    .line 368
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 378
    .end local v0    # "i":I
    :cond_3d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3e
    :try_start_3e
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_78

    .line 379
    :goto_42
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_75

    .line 380
    move v1, v0

    .restart local v1    # "j":I
    :goto_51
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6e

    .line 381
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 382
    iget-object v2, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 384
    :cond_6e
    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lsun/net/www/MessageHeader;->nkeys:I
    :try_end_74
    .catchall {:try_start_3e .. :try_end_74} :catchall_37

    goto :goto_42

    .line 378
    .end local v1    # "j":I
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_78
    monitor-exit p0

    .line 388
    return-void
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .line 75
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    .line 76
    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "k"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 332
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MessageHeader;->grow()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    .line 333
    if-gez p1, :cond_8

    monitor-exit p0

    .line 334
    return-void

    .line 335
    :cond_8
    :try_start_8
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-lt p1, v0, :cond_11

    .line 336
    invoke-virtual {p0, p2, p3}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1a

    :goto_f
    monitor-exit p0

    .line 341
    return-void

    .line 338
    :cond_11
    :try_start_11
    iget-object v0, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 339
    iget-object v0, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p3, v0, p1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    goto :goto_f

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 395
    :try_start_1
    iget v0, p0, Lsun/net/www/MessageHeader;->nkeys:I

    .local v0, "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    .line 396
    iget-object v1, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aput-object p2, v1, v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    monitor-exit p0

    .line 398
    return-void

    .line 400
    :cond_17
    :try_start_17
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    .line 401
    return-void

    .end local v0    # "i":I
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 408
    :try_start_1
    invoke-virtual {p0, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 409
    invoke-virtual {p0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 411
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    monitor-enter p0

    .line 516
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lsun/net/www/MessageHeader;->nkeys:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pairs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    iget-object v2, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5e

    iget v2, p0, Lsun/net/www/MessageHeader;->nkeys:I

    if-ge v0, v2, :cond_5e

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->keys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/net/www/MessageHeader;->values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_60

    move-result-object v1

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_5e
    monitor-exit p0

    .line 520
    return-object v1

    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/String;
    :catchall_60
    move-exception v2

    monitor-exit p0

    throw v2
.end method
