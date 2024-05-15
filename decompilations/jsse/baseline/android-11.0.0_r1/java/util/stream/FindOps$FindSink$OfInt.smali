.class final Ljava/util/stream/FindOps$FindSink$OfInt;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"

# interfaces
.implements Ljava/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/FindOps$FindSink<",
        "Ljava/lang/Integer;",
        "Ljava/util/OptionalInt;",
        ">;",
        "Ljava/util/stream/Sink$OfInt;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api accept(I)V
    .registers 3
    .param p1, "value"    # I

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/stream/FindOps$FindSink$OfInt;->accept(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public bridge synthetic blacklist accept(Ljava/lang/Integer;)V
    .registers 2

    .line 198
    invoke-super {p0, p1}, Ljava/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    .line 198
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfInt;->get()Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/OptionalInt;
    .registers 2

    .line 208
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink$OfInt;->hasValue:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink$OfInt;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method
