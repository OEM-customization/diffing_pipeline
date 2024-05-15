.class public final Lcom/android/okhttp/internal/RouteDatabase;
.super Ljava/lang/Object;
.source "RouteDatabase.java"


# instance fields
.field private final failedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/okhttp/Route;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized connected(Lcom/android/okhttp/Route;)V
    .registers 3
    .param p1, "route"    # Lcom/android/okhttp/Route;

    .prologue
    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 39
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failed(Lcom/android/okhttp/Route;)V
    .registers 3
    .param p1, "failedRoute"    # Lcom/android/okhttp/Route;

    .prologue
    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 34
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failedRoutesCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldPostpone(Lcom/android/okhttp/Route;)Z
    .registers 3
    .param p1, "route"    # Lcom/android/okhttp/Route;

    .prologue
    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/RouteDatabase;->failedRoutes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
