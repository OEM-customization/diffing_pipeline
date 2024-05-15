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
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private greylist-max-o lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private greylist-max-o nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private greylist-max-o nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field final synthetic blacklist this$0:Ljava/util/concurrent/LinkedTransferQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/LinkedTransferQueue;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/concurrent/LinkedTransferQueue;

    .line 994
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 996
    return-void
.end method

.method private greylist-max-o advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .registers 9
    .param p1, "prev"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 947
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v0

    .local v1, "r":Ljava/util/concurrent/LinkedTransferQueue$Node;
    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-nez v0, :cond_f

    .line 948
    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_35

    .line 949
    :cond_f
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v0

    .local v3, "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_33

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_33

    .line 953
    :cond_1b
    :goto_1b
    iget-object v0, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v4, v0

    .local v4, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_35

    if-eq v4, v3, :cond_35

    .line 954
    invoke-virtual {v4}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v5, v0

    .local v5, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_35

    if-eq v5, v4, :cond_35

    .line 956
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_1b

    .line 950
    .end local v4    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v5    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_33
    :goto_33
    iput-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 959
    .end local v3    # "b":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_35
    :goto_35
    iput-object p1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 961
    move-object v0, p1

    .line 962
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_38
    if-nez v0, :cond_3f

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v3, v3, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_41

    :cond_3f
    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 963
    .local v3, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_41
    if-nez v3, :cond_44

    .line 964
    goto :goto_65

    .line 965
    :cond_44
    if-ne v3, v0, :cond_48

    .line 966
    const/4 v0, 0x0

    .line 967
    goto :goto_38

    .line 969
    :cond_48
    iget-object v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 970
    .local v4, "item":Ljava/lang/Object;
    iget-boolean v5, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v5, :cond_58

    .line 971
    if-eqz v4, :cond_5b

    if-eq v4, v3, :cond_5b

    .line 972
    move-object v2, v4

    .line 973
    .local v2, "itemE":Ljava/lang/Object;, "TE;"
    iput-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 974
    iput-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 975
    return-void

    .line 978
    .end local v2    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_58
    if-nez v4, :cond_5b

    .line 979
    goto :goto_65

    .line 981
    :cond_5b
    if-nez v0, :cond_5f

    .line 982
    move-object v0, v3

    goto :goto_71

    .line 983
    :cond_5f
    iget-object v5, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v6, v5

    .local v6, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v5, :cond_6a

    .line 984
    nop

    .line 990
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v4    # "item":Ljava/lang/Object;
    .end local v6    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_65
    iput-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 991
    iput-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 992
    return-void

    .line 985
    .restart local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v6    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6a
    if-ne v3, v6, :cond_6e

    .line 986
    const/4 v0, 0x0

    goto :goto_71

    .line 988
    :cond_6e
    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    .line 989
    .end local v4    # "item":Ljava/lang/Object;
    .end local v6    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_71
    goto :goto_38
.end method


# virtual methods
.method public final whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 999
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1003
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextNode:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1004
    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_a

    .line 1005
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1006
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;->advance(Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1007
    return-object v1

    .line 1004
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public final whitelist core-platform-api test-api remove()V
    .registers 4

    .line 1011
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Itr;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1012
    .local v0, "lastRet":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_15

    .line 1014
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1015
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1016
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->this$0:Ljava/util/concurrent/LinkedTransferQueue;

    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue$Itr;->lastPred:Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1017
    :cond_14
    return-void

    .line 1013
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
