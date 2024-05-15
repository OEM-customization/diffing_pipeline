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
        "Ljava/util/stream/SpinedBuffer",
        "<TT;>;",
        "Ljava/util/stream/Node",
        "<TT;>;",
        "Ljava/util/stream/Node$Builder",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    .line 1246
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
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
.method public accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1277
    :cond_11
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 1278
    return-void
.end method

.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "arrayFactory":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1296
    :cond_11
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public begin(J)V
    .registers 6
    .param p1, "size"    # J

    .prologue
    .line 1268
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was already building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1269
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1270
    invoke-virtual {p0}, Ljava/util/stream/Nodes$SpinedNodeBuilder;->clear()V

    .line 1271
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$SpinedNodeBuilder;->ensureCapacity(J)V

    .line 1272
    return-void
.end method

.method public build()Ljava/util/stream/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1302
    :cond_11
    return-object p0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .registers 5
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 1289
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1290
    :cond_11
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    .line 1291
    return-void
.end method

.method public end()V
    .registers 3

    .prologue
    .line 1282
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "was not building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1283
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    .line 1285
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1261
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1262
    :cond_11
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer;->forEach(Ljava/util/function/Consumer;)V

    .line 1263
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1255
    .local p0, "this":Ljava/util/stream/Nodes$SpinedNodeBuilder;, "Ljava/util/stream/Nodes$SpinedNodeBuilder<TT;>;"
    sget-boolean v0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Ljava/util/stream/Nodes$SpinedNodeBuilder;->building:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "during building"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1256
    :cond_11
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
