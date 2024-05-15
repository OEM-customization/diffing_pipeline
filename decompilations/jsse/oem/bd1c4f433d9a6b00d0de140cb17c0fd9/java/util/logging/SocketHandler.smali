.class public Ljava/util/logging/SocketHandler;
.super Ljava/util/logging/StreamHandler;
.source "SocketHandler.java"


# instance fields
.field private host:Ljava/lang/String;

.field private port:I

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 123
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 124
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    .line 127
    :try_start_9
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_10

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 133
    return-void

    .line 128
    :catch_10
    move-exception v0

    .line 129
    .local v0, "ix":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SocketHandler: connect failed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 152
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->configure()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/SocketHandler;->sealed:Z

    .line 154
    iput p2, p0, Ljava/util/logging/SocketHandler;->port:I

    .line 155
    iput-object p1, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/util/logging/SocketHandler;->connect()V

    .line 157
    return-void
.end method

.method private configure()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v3

    .line 93
    .local v3, "manager":Ljava/util/logging/LogManager;
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
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

    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/SocketHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 96
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

    invoke-virtual {p0, v4}, Ljava/util/logging/SocketHandler;->setFilter(Ljava/util/logging/Filter;)V

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".formatter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/logging/XMLFormatter;

    invoke-direct {v5}, Ljava/util/logging/XMLFormatter;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getFormatterProperty(Ljava/lang/String;Ljava/util/logging/Formatter;)Ljava/util/logging/Formatter;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/logging/SocketHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 99
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

    invoke-virtual {p0, v4}, Ljava/util/logging/SocketHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_81} :catch_b7

    .line 108
    :goto_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/LogManager;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Ljava/util/logging/SocketHandler;->port:I

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/logging/LogManager;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    .line 110
    return-void

    .line 100
    :catch_b7
    move-exception v1

    .line 102
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_b9
    invoke-virtual {p0, v4}, Ljava/util/logging/SocketHandler;->setEncoding(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_81

    .line 103
    :catch_bd
    move-exception v2

    .local v2, "ex2":Ljava/lang/Exception;
    goto :goto_81
.end method

.method private connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget v2, p0, Ljava/util/logging/SocketHandler;->port:I

    if-nez v2, :cond_20

    .line 162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_20
    iget-object v2, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    if-nez v2, :cond_40

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Null host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_40
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v2

    if-nez v2, :cond_53

    .line 169
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Cleartext traffic not permitted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_53
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Ljava/util/logging/SocketHandler;->host:Ljava/lang/String;

    iget v4, p0, Ljava/util/logging/SocketHandler;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    .line 174
    iget-object v2, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 175
    .local v1, "out":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 176
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, v0}, Ljava/util/logging/SocketHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 177
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 187
    :try_start_1
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 188
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    if-eqz v1, :cond_d

    .line 190
    :try_start_8
    iget-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_15
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 195
    :cond_d
    :goto_d
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Ljava/util/logging/SocketHandler;->sock:Ljava/net/Socket;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_12

    monitor-exit p0

    .line 196
    return-void

    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :catch_15
    move-exception v0

    .local v0, "ix":Ljava/io/IOException;
    goto :goto_d
.end method

.method public declared-synchronized publish(Ljava/util/logging/LogRecord;)V
    .registers 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    monitor-enter p0

    .line 206
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/logging/SocketHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    move-result v0

    if-nez v0, :cond_9

    monitor-exit p0

    .line 207
    return-void

    .line 209
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 210
    invoke-virtual {p0}, Ljava/util/logging/SocketHandler;->flush()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    monitor-exit p0

    .line 211
    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
