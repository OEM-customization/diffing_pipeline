.class Lsun/nio/fs/PollingWatchService;
.super Lsun/nio/fs/AbstractWatchService;
.source "PollingWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/PollingWatchService$CacheEntry;,
        Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lsun/nio/fs/PollingWatchService$PollingWatchKey;",
            ">;"
        }
    .end annotation
.end field

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/PollingWatchService;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/PollingWatchService;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/fs/PollingWatchService;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/PollingWatchService;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/PollingWatchService;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .registers 5
    .param p0, "-this"    # Lsun/nio/fs/PollingWatchService;
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "events"    # Ljava/util/Set;
    .param p3, "sensivity"    # Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/PollingWatchService;->doPrivilegedRegister(Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    iput-object v0, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    .line 58
    new-instance v0, Lsun/nio/fs/PollingWatchService$1;

    invoke-direct {v0, p0}, Lsun/nio/fs/PollingWatchService$1;-><init>(Lsun/nio/fs/PollingWatchService;)V

    .line 57
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/PollingWatchService;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    return-void
.end method

.method private doPrivilegedRegister(Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    .registers 12
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "sensivity"    # Lcom/sun/nio/file/SensitivityWatchEventModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;>;",
            "Lcom/sun/nio/file/SensitivityWatchEventModifier;",
            ")",
            "Lsun/nio/fs/PollingWatchService$PollingWatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "events":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/WatchEvent$Kind<*>;>;"
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 148
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_19

    .line 149
    new-instance v3, Ljava/nio/file/NotDirectoryException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_19
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "fileKey":Ljava/lang/Object;
    if-nez v1, :cond_28

    .line 153
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "File keys must be supported"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 156
    :cond_28
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->closeLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 157
    :try_start_2d
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 158
    new-instance v3, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v3}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v3
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_39

    .line 156
    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3

    .line 161
    :cond_3c
    :try_start_3c
    iget-object v5, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    monitor-enter v5
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_39

    .line 162
    :try_start_3f
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .line 163
    .local v2, "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    if-nez v2, :cond_5e

    .line 165
    new-instance v2, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .end local v2    # "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    invoke-direct {v2, p0, p1, p0, v1}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;-><init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Lsun/nio/fs/PollingWatchService;Ljava/lang/Object;)V

    .line 166
    .restart local v2    # "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_62

    :goto_53
    :try_start_53
    monitor-exit v5

    .line 172
    invoke-virtual {p3}, Lcom/sun/nio/file/SensitivityWatchEventModifier;->sensitivityValueInSeconds()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, p2, v6, v7}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->enable(Ljava/util/Set;J)V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_39

    monitor-exit v4

    .line 173
    return-object v2

    .line 169
    :cond_5e
    :try_start_5e
    invoke-virtual {v2}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_53

    .line 161
    .end local v2    # "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v5

    throw v3
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_39
.end method


# virtual methods
.method implClose()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v4, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    monitor-enter v4

    .line 181
    :try_start_3
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lsun/nio/fs/PollingWatchService$PollingWatchKey;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/nio/fs/PollingWatchService$PollingWatchKey;

    .line 183
    .local v2, "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    invoke-virtual {v2}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->disable()V

    .line 184
    invoke-virtual {v2}, Lsun/nio/fs/PollingWatchService$PollingWatchKey;->invalidate()V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_d

    .line 180
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lsun/nio/fs/PollingWatchService$PollingWatchKey;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "watchKey":Lsun/nio/fs/PollingWatchService$PollingWatchKey;
    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3

    .line 186
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_29
    :try_start_29
    iget-object v3, p0, Lsun/nio/fs/PollingWatchService;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    monitor-exit v4

    .line 188
    new-instance v3, Lsun/nio/fs/PollingWatchService$3;

    invoke-direct {v3, p0}, Lsun/nio/fs/PollingWatchService$3;-><init>(Lsun/nio/fs/PollingWatchService;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method varargs register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 15
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    const/4 v7, 0x0

    .line 78
    new-instance v2, Ljava/util/HashSet;

    array-length v8, p2

    invoke-direct {v2, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 79
    .local v2, "eventSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/WatchEvent$Kind<*>;>;"
    array-length v9, p2

    move v8, v7

    :goto_9
    if-ge v8, v9, :cond_38

    aget-object v1, p2, v8

    .line 81
    .local v1, "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_CREATE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v1, v10, :cond_15

    .line 82
    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_MODIFY:Ljava/nio/file/WatchEvent$Kind;

    if-ne v1, v10, :cond_1b

    .line 85
    :cond_15
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 83
    :cond_1b
    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->ENTRY_DELETE:Ljava/nio/file/WatchEvent$Kind;

    if-eq v1, v10, :cond_15

    .line 90
    sget-object v10, Ljava/nio/file/StandardWatchEventKinds;->OVERFLOW:Ljava/nio/file/WatchEvent$Kind;

    if-eq v1, v10, :cond_18

    .line 95
    if-nez v1, :cond_2e

    .line 96
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "An element in event set is \'null\'"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 97
    :cond_2e
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-interface {v1}, Ljava/nio/file/WatchEvent$Kind;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 99
    .end local v1    # "event":Ljava/nio/file/WatchEvent$Kind;, "Ljava/nio/file/WatchEvent$Kind<*>;"
    :cond_38
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 100
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "No events to register"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 103
    :cond_47
    sget-object v6, Lcom/sun/nio/file/SensitivityWatchEventModifier;->MEDIUM:Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 104
    .local v6, "sensivity":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    array-length v8, p3

    if-lez v8, :cond_6c

    .line 105
    array-length v8, p3

    :goto_4d
    if-ge v7, v8, :cond_6c

    aget-object v3, p3, v7

    .line 106
    .local v3, "modifier":Ljava/nio/file/WatchEvent$Modifier;
    if-nez v3, :cond_59

    .line 107
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 108
    :cond_59
    instance-of v9, v3, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    if-eqz v9, :cond_63

    move-object v6, v3

    .line 109
    check-cast v6, Lcom/sun/nio/file/SensitivityWatchEventModifier;

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 112
    :cond_63
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Modifier not supported"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 117
    .end local v3    # "modifier":Ljava/nio/file/WatchEvent$Modifier;
    :cond_6c
    invoke-virtual {p0}, Lsun/nio/fs/PollingWatchService;->isOpen()Z

    move-result v7

    if-nez v7, :cond_78

    .line 118
    new-instance v7, Ljava/nio/file/ClosedWatchServiceException;

    invoke-direct {v7}, Ljava/nio/file/ClosedWatchServiceException;-><init>()V

    throw v7

    .line 123
    :cond_78
    move-object v5, v6

    .line 125
    .local v5, "s":Lcom/sun/nio/file/SensitivityWatchEventModifier;
    :try_start_79
    new-instance v7, Lsun/nio/fs/PollingWatchService$2;

    invoke-direct {v7, p0, p1, v2, v5}, Lsun/nio/fs/PollingWatchService$2;-><init>(Lsun/nio/fs/PollingWatchService;Ljava/nio/file/Path;Ljava/util/Set;Lcom/sun/nio/file/SensitivityWatchEventModifier;)V

    .line 124
    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/WatchKey;
    :try_end_84
    .catch Ljava/security/PrivilegedActionException; {:try_start_79 .. :try_end_84} :catch_85

    return-object v7

    .line 131
    :catch_85
    move-exception v4

    .line 132
    .local v4, "pae":Ljava/security/PrivilegedActionException;
    invoke-virtual {v4}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 133
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_93

    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_93

    .line 134
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 135
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_93
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7
.end method
