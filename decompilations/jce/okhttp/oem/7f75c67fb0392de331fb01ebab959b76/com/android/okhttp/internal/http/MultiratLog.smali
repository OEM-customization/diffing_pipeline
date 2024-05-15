.class public Lcom/android/okhttp/internal/http/MultiratLog;
.super Ljava/lang/Object;
.source "MultiratLog.java"


# static fields
.field public static blacklist HTTPFILELOG:Z = false

.field public static blacklist MRATLOG:Z = false

.field public static blacklist MRATLOGVV:Z = false

.field static final blacklist SLOG_DEBUG:I = 0x1

.field static final blacklist SLOG_ERROR:I = 0x4

.field static final blacklist SLOG_INFO:I = 0x2

.field static final blacklist SLOG_LEVEL:I = 0x1

.field static final blacklist SLOG_WARN:I = 0x3

.field private static final blacklist mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist fDateFormat:Ljava/text/SimpleDateFormat;

.field private blacklist fHttpFileLog:Ljava/io/BufferedWriter;

.field private blacklist logFileLocker:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 22
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOGVV:Z

    .line 24
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    .line 37
    new-instance v0, Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "Static"

    invoke-direct {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    .line 27
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fDateFormat:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiratLog;->logFileLocker:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(HTTPLog)-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static blacklist debug(Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static blacklist debug(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 50
    sget-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method private static blacklist getLogFileName()Ljava/lang/String;
    .registers 5

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "/sdcard/SB_OKHTTP_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "fname":Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 154
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd_HH_mm_ss_SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "dateString":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".log"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private blacklist getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 132
    const-string v0, ""

    if-nez p1, :cond_5

    .line 133
    return-object v0

    .line 137
    :cond_5
    move-object v1, p1

    .line 138
    .local v1, "t":Ljava/lang/Throwable;
    :goto_6
    if-eqz v1, :cond_12

    .line 139
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    .line 140
    return-object v0

    .line 142
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 144
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 145
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static blacklist info(Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist info(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 58
    sget-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method private blacklist logThrowable(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 111
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "sBuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "(This is just Trace Log)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiratLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "ws":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->printLog(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    .end local v0    # "sBuf":Ljava/lang/StringBuffer;
    .end local v1    # "ws":Ljava/lang/String;
    goto :goto_1f

    .line 116
    :catchall_1e
    move-exception v0

    :goto_1f
    nop

    .line 117
    return-void
.end method

.method private blacklist logToFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiratLog;->logFileLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e5

    const/4 v2, 0x0

    if-nez v1, :cond_83

    .line 163
    :try_start_8
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiratLog;->getLogFileName()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "fname":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "create log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    .line 166
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fDateFormat:Ljava/text/SimpleDateFormat;

    .line 167
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " start write http log for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 169
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_65
    .catchall {:try_start_8 .. :try_end_65} :catchall_66

    .line 174
    .end local v1    # "fname":Ljava/lang/String;
    goto :goto_83

    .line 171
    :catchall_66
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_67
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    sput-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    .line 176
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_83
    :goto_83
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;
    :try_end_85
    .catchall {:try_start_67 .. :try_end_85} :catchall_e5

    if-eqz v1, :cond_e3

    .line 178
    :try_start_87
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v1, "sBuf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 184
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiratLog;->fHttpFileLog:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_c5
    .catchall {:try_start_87 .. :try_end_c5} :catchall_c6

    .line 189
    .end local v1    # "sBuf":Ljava/lang/StringBuffer;
    goto :goto_e3

    .line 186
    :catchall_c6
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_c7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    sput-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    .line 191
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_e3
    :goto_e3
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_e5
    move-exception v1

    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_c7 .. :try_end_e7} :catchall_e5

    throw v1
.end method

.method private blacklist printLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 120
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->HTTPFILELOG:Z

    if-eqz v0, :cond_c

    .line 122
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiratLog;->logToFile(Ljava/lang/String;)V

    .line 124
    :cond_c
    return-void
.end method

.method public static blacklist warn(Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist warn(Ljava/lang/Throwable;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 66
    sget-object v0, Lcom/android/okhttp/internal/http/MultiratLog;->mStaticLogger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, p0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;)V
    .registers 4
    .param p1, "args"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->printLog(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public blacklist d(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiratLog;->logThrowable(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public blacklist e(Ljava/lang/String;)V
    .registers 4
    .param p1, "args"    # Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->printLog(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public blacklist e(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiratLog;->logThrowable(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public blacklist i(Ljava/lang/String;)V
    .registers 4
    .param p1, "args"    # Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->printLog(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public blacklist i(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiratLog;->logThrowable(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method

.method public blacklist w(Ljava/lang/String;)V
    .registers 4
    .param p1, "args"    # Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiratLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->printLog(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public blacklist w(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiratLog;->logThrowable(Ljava/lang/Throwable;)V

    .line 102
    return-void
.end method
