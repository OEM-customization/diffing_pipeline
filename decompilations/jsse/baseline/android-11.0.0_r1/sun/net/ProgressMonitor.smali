.class public Lsun/net/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# static fields
.field private static blacklist meteringPolicy:Lsun/net/ProgressMeteringPolicy;

.field private static blacklist pm:Lsun/net/ProgressMonitor;


# instance fields
.field private blacklist progressListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/net/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist progressSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 223
    new-instance v0, Lsun/net/DefaultProgressMeteringPolicy;

    invoke-direct {v0}, Lsun/net/DefaultProgressMeteringPolicy;-><init>()V

    sput-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    .line 226
    new-instance v0, Lsun/net/ProgressMonitor;

    invoke-direct {v0}, Lsun/net/ProgressMonitor;-><init>()V

    sput-object v0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized blacklist getDefault()Lsun/net/ProgressMonitor;
    .registers 2

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 43
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist setDefault(Lsun/net/ProgressMonitor;)V
    .registers 2
    .param p0, "m"    # Lsun/net/ProgressMonitor;

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    .line 50
    if-eqz p0, :cond_b

    .line 51
    :try_start_5
    sput-object p0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_8

    goto :goto_b

    .line 49
    .end local p0    # "m":Lsun/net/ProgressMonitor;
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0

    .line 52
    .restart local p0    # "m":Lsun/net/ProgressMonitor;
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized blacklist setMeteringPolicy(Lsun/net/ProgressMeteringPolicy;)V
    .registers 2
    .param p0, "policy"    # Lsun/net/ProgressMeteringPolicy;

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    .line 58
    if-eqz p0, :cond_b

    .line 59
    :try_start_5
    sput-object p0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_8

    goto :goto_b

    .line 57
    .end local p0    # "policy":Lsun/net/ProgressMeteringPolicy;
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0

    .line 60
    .restart local p0    # "policy":Lsun/net/ProgressMeteringPolicy;
    :cond_b
    :goto_b
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public blacklist addProgressListener(Lsun/net/ProgressListener;)V
    .registers 4
    .param p1, "l"    # Lsun/net/ProgressListener;

    .line 208
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist getProgressSources()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    :try_start_5
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_8} :catch_2a

    .line 71
    :try_start_8
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressSource;

    .line 75
    .local v3, "pi":Lsun/net/ProgressSource;
    invoke-virtual {v3}, Lsun/net/ProgressSource;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/net/ProgressSource;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    nop

    .end local v3    # "pi":Lsun/net/ProgressSource;
    goto :goto_e

    .line 77
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressSource;>;"
    :cond_25
    monitor-exit v1

    .line 81
    goto :goto_2e

    .line 77
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    .end local v0    # "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    .end local p0    # "this":Lsun/net/ProgressMonitor;
    :try_start_29
    throw v2
    :try_end_2a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 79
    .restart local v0    # "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressSource;>;"
    .restart local p0    # "this":Lsun/net/ProgressMonitor;
    :catch_2a
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 83
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_2e
    return-object v0
.end method

.method public declared-synchronized blacklist getProgressUpdateThreshold()I
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    invoke-interface {v0}, Lsun/net/ProgressMeteringPolicy;->getProgressUpdateThreshold()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 90
    .end local p0    # "this":Lsun/net/ProgressMonitor;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist registerSource(Lsun/net/ProgressSource;)V
    .registers 16
    .param p1, "pi"    # Lsun/net/ProgressSource;

    .line 106
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 107
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 108
    monitor-exit v0

    return-void

    .line 110
    :cond_d
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_71

    .line 114
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_70

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 121
    :try_start_23
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressListener;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 124
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_6d

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressListener;

    .line 129
    .local v2, "pl":Lsun/net/ProgressListener;
    new-instance v13, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v8

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v9

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v11

    move-object v3, v13

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    .line 130
    .local v3, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v2, v3}, Lsun/net/ProgressListener;->progressStart(Lsun/net/ProgressEvent;)V

    .line 131
    .end local v2    # "pl":Lsun/net/ProgressListener;
    .end local v3    # "pe":Lsun/net/ProgressEvent;
    goto :goto_3e

    .line 124
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_6d
    move-exception v2

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v2

    .line 133
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :cond_70
    return-void

    .line 111
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public blacklist removeProgressListener(Lsun/net/ProgressListener;)V
    .registers 4
    .param p1, "l"    # Lsun/net/ProgressListener;

    .line 217
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 218
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    invoke-interface {v0, p1, p2}, Lsun/net/ProgressMeteringPolicy;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterSource(Lsun/net/ProgressSource;)V
    .registers 16
    .param p1, "pi"    # Lsun/net/ProgressSource;

    .line 140
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 143
    monitor-exit v0

    return-void

    .line 146
    :cond_d
    invoke-virtual {p1}, Lsun/net/ProgressSource;->close()V

    .line 147
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_74

    .line 151
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_73

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 158
    :try_start_26
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressListener;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 161
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :cond_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_70

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressListener;

    .line 166
    .local v2, "pl":Lsun/net/ProgressListener;
    new-instance v13, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v8

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v9

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v11

    move-object v3, v13

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    .line 167
    .local v3, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v2, v3}, Lsun/net/ProgressListener;->progressFinish(Lsun/net/ProgressEvent;)V

    .line 168
    .end local v2    # "pl":Lsun/net/ProgressListener;
    .end local v3    # "pe":Lsun/net/ProgressEvent;
    goto :goto_41

    .line 161
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v2

    .line 170
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :cond_73
    return-void

    .line 148
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public blacklist updateProgress(Lsun/net/ProgressSource;)V
    .registers 16
    .param p1, "pi"    # Lsun/net/ProgressSource;

    .line 177
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 179
    monitor-exit v0

    return-void

    .line 180
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_6c

    .line 183
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 190
    :try_start_1e
    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/net/ProgressListener;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 193
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_68

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 197
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressListener;

    .line 198
    .local v2, "pl":Lsun/net/ProgressListener;
    new-instance v13, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v8

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v9

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v11

    move-object v3, v13

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    .line 199
    .local v3, "pe":Lsun/net/ProgressEvent;
    invoke-interface {v2, v3}, Lsun/net/ProgressListener;->progressUpdate(Lsun/net/ProgressEvent;)V

    .line 200
    .end local v2    # "pl":Lsun/net/ProgressListener;
    .end local v3    # "pe":Lsun/net/ProgressEvent;
    goto :goto_39

    .line 193
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/net/ProgressListener;>;"
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v2

    .line 202
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/net/ProgressListener;>;"
    :cond_6b
    return-void

    .line 180
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method
