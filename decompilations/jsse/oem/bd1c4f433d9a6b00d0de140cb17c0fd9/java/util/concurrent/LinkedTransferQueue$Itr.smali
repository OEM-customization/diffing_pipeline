.class final Ljava/util/concurrent/LinkedTransferQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field final synthetic this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .registers 3

    .prologue
    .line 994
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 996
    return-void
.end method

.method private advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .registers 11
    .param p1, "prev"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v8, 0x0

    .line 947
    iget-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v5, "r":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1f

    .line 948
    iput-object v5, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 959
    :cond_f
    :goto_f
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 961
    move-object v4, p1

    .line 962
    :goto_12
    if-nez v4, :cond_42

    iget-object v7, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v6, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 963
    .local v6, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_18
    if-nez v6, :cond_45

    .line 990
    :cond_1a
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 991
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 992
    return-void

    .line 949
    .end local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1f
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 950
    :cond_29
    iput-object v8, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_f

    .line 953
    :cond_2c
    :goto_2c
    iget-object v6, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .restart local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v6, :cond_f

    .line 954
    if-eq v6, v0, :cond_f

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v7

    .line 953
    if-eqz v7, :cond_f

    .line 955
    iget-object v3, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v3, :cond_f

    if-eq v3, v6, :cond_f

    .line 956
    invoke-virtual {v0, v6, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_2c

    .line 962
    .end local v0    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_42
    iget-object v6, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .restart local v6    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_18

    .line 965
    :cond_45
    if-ne v6, v4, :cond_49

    .line 966
    const/4 v4, 0x0

    .line 967
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_12

    .line 969
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_49
    iget-object v1, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 970
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v7, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v7, :cond_59

    .line 971
    if-eqz v1, :cond_5b

    if-eq v1, v6, :cond_5b

    .line 972
    move-object v2, v1

    .line 973
    .local v2, "itemE":Ljava/lang/Object;, "TE;"
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 974
    iput-object v6, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 975
    return-void

    .line 978
    .end local v2    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_59
    if-eqz v1, :cond_1a

    .line 981
    :cond_5b
    if-nez v4, :cond_5f

    .line 982
    move-object v4, v6

    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_12

    .line 983
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5f
    iget-object v3, v6, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .restart local v3    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v3, :cond_1a

    .line 985
    if-ne v6, v3, :cond_67

    .line 986
    const/4 v4, 0x0

    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_12

    .line 988
    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_67
    invoke-virtual {v4, v6, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_12
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 999
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1004
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_a

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1005
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1006
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1007
    return-object v0
.end method

.method public final remove()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    const/4 v1, 0x0

    .line 1011
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1012
    .local v0, "lastRet":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_b

    .line 1013
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1014
    :cond_b
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1015
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1016
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1017
    :cond_1a
    return-void
.end method
