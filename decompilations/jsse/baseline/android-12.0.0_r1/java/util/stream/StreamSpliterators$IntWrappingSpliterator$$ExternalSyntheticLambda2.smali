.class public final synthetic Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/SpinedBuffer$OfInt;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/SpinedBuffer$OfInt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/SpinedBuffer$OfInt;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .registers 3

    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method
