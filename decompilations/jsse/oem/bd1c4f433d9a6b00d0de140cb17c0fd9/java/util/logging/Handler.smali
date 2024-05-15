.class public abstract Ljava/util/logging/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field private static final offValue:I


# instance fields
.field private volatile encoding:Ljava/lang/String;

.field private volatile errorManager:Ljava/util/logging/ErrorManager;

.field private volatile filter:Ljava/util/logging/Filter;

.field private volatile formatter:Ljava/util/logging/Formatter;

.field private volatile logLevel:Ljava/util/logging/Level;

.field private final manager:Ljava/util/logging/LogManager;

.field sealed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Ljava/util/logging/Handler;->offValue:I

    .line 48
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    .line 61
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;

    .line 62
    new-instance v0, Ljava/util/logging/ErrorManager;

    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    iput-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    .line 76
    return-void
.end method


# virtual methods
.method checkPermission()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 309
    iget-boolean v0, p0, Ljava/util/logging/Handler;->sealed:Z

    if-eqz v0, :cond_9

    .line 310
    iget-object v0, p0, Ljava/util/logging/Handler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkPermission()V

    .line 312
    :cond_9
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract flush()V
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .registers 2

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 226
    iget-object v0, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public getFormatter()Ljava/util/logging/Formatter;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 5
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    .line 294
    .local v1, "levelValue":I
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_16

    sget v2, Ljava/util/logging/Handler;->offValue:I

    if-ne v1, v2, :cond_18

    .line 295
    :cond_16
    const/4 v2, 0x0

    return v2

    .line 297
    :cond_18
    invoke-virtual {p0}, Ljava/util/logging/Handler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v0

    .line 298
    .local v0, "filter":Ljava/util/logging/Filter;
    if-nez v0, :cond_20

    .line 299
    const/4 v2, 0x1

    return v2

    .line 301
    :cond_20
    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v2

    return v2
.end method

.method public abstract publish(Ljava/util/logging/LogRecord;)V
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 246
    :goto_5
    return-void

    .line 242
    :catch_6
    move-exception v0

    .line 243
    .local v0, "ex2":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v2, "Handler.reportError caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
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

    .line 151
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    .line 152
    if-eqz p1, :cond_1c

    .line 154
    :try_start_6
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 155
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_6 .. :try_end_12} :catch_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_19

    .line 157
    :catch_12
    move-exception v0

    .line 158
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    :try_start_13
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_19

    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1

    .line 161
    :cond_1c
    :try_start_1c
    iput-object p1, p0, Ljava/util/logging/Handler;->encoding:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_19

    monitor-exit p0

    .line 162
    return-void
.end method

.method public declared-synchronized setErrorManager(Ljava/util/logging/ErrorManager;)V
    .registers 3
    .param p1, "em"    # Ljava/util/logging/ErrorManager;

    .prologue
    monitor-enter p0

    .line 210
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 211
    if-nez p1, :cond_f

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    :cond_f
    :try_start_f
    iput-object p1, p0, Ljava/util/logging/Handler;->errorManager:Ljava/util/logging/ErrorManager;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_c

    monitor-exit p0

    .line 215
    return-void
.end method

.method public declared-synchronized setFilter(Ljava/util/logging/Filter;)V
    .registers 3
    .param p1, "newFilter"    # Ljava/util/logging/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 186
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 187
    iput-object p1, p0, Ljava/util/logging/Handler;->filter:Ljava/util/logging/Filter;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 188
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFormatter(Ljava/util/logging/Formatter;)V
    .registers 3
    .param p1, "newFormatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 124
    invoke-virtual {p1}, Ljava/util/logging/Formatter;->getClass()Ljava/lang/Class;

    .line 125
    iput-object p1, p0, Ljava/util/logging/Handler;->formatter:Ljava/util/logging/Formatter;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 126
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLevel(Ljava/util/logging/Level;)V
    .registers 3
    .param p1, "newLevel"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 262
    if-nez p1, :cond_c

    .line 263
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

    .line 265
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/util/logging/Handler;->checkPermission()V

    .line 266
    iput-object p1, p0, Ljava/util/logging/Handler;->logLevel:Ljava/util/logging/Level;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_9

    monitor-exit p0

    .line 267
    return-void
.end method
