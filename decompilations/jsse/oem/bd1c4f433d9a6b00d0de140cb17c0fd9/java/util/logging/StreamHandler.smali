.class public Ljava/util/logging/StreamHandler;
.super Ljava/util/logging/Handler;
.source "StreamHandler.java"


# instance fields
.field private doneHeader:Z

.field private output:Ljava/io/OutputStream;

.field private volatile writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 107
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Formatter;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 120
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->configure()V

    .line 121
    invoke-virtual {p0, p2}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 122
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/StreamHandler;->sealed:Z

    .line 124
    return-void
.end method

.method private configure()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 84
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 85
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "cname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".filter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getFilterProperty(Ljava/lang/String;Ljava/util/logging/Filter;)Ljava/util/logging/Filter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".formatter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v5}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 91
    :try_start_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".encoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_81} :catch_82

    .line 100
    :goto_81
    return-void

    .line 92
    :catch_82
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_84
    invoke-virtual {p0, v4}, Ljava/util/logging/StreamHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_81

    .line 95
    :catch_88
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_81
.end method

.method private declared-synchronized flushAndClose()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 269
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->checkPermission()V

    .line 270
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_42

    if-eqz v1, :cond_39

    .line 272
    :try_start_8
    iget-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    if-nez v1, :cond_1c

    .line 273
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 276
    :cond_1c
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 278
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_33} :catch_3b
    .catchall {:try_start_8 .. :try_end_33} :catchall_42

    .line 284
    :goto_33
    const/4 v1, 0x0

    :try_start_34
    iput-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_42

    :cond_39
    monitor-exit p0

    .line 287
    return-void

    .line 279
    :catch_3b
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_3e
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_33

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 302
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 303
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 257
    :try_start_1
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-eqz v1, :cond_a

    .line 259
    :try_start_5
    iget-object v1, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_13

    :cond_a
    :goto_a
    monitor-exit p0

    .line 266
    return-void

    .line 260
    :catch_c
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_f
    invoke-virtual {p0, v1, v0, v2}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_a

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 246
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_6

    if-nez p1, :cond_8

    .line 247
    :cond_6
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_8
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 206
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/StreamHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3b

    move-result v2

    if-nez v2, :cond_9

    monitor-exit p0

    .line 207
    return-void

    .line 211
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_2c
    .catchall {:try_start_9 .. :try_end_10} :catchall_3b

    move-result-object v1

    .line 220
    .local v1, "msg":Ljava/lang/String;
    :try_start_11
    iget-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    if-nez v2, :cond_25

    .line 221
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 224
    :cond_25
    iget-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2a} :catch_34
    .catchall {:try_start_11 .. :try_end_2a} :catchall_3b

    :goto_2a
    monitor-exit p0

    .line 230
    return-void

    .line 212
    .end local v1    # "msg":Ljava/lang/String;
    :catch_2c
    move-exception v0

    .line 215
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x5

    :try_start_2f
    invoke-virtual {p0, v2, v0, v3}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    monitor-exit p0

    .line 216
    return-void

    .line 225
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "msg":Ljava/lang/String;
    :catch_34
    move-exception v0

    .line 228
    .restart local v0    # "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_37
    invoke-virtual {p0, v2, v0, v3}, Ljava/util/logging/StreamHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_2a

    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "msg":Ljava/lang/String;
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 174
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setEncoding(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    if-nez v0, :cond_a

    monitor-exit p0

    .line 176
    return-void

    .line 179
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->flush()V

    .line 180
    if-nez p1, :cond_1a

    .line 181
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_24

    :goto_18
    monitor-exit p0

    .line 185
    return-void

    .line 183
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_24

    goto :goto_18

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setOutputStream(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 138
    if-nez p1, :cond_c

    .line 139
    :try_start_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v2

    monitor-exit p0

    throw v2

    .line 141
    :cond_c
    :try_start_c
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;->flushAndClose()V

    .line 142
    iput-object p1, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/logging/StreamHandler;->doneHeader:Z

    .line 144
    invoke-virtual {p0}, Ljava/util/logging/StreamHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "encoding":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 146
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_9

    :goto_23
    monitor-exit p0

    .line 156
    return-void

    .line 149
    :cond_25
    :try_start_25
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Ljava/util/logging/StreamHandler;->output:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/util/logging/StreamHandler;->writer:Ljava/io/Writer;
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_9

    goto :goto_23

    .line 150
    :catch_2f
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_30
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_9
.end method
