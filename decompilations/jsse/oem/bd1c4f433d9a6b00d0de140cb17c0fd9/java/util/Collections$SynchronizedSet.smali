.class Ljava/util/Collections$SynchronizedSet;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c3c27902eedf3cL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2172
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 2173
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2175
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 2176
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2179
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    if-ne p0, p1, :cond_4

    .line 2180
    const/4 v0, 0x1

    return v0

    .line 2181
    :cond_4
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSet;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2184
    .local p0, "this":Ljava/util/Collections$SynchronizedSet;, "Ljava/util/Collections$SynchronizedSet<TE;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
