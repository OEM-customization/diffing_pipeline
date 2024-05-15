.class final Ljava/util/stream/FindOps$FindSink$OfLong;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink<",
        "Ljava/lang/Long;",
        "Ljava/util/OptionalLong;",
        ">;",
        "Ljava/util/stream/Sink$OfLong;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 213
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(J)V
    .registers 4
    .param p1, "value"    # J

    .line 218
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink$OfLong;->accept(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public bridge synthetic blacklist accept(Ljava/lang/Long;)V
    .registers 2

    .line 213
    invoke-super {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    .line 213
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfLong;->get()Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalLong;
    .registers 3

    .line 223
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink$OfLong;->hasValue:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink$OfLong;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method
