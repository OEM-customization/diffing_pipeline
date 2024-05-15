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
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field blacklist cursor:I

.field blacklist expectedModCount:I

.field blacklist lastRet:I

.field final synthetic blacklist this$1:Ljava/util/ArrayList$SubList;

.field final synthetic blacklist val$index:I

.field final synthetic blacklist val$offset:I


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayList$SubList;II)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/ArrayList$SubList;

    .line 1121
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iput-object p1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput p3, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    iget p2, p0, Ljava/util/ArrayList$SubList$1;->val$index:I

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1123
    const/4 p2, -0x1

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1124
    iget-object p2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object p2, p2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget p2, p2, Ljava/util/ArrayList;->modCount:I

    iput p2, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1221
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v0, v1, :cond_29

    .line 1225
    :try_start_a
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1226
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList$SubList;->add(ILjava/lang/Object;)V

    .line 1227
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1228
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1229
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_20} :catch_22

    .line 1232
    .end local v0    # "i":I
    nop

    .line 1233
    return-void

    .line 1230
    :catch_22
    move-exception v0

    .line 1231
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1222
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_29
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
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

    .line 1164
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v0, v0, Ljava/util/ArrayList$SubList;->size:I

    .line 1166
    .local v0, "size":I
    iget v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1167
    .local v1, "i":I
    if-lt v1, v0, :cond_c

    .line 1168
    return-void

    .line 1170
    :cond_c
    iget-object v2, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v2, v2, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v2, v2, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1171
    .local v2, "elementData":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/2addr v3, v1

    array-length v4, v2

    if-ge v3, v4, :cond_43

    .line 1174
    :goto_18
    if-eq v1, v0, :cond_2e

    iget-object v3, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v3, v3, Ljava/util/ArrayList$SubList;->modCount:I

    iget v4, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    if-ne v3, v4, :cond_2e

    .line 1175
    iget v3, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    add-int/2addr v3, v1

    aget-object v1, v2, v3

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v4

    goto :goto_18

    .line 1178
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2e
    iput v1, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iput v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1179
    iget v3, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v4, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v4, v4, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v4, v4, Ljava/util/ArrayList;->modCount:I

    if-ne v3, v4, :cond_3d

    .line 1181
    return-void

    .line 1180
    :cond_3d
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 1172
    :cond_43
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 3

    .line 1127
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v1, v1, Ljava/util/ArrayList$SubList;->size:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api hasPrevious()Z
    .registers 2

    .line 1145
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1132
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v0, v1, :cond_35

    .line 1134
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1135
    .local v0, "i":I
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v1, v1, Ljava/util/ArrayList$SubList;->size:I

    if-ge v0, v1, :cond_2f

    .line 1137
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1138
    .local v1, "elementData":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int v3, v2, v0

    array-length v4, v1

    if-ge v3, v4, :cond_29

    .line 1140
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1141
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v0

    aget-object v2, v1, v2

    return-object v2

    .line 1139
    :cond_29
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1136
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_2f
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1133
    .end local v0    # "i":I
    :cond_35
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api nextIndex()I
    .registers 2

    .line 1184
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    return v0
.end method

.method public whitelist core-platform-api test-api previous()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1150
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v0, v1, :cond_31

    .line 1152
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    .line 1153
    .local v0, "i":I
    if-ltz v0, :cond_2b

    .line 1155
    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget-object v1, v1, Ljava/util/ArrayList;->elementData:[Ljava/lang/Object;

    .line 1156
    .local v1, "elementData":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    add-int v3, v2, v0

    array-length v4, v1

    if-ge v3, v4, :cond_25

    .line 1158
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1159
    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v2, v0

    aget-object v2, v1, v2

    return-object v2

    .line 1157
    :cond_25
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1154
    .end local v1    # "elementData":[Ljava/lang/Object;
    :cond_2b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1151
    .end local v0    # "i":I
    :cond_31
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api previousIndex()I
    .registers 2

    .line 1188
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 3

    .line 1192
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-ltz v0, :cond_33

    .line 1194
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v0, v1, :cond_2d

    .line 1198
    :try_start_e
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList$SubList;->remove(I)Ljava/lang/Object;

    .line 1199
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->cursor:I

    .line 1200
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    .line 1201
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v0, v0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v0, v0, Ljava/util/ArrayList;->modCount:I

    iput v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_24} :catch_26

    .line 1204
    nop

    .line 1205
    return-void

    .line 1202
    :catch_26
    move-exception v0

    .line 1203
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1195
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_2d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1193
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api set(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1208
    .local p0, "this":Ljava/util/ArrayList$SubList$1;, "Ljava/util/ArrayList$SubList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    if-ltz v0, :cond_29

    .line 1210
    iget v0, p0, Ljava/util/ArrayList$SubList$1;->expectedModCount:I

    iget-object v1, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v1, v1, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, v1, Ljava/util/ArrayList;->modCount:I

    if-ne v0, v1, :cond_23

    .line 1214
    :try_start_e
    iget-object v0, p0, Ljava/util/ArrayList$SubList$1;->this$1:Ljava/util/ArrayList$SubList;

    iget-object v0, v0, Ljava/util/ArrayList$SubList;->this$0:Ljava/util/ArrayList;

    iget v1, p0, Ljava/util/ArrayList$SubList$1;->val$offset:I

    iget v2, p0, Ljava/util/ArrayList$SubList$1;->lastRet:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_1a} :catch_1c

    .line 1217
    nop

    .line 1218
    return-void

    .line 1215
    :catch_1c
    move-exception v0

    .line 1216
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1211
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_23
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1209
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
