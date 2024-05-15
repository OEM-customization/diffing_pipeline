.class final Ljava/util/WeakHashMap$KeySpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1103
    return-void
.end method


# virtual methods
.method public characteristics()I
    .registers 2

    .prologue
    .line 1173
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v10, 0x0

    .line 1114
    if-nez p1, :cond_9

    .line 1115
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 1116
    :cond_9
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    .line 1117
    .local v4, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v7, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1118
    .local v7, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v0, p0, Ljava/util/WeakHashMap$KeySpliterator;->fence:I

    .local v0, "hi":I
    if-gez v0, :cond_38

    .line 1119
    iget v5, v4, Ljava/util/WeakHashMap;->modCount:I

    iput v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    .line 1120
    .local v5, "mc":I
    array-length v0, v7

    .end local v0    # "hi":I
    iput v0, p0, Ljava/util/WeakHashMap$KeySpliterator;->fence:I

    .line 1124
    .restart local v0    # "hi":I
    :goto_18
    array-length v9, v7

    if-lt v9, v0, :cond_4c

    iget v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    .local v1, "i":I
    if-ltz v1, :cond_4c

    .line 1125
    iput v0, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    if-lt v1, v0, :cond_27

    iget-object v9, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v9, :cond_4c

    .line 1126
    :cond_27
    iget-object v6, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1127
    .local v6, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iput-object v10, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    move v2, v1

    .line 1129
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2c
    if-nez v6, :cond_3b

    .line 1130
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    .line 1140
    :goto_32
    if-nez v6, :cond_36

    if-ge v1, v0, :cond_4c

    :cond_36
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2c

    .line 1123
    .end local v2    # "i":I
    .end local v5    # "mc":I
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_38
    iget v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    .restart local v5    # "mc":I
    goto :goto_18

    .line 1132
    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_3b
    invoke-virtual {v6}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v8

    .line 1133
    .local v8, "x":Ljava/lang/Object;
    iget-object v6, v6, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1134
    if-eqz v8, :cond_57

    .line 1136
    invoke-static {v8}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1137
    .local v3, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_32

    .line 1142
    .end local v1    # "i":I
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v8    # "x":Ljava/lang/Object;
    :cond_4c
    iget v9, v4, Ljava/util/WeakHashMap;->modCount:I

    if-eq v9, v5, :cond_56

    .line 1143
    new-instance v9, Ljava/util/ConcurrentModificationException;

    invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v9

    .line 1144
    :cond_56
    return-void

    .restart local v2    # "i":I
    .restart local v6    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .restart local v8    # "x":Ljava/lang/Object;
    :cond_57
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_32
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v6, 0x0

    .line 1148
    if-nez p1, :cond_9

    .line 1149
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1150
    :cond_9
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v2, v4, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1151
    .local v2, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v4, v2

    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    if-lt v4, v0, :cond_54

    iget v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    if-ltz v4, :cond_54

    .line 1152
    :cond_18
    :goto_18
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_20

    iget v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    if-ge v4, v0, :cond_54

    .line 1153
    :cond_20
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v4, :cond_2f

    .line 1154
    iget v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    aget-object v4, v2, v4

    iput-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_18

    .line 1156
    :cond_2f
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    .line 1157
    .local v3, "x":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1158
    if-eqz v3, :cond_18

    .line 1160
    invoke-static {v3}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1161
    .local v1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1162
    iget-object v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    iget v4, v4, Ljava/util/WeakHashMap;->modCount:I

    iget v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_52

    .line 1163
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1164
    :cond_52
    const/4 v4, 0x1

    return v4

    .line 1169
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "x":Ljava/lang/Object;
    :cond_54
    return v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .registers 2

    .prologue
    .line 1105
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->trySplit()Ljava/util/WeakHashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/WeakHashMap$KeySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1106
    .local p0, "this":Ljava/util/WeakHashMap$KeySpliterator;, "Ljava/util/WeakHashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$KeySpliterator;->getFence()I

    move-result v6

    .local v6, "hi":I
    iget v2, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    .local v2, "lo":I
    add-int v0, v2, v6

    ushr-int/lit8 v3, v0, 0x1

    .line 1107
    .local v3, "mid":I
    if-lt v2, v3, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 1108
    :cond_e
    new-instance v0, Ljava/util/WeakHashMap$KeySpliterator;

    iget-object v1, p0, Ljava/util/WeakHashMap$KeySpliterator;->map:Ljava/util/WeakHashMap;

    iput v3, p0, Ljava/util/WeakHashMap$KeySpliterator;->index:I

    iget v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->est:I

    ushr-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap$KeySpliterator;->est:I

    .line 1109
    iget v5, p0, Ljava/util/WeakHashMap$KeySpliterator;->expectedModCount:I

    .line 1108
    invoke-direct/range {v0 .. v5}, Ljava/util/WeakHashMap$KeySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    goto :goto_d
.end method
