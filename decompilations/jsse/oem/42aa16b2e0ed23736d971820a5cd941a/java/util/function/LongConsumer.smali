.class public interface abstract Ljava/util/function/LongConsumer;
.super Ljava/lang/Object;
.source "LongConsumer.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic blacklist lambda$andThen$0(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;J)V
    .registers 4
    .param p0, "_this"    # Ljava/util/function/LongConsumer;
    .param p1, "after"    # Ljava/util/function/LongConsumer;
    .param p2, "t"    # J

    .line 65
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    invoke-interface {p1, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api accept(J)V
.end method

.method public whitelist core-platform-api test-api andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .registers 3
    .param p1, "after"    # Ljava/util/function/LongConsumer;

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;

    invoke-direct {v0, p0, p1}, Ljava/util/function/-$$Lambda$LongConsumer$2wx0fq0YJI8kSCwhsFrV0qxRiZ4;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method
