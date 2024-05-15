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
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DETACHED:I = -0x3

.field private static final greylist-max-o NONE:I = -0x1

.field private static final greylist-max-o REMOVED:I = -0x2


# instance fields
.field private greylist-max-o cursor:I

.field private greylist-max-o lastItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private greylist-max-o lastRet:I

.field private greylist-max-o nextIndex:I

.field private greylist-max-o nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private greylist-max-o prevCycles:I

.field private greylist-max-o prevTakeIndex:I

.field final synthetic blacklist this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 6

    .line 1010
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1013
    iget-object v1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1014
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1016
    :try_start_d
    iget v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v2, :cond_19

    .line 1018
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1019
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1020
    const/4 p1, -0x3

    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    goto :goto_48

    .line 1022
    :cond_19
    iget v0, p1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1023
    .local v0, "takeIndex":I
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1024
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1025
    invoke-direct {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1026
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-nez v2, :cond_37

    .line 1027
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-direct {v2, p1, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    iput-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    goto :goto_42

    .line 1029
    :cond_37
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->register(Ljava/util/concurrent/ArrayBlockingQueue$Itr;)V

    .line 1030
    iget-object v2, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->doSomeSweeping(Z)V

    .line 1032
    :goto_42
    iget-object p1, p1, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget p1, p1, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iput p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_4d

    .line 1039
    .end local v0    # "takeIndex":I
    :goto_48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1040
    nop

    .line 1041
    return-void

    .line 1039
    :catchall_4d
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1040
    throw p1
.end method

.method private greylist-max-o detach()V
    .registers 3

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

.method private greylist-max-o distance(III)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "length"    # I

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

.method private greylist-max-o incCursor(I)I
    .registers 3
    .param p1, "index"    # I

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

.method private greylist-max-o incorporateDequeues()V
    .registers 15

    .line 1079
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    .line 1080
    .local v0, "cycles":I
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1081
    .local v1, "takeIndex":I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1082
    .local v2, "prevCycles":I
    iget v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1084
    .local v9, "prevTakeIndex":I
    if-ne v0, v2, :cond_12

    if-eq v1, v9, :cond_5d

    .line 1085
    :cond_12
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, v3, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v10, v3

    .line 1088
    .local v10, "len":I
    sub-int v3, v0, v2

    mul-int/2addr v3, v10

    sub-int v4, v1, v9

    add-int/2addr v3, v4

    int-to-long v11, v3

    .line 1092
    .local v11, "dequeues":J
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    move-object v3, p0

    move v5, v9

    move-wide v6, v11

    move v8, v10

    invoke-direct/range {v3 .. v8}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v3

    const/4 v13, -0x2

    if-eqz v3, :cond_2d

    .line 1093
    iput v13, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1094
    :cond_2d
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    move-object v3, p0

    move v5, v9

    move-wide v6, v11

    move v8, v10

    invoke-direct/range {v3 .. v8}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1095
    iput v13, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1096
    :cond_3b
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    move-object v3, p0

    move v5, v9

    move-wide v6, v11

    move v8, v10

    invoke-direct/range {v3 .. v8}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->invalidated(IIJI)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1097
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1099
    :cond_49
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v3, :cond_59

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v3, :cond_59

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    if-gez v3, :cond_59

    .line 1100
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V

    goto :goto_5d

    .line 1102
    :cond_59
    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    .line 1103
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1106
    .end local v10    # "len":I
    .end local v11    # "dequeues":J
    :cond_5d
    :goto_5d
    return-void
.end method

.method private greylist-max-o invalidated(IIJI)Z
    .registers 10
    .param p1, "index"    # I
    .param p2, "prevTakeIndex"    # I
    .param p3, "dequeues"    # J
    .param p5, "length"    # I

    .line 1061
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 1062
    return v0

    .line 1063
    :cond_4
    sub-int v1, p1, p2

    .line 1064
    .local v1, "distance":I
    if-gez v1, :cond_9

    .line 1065
    add-int/2addr v1, p5

    .line 1066
    :cond_9
    int-to-long v2, v1

    cmp-long v2, p3, v2

    if-lez v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private greylist-max-o noNext()V
    .registers 4

    .line 1145
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

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
    .catchall {:try_start_7 .. :try_end_21} :catchall_26

    .line 1162
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1163
    nop

    .line 1164
    return-void

    .line 1162
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1163
    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

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

.method greylist-max-o isDetached()Z
    .registers 2

    .line 1045
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1168
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1169
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_3d

    .line 1171
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, v1, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1172
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1174
    :try_start_b
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1175
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1178
    :cond_14
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1179
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1180
    .local v2, "cursor":I
    if-ltz v2, :cond_2d

    .line 1181
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 1183
    invoke-direct {p0, v2}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incCursor(I)I

    move-result v3

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_33

    .line 1185
    :cond_2d
    const/4 v3, -0x1

    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1186
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_38

    .line 1189
    .end local v2    # "cursor":I
    :goto_33
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1190
    nop

    .line 1191
    return-object v0

    .line 1189
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1190
    throw v2

    .line 1170
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_3d
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 5

    .line 1196
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1197
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1199
    :try_start_7
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1200
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->incorporateDequeues()V

    .line 1201
    :cond_10
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1202
    .local v1, "lastRet":I
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1203
    if-ltz v1, :cond_36

    .line 1204
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1205
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    goto :goto_38

    .line 1207
    :cond_23
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1209
    .local v2, "lastItem":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastItem:Ljava/lang/Object;

    .line 1210
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_35

    .line 1211
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 1212
    .end local v2    # "lastItem":Ljava/lang/Object;, "TE;"
    :cond_35
    goto :goto_38

    .line 1213
    :cond_36
    if-eq v1, v2, :cond_48

    .line 1219
    :goto_38
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    if-gez v2, :cond_43

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v2, :cond_43

    .line 1220
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->detach()V
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_4e

    .line 1222
    .end local v1    # "lastRet":I
    :cond_43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1225
    nop

    .line 1226
    return-void

    .line 1214
    .restart local v1    # "lastRet":I
    :cond_48
    :try_start_48
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    throw v2
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4e

    .line 1222
    .end local v1    # "lastRet":I
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    :catchall_4e
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1225
    throw v1
.end method

.method greylist-max-o removedAt(I)Z
    .registers 13
    .param p1, "removedIndex"    # I

    .line 1264
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1265
    return v1

    .line 1267
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 1268
    .local v0, "takeIndex":I
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1269
    .local v2, "prevTakeIndex":I
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v3, v3, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v3, v3

    .line 1271
    .local v3, "len":I
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v4, v4, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v4, v4, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v4, v5

    .line 1273
    const/4 v5, 0x0

    if-ge p1, v0, :cond_21

    move v6, v1

    goto :goto_22

    :cond_21
    move v6, v5

    :goto_22
    add-int/2addr v4, v6

    mul-int/2addr v4, v3

    sub-int v6, p1, v2

    add-int/2addr v4, v6

    .line 1279
    .local v4, "removedDistance":I
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1280
    .local v6, "cursor":I
    if-ltz v6, :cond_47

    .line 1281
    invoke-direct {p0, v6, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v7

    .line 1282
    .local v7, "x":I
    if-ne v7, v4, :cond_3c

    .line 1283
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v8, v8, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-ne v6, v8, :cond_47

    .line 1284
    const/4 v8, -0x1

    move v6, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    goto :goto_47

    .line 1286
    :cond_3c
    if-le v7, v4, :cond_47

    .line 1288
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v8

    move v6, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1291
    .end local v7    # "x":I
    :cond_47
    :goto_47
    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1292
    .local v7, "lastRet":I
    const/4 v8, -0x2

    if-ltz v7, :cond_61

    .line 1293
    invoke-direct {p0, v7, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v9

    .line 1294
    .local v9, "x":I
    if-ne v9, v4, :cond_56

    .line 1295
    move v7, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    goto :goto_61

    .line 1296
    :cond_56
    if-le v9, v4, :cond_61

    .line 1297
    iget-object v10, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v10, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v10

    move v7, v10

    iput v10, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 1299
    .end local v9    # "x":I
    :cond_61
    :goto_61
    iget v9, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1300
    .local v9, "nextIndex":I
    if-ltz v9, :cond_7a

    .line 1301
    invoke-direct {p0, v9, v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->distance(III)I

    move-result v10

    .line 1302
    .local v10, "x":I
    if-ne v10, v4, :cond_6f

    .line 1303
    move v9, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_7a

    .line 1304
    :cond_6f
    if-le v10, v4, :cond_7a

    .line 1305
    iget-object v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ArrayBlockingQueue;->dec(I)I

    move-result v8

    move v9, v8

    iput v8, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 1307
    .end local v10    # "x":I
    :cond_7a
    :goto_7a
    if-gez v6, :cond_84

    if-gez v9, :cond_84

    if-gez v7, :cond_84

    .line 1308
    const/4 v5, -0x3

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevTakeIndex:I

    .line 1309
    return v1

    .line 1311
    :cond_84
    return v5
.end method

.method greylist-max-o shutdown()V
    .registers 3

    .line 1236
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->cursor:I

    .line 1237
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    const/4 v1, -0x2

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

.method greylist-max-o takeIndexWrapped()Z
    .registers 4

    .line 1321
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue$Itr;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->isDetached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1322
    return v1

    .line 1323
    :cond_8
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v0, v0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    iget v0, v0, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->cycles:I

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->prevCycles:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_17

    .line 1326
    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->shutdown()V

    .line 1327
    return v1

    .line 1329
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
