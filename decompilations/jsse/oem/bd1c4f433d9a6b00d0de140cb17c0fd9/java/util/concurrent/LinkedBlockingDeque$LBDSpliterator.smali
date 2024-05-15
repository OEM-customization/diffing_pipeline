.class final Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LBDSpliterator"
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

.field current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field est:J

.field exhausted:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1139
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1140
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1242
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public estimateSize()J
    .registers 3

    .prologue
    .line 1142
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-nez p1, :cond_8

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1186
    :cond_8
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1187
    .local v3, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, v3, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1188
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v4, :cond_2f

    .line 1189
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    .line 1190
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1192
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_15
    const/4 v0, 0x0

    .line 1193
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1195
    if-nez v2, :cond_1d

    .line 1196
    :try_start_1b
    iget-object v2, v3, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1197
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1d
    if-eqz v2, :cond_25

    .line 1198
    iget-object v0, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 1199
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_30

    .line 1200
    if-eqz v0, :cond_1d

    .line 1204
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1206
    if-eqz v0, :cond_2d

    .line 1207
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1208
    :cond_2d
    if-nez v2, :cond_15

    .line 1210
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_2f
    return-void

    .line 1203
    .restart local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_30
    move-exception v4

    .line 1204
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1203
    throw v4
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
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    const/4 v4, 0x1

    .line 1213
    if-nez p1, :cond_9

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1214
    :cond_9
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1215
    .local v2, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1216
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v3, :cond_41

    .line 1217
    const/4 v0, 0x0

    .line 1218
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1220
    :try_start_15
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v3, :cond_1d

    .line 1221
    iget-object v3, v2, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1222
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1d
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v3, :cond_2d

    .line 1223
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v0, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 1224
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_3c

    .line 1225
    if-eqz v0, :cond_1d

    .line 1229
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1231
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v3, :cond_36

    .line 1232
    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    .line 1233
    :cond_36
    if-eqz v0, :cond_41

    .line 1234
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1235
    return v4

    .line 1228
    :catchall_3c
    move-exception v3

    .line 1229
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1228
    throw v3

    .line 1238
    :cond_41
    const/4 v3, 0x0

    return v3
.end method

.method public trySplit()Ljava/util/Spliterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    iget-object v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1147
    .local v7, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    .line 1148
    .local v1, "b":I
    if-gtz v1, :cond_4f

    const/4 v5, 0x1

    .line 1149
    .local v5, "n":I
    :goto_7
    iget-boolean v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v8, :cond_6f

    .line 1150
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .local v2, "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_13

    iget-object v2, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v2, :cond_6f

    .line 1151
    :cond_13
    iget-object v8, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v8, :cond_6f

    .line 1152
    new-array v0, v5, [Ljava/lang/Object;

    .line 1153
    .local v0, "a":[Ljava/lang/Object;
    iget-object v4, v7, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1154
    .local v4, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v3, 0x0

    .line 1155
    .local v3, "i":I
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1156
    .local v6, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1158
    if-nez v6, :cond_27

    :try_start_23
    iget-object v6, v7, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v6, :cond_35

    .line 1160
    :cond_27
    iget-object v8, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v8, v0, v3

    if-eqz v8, :cond_2f

    .line 1161
    add-int/lit8 v3, v3, 0x1

    .line 1162
    :cond_2f
    iget-object v6, v6, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_59

    if-eqz v6, :cond_35

    if-lt v3, v5, :cond_27

    .line 1165
    :cond_35
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1167
    iput-object v6, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v6, :cond_5e

    .line 1168
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1169
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    .line 1173
    :cond_43
    :goto_43
    if-lez v3, :cond_6f

    .line 1174
    iput v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    .line 1176
    const/4 v8, 0x0

    const/16 v9, 0x1110

    .line 1175
    invoke-static {v0, v8, v3, v9}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v8

    return-object v8

    .line 1148
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "i":I
    .end local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "n":I
    .end local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_4f
    const/high16 v8, 0x2000000

    if-lt v1, v8, :cond_56

    const/high16 v5, 0x2000000

    .restart local v5    # "n":I
    goto :goto_7

    .end local v5    # "n":I
    :cond_56
    add-int/lit8 v5, v1, 0x1

    .restart local v5    # "n":I
    goto :goto_7

    .line 1164
    .restart local v0    # "a":[Ljava/lang/Object;
    .restart local v2    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .restart local v3    # "i":I
    .restart local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :catchall_59
    move-exception v8

    .line 1165
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1164
    throw v8

    .line 1171
    :cond_5e
    iget-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    int-to-long v10, v3

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_43

    .line 1172
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    goto :goto_43

    .line 1181
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "i":I
    .end local v4    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v6    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_6f
    const/4 v8, 0x0

    return-object v8
.end method
