.class final Ljava/lang/reflect/WeakCache$CacheValue;
.super Ljava/lang/ref/WeakReference;
.source "WeakCache.java"

# interfaces
.implements Ljava/lang/reflect/WeakCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Ljava/lang/reflect/WeakCache$Value",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 303
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/WeakCache$CacheValue;->hash:I

    .line 304
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    if-eq p1, p0, :cond_16

    .line 315
    instance-of v3, p1, Ljava/lang/reflect/WeakCache$Value;

    if-eqz v3, :cond_19

    .line 317
    invoke-virtual {p0}, Ljava/lang/reflect/WeakCache$CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_19

    .line 318
    check-cast p1, Ljava/lang/reflect/WeakCache$Value;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/reflect/WeakCache$Value;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_17

    .line 314
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_16
    :goto_16
    return v1

    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_17
    move v1, v2

    .line 318
    goto :goto_16

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_19
    move v1, v2

    .line 315
    goto :goto_16
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 308
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    iget v0, p0, Ljava/lang/reflect/WeakCache$CacheValue;->hash:I

    return v0
.end method
