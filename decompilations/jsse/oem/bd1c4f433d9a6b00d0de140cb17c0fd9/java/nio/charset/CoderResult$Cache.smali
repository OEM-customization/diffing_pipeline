.class abstract Ljava/nio/charset/CoderResult$Cache;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/CoderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/nio/charset/CoderResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p0, "-this"    # Ljava/nio/charset/CoderResult$Cache;
    .param p1, "len"    # I

    .prologue
    invoke-direct {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->get(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/CoderResult$Cache;)V
    .registers 2
    .param p1, "-this0"    # Ljava/nio/charset/CoderResult$Cache;

    .prologue
    invoke-direct {p0}, Ljava/nio/charset/CoderResult$Cache;-><init>()V

    return-void
.end method

.method private declared-synchronized get(I)Ljava/nio/charset/CoderResult;
    .registers 7
    .param p1, "len"    # I

    .prologue
    monitor-enter p0

    .line 201
    if-gtz p1, :cond_f

    .line 202
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Non-positive length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 203
    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 205
    .local v1, "k":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 206
    .local v0, "e":Ljava/nio/charset/CoderResult;
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    if-nez v3, :cond_32

    .line 207
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    .line 211
    .end local v0    # "e":Ljava/nio/charset/CoderResult;
    :cond_20
    :goto_20
    if-nez v0, :cond_30

    .line 212
    invoke-virtual {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->create(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 213
    .local v0, "e":Ljava/nio/charset/CoderResult;
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_c

    .end local v0    # "e":Ljava/nio/charset/CoderResult;
    :cond_30
    monitor-exit p0

    .line 215
    return-object v0

    .line 208
    .local v0, "e":Ljava/nio/charset/CoderResult;
    :cond_32
    :try_start_32
    iget-object v3, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CoderResult;>;"
    if-eqz v2, :cond_20

    .line 209
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Ljava/nio/charset/CoderResult;
    check-cast v0, Ljava/nio/charset/CoderResult;
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_c

    .local v0, "e":Ljava/nio/charset/CoderResult;
    goto :goto_20
.end method


# virtual methods
.method protected abstract create(I)Ljava/nio/charset/CoderResult;
.end method
