.class public final synthetic Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsBoolean()Z
    .registers 2

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;->f$0:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->lambda$initPartialTraversalState$0$StreamSpliterators$IntWrappingSpliterator()Z

    move-result v0

    return v0
.end method