.class final Ljava/util/stream/Nodes$ToArrayTask$OfLong;
.super Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/util/stream/Node$OfLong;[JI)V
    .registers 5
    .param p1, "node"    # Ljava/util/stream/Node$OfLong;
    .param p2, "array"    # [J
    .param p3, "offset"    # I

    .line 2136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes$1;)V

    .line 2137
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/stream/Node$OfLong;[JILjava/util/stream/Nodes$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/util/stream/Node$OfLong;
    .param p2, "x1"    # [J
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/stream/Nodes$1;

    .line 2133
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava/util/stream/Node$OfLong;[JI)V

    return-void
.end method
