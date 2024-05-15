.class public Ljava/util/logging/SimpleFormatter;
.super Ljava/util/logging/Formatter;
.source "SimpleFormatter.java"


# static fields
.field private static final greylist-max-o format:Ljava/lang/String;


# instance fields
.field private final greylist-max-o dat:Ljava/util/Date;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Lsun/util/logging/LoggingSupport;->getSimpleFormat()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist core-platform-api test-api format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 9
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 141
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 143
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 144
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "source":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_38

    .line 149
    .end local v0    # "source":Ljava/lang/String;
    .end local p0    # "this":Ljava/util/logging/SimpleFormatter;
    :cond_34
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "source":Ljava/lang/String;
    :cond_38
    :goto_38
    invoke-virtual {p0, p1}, Ljava/util/logging/SimpleFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "message":Ljava/lang/String;
    const-string v2, ""

    .line 153
    .local v2, "throwable":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 154
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 155
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 156
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    .line 157
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 158
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 159
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 161
    .end local v3    # "sw":Ljava/io/StringWriter;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    :cond_60
    sget-object v3, Ljava/util/logging/SimpleFormatter;->format:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/util/logging/SimpleFormatter;->dat:Ljava/util/Date;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    .line 164
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 165
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v1, v4, v5

    const/4 v5, 0x5

    aput-object v2, v4, v5

    .line 161
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8b

    monitor-exit p0

    return-object v3

    .line 140
    .end local v0    # "source":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "throwable":Ljava/lang/String;
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_8b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
