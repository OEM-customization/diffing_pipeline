.class Ljava/util/ArrayList$SubList$1;
.super Ljava/lang/Object;
.source "ArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ArrayList$SubList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field cursor:I

.field expectedModCount:I

.field lastRet:I

.field final synthetic this$1:Ljava/util/ArrayList$SubList;

.field final synthetic val$index:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList$SubList;II)V
    .registers 5

    .prologue
    .line 1
    .local p1, "this$1":Ljava/util/ArrayList$SubList;, "Ljava/util/ArrayList<TE;>.SubList;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput p3, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1123
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1124
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v0, v0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    .line 1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v3, :cond_10

    .line 1222
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1225
    :cond_10
    :try_start_10
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1226
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList$SubList;->add(ILjava/lang/Object;)V

    .line 1227
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1228
    const/4 v2, -0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1229
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_26} :catch_27

    .line 1233
    return-void

    .line 1230
    .end local v1    # "i":I
    :catch_27
    move-exception v0

    .line 1231
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v3, v4, Ljava/util/ArrayList$SubList;->size:I

    .line 1166
    .local v3, "size":I
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1167
    .local v1, "i":I
    if-lt v1, v3, :cond_c

    .line 1168
    return-void

    .line 1170
    :cond_c
    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v4, v4, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v4, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1171
    .local v0, "elementData":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v4, v1

    array-length v5, v0

    if-lt v4, v5, :cond_32

    .line 1172
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1174
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1e
    if-eq v2, v3, :cond_34

    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v4, v4, Ljava/util/ArrayList$SubList;->modCount:I

    iget v5, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    if-ne v4, v5, :cond_34

    .line 1175
    iget v4, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/2addr v4, v2

    aget-object v4, v0, v4

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_32
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1e

    .line 1178
    :cond_34
    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1179
    iget v4, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v5, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v5, v5, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v5, v5, Ljava/util/ArrayList;->modCount:I

    if-eq v4, v5, :cond_48

    .line 1180
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1181
    :cond_48
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1127
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v1, v1, Ljava/util/ArrayList$SubList;->size:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1145
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    if-eqz v1, :cond_6

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
    .line 1132
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v3, :cond_10

    .line 1133
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1134
    :cond_10
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1135
    .local v1, "i":I
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v2, v2, Ljava/util/ArrayList$SubList;->size:I

    if-lt v1, v2, :cond_1e

    .line 1136
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1137
    :cond_1e
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1138
    .local v0, "elementData":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v2, v1

    array-length v3, v0

    if-lt v2, v3, :cond_30

    .line 1139
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1140
    :cond_30
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1141
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v1

    aget-object v2, v0, v2

    return-object v2
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1150
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v3, v3, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v3, v3, Ljava/util/ArrayList;->modCount:I

    if-eq v2, v3, :cond_10

    .line 1151
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1152
    :cond_10
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v1, v2, -0x1

    .line 1153
    .local v1, "i":I
    if-gez v1, :cond_1c

    .line 1154
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1155
    :cond_1c
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v0, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1156
    .local v0, "elementData":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v2, v1

    array-length v3, v0

    if-lt v2, v3, :cond_2e

    .line 1157
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1158
    :cond_2e
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1159
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v1

    aget-object v2, v0, v2

    return-object v2
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 1188
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 1192
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-gez v1, :cond_a

    .line 1193
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1194
    :cond_a
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    if-eq v1, v2, :cond_1a

    .line 1195
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1198
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList$SubList;->remove(I)Ljava/lang/Object;

    .line 1199
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1200
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1201
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_30} :catch_31

    .line 1205
    return-void

    .line 1202
    :catch_31
    move-exception v0

    .line 1203
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public set(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 1208
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-gez v1, :cond_a

    .line 1209
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 1210
    :cond_a
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, v2, Ljava/util/ArrayList;->modCount:I

    if-eq v1, v2, :cond_1a

    .line 1211
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1214
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iget v3, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_26} :catch_27

    .line 1218
    return-void

    .line 1215
    :catch_27
    move-exception v0

    .line 1216
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
