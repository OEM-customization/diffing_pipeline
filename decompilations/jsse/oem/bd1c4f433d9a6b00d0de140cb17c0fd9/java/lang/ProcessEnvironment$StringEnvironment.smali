.class Ljava/lang/ProcessEnvironment$StringEnvironment;
.super Ljava/util/AbstractMap;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    return-void
.end method

.method private static toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/ProcessEnvironment$Value;

    .prologue
    const/4 v0, 0x0

    .line 226
    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Value;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 233
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 236
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 239
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/ProcessEnvironment$StringKeySet;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringKeySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 241
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/ProcessEnvironment$StringEnvironment;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    .line 243
    invoke-static {p2}, Ljava/lang/ProcessEnvironment$Value;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v2

    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 246
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toEnvironmentBlock([I)[B
    .registers 12
    .param p1, "envc"    # [I

    .prologue
    const/4 v9, 0x0

    .line 271
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    mul-int/lit8 v1, v8, 0x2

    .line 272
    .local v1, "count":I
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v1, v8

    .line 274
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/2addr v1, v8

    goto :goto_13

    .line 277
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    :cond_38
    new-array v0, v1, [B

    .line 279
    .local v0, "block":[B
    const/4 v4, 0x0

    .line 280
    .local v4, "i":I
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 281
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v6

    .line 282
    .local v6, "key":[B
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v7

    .line 283
    .local v7, "value":[B
    array-length v8, v6

    invoke-static {v6, v9, v0, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 284
    array-length v8, v6

    add-int/2addr v4, v8

    .line 285
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    const/16 v8, 0x3d

    aput-byte v8, v0, v4

    .line 286
    array-length v8, v7

    invoke-static {v7, v9, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 287
    array-length v8, v7

    add-int/lit8 v8, v8, 0x1

    add-int v4, v5, v8

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_45

    .line 291
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    .end local v6    # "key":[B
    .end local v7    # "value":[B
    :cond_7b
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    aput v8, p1, v9

    .line 292
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringValues;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
