.class Ljava/io/ObjectStreamClass$WeakClassKey;
.super Ljava/lang/ref/WeakReference;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakClassKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Class",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 2339
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2340
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/io/ObjectStreamClass$WeakClassKey;->hash:I

    .line 2341
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2357
    if-ne p1, p0, :cond_5

    .line 2358
    return v1

    .line 2361
    :cond_5
    instance-of v3, p1, Ljava/io/ObjectStreamClass$WeakClassKey;

    if-eqz v3, :cond_1c

    .line 2362
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$WeakClassKey;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2363
    .local v0, "referent":Ljava/lang/Object;
    if-eqz v0, :cond_1a

    .line 2364
    check-cast p1, Ljava/io/ObjectStreamClass$WeakClassKey;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass$WeakClassKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_18

    .line 2363
    :goto_17
    return v1

    :cond_18
    move v1, v2

    .line 2364
    goto :goto_17

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1a
    move v1, v2

    .line 2363
    goto :goto_17

    .line 2366
    .end local v0    # "referent":Ljava/lang/Object;
    :cond_1c
    return v2
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2347
    iget v0, p0, Ljava/io/ObjectStreamClass$WeakClassKey;->hash:I

    return v0
.end method
