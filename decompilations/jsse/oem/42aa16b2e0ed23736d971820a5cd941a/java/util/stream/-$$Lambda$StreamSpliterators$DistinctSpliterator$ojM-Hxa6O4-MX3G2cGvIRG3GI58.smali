.class public final synthetic Ljava/util/stream/-$$Lambda$StreamSpliterators$DistinctSpliterator$ojM-Hxa6O4-MX3G2cGvIRG3GI58;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/StreamSpliterators$DistinctSpliterator;Ljava/util/function/Consumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$DistinctSpliterator$ojM-Hxa6O4-MX3G2cGvIRG3GI58;->f$0:Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    iput-object p2, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$DistinctSpliterator$ojM-Hxa6O4-MX3G2cGvIRG3GI58;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$DistinctSpliterator$ojM-Hxa6O4-MX3G2cGvIRG3GI58;->f$0:Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v1, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$DistinctSpliterator$ojM-Hxa6O4-MX3G2cGvIRG3GI58;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->lambda$forEachRemaining$0$StreamSpliterators$DistinctSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
