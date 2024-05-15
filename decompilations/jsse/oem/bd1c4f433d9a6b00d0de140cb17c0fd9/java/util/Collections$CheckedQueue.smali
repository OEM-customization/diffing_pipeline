.class Ljava/util/Collections$CheckedQueue;
.super Ljava/util/Collections$CheckedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13e39424e458cbb7L


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3222
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<TE;>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 3223
    iput-object p1, p0, Ljava/util/Collections$CheckedQueue;->queue:Ljava/util/Queue;

    .line 3224
    return-void
.end method


# virtual methods
.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3226
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3227
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    if-eq p1, p0, :cond_9

    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 3228
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 3232
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->queue:Ljava/util/Queue;

    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedQueue;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3229
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3230
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 3231
    .local p0, "this":Ljava/util/Collections$CheckedQueue;, "Ljava/util/Collections$CheckedQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
