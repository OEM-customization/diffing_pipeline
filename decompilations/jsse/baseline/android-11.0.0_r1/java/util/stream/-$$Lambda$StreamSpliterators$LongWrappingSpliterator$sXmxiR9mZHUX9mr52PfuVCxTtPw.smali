.class public final synthetic Ljava/util/stream/-$$Lambda$StreamSpliterators$LongWrappingSpliterator$sXmxiR9mZHUX9mr52PfuVCxTtPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$LongWrappingSpliterator$sXmxiR9mZHUX9mr52PfuVCxTtPw;->f$0:Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api getAsBoolean()Z
    .registers 2

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$LongWrappingSpliterator$sXmxiR9mZHUX9mr52PfuVCxTtPw;->f$0:Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->lambda$initPartialTraversalState$0$StreamSpliterators$LongWrappingSpliterator()Z

    move-result v0

    return v0
.end method
