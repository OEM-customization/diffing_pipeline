.class final Ljava/util/stream/FindOps$FindSink$OfDouble;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink<",
        "Ljava/lang/Double;",
        "Ljava/util/OptionalDouble;",
        ">;",
        "Ljava/util/stream/Sink$OfDouble;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 228
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(D)V
    .registers 4
    .param p1, "value"    # D

    .line 233
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink$OfDouble;->accept(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public bridge synthetic blacklist accept(Ljava/lang/Double;)V
    .registers 2

    .line 228
    invoke-super {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    .line 228
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfDouble;->get()Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalDouble;
    .registers 3

    .line 238
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink$OfDouble;->hasValue:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink$OfDouble;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalDouble;->of(D)Ljava/util/OptionalDouble;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method