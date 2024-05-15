.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final DETACHED:I = -0x3

.field private static final NONE:I = -0x1

.field private static final REMOVED:I = -0x2


# instance fields
.field private cursor:I

.field private lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private prevCycles:I

.field private prevTakeIndex:I

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v2, -0x1

    .line 1010
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1013
    iget-object v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1014
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1016
    :try_start_d
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v2, :cond_1e

    .line 1018
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1019
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1020
    const/4 v2, -0x3

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_42

    .line 1039
    :goto_1a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1041
    return-void

    .line 1022
    :cond_1e
    :try_start_1e
    iget v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1023
    .local v1, "takeIndex":I
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1024
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1025
    invoke-direct {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1026
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-nez v2, :cond_47

    .line 1027
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    .line 1032
    :goto_3b
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v2, v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_42

    goto :goto_1a

    .line 1038
    .end local v1    # "takeIndex":I
    :catchall_42
    move-exception v2

    .line 1039
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1038
    throw v2

    .line 1029
    .restart local v1    # "takeIndex":I
    :cond_47
    :try_start_47
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 1030
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_42

    goto :goto_3b
.end method

.method private detach()V
    .registers 3

    .prologue
    .line 1122
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-ltz v0, :cond_f

    .line 1124
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1126
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    .line 1128
    :cond_f
    return-void
.end method

.method private distance(III)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 1251
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    sub-int v0, p1, p2

    .line 1252
    .local v0, "distance":I
    if-gez v0, :cond_5

    .line 1253
    add-int/2addr v0, p3

    .line 1254
    :cond_5
    return v0
.end method

.method private incCursor(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1050
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_a

    const/4 p1, 0x0

    .line 1051
    :cond_a
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne p1, v0, :cond_11

    const/4 p1, -0x1

    .line 1052
    :cond_11
    return p1
.end method

.method private incorporateDequeues()V
    .registers 11

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v9, -0x2

    .line 1079
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 1080
    .local v0, "cycles":I
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1081
    .local v8, "takeIndex":I
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1082
    .local v7, "prevCycles":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1084
    .local v3, "prevTakeIndex":I
    if-ne v0, v7, :cond_13

    if-eq v8, v3, :cond_4f

    .line 1085
    :cond_13
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v6, v1

    .line 1088
    .local v6, "len":I
    sub-int v1, v0, v7

    mul-int/2addr v1, v6

    .line 1089
    sub-int v2, v8, v3

    .line 1088
    add-int/2addr v1, v2

    int-to-long v4, v1

    .line 1092
    .local v4, "dequeues":J
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1093
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1094
    :cond_2a
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1095
    iput v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1096
    :cond_35
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1097
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1099
    :cond_40
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v1, :cond_50

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v1, :cond_50

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-gez v1, :cond_50

    .line 1100
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    .line 1106
    .end local v4    # "dequeues":J
    .end local v6    # "len":I
    :cond_4f
    :goto_4f
    return-void

    .line 1102
    .restart local v4    # "dequeues":J
    .restart local v6    # "len":I
    :cond_50
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1103
    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    goto :goto_4f
.end method

.method private invalidated(IIJI)Z
    .registers 11
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "dequeues"    # J
    .param p5, "length"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, 0x0

    .line 1061
    if-gez p1, :cond_4

    .line 1062
    return v1

    .line 1063
    :cond_4
    sub-int v0, p1, p2

    .line 1064
    .local v0, "distance":I
    if-gez v0, :cond_9

    .line 1065
    add-int/2addr v0, p5

    .line 1066
    :cond_9
    int-to-long v2, v0

    cmp-long v2, p3, v2

    if-lez v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private noNext()V
    .registers 4

    .prologue
    .line 1145
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1146
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1150
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1152
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1153
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v1, :cond_21

    .line 1154
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1156
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    .line 1162
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1164
    return-void

    .line 1161
    :catchall_25
    move-exception v1

    .line 1162
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1161
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 1138
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 1139
    const/4 v0, 0x1

    return v0

    .line 1140
    :cond_6
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->noNext()V

    .line 1141
    const/4 v0, 0x0

    return v0
.end method

.method isDetached()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, 0x0

    .line 1045
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-gez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1169
    .local v2, "x":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_a

    .line 1170
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    .line 1171
    :cond_a
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1172
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1174
    :try_start_11
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1175
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1178
    :cond_1a
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1179
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1180
    .local v0, "cursor":I
    if-ltz v0, :cond_36

    .line 1181
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1183
    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_3d

    .line 1189
    :goto_32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1191
    return-object v2

    .line 1185
    :cond_36
    const/4 v3, -0x1

    :try_start_37
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1186
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_32

    .line 1188
    .end local v0    # "cursor":I
    :catchall_3d
    move-exception v3

    .line 1189
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1188
    throw v3
.end method

.method public remove()V
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v4, -0x1

    .line 1196
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v2, v3, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1197
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1199
    :try_start_8
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1200
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1201
    :cond_11
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1202
    .local v1, "lastRet":I
    const/4 v3, -0x1

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1203
    if-ltz v1, :cond_4a

    .line 1204
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1205
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 1219
    :cond_23
    :goto_23
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v3, :cond_2e

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v3, :cond_2e

    .line 1220
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 1222
    :cond_2e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1226
    return-void

    .line 1207
    :cond_32
    :try_start_32
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1209
    .local v0, "lastItem":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1210
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_23

    .line 1211
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_45

    goto :goto_23

    .line 1221
    .end local v0    # "lastItem":Ljava/lang/Object;, "TE;"
    .end local v1    # "lastRet":I
    :catchall_45
    move-exception v3

    .line 1222
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1221
    throw v3

    .line 1213
    .restart local v1    # "lastRet":I
    :cond_4a
    if-ne v1, v4, :cond_23

    .line 1214
    :try_start_4c
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_52
    .catchall {:try_start_4c .. :try_end_52} :catchall_45
.end method

.method removedAt(I)Z
    .registers 15
    .param p1, "removedIndex"    # I

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v12, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1264
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1265
    return v9

    .line 1267
    :cond_a
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v6, v8, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1268
    .local v6, "takeIndex":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1269
    .local v4, "prevTakeIndex":I
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v8

    .line 1272
    .local v2, "len":I
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v11, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int v11, v8, v11

    .line 1273
    if-ge p1, v6, :cond_60

    move v8, v9

    .line 1272
    :goto_22
    add-int/2addr v8, v11

    mul-int/2addr v8, v2

    .line 1274
    sub-int v11, p1, v4

    .line 1272
    add-int v5, v8, v11

    .line 1279
    .local v5, "removedDistance":I
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1280
    .local v0, "cursor":I
    if-ltz v0, :cond_3c

    .line 1281
    invoke-direct {p0, v0, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    .line 1282
    .local v7, "x":I
    if-ne v7, v5, :cond_62

    .line 1283
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne v0, v8, :cond_3c

    .line 1284
    const/4 v0, -0x1

    const/4 v8, -0x1

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1291
    .end local v7    # "x":I
    :cond_3c
    :goto_3c
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1292
    .local v1, "lastRet":I
    if-ltz v1, :cond_49

    .line 1293
    invoke-direct {p0, v1, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    .line 1294
    .restart local v7    # "x":I
    if-ne v7, v5, :cond_6d

    .line 1295
    const/4 v1, -0x2

    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1299
    .end local v7    # "x":I
    :cond_49
    :goto_49
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1300
    .local v3, "nextIndex":I
    if-ltz v3, :cond_56

    .line 1301
    invoke-direct {p0, v3, v4, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    .line 1302
    .restart local v7    # "x":I
    if-ne v7, v5, :cond_78

    .line 1303
    const/4 v3, -0x2

    iput v12, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1307
    .end local v7    # "x":I
    :cond_56
    :goto_56
    if-gez v0, :cond_83

    if-gez v3, :cond_83

    if-gez v1, :cond_83

    .line 1308
    const/4 v8, -0x3

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1309
    return v9

    .end local v0    # "cursor":I
    .end local v1    # "lastRet":I
    .end local v3    # "nextIndex":I
    .end local v5    # "removedDistance":I
    :cond_60
    move v8, v10

    .line 1273
    goto :goto_22

    .line 1286
    .restart local v0    # "cursor":I
    .restart local v5    # "removedDistance":I
    .restart local v7    # "x":I
    :cond_62
    if-le v7, v5, :cond_3c

    .line 1288
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_3c

    .line 1296
    .restart local v1    # "lastRet":I
    :cond_6d
    if-le v7, v5, :cond_49

    .line 1297
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    goto :goto_49

    .line 1304
    .restart local v3    # "nextIndex":I
    :cond_78
    if-le v7, v5, :cond_56

    .line 1305
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_56

    .line 1311
    .end local v7    # "x":I
    :cond_83
    return v10
.end method

.method shutdown()V
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, -0x2

    .line 1236
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1237
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-ltz v0, :cond_a

    .line 1238
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1239
    :cond_a
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-ltz v0, :cond_13

    .line 1240
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1241
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1243
    :cond_13
    const/4 v0, -0x3

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1248
    return-void
.end method

.method takeIndexWrapped()Z
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v2, 0x1

    .line 1321
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1322
    return v2

    .line 1323
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_17

    .line 1326
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    .line 1327
    return v2

    .line 1329
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
