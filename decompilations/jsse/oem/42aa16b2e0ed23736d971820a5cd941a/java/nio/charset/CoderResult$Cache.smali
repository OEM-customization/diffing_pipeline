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
.field private greylist-max-o cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/nio/charset/CoderResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/charset/CoderResult$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/nio/charset/CoderResult$1;

    .line 194
    invoke-direct {p0}, Ljava/nio/charset/CoderResult$Cache;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$200(Ljava/nio/charset/CoderResult$Cache;I)Ljava/nio/charset/CoderResult;
    .registers 3
    .param p0, "x0"    # Ljava/nio/charset/CoderResult$Cache;
    .param p1, "x1"    # I

    .line 194
    invoke-direct {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->get(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized greylist-max-o get(I)Ljava/nio/charset/CoderResult;
    .registers 6
    .param p1, "len"    # I

    monitor-enter p0

    .line 201
    if-lez p1, :cond_3c

    .line 203
    :try_start_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 205
    .local v0, "k":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 206
    .local v1, "e":Ljava/nio/charset/CoderResult;
    iget-object v2, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    if-nez v2, :cond_15

    .line 207
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    goto :goto_27

    .line 208
    .end local p0    # "this":Ljava/nio/charset/CoderResult$Cache;
    :cond_15
    iget-object v2, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    move-object v3, v2

    .local v3, "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CoderResult;>;"
    if-eqz v2, :cond_27

    .line 209
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/CoderResult;

    move-object v1, v2

    .line 211
    .end local v3    # "w":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/nio/charset/CoderResult;>;"
    :cond_27
    :goto_27
    if-nez v1, :cond_38

    .line 212
    invoke-virtual {p0, p1}, Ljava/nio/charset/CoderResult$Cache;->create(I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    move-object v1, v2

    .line 213
    iget-object v2, p0, Ljava/nio/charset/CoderResult$Cache;->cache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    .line 215
    :cond_38
    monitor-exit p0

    return-object v1

    .line 200
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v1    # "e":Ljava/nio/charset/CoderResult;
    .end local p1    # "len":I
    :catchall_3a
    move-exception p1

    goto :goto_44

    .line 202
    .restart local p1    # "len":I
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-positive length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_3a

    .line 200
    .end local p1    # "len":I
    :goto_44
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected abstract greylist-max-o create(I)Ljava/nio/charset/CoderResult;
.end method
