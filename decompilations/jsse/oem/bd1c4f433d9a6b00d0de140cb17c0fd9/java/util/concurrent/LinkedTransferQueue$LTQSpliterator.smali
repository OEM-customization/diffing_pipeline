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
        "Ljava/util/Spliterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field batch:I

.field current:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field exhausted:Z

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .registers 2

    .prologue
    .line 1026
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1100
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1097
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1061
    :cond_8
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v3, :cond_34

    .line 1062
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_18

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 1063
    :cond_18
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1065
    :cond_1b
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1066
    .local v0, "e":Ljava/lang/Object;
    if-eqz v0, :cond_24

    if-eq v0, v1, :cond_24

    .line 1067
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1068
    :cond_24
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v2, :cond_35

    .line 1069
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    .line 1070
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2e
    if-eqz v1, :cond_34

    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v3, :cond_1b

    .line 1072
    .end local v0    # "e":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_34
    return-void

    .restart local v0    # "e":Ljava/lang/Object;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_35
    move-object v1, v2

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_2e
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v4, 0x1

    .line 1077
    if-nez p1, :cond_9

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1078
    :cond_9
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v3, :cond_3c

    .line 1079
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_19

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 1082
    :cond_19
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .local v0, "e":Ljava/lang/Object;
    if-ne v0, v1, :cond_1e

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .end local v0    # "e":Ljava/lang/Object;
    :cond_1e
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v2, :cond_3e

    .line 1085
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    .line 1086
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_28
    if-nez v0, :cond_30

    if-eqz v1, :cond_30

    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v3, :cond_19

    .line 1087
    :cond_30
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v1, :cond_36

    .line 1088
    iput-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1089
    :cond_36
    if-eqz v0, :cond_3c

    .line 1090
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1091
    return v4

    .line 1094
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3c
    const/4 v3, 0x0

    return v3

    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3e
    move-object v1, v2

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_28
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.LTQSpliterator<TE;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1030
    iget v1, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    .line 1031
    .local v1, "b":I
    if-gtz v1, :cond_4c

    const/4 v4, 0x1

    .line 1032
    .local v4, "n":I
    :goto_7
    iget-boolean v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    if-nez v7, :cond_56

    .line 1033
    iget-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v5, :cond_17

    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    if-eqz v5, :cond_56

    .line 1034
    :cond_17
    iget-object v7, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v7, :cond_56

    .line 1035
    new-array v0, v4, [Ljava/lang/Object;

    .line 1036
    .local v0, "a":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1038
    .local v3, "i":I
    :cond_1e
    iget-object v2, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1039
    .local v2, "e":Ljava/lang/Object;
    if-eq v2, v5, :cond_28

    aput-object v2, v0, v3

    if-eqz v2, :cond_28

    .line 1040
    add-int/lit8 v3, v3, 0x1

    .line 1041
    :cond_28
    iget-object v6, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v6, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v5, v6, :cond_57

    .line 1042
    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    .line 1043
    .end local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_32
    if-eqz v5, :cond_3a

    if-ge v3, v4, :cond_3a

    iget-boolean v7, v5, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v7, :cond_1e

    .line 1044
    :cond_3a
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->current:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-nez v5, :cond_41

    .line 1045
    const/4 v7, 0x1

    iput-boolean v7, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->exhausted:Z

    .line 1046
    :cond_41
    if-lez v3, :cond_56

    .line 1047
    iput v3, p0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;->batch:I

    .line 1049
    const/16 v7, 0x1110

    .line 1048
    invoke-static {v0, v9, v3, v7}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v7

    return-object v7

    .line 1031
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "e":Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_4c
    const/high16 v7, 0x2000000

    if-lt v1, v7, :cond_53

    const/high16 v4, 0x2000000

    .restart local v4    # "n":I
    goto :goto_7

    .end local v4    # "n":I
    :cond_53
    add-int/lit8 v4, v1, 0x1

    .restart local v4    # "n":I
    goto :goto_7

    .line 1054
    :cond_56
    return-object v8

    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "e":Ljava/lang/Object;
    .restart local v3    # "i":I
    .restart local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_57
    move-object v5, v6

    .end local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_32
.end method
