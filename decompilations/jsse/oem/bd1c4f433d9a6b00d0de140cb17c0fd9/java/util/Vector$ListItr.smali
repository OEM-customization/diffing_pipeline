.class final Ljava/util/Vector$ListItr;
.super Ljava/util/Vector$Itr;
.source "Vector.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListItr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<TE;>.Itr;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method constructor <init>(Ljava/util/Vector;I)V
    .registers 4
    .param p2, "index"    # I

    .prologue
    .line 1201
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    .line 1202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V

    .line 1203
    iput p2, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1204
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1239
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1240
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v2

    .line 1241
    :try_start_5
    invoke-virtual {p0}, Ljava/util/Vector$ListItr;->checkForComodification()V

    .line 1242
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1243
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iget v1, v1, Ljava/util/Vector;->modCount:I

    iput v1, p0, Ljava/util/Vector$ListItr;->expectedModCount:I

    .line 1244
    iget v1, p0, Ljava/util/Vector$ListItr;->limit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/Vector$ListItr;->limit:I
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_22

    monitor-exit v2

    .line 1246
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1247
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Vector$ListItr;->lastRet:I

    .line 1248
    return-void

    .line 1240
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    const/4 v0, 0x0

    .line 1207
    iget v1, p0, Ljava/util/Vector$ListItr;->cursor:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 1211
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1219
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget-object v2, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v2

    .line 1220
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Vector$ListItr;->checkForComodification()V

    .line 1221
    iget v1, p0, Ljava/util/Vector$ListItr;->cursor:I

    add-int/lit8 v0, v1, -0x1

    .line 1222
    .local v0, "i":I
    if-gez v0, :cond_15

    .line 1223
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 1219
    .end local v0    # "i":I
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1224
    .restart local v0    # "i":I
    :cond_15
    :try_start_15
    iput v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    .line 1225
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iput v0, p0, Ljava/util/Vector$ListItr;->lastRet:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 1215
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    iget v0, p0, Ljava/util/Vector$ListItr;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1230
    .local p0, "this":Ljava/util/Vector$ListItr;, "Ljava/util/Vector<TE;>.ListItr;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/Vector$ListItr;->lastRet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1231
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1232
    :cond_b
    iget-object v1, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    monitor-enter v1

    .line 1233
    :try_start_e
    invoke-virtual {p0}, Ljava/util/Vector$ListItr;->checkForComodification()V

    .line 1234
    iget-object v0, p0, Ljava/util/Vector$ListItr;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$ListItr;->lastRet:I

    invoke-virtual {v0, v2, p1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 1236
    return-void

    .line 1232
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
