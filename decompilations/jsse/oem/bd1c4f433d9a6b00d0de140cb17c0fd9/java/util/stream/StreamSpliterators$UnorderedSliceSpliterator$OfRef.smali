.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
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
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator",
        "<TT;",
        "Ljava/util/Spliterator",
        "<TT;>;>;",
        "Ljava/util/Spliterator",
        "<TT;>;",
        "Ljava/util/function/Consumer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;JJ)V
    .registers 6
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;JJ)V

    .line 997
    return-void
.end method

.method constructor <init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;",
            "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .local p2, "parent":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;)V

    .line 1001
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1006
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const/4 v1, 0x0

    .line 1030
    :goto_4
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    .local v0, "permitStatus":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;
    sget-object v4, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v0, v4, :cond_45

    .line 1031
    sget-object v4, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->MAYBE_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-ne v0, v4, :cond_3f

    .line 1033
    if-nez v1, :cond_33

    .line 1034
    new-instance v1, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;

    const/16 v4, 0x80

    invoke-direct {v1, v4}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;-><init>(I)V

    .line 1037
    :goto_19
    const-wide/16 v2, 0x0

    .line 1038
    .local v2, "permitsRequested":J
    :cond_1b
    iget-object v4, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v4, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x80

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1b

    .line 1039
    :cond_2c
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_37

    .line 1040
    return-void

    .line 1036
    .end local v2    # "permitsRequested":J
    :cond_33
    invoke-virtual {v1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->reset()V

    goto :goto_19

    .line 1041
    .restart local v2    # "permitsRequested":J
    :cond_37
    invoke-virtual {p0, v2, v3}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v4

    invoke-virtual {v1, p1, v4, v5}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->forEach(Ljava/util/function/Consumer;J)V

    goto :goto_4

    .line 1045
    .end local v2    # "permitsRequested":J
    :cond_3f
    iget-object v4, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v4, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1046
    return-void

    .line 1049
    :cond_45
    return-void
.end method

.method protected makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TT;>;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava/util/Spliterator;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;)V

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;, "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    .line 1010
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :cond_6
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->permitStatus()Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    move-result-object v0

    sget-object v1, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;->NO_MORE:Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$PermitStatus;

    if-eq v0, v1, :cond_29

    .line 1013
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->s:Ljava/util/Spliterator;

    invoke-interface {v0, p0}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1014
    return v2

    .line 1015
    :cond_17
    invoke-virtual {p0, v4, v5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->acquirePermits(J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 1016
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;->tmpSlot:Ljava/lang/Object;

    .line 1018
    const/4 v0, 0x1

    return v0

    .line 1021
    :cond_29
    return v2
.end method
