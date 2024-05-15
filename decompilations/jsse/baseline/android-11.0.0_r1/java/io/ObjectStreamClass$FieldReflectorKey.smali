.class Ljava/io/ObjectStreamClass$FieldReflectorKey;
.super Ljava/lang/ref/WeakReference;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReflectorKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o hash:I

.field private final greylist-max-o nullClass:Z

.field private final greylist-max-o sigs:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V
    .registers 8
    .param p2, "fields"    # [Ljava/io/ObjectStreamField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/io/ObjectStreamField;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2309
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2310
    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2312
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v2, p2

    if-ge v1, v2, :cond_26

    .line 2313
    aget-object v2, p2, v1

    .line 2314
    .local v2, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    .end local v2    # "f":Ljava/io/ObjectStreamField;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 2316
    .end local v1    # "i":I
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    .line 2317
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    .line 2318
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2325
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2326
    return v0

    .line 2329
    :cond_4
    instance-of v1, p1, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 2330
    move-object v1, p1

    check-cast v1, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    .line 2332
    .local v1, "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    iget-boolean v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    if-eqz v3, :cond_15

    iget-boolean v3, v1, Ljava/io/ObjectStreamClass$FieldReflectorKey;->nullClass:Z

    if-eqz v3, :cond_2f

    goto :goto_24

    .line 2333
    :cond_15
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object v4, v3

    .local v4, "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2f

    .line 2334
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass$FieldReflectorKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_2f

    .end local v4    # "referent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    iget-object v3, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    iget-object v4, v1, Ljava/io/ObjectStreamClass$FieldReflectorKey;->sigs:Ljava/lang/String;

    .line 2335
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    .line 2332
    :goto_30
    return v0

    .line 2337
    .end local v1    # "other":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    :cond_31
    return v2
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 2321
    iget v0, p0, Ljava/io/ObjectStreamClass$FieldReflectorKey;->hash:I

    return v0
.end method
