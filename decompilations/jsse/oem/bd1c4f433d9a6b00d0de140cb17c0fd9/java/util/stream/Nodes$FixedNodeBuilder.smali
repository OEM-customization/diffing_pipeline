.class final Ljava/util/stream/Nodes$FixedNodeBuilder;
.super Ljava/util/stream/Nodes$ArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/Nodes$ArrayNode",
        "<TT;>;",
        "Ljava/util/stream/Node$Builder",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/Nodes$FixedNodeBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/Nodes$FixedNodeBuilder;->-assertionsDisabled:Z

    .line 1194
    return-void
.end method

.method constructor <init>(JLjava/util/function/IntFunction;)V
    .registers 7
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ArrayNode;-><init>(JLjava/util/function/IntFunction;)V

    .line 1200
    sget-boolean v0, Ljava/util/stream/Nodes$FixedNodeBuilder;->-assertionsDisabled:Z

    if-nez v0, :cond_14

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1201
    :cond_14
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1222
    iget-object v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    aput-object p1, v0, v1

    .line 1227
    return-void

    .line 1224
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Accept exceeded fixed size of %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1225
    iget-object v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1224
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public begin(J)V
    .registers 8
    .param p1, "size"    # J

    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    const/4 v4, 0x0

    .line 1213
    iget-object v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_29

    .line 1214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Begin size %d is not equal to fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1215
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1214
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_29
    iput v4, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1217
    return-void
.end method

.method public build()Ljava/util/stream/Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Node",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1205
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 1206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Current size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1207
    iget v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1206
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_2a
    return-object p0
.end method

.method public end()V
    .registers 6

    .prologue
    .line 1231
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 1232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "End size %d is less than fixed size %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1233
    iget v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1232
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_2a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1238
    .local p0, "this":Ljava/util/stream/Nodes$FixedNodeBuilder;, "Ljava/util/stream/Nodes$FixedNodeBuilder<TT;>;"
    const-string/jumbo v0, "FixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1239
    iget-object v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1238
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
