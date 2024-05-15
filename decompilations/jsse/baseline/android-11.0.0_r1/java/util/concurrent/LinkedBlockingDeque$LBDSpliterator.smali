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
        "Ljava/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field greylist-max-o batch:I

.field greylist-max-o current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o est:J

.field greylist-max-o exhausted:Z

.field final greylist-max-o queue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/LinkedBlockingDeque;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TE;>;)V"
        }
    .end annotation

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
.method public whitelist core-platform-api test-api characteristics()I
    .registers 2

    .line 1242
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist core-platform-api test-api estimateSize()J
    .registers 3

    .line 1142
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    iget-wide v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1185
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_36

    .line 1186
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1187
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1188
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v2, :cond_35

    .line 1189
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    .line 1190
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1192
    .local v2, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_f
    const/4 v3, 0x0

    .line 1193
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1195
    if-nez v2, :cond_1b

    .line 1196
    :try_start_15
    iget-object v4, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v2, v4

    goto :goto_1b

    .line 1204
    :catchall_19
    move-exception v4

    goto :goto_26

    .line 1197
    :cond_1b
    :goto_1b
    if-eqz v2, :cond_2a

    .line 1198
    iget-object v4, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    move-object v3, v4

    .line 1199
    iget-object v4, v2, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_19

    move-object v2, v4

    .line 1200
    if-eqz v3, :cond_1b

    .line 1201
    goto :goto_2a

    .line 1204
    :goto_26
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1205
    throw v4

    .line 1204
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1205
    nop

    .line 1206
    if-eqz v3, :cond_33

    .line 1207
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1208
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    :cond_33
    if-nez v2, :cond_f

    .line 1210
    .end local v2    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_35
    return-void

    .line 1185
    .end local v0    # "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_36
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1213
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    if-eqz p1, :cond_3f

    .line 1214
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1215
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1216
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-boolean v2, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v2, :cond_3d

    .line 1217
    const/4 v2, 0x0

    .line 1218
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1220
    :try_start_e
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-nez v3, :cond_16

    .line 1221
    iget-object v3, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1222
    :cond_16
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v3, :cond_27

    .line 1223
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    move-object v2, v3

    .line 1224
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_38

    .line 1225
    if-eqz v2, :cond_16

    .line 1229
    :cond_27
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1230
    nop

    .line 1231
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    const/4 v4, 0x1

    if-nez v3, :cond_32

    .line 1232
    iput-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    .line 1233
    :cond_32
    if-eqz v2, :cond_3d

    .line 1234
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1235
    return v4

    .line 1229
    :catchall_38
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1230
    throw v3

    .line 1238
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_3d
    const/4 v2, 0x0

    return v2

    .line 1213
    .end local v0    # "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_3f
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api trySplit()Ljava/util/Spliterator;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1146
    .local p0, "this":Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;, "Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->queue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 1147
    .local v0, "q":Ljava/util/concurrent/LinkedBlockingDeque;, "Ljava/util/concurrent/LinkedBlockingDeque<TE;>;"
    iget v1, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    .line 1148
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

    .line 1149
    .local v2, "n":I
    :goto_10
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    if-nez v4, :cond_6e

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v5, v4

    .local v5, "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    if-nez v4, :cond_1e

    iget-object v4, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v5, v4

    if-eqz v4, :cond_6e

    :cond_1e
    iget-object v4, v5, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    if-eqz v4, :cond_6e

    .line 1152
    new-array v4, v2, [Ljava/lang/Object;

    .line 1153
    .local v4, "a":[Ljava/lang/Object;
    iget-object v6, v0, Ljava/util/concurrent/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1154
    .local v6, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v7, 0x0

    .line 1155
    .local v7, "i":I
    iget-object v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    .line 1156
    .local v8, "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1158
    if-nez v8, :cond_33

    :try_start_2e
    iget-object v9, v0, Ljava/util/concurrent/LinkedBlockingDeque;->first:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    move-object v8, v9

    if-eqz v9, :cond_42

    .line 1160
    :cond_33
    iget-object v9, v8, Ljava/util/concurrent/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v9, v4, v7

    if-eqz v9, :cond_3b

    .line 1161
    add-int/lit8 v7, v7, 0x1

    .line 1162
    :cond_3b
    iget-object v9, v8, Ljava/util/concurrent/LinkedBlockingDeque$Node;->next:Ljava/util/concurrent/LinkedBlockingDeque$Node;
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_69

    move-object v8, v9

    if-eqz v9, :cond_42

    if-lt v7, v2, :cond_33

    .line 1165
    :cond_42
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1166
    nop

    .line 1167
    iput-object v8, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->current:Ljava/util/concurrent/LinkedBlockingDeque$Node;

    const-wide/16 v9, 0x0

    if-nez v8, :cond_51

    .line 1168
    iput-wide v9, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1169
    iput-boolean v3, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->exhausted:Z

    goto :goto_5d

    .line 1171
    :cond_51
    iget-wide v11, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    int-to-long v13, v7

    sub-long/2addr v11, v13

    iput-wide v11, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    cmp-long v3, v11, v9

    if-gez v3, :cond_5d

    .line 1172
    iput-wide v9, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->est:J

    .line 1173
    :cond_5d
    :goto_5d
    if-lez v7, :cond_6e

    .line 1174
    iput v7, p0, Ljava/util/concurrent/LinkedBlockingDeque$LBDSpliterator;->batch:I

    .line 1175
    const/4 v3, 0x0

    const/16 v9, 0x1110

    .line 1176
    invoke-static {v4, v3, v7, v9}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v3

    .line 1175
    return-object v3

    .line 1165
    :catchall_69
    move-exception v3

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1166
    throw v3

    .line 1181
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "h":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    .end local v6    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "i":I
    .end local v8    # "p":Ljava/util/concurrent/LinkedBlockingDeque$Node;, "Ljava/util/concurrent/LinkedBlockingDeque$Node<TE;>;"
    :cond_6e
    const/4 v3, 0x0

    return-object v3
.end method
