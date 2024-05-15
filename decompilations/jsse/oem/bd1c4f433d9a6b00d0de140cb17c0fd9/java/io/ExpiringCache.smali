.class Ljava/io/ExpiringCache;
.super Ljava/lang/Object;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ExpiringCache$Entry;
    }
.end annotation


# instance fields
.field private MAX_ENTRIES:I

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/ExpiringCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private millisUntilExpiration:J

.field private queryCount:I

.field private queryOverflow:I


# direct methods
.method static synthetic -get0(Ljava/io/ExpiringCache;)I
    .registers 2
    .param p0, "-this"    # Ljava/io/ExpiringCache;

    .prologue
    iget v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    return v0
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 61
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Ljava/io/ExpiringCache;-><init>(J)V

    .line 62
    return-void
.end method

.method constructor <init>(J)V
    .registers 4
    .param p1, "millisUntilExpiration"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x12c

    iput v0, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    .line 42
    const/16 v0, 0xc8

    iput v0, p0, Ljava/io/ExpiringCache;->MAX_ENTRIES:I

    .line 66
    iput-wide p1, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    .line 67
    new-instance v0, Ljava/io/ExpiringCache$1;

    invoke-direct {v0, p0}, Ljava/io/ExpiringCache$1;-><init>(Ljava/io/ExpiringCache;)V

    iput-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private cleanup()V
    .registers 9

    .prologue
    .line 120
    iget-object v7, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 122
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 123
    .local v6, "keys":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 124
    .local v0, "i":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v3, v6, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_11

    .line 127
    .end local v3    # "key":Ljava/lang/String;
    :cond_23
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_24
    array-length v7, v6

    if-ge v2, v7, :cond_2f

    .line 128
    aget-object v7, v6, v2

    invoke-direct {p0, v7}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 130
    :cond_2f
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/ExpiringCache;->queryCount:I

    .line 131
    return-void
.end method

.method private entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ExpiringCache$Entry;

    .line 109
    .local v2, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v2, :cond_26

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/ExpiringCache$Entry;->timestamp()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 111
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_20

    iget-wide v4, p0, Ljava/io/ExpiringCache;->millisUntilExpiration:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_26

    .line 112
    :cond_20
    iget-object v3, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/4 v2, 0x0

    .line 116
    .end local v0    # "delta":J
    .end local v2    # "entry":Ljava/io/ExpiringCache$Entry;
    :cond_26
    return-object v2
.end method


# virtual methods
.method declared-synchronized clear()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 105
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 80
    :try_start_2
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v1, v2, :cond_f

    .line 81
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    .line 83
    :cond_f
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    .line 84
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_1b

    .line 85
    invoke-virtual {v0}, Ljava/io/ExpiringCache$Entry;->val()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1d

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1b
    monitor-exit p0

    .line 87
    return-object v3

    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 91
    :try_start_1
    iget v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/ExpiringCache;->queryCount:I

    iget v2, p0, Ljava/io/ExpiringCache;->queryOverflow:I

    if-lt v1, v2, :cond_e

    .line 92
    invoke-direct {p0}, Ljava/io/ExpiringCache;->cleanup()V

    .line 94
    :cond_e
    invoke-direct {p0, p1}, Ljava/io/ExpiringCache;->entryFor(Ljava/lang/String;)Ljava/io/ExpiringCache$Entry;

    move-result-object v0

    .line 95
    .local v0, "entry":Ljava/io/ExpiringCache$Entry;
    if-eqz v0, :cond_20

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/ExpiringCache$Entry;->setTimestamp(J)V

    .line 97
    invoke-virtual {v0, p2}, Ljava/io/ExpiringCache$Entry;->setVal(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2f

    :goto_1e
    monitor-exit p0

    .line 101
    return-void

    .line 99
    :cond_20
    :try_start_20
    iget-object v1, p0, Ljava/io/ExpiringCache;->map:Ljava/util/Map;

    new-instance v2, Ljava/io/ExpiringCache$Entry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5, p2}, Ljava/io/ExpiringCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2f

    goto :goto_1e

    .end local v0    # "entry":Ljava/io/ExpiringCache$Entry;
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method
