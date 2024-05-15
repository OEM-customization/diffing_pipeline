.class final Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBQSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field greylist-max-o batch:I

.field greylist-max-o current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:J

.field greylist-max-o exhausted:Z

.field final greylist-max-o queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "TE;>;)V"
        }
    .end annotation

    .line 836
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 838
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 839
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 938
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 841
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 883
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_36

    .line 884
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 885
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v1, :cond_35

    .line 886
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    .line 887
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 889
    .local v1, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_d
    const/4 v2, 0x0

    .line 890
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 892
    if-nez v1, :cond_1b

    .line 893
    :try_start_13
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v1, v3

    goto :goto_1b

    .line 901
    :catchall_19
    move-exception v3

    goto :goto_26

    .line 894
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_2a

    .line 895
    iget-object v3, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    move-object v2, v3

    .line 896
    iget-object v3, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_19

    move-object v1, v3

    .line 897
    if-eqz v2, :cond_1b

    .line 898
    goto :goto_2a

    .line 901
    :goto_26
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 902
    throw v3

    .line 901
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 902
    nop

    .line 903
    if-eqz v2, :cond_33

    .line 904
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 905
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_33
    if-nez v1, :cond_d

    .line 907
    .end local v1    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_35
    return-void

    .line 883
    .end local v0    # "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 910
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3d

    .line 911
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 912
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v1, :cond_3b

    .line 913
    const/4 v1, 0x0

    .line 914
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 916
    :try_start_c
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v2, :cond_16

    .line 917
    iget-object v2, v0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 918
    :cond_16
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v2, :cond_25

    .line 919
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    move-object v1, v2

    .line 920
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_36

    .line 921
    if-eqz v1, :cond_16

    .line 925
    :cond_25
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 926
    nop

    .line 927
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const/4 v3, 0x1

    if-nez v2, :cond_30

    .line 928
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    .line 929
    :cond_30
    if-eqz v1, :cond_3b

    .line 930
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 931
    return v3

    .line 925
    :catchall_36
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 926
    throw v2

    .line 934
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_3b
    const/4 v1, 0x0

    return v1

    .line 910
    .end local v0    # "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 845
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;, "Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 846
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    .line 847
    .local v1, "b":I
    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    if-gtz v1, :cond_b

    move v2, v3

    goto :goto_10

    :cond_b
    if-lt v1, v2, :cond_e

    goto :goto_10

    :cond_e
    add-int/lit8 v2, v1, 0x1

    .line 848
    .local v2, "n":I
    :goto_10
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    if-nez v4, :cond_70

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v5, v4

    .local v5, "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-nez v4, :cond_20

    iget-object v4, v0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v4, v4, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v5, v4

    if-eqz v4, :cond_70

    :cond_20
    iget-object v4, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v4, :cond_70

    .line 851
    new-array v4, v2, [Ljava/lang/Object;

    .line 852
    .local v4, "a":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 853
    .local v6, "i":I
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 854
    .local v7, "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 856
    if-nez v7, :cond_35

    :try_start_2e
    iget-object v8, v0, Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v8, v8, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-object v7, v8

    if-eqz v8, :cond_44

    .line 858
    :cond_35
    iget-object v8, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    aput-object v8, v4, v6

    if-eqz v8, :cond_3d

    .line 859
    add-int/lit8 v6, v6, 0x1

    .line 860
    :cond_3d
    iget-object v8, v7, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_6b

    move-object v7, v8

    if-eqz v8, :cond_44

    if-lt v6, v2, :cond_35

    .line 863
    :cond_44
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 864
    nop

    .line 865
    iput-object v7, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    const-wide/16 v8, 0x0

    if-nez v7, :cond_53

    .line 866
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 867
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->exhausted:Z

    goto :goto_5f

    .line 869
    :cond_53
    iget-wide v10, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    int-to-long v12, v6

    sub-long/2addr v10, v12

    iput-wide v10, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    cmp-long v3, v10, v8

    if-gez v3, :cond_5f

    .line 870
    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->est:J

    .line 871
    :cond_5f
    :goto_5f
    if-lez v6, :cond_70

    .line 872
    iput v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$LBQSpliterator;->batch:I

    .line 873
    const/4 v3, 0x0

    const/16 v8, 0x1110

    .line 874
    invoke-static {v4, v3, v6, v8}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v3

    .line 873
    return-object v3

    .line 863
    :catchall_6b
    move-exception v3

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 864
    throw v3

    .line 879
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "h":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v6    # "i":I
    .end local v7    # "p":Ljava/util/concurrent/LinkedBlockingQueue$Node;, "Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_70
    const/4 v3, 0x0

    return-object v3
.end method
