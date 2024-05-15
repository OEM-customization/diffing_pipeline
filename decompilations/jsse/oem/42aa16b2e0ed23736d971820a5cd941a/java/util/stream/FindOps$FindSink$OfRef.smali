.class final Ljava/util/stream/FindOps$FindSink$OfRef;
.super Ljava/util/stream/FindOps$FindSink;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/FindOps$FindSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/FindOps$FindSink<",
        "TT;",
        "Ljava/util/Optional<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 190
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/FindOps$FindSink;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    .line 190
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink$OfRef<TT;>;"
    invoke-virtual {p0}, Ljava/util/stream/FindOps$FindSink$OfRef;->get()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Ljava/util/stream/FindOps$FindSink$OfRef;, "Ljava/util/stream/FindOps$FindSink$OfRef<TT;>;"
    iget-boolean v0, p0, Ljava/util/stream/FindOps$FindSink$OfRef;->hasValue:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/util/stream/FindOps$FindSink$OfRef;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
