.class public interface abstract Ljava/util/stream/IntStream$Builder;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract whitelist core-platform-api test-api accept(I)V
.end method

.method public whitelist core-platform-api test-api add(I)Ljava/util/stream/IntStream$Builder;
    .registers 2
    .param p1, "t"    # I

    .line 896
    invoke-interface {p0, p1}, Ljava/util/stream/IntStream$Builder;->accept(I)V

    .line 897
    return-object p0
.end method

.method public abstract whitelist core-platform-api test-api build()Ljava/util/stream/IntStream;
.end method
