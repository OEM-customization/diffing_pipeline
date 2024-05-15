.class Ljava/util/Vector$Itr;
.super Ljava/lang/Object;
.source "Vector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Vector;
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


# instance fields
.field greylist-max-o cursor:I

.field greylist-max-o expectedModCount:I

.field greylist-max-o lastRet:I

.field protected greylist-max-o limit:I

.field final synthetic blacklist this$0:Ljava/util/Vector;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Vector;)V
    .registers 2

    .line 1124
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iget-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget p1, p1, Ljava/util/Vector;->elementCount:I

    iput p1, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1136
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1137
    iget-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget p1, p1, Ljava/util/Vector;->modCount:I

    iput p1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Vector;Ljava/util/Vector$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/Vector;
    .param p2, "x1"    # Ljava/util/Vector$1;

    .line 1124
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;)V

    return-void
.end method


# virtual methods
.method final greylist-max-o checkForComodification()V
    .registers 3

    .line 1199
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_9

    .line 1201
    return-void

    .line 1200
    :cond_9
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1174
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1178
    :try_start_6
    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1179
    .local v1, "size":I
    iget v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1180
    .local v2, "i":I
    if-lt v2, v1, :cond_e

    .line 1181
    monitor-exit v0

    return-void

    .line 1184
    :cond_e
    iget-object v3, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget-object v3, v3, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1185
    .local v3, "elementData":[Ljava/lang/Object;, "[TE;"
    array-length v4, v3

    if-ge v2, v4, :cond_33

    .line 1188
    :goto_15
    if-eq v2, v1, :cond_28

    iget-object v4, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v4, v4, Ljava/util/Vector;->modCount:I

    iget v5, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-ne v4, v5, :cond_28

    .line 1189
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget-object v2, v3, v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v4

    goto :goto_15

    .line 1192
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_28
    iput v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1193
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1194
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1195
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "elementData":[Ljava/lang/Object;, "[TE;"
    monitor-exit v0

    .line 1196
    return-void

    .line 1186
    .restart local v1    # "size":I
    .restart local v2    # "i":I
    .restart local v3    # "elementData":[Ljava/lang/Object;, "[TE;"
    :cond_33
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    .end local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .end local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    throw v4

    .line 1195
    .end local v1    # "size":I
    .end local v2    # "i":I
    .end local v3    # "elementData":[Ljava/lang/Object;, "[TE;"
    .restart local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .restart local p1    # "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_6 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 1142
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1146
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1147
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1148
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1151
    .local v1, "i":I
    iget v2, p0, Ljava/util/Vector$Itr;->limit:I

    if-ge v1, v2, :cond_1a

    .line 1153
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1154
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iput v1, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1152
    :cond_1a
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    .end local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    throw v2

    .line 1155
    .end local v1    # "i":I
    .restart local p0    # "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 5

    .line 1159
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 1161
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v0

    .line 1162
    :try_start_8
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1163
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v3, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1164
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v2, v2, Ljava/util/Vector;->modCount:I

    iput v2, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    .line 1166
    iget v2, p0, Ljava/util/Vector$Itr;->limit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1167
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    .line 1168
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    iput v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1169
    iput v1, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1170
    return-void

    .line 1167
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1

    .line 1160
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
