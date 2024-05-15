.class public Ljava/util/Stack;
.super Ljava/util/Vector;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x10fe2ac2bb09861dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public empty()Z
    .registers 3

    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    .line 99
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 101
    .local v0, "len":I
    if-nez v0, :cond_10

    .line 102
    new-instance v1, Ljava/util/EmptyStackException;

    invoke-direct {v1}, Ljava/util/EmptyStackException;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .end local v0    # "len":I
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 103
    .restart local v0    # "len":I
    :cond_10
    add-int/lit8 v1, v0, -0x1

    :try_start_12
    invoke-virtual {p0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_d

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    .line 82
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 84
    .local v0, "len":I
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, "obj":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 87
    return-object v1

    .end local v0    # "len":I
    .end local v1    # "obj":Ljava/lang/Object;, "TE;"
    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    .local p1, "item":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 69
    return-object p1
.end method

.method public declared-synchronized search(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/Stack;, "Ljava/util/Stack<TE;>;"
    monitor-enter p0

    .line 131
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/Stack;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 133
    .local v0, "i":I
    if-ltz v0, :cond_e

    .line 134
    invoke-virtual {p0}, Ljava/util/Stack;->size()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    move-result v1

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 136
    :cond_e
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "i":I
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method
