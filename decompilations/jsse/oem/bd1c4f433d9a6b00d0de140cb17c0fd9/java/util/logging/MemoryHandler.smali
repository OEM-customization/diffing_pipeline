.class public Ljava/util/logging/MemoryHandler;
.super Ljava/util/logging/Handler;
.source "MemoryHandler.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x3e8


# instance fields
.field private buffer:[Ljava/util/logging/LogRecord;

.field count:I

.field private volatile pushLevel:Ljava/util/logging/Level;

.field private size:I

.field start:I

.field private target:Ljava/util/logging/Handler;


# direct methods
.method public constructor <init>()V
    .registers 10

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 120
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 121
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    .line 122
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 124
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v4

    .line 125
    .local v4, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "handlerName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".target"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "targetName":Ljava/lang/String;
    if-nez v5, :cond_53

    .line 128
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "The handler "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 129
    const-string/jumbo v8, " does not specify a target"

    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_53
    :try_start_53
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 135
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Handler;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_63} :catch_67

    .line 147
    :goto_63
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    .line 148
    return-void

    .line 136
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_67
    move-exception v1

    .line 139
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 141
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Handler;

    iput-object v6, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7c} :catch_7d

    goto :goto_63

    .line 142
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7d
    move-exception v3

    .line 143
    .local v3, "innerE":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MemoryHandler can\'t load handler target \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 144
    const-string/jumbo v8, "\""

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public constructor <init>(Ljava/util/logging/Handler;ILjava/util/logging/Level;)V
    .registers 5
    .param p1, "target"    # Ljava/util/logging/Handler;
    .param p2, "size"    # I
    .param p3, "pushLevel"    # Ljava/util/logging/Level;

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 171
    if-eqz p1, :cond_8

    if-nez p3, :cond_e

    .line 172
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_e
    if-gtz p2, :cond_16

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 177
    :cond_16
    iput-boolean v0, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 178
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->configure()V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/MemoryHandler;->sealed:Z

    .line 180
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    .line 181
    iput-object p3, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 182
    iput p2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 183
    invoke-direct {p0}, Ljava/util/logging/MemoryHandler;->init()V

    .line 184
    return-void
.end method

.method private configure()V
    .registers 6

    .prologue
    const/16 v4, 0x3e8

    .line 102
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    .line 103
    .local v1, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "cname":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".push"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    iput-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 107
    iget v2, p0, Ljava/util/logging/MemoryHandler;->size:I

    if-gtz v2, :cond_4a

    .line 108
    iput v4, p0, Ljava/util/logging/MemoryHandler;->size:I

    .line 110
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/MemoryHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".formatter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v3}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/logging/MemoryHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 113
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 152
    iget v0, p0, Ljava/util/logging/MemoryHandler;->size:I

    new-array v0, v0, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    .line 153
    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 154
    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    .line 155
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->close()V

    .line 256
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/MemoryHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 257
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v0}, Ljava/util/logging/Handler;->flush()V

    .line 244
    return-void
.end method

.method public getPushLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 300
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 203
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/MemoryHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_48

    move-result v1

    if-nez v1, :cond_9

    monitor-exit p0

    .line 204
    return-void

    .line 206
    :cond_9
    :try_start_9
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    iget v2, p0, Ljava/util/logging/MemoryHandler;->count:I

    add-int/2addr v1, v2

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    rem-int v0, v1, v2

    .line 207
    .local v0, "ix":I
    iget-object v1, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aput-object p1, v1, v0

    .line 208
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    if-ge v1, v2, :cond_39

    .line 209
    iget v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/logging/MemoryHandler;->count:I

    .line 214
    :goto_24
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_37

    .line 215
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->push()V
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_48

    :cond_37
    monitor-exit p0

    .line 217
    return-void

    .line 211
    :cond_39
    :try_start_39
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 212
    iget v1, p0, Ljava/util/logging/MemoryHandler;->start:I

    iget-object v2, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Ljava/util/logging/MemoryHandler;->start:I
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_48

    goto :goto_24

    .end local v0    # "ix":I
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized push()V
    .registers 6

    .prologue
    monitor-enter p0

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget v3, p0, Ljava/util/logging/MemoryHandler;->count:I

    if-ge v0, v3, :cond_1a

    .line 226
    iget v3, p0, Ljava/util/logging/MemoryHandler;->start:I

    add-int/2addr v3, v0

    iget-object v4, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    array-length v4, v4

    rem-int v1, v3, v4

    .line 227
    .local v1, "ix":I
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->buffer:[Ljava/util/logging/LogRecord;

    aget-object v2, v3, v1

    .line 228
    .local v2, "record":Ljava/util/logging/LogRecord;
    iget-object v3, p0, Ljava/util/logging/MemoryHandler;->target:Ljava/util/logging/Handler;

    invoke-virtual {v3, v2}, Ljava/util/logging/Handler;->publish(Ljava/util/logging/LogRecord;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    .end local v1    # "ix":I
    .end local v2    # "record":Ljava/util/logging/LogRecord;
    :cond_1a
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/logging/MemoryHandler;->start:I

    .line 232
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/logging/MemoryHandler;->count:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_22

    monitor-exit p0

    .line 233
    return-void

    :catchall_22
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setPushLevel(Ljava/util/logging/Level;)V
    .registers 3
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 269
    if-nez p1, :cond_c

    .line 270
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/util/logging/MemoryHandler;->checkPermission()V

    .line 273
    iput-object p1, p0, Ljava/util/logging/MemoryHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_9

    monitor-exit p0

    .line 274
    return-void
.end method
