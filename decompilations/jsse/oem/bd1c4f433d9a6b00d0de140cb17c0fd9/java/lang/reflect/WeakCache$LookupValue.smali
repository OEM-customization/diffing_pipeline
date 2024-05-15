.class final Ljava/lang/reflect/WeakCache$LookupValue;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/lang/reflect/WeakCache$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LookupValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/WeakCache$Value",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    .line 273
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    if-eq p1, p0, :cond_12

    .line 288
    instance-of v2, p1, Ljava/lang/reflect/WeakCache$Value;

    if-eqz v2, :cond_15

    .line 289
    iget-object v2, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/WeakCache$Value;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/lang/reflect/WeakCache$Value;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_13

    .line 287
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 289
    goto :goto_12

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_15
    move v0, v1

    .line 288
    goto :goto_12
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    iget-object v0, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 282
    .local p0, "this":Ljava/lang/reflect/WeakCache$LookupValue;, "Ljava/lang/reflect/WeakCache$LookupValue<TV;>;"
    iget-object v0, p0, Ljava/lang/reflect/WeakCache$LookupValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
