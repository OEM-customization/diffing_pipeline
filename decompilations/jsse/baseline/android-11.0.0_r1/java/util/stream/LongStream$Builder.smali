.class public interface abstract Ljava/util/stream/LongStream$Builder;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract whitelist core-platform-api test-api accept(J)V
.end method

.method public whitelist core-platform-api test-api add(J)Ljava/util/stream/LongStream$Builder;
    .registers 3
    .param p1, "t"    # J

    .line 904
    invoke-interface {p0, p1, p2}, Ljava/util/stream/LongStream$Builder;->accept(J)V

    .line 905
    return-object p0
.end method

.method public abstract whitelist core-platform-api test-api build()Ljava/util/stream/LongStream;
.end method