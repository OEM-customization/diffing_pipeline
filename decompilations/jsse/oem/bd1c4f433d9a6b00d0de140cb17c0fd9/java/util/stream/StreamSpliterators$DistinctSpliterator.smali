.class final Ljava/util/stream/StreamSpliterators$DistinctSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final s:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final seen:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    .line 1239
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1254
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 1255
    return-void
.end method

.method private constructor <init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1257
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "seen":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    .line 1259
    iput-object p2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1260
    return-void
.end method

.method private mapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1269
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_2
    return-object p1

    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    sget-object p1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    .line 1265
    return-void
.end method

.method public characteristics()I
    .registers 2

    .prologue
    .line 1306
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4055

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1301
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    new-instance v1, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Ljava/util/stream/-$Lambda$mQqUMfzvvH-Pb34PmbAP692jlD4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1291
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-java_util_stream_StreamSpliterators$DistinctSpliterator_46149(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 1287
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1288
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v3, 0x0

    .line 1274
    :cond_1
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1275
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1276
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1277
    iput-object v3, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    .line 1278
    const/4 v0, 0x1

    return v0

    .line 1281
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DistinctSpliterator;, "Ljava/util/stream/StreamSpliterators$DistinctSpliterator<TT;>;"
    const/4 v1, 0x0

    .line 1295
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava/util/Spliterator;

    invoke-interface {v2}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 1296
    .local v0, "split":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v0, :cond_10

    new-instance v1, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0, v2}, Ljava/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_10
    return-object v1
.end method
