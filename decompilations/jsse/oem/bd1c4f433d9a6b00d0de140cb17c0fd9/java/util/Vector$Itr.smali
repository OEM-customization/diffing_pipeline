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
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field protected limit:I

.field final synthetic this$0:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Ljava/util/Vector;)V
    .registers 3

    .prologue
    .line 1124
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .local p1, "this$0":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    iput-object p1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->elementCount:I

    iput v0, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1136
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1137
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iput v0, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    .line 1124
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Vector;Ljava/util/Vector$Itr;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/Vector;
    .param p2, "-this1"    # Ljava/util/Vector$Itr;

    .prologue
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    invoke-direct {p0, p1}, Ljava/util/Vector$Itr;-><init>(Ljava/util/Vector;)V

    return-void
.end method


# virtual methods
.method final checkForComodification()V
    .registers 3

    .prologue
    .line 1192
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iget v1, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_e

    .line 1193
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1194
    :cond_e
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object v5, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v5

    .line 1171
    :try_start_6
    iget v3, p0, Ljava/util/Vector$Itr;->limit:I

    .line 1172
    .local v3, "size":I
    iget v1, p0, Ljava/util/Vector$Itr;->cursor:I
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1b

    .line 1173
    .local v1, "i":I
    if-lt v1, v3, :cond_e

    monitor-exit v5

    .line 1174
    return-void

    .line 1177
    :cond_e
    :try_start_e
    iget-object v4, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget-object v0, v4, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 1178
    .local v0, "elementData":[Ljava/lang/Object;, "[TE;"
    array-length v4, v0

    if-lt v1, v4, :cond_2f

    .line 1179
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1b

    .line 1170
    .end local v0    # "elementData":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_1b
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1181
    .restart local v0    # "elementData":[Ljava/lang/Object;, "[TE;"
    .local v2, "i":I
    .restart local v3    # "size":I
    :goto_1e
    if-eq v2, v3, :cond_31

    :try_start_20
    iget-object v4, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v4, v4, Ljava/util/Vector;->modCount:I

    iget v6, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    if-ne v4, v6, :cond_31

    .line 1182
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2f
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1e

    .line 1185
    :cond_31
    iput v2, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1186
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1187
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_1b

    monitor-exit v5

    .line 1189
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1140
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1144
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v2

    .line 1145
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1146
    iget v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1147
    .local v0, "i":I
    iget v1, p0, Ljava/util/Vector$Itr;->limit:I

    if-lt v0, v1, :cond_15

    .line 1148
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 1144
    .end local v0    # "i":I
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1149
    .restart local v0    # "i":I
    :cond_15
    add-int/lit8 v1, v0, 0x1

    :try_start_17
    iput v1, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1150
    iget-object v1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iput v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementData(I)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_12

    move-result-object v1

    monitor-exit v2

    return-object v1
.end method

.method public remove()V
    .registers 5

    .prologue
    .local p0, "this":Ljava/util/Vector$Itr;, "Ljava/util/Vector<TE;>.Itr;"
    const/4 v3, -0x1

    .line 1155
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    if-ne v0, v3, :cond_b

    .line 1156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1157
    :cond_b
    iget-object v1, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    monitor-enter v1

    .line 1158
    :try_start_e
    invoke-virtual {p0}, Ljava/util/Vector$Itr;->checkForComodification()V

    .line 1159
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v2, p0, Ljava/util/Vector$Itr;->lastRet:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1160
    iget-object v0, p0, Ljava/util/Vector$Itr;->this$0:Ljava/util/Vector;

    iget v0, v0, Ljava/util/Vector;->modCount:I

    iput v0, p0, Ljava/util/Vector$Itr;->expectedModCount:I

    .line 1161
    iget v0, p0, Ljava/util/Vector$Itr;->limit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/Vector$Itr;->limit:I
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_2c

    monitor-exit v1

    .line 1163
    iget v0, p0, Ljava/util/Vector$Itr;->lastRet:I

    iput v0, p0, Ljava/util/Vector$Itr;->cursor:I

    .line 1164
    iput v3, p0, Ljava/util/Vector$Itr;->lastRet:I

    .line 1165
    return-void

    .line 1157
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
