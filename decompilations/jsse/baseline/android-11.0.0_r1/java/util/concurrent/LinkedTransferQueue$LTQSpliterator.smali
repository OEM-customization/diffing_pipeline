.class final Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LTQSpliterator"
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

.field greylist-max-o current:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field greylist-max-o exhausted:Z

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/LinkedTransferQueue;

    .line 1026
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 1100
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 1097
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1060
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_34

    .line 1061
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    .line 1062
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_33

    .line 1063
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1065
    :cond_17
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1066
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_20

    if-eq v0, v1, :cond_20

    .line 1067
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1068
    :cond_20
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v2

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v2, :cond_2c

    .line 1069
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_2d

    .line 1068
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2c
    move-object v1, v3

    .line 1070
    .end local v0    # "e":Ljava/lang/Object;
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2d
    if-eqz v1, :cond_33

    iget-boolean v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_17

    .line 1072
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_33
    return-void

    .line 1060
    :cond_34
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1077
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3f

    .line 1078
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    .line 1079
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_3d

    .line 1082
    :cond_14
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    move-object v2, v0

    .local v2, "e":Ljava/lang/Object;
    if-ne v0, v1, :cond_1a

    .line 1083
    const/4 v2, 0x0

    .line 1084
    :cond_1a
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v0

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v0, :cond_27

    .line 1085
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    move-object v1, v0

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_28

    .line 1084
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_27
    move-object v1, v3

    .line 1086
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_28
    if-nez v2, :cond_30

    if-eqz v1, :cond_30

    iget-boolean v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_14

    .line 1087
    :cond_30
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    const/4 v0, 0x1

    if-nez v1, :cond_37

    .line 1088
    iput-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1089
    :cond_37
    if-eqz v2, :cond_3d

    .line 1090
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1091
    return v0

    .line 1094
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "e":Ljava/lang/Object;
    :cond_3d
    const/4 v0, 0x0

    return v0

    .line 1077
    :cond_3f
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1030
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    iget v0, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    .line 1031
    .local v0, "b":I
    const/high16 v1, 0x2000000

    const/4 v2, 0x1

    if-gtz v0, :cond_9

    move v1, v2

    goto :goto_e

    :cond_9
    if-lt v0, v1, :cond_c

    goto :goto_e

    :cond_c
    add-int/lit8 v1, v0, 0x1

    .line 1032
    .local v1, "n":I
    :goto_e
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v3, :cond_58

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v4, v3

    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v3, :cond_20

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    .line 1033
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v3

    move-object v4, v3

    if-eqz v3, :cond_58

    :cond_20
    iget-object v3, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v3, :cond_58

    .line 1035
    new-array v3, v1, [Ljava/lang/Object;

    .line 1036
    .local v3, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1038
    .local v5, "i":I
    :cond_27
    iget-object v6, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1039
    .local v6, "e":Ljava/lang/Object;
    if-eq v6, v4, :cond_31

    aput-object v6, v3, v5

    if-eqz v6, :cond_31

    .line 1040
    add-int/lit8 v5, v5, 0x1

    .line 1041
    :cond_31
    iget-object v7, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v8, v7

    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v8, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v4, v7, :cond_3d

    .line 1042
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v4

    .end local v8    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_3e

    .line 1041
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v8    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3d
    move-object v4, v8

    .line 1043
    .end local v6    # "e":Ljava/lang/Object;
    .end local v8    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_3e
    if-eqz v4, :cond_46

    if-ge v5, v1, :cond_46

    iget-boolean v6, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v6, :cond_27

    .line 1044
    :cond_46
    iput-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v4, :cond_4c

    .line 1045
    iput-boolean v2, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1046
    :cond_4c
    if-lez v5, :cond_58

    .line 1047
    iput v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    .line 1048
    const/4 v2, 0x0

    const/16 v6, 0x1110

    .line 1049
    invoke-static {v3, v2, v5, v6}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v2

    .line 1048
    return-object v2

    .line 1054
    .end local v3    # "a":[Ljava/lang/Object;
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v5    # "i":I
    :cond_58
    const/4 v2, 0x0

    return-object v2
.end method
