.class final Ljava/util/stream/Nodes$SpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;
.implements Ljava/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpinedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/SpinedBuffer<",
        "TT;>;",
        "Ljava/util/stream/Node<",
        "TT;>;",
        "Ljava/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist building:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1246
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1251
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    .line 1249
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1251
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1276
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    nop

    .line 1277
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 1278
    return-void
.end method

.method public blacklist asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1295
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    nop

    .line 1296
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 1268
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1270
    invoke-virtual {p0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;->clear()V

    .line 1271
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$SpinedNodeBuilder;->ensureCapacity(J)V

    .line 1272
    return-void
.end method

.method public blacklist build()Ljava/util/stream/Node;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1301
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1302
    return-object p0
.end method

.method public blacklist copyInto([Ljava/lang/Object;I)V
    .registers 3
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1289
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    nop

    .line 1290
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 1291
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 1282
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1283
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1285
    return-void
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1261
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    .line 1262
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 1263
    return-void
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1255
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    nop

    .line 1256
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
