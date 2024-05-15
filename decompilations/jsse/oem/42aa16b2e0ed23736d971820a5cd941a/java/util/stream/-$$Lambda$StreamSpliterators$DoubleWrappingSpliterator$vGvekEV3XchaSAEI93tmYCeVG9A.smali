.class public final synthetic Ljava/util/stream/-$$Lambda$StreamSpliterators$DoubleWrappingSpliterator$vGvekEV3XchaSAEI93tmYCeVG9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$DoubleWrappingSpliterator$vGvekEV3XchaSAEI93tmYCeVG9A;->f$0:Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api getAsBoolean()Z
    .registers 2

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$StreamSpliterators$DoubleWrappingSpliterator$vGvekEV3XchaSAEI93tmYCeVG9A;->f$0:Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-virtual {v0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->lambda$initPartialTraversalState$0$StreamSpliterators$DoubleWrappingSpliterator()Z

    move-result v0

    return v0
.end method
