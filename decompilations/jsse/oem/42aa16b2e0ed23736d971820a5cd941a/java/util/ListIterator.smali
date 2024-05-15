.class public interface abstract Ljava/util/ListIterator;
.super Ljava/lang/Object;
.source "ListIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract whitelist core-platform-api test-api add(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api hasNext()Z
.end method

.method public abstract whitelist core-platform-api test-api hasPrevious()Z
.end method

.method public abstract whitelist core-platform-api test-api next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api nextIndex()I
.end method

.method public abstract whitelist core-platform-api test-api previous()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api previousIndex()I
.end method

.method public abstract whitelist core-platform-api test-api remove()V
.end method

.method public abstract whitelist core-platform-api test-api set(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
