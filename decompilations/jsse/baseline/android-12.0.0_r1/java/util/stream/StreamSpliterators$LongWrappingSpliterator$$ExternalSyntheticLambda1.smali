.class public final synthetic Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/LongConsumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/LongConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(J)V
    .registers 4

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method
