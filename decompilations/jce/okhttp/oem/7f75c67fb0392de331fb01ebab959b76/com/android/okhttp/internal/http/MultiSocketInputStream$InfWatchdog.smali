.class Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfWatchdog"
.end annotation


# instance fields
.field blacklist bFileTested:Z

.field blacklist header:Lcom/android/okhttp/Headers;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/Headers;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p2, "h"    # Lcom/android/okhttp/Headers;

    .line 1058
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1052
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->bFileTested:Z

    .line 1059
    iput-object p2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->header:Lcom/android/okhttp/Headers;

    .line 1060
    return-void
.end method

.method private blacklist testFileCaching()Z
    .registers 10

    .line 1063
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_5
    iget-boolean v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->bFileTested:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    monitor-exit v0

    return v2

    .line 1065
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".sbBuf_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, "bufFileName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to save buffer to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_122

    .line 1067
    :cond_4f
    const/4 v3, 0x0

    .line 1068
    .local v3, "fileBuf":Ljava/io/File;
    const/4 v4, 0x0

    .line 1069
    .local v4, "dis":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 1071
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_52
    iget-object v6, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->createBufferDir()V

    .line 1072
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v1, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    move-object v3, v6

    .line 1073
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_83

    iget-object v6, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource check: test buffered file generated "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1074
    :cond_83
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v6

    .line 1075
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 1076
    invoke-virtual {v5, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 1077
    nop

    .line 1078
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 1079
    const/4 v4, 0x0

    .line 1081
    nop

    .line 1082
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1083
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1084
    const/4 v5, 0x0

    .line 1086
    if-eqz v3, :cond_f3

    .line 1087
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 1088
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_f2

    iget-object v6, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource check: test buffered file removed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_f2

    .line 1091
    :cond_d4
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_f2

    iget-object v6, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource check: failed to remove buffered file (main) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1093
    :cond_f2
    :goto_f2
    const/4 v3, 0x0

    .line 1095
    :cond_f3
    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->bFileTested:Z
    :try_end_f5
    .catchall {:try_start_52 .. :try_end_f5} :catchall_f7

    .line 1096
    :try_start_f5
    monitor-exit v0

    return v2

    .line 1098
    :catchall_f7
    move-exception v2

    .line 1099
    .local v2, "e":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_105

    iget-object v6, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_105
    .catchall {:try_start_f5 .. :try_end_105} :catchall_122

    .line 1101
    :cond_105
    if-eqz v4, :cond_10d

    .line 1102
    :try_start_107
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_10c

    .line 1103
    const/4 v4, 0x0

    goto :goto_10d

    .line 1106
    :catchall_10c
    move-exception v6

    :cond_10d
    :goto_10d
    nop

    .line 1108
    if-eqz v5, :cond_116

    .line 1109
    :try_start_110
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_115

    .line 1110
    const/4 v5, 0x0

    goto :goto_116

    .line 1113
    :catchall_115
    move-exception v6

    :cond_116
    :goto_116
    nop

    .line 1115
    if-eqz v3, :cond_11e

    .line 1116
    :try_start_119
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_11e

    .line 1118
    :catchall_11d
    move-exception v6

    :cond_11e
    :goto_11e
    nop

    .line 1119
    const/4 v6, 0x0

    :try_start_120
    monitor-exit v0

    return v6

    .line 1121
    .end local v1    # "bufFileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "fileBuf":Ljava/io/File;
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    :catchall_122
    move-exception v1

    monitor-exit v0
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_122

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 49

    .line 1126
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v2, v3, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 1127
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: thread checking: start interface watchdog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1128
    :cond_35
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_59

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup main thread id to be  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1130
    :cond_59
    const-string v2, "/"

    .line 1132
    .local v2, "sUrl":Ljava/lang/String;
    :try_start_5b
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->uri:Ljava/net/URI;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_67

    move-object v2, v3

    .line 1136
    goto :goto_76

    .line 1134
    :catchall_67
    move-exception v0

    move-object v3, v0

    .line 1135
    .local v3, "ex":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_76

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1137
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_76
    :goto_76
    const-string v3, ""

    .line 1138
    .local v3, "oUrl":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v4

    iget-object v4, v4, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v4, v4, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    if-eqz v4, :cond_92

    .line 1139
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v4

    iget-object v4, v4, Lcom/android/okhttp/internal/io/RealConnection;->ssl_oriReq:Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;

    iget-object v4, v4, Lcom/android/okhttp/internal/io/RealConnection$SSLInfo;->tunnel:Lcom/android/okhttp/Request;

    invoke-virtual {v4}, Lcom/android/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v3

    .line 1142
    :cond_92
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    move-object v11, v2

    move-object v12, v3

    invoke-static/range {v5 .. v12}, Lcom/android/okhttp/internal/http/SBServiceAPI;->startSBDirectUsage(JJJLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1143
    .local v4, "bShallUseSB":Z
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_e4

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startSBUsage return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", for thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1145
    :cond_e4
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1a4

    .line 1146
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_10d

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start to getSBUsageStatus for thread "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1147
    :cond_10d
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 1148
    :try_start_114
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v9, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1150
    :goto_119
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v9, v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v9, :cond_19e

    .line 1151
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBUsageStatus(J)I

    move-result v9

    .line 1152
    .local v9, "bSBStatus":I
    if-ne v9, v5, :cond_155

    .line 1153
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v10, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1154
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_19e

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSBUsageStatus get NO for thread "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_19e

    .line 1157
    :cond_155
    if-ne v9, v7, :cond_181

    .line 1158
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v10, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1159
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_19e

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSBUsageStatus get YES for thread "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_180
    .catchall {:try_start_114 .. :try_end_180} :catchall_1a0

    goto :goto_19e

    .line 1164
    :cond_181
    :try_start_181
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v11, 0x64

    invoke-virtual {v10, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_18c
    .catchall {:try_start_181 .. :try_end_18c} :catchall_18d

    .line 1168
    goto :goto_119

    .line 1166
    :catchall_18d
    move-exception v0

    move-object v10, v0

    .line 1167
    .local v10, "e":Ljava/lang/Throwable;
    :try_start_18f
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_19c

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1169
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_19c
    goto/16 :goto_119

    .line 1172
    .end local v9    # "bSBStatus":I
    :cond_19e
    :goto_19e
    monitor-exit v8

    goto :goto_1a4

    :catchall_1a0
    move-exception v0

    move-object v5, v0

    monitor-exit v8
    :try_end_1a3
    .catchall {:try_start_18f .. :try_end_1a3} :catchall_1a0

    throw v5

    .line 1176
    :cond_1a4
    :goto_1a4
    const/4 v8, 0x4

    if-eqz v4, :cond_ad7

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v13

    if-eqz v13, :cond_ad7

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v13, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v13, :cond_ad7

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    const-wide/32 v11, 0x200000

    cmp-long v13, v13, v11

    if-lez v13, :cond_ad7

    .line 1177
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v13

    monitor-enter v13

    .line 1178
    :try_start_1c9
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v14

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBEnabledDirectByIP(Lcom/android/okhttp/internal/io/RealConnection;Lcom/android/okhttp/internal/http/MultiratLog;)I

    move-result v14

    .line 1179
    .local v14, "iInf":I
    const-wide v11, 0x7fffffffffffffffL

    .line 1180
    .local v11, "maxBufDataSize":J
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;
    :try_end_1e2
    .catchall {:try_start_1c9 .. :try_end_1e2} :catchall_ac8

    if-nez v15, :cond_269

    :try_start_1e4
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->testFileCaching()Z

    move-result v15

    if-nez v15, :cond_269

    .line 1181
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v15, :cond_20e

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "testFileCaching return false, continue while remain data size is "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1182
    :cond_20e
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_215
    .catchall {:try_start_1e4 .. :try_end_215} :catchall_25d

    .line 1183
    :try_start_215
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v9

    if-eqz v9, :cond_24f

    .line 1184
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_241

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to create buffer file, current SBUsed is "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1185
    :cond_241
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-static {v9, v10, v5}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    .line 1186
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v9, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1188
    :cond_24f
    monitor-exit v7
    :try_end_250
    .catchall {:try_start_215 .. :try_end_250} :catchall_259

    .line 1189
    :try_start_250
    monitor-exit v13
    :try_end_251
    .catchall {:try_start_250 .. :try_end_251} :catchall_25d

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    goto/16 :goto_add

    .line 1188
    :catchall_259
    move-exception v0

    move-object v5, v0

    :try_start_25b
    monitor-exit v7
    :try_end_25c
    .catchall {:try_start_25b .. :try_end_25c} :catchall_259

    .end local v2    # "sUrl":Ljava/lang/String;
    .end local v3    # "oUrl":Ljava/lang/String;
    .end local v4    # "bShallUseSB":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    :try_start_25c
    throw v5
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_25d

    .line 1379
    .end local v11    # "maxBufDataSize":J
    .end local v14    # "iInf":I
    .restart local v2    # "sUrl":Ljava/lang/String;
    .restart local v3    # "oUrl":Ljava/lang/String;
    .restart local v4    # "bShallUseSB":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    :catchall_25d
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    move-object/from16 v26, v13

    move-object v2, v0

    goto/16 :goto_ad2

    .line 1191
    .restart local v11    # "maxBufDataSize":J
    .restart local v14    # "iInf":I
    :cond_269
    const/4 v7, 0x3

    if-ne v14, v7, :cond_a97

    :try_start_26c
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I
    :try_end_270
    .catchall {:try_start_26c .. :try_end_270} :catchall_ac8

    if-eqz v7, :cond_285

    :try_start_272
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1000()I

    move-result v7
    :try_end_276
    .catchall {:try_start_272 .. :try_end_276} :catchall_25d

    if-ge v7, v8, :cond_279

    goto :goto_285

    :cond_279
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    move-wide/from16 v43, v11

    move-object/from16 v26, v13

    goto/16 :goto_aa1

    .line 1192
    :cond_285
    :goto_285
    :try_start_285
    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSpeedRatio()[J

    move-result-object v7

    .line 1193
    .local v7, "smartBondingData":[J
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    const-wide/16 v15, 0x2

    div-long/2addr v9, v15
    :try_end_292
    .catchall {:try_start_285 .. :try_end_292} :catchall_ac8

    .line 1195
    .local v9, "sizeForExtremeCase":J
    move-wide v15, v9

    .end local v9    # "sizeForExtremeCase":J
    .local v15, "sizeForExtremeCase":J
    const-wide/16 v8, -0x1

    if-eqz v7, :cond_36e

    :try_start_297
    aget-wide v23, v7, v6

    cmp-long v10, v23, v8

    if-eqz v10, :cond_36e

    .line 1196
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    const-wide/high16 v23, 0x4059000000000000L    # 100.0

    if-lez v10, :cond_2bf

    .line 1197
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v8

    int-to-double v8, v8

    div-double v8, v8, v23

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v10, v8, v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;D)D

    .line 1198
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v7, v6

    goto :goto_2ca

    .line 1201
    :cond_2bf
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v9, 0x1

    aget-wide v5, v7, v9

    long-to-double v5, v5

    div-double v5, v5, v23

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v8, v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;D)D

    .line 1204
    :goto_2ca
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const-wide v8, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v23, v11

    .end local v11    # "maxBufDataSize":J
    .local v23, "maxBufDataSize":J
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-object/from16 v27, v7

    .end local v7    # "smartBondingData":[J
    .local v27, "smartBondingData":[J
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5, v6, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;D)D

    .line 1206
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v5, v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez v5, :cond_337

    .line 1207
    const/4 v5, 0x0

    aget-wide v8, v27, v5

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-nez v5, :cond_31a

    .line 1208
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v10

    add-double/2addr v10, v6

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v5

    sget-wide v29, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    div-double v5, v5, v29

    sub-double/2addr v10, v5

    div-double/2addr v8, v10

    double-to-long v9, v8

    .end local v15    # "sizeForExtremeCase":J
    .restart local v9    # "sizeForExtremeCase":J
    goto :goto_373

    .line 1210
    .end local v9    # "sizeForExtremeCase":J
    .restart local v15    # "sizeForExtremeCase":J
    :cond_31a
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v10

    add-double/2addr v10, v6

    sget-wide v29, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    div-double v6, v6, v29

    sub-double/2addr v10, v6

    div-double/2addr v8, v10

    double-to-long v9, v8

    .end local v15    # "sizeForExtremeCase":J
    .restart local v9    # "sizeForExtremeCase":J
    goto :goto_373

    .line 1214
    .end local v9    # "sizeForExtremeCase":J
    .restart local v15    # "sizeForExtremeCase":J
    :cond_337
    const/4 v5, 0x0

    aget-wide v8, v27, v5

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-nez v5, :cond_356

    .line 1215
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v10

    add-double/2addr v10, v6

    div-double/2addr v8, v10

    double-to-long v9, v8

    .end local v15    # "sizeForExtremeCase":J
    .restart local v9    # "sizeForExtremeCase":J
    goto :goto_373

    .line 1217
    .end local v9    # "sizeForExtremeCase":J
    .restart local v15    # "sizeForExtremeCase":J
    :cond_356
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    long-to-double v8, v8

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v10
    :try_end_36a
    .catchall {:try_start_297 .. :try_end_36a} :catchall_25d

    add-double/2addr v10, v6

    div-double/2addr v8, v10

    double-to-long v9, v8

    .end local v15    # "sizeForExtremeCase":J
    .restart local v9    # "sizeForExtremeCase":J
    goto :goto_373

    .line 1195
    .end local v9    # "sizeForExtremeCase":J
    .end local v23    # "maxBufDataSize":J
    .end local v27    # "smartBondingData":[J
    .restart local v7    # "smartBondingData":[J
    .restart local v11    # "maxBufDataSize":J
    .restart local v15    # "sizeForExtremeCase":J
    :cond_36e
    move-object/from16 v27, v7

    move-wide/from16 v23, v11

    .line 1222
    .end local v7    # "smartBondingData":[J
    .end local v11    # "maxBufDataSize":J
    .restart local v23    # "maxBufDataSize":J
    .restart local v27    # "smartBondingData":[J
    move-wide v9, v15

    .end local v15    # "sizeForExtremeCase":J
    .restart local v9    # "sizeForExtremeCase":J
    :goto_373
    :try_start_373
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    const-wide/32 v7, 0x200000

    sub-long/2addr v5, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1224
    .end local v9    # "sizeForExtremeCase":J
    .local v5, "sizeForExtremeCase":J
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_387
    .catchall {:try_start_373 .. :try_end_387} :catchall_ac8

    if-eqz v7, :cond_3fc

    :try_start_389
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "before check exetThread, ratio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ", taillen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", maxTailLen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v23

    .end local v23    # "maxBufDataSize":J
    .restart local v11    # "maxBufDataSize":J
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1226
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", oriOffset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", byteRemain: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", B_Ratio_BUF_LTE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ", mRAdownloadedFile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v9, v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1224
    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_3fe

    .end local v11    # "maxBufDataSize":J
    .restart local v23    # "maxBufDataSize":J
    :cond_3fc
    move-wide/from16 v11, v23

    .line 1230
    .end local v23    # "maxBufDataSize":J
    .restart local v11    # "maxBufDataSize":J
    :goto_3fe
    const-wide/32 v7, 0x200000

    cmp-long v7, v5, v7

    if-gez v7, :cond_42c

    .line 1231
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_423

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tail length is too small, exit watchdog "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1232
    :cond_423
    monitor-exit v13
    :try_end_424
    .catchall {:try_start_389 .. :try_end_424} :catchall_25d

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    goto/16 :goto_add

    .line 1234
    :cond_42c
    cmp-long v7, v5, v11

    const-wide/16 v19, 0x1

    if-gez v7, :cond_650

    :try_start_432
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    if-nez v7, :cond_650

    .line 1237
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v7, v9, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1502(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 1240
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v15

    add-long/2addr v9, v15

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v15

    sub-long/2addr v9, v15

    .line 1242
    .local v9, "start":J
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v15

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v23

    add-long v15, v15, v23

    move-wide/from16 v23, v9

    .end local v9    # "start":J
    .local v23, "start":J
    sub-long v8, v15, v19

    .line 1244
    .local v8, "end":J
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_4d8

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start exetThread, ratio: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :try_end_47d
    .catchall {:try_start_432 .. :try_end_47d} :catchall_644

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    .end local v2    # "sUrl":Ljava/lang/String;
    .end local v3    # "oUrl":Ljava/lang/String;
    .local v39, "sUrl":Ljava/lang/String;
    .local v40, "oUrl":Ljava/lang/String;
    :try_start_481
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", taillen: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1245
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v23

    .end local v23    # "start":J
    .local v2, "start":J
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", total: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :try_end_4af
    .catchall {:try_start_481 .. :try_end_4af} :catchall_4d0

    .line 1246
    move/from16 v23, v4

    move-wide/from16 v41, v5

    .end local v4    # "bShallUseSB":Z
    .end local v5    # "sizeForExtremeCase":J
    .local v23, "bShallUseSB":Z
    .local v41, "sizeForExtremeCase":J
    :try_start_4b3
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", oriOffset: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1244
    invoke-virtual {v10, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_4e2

    .line 1379
    .end local v2    # "start":J
    .end local v8    # "end":J
    .end local v11    # "maxBufDataSize":J
    .end local v14    # "iInf":I
    .end local v23    # "bShallUseSB":Z
    .end local v27    # "smartBondingData":[J
    .end local v41    # "sizeForExtremeCase":J
    .restart local v4    # "bShallUseSB":Z
    :catchall_4d0
    move-exception v0

    move/from16 v23, v4

    move-object v2, v0

    move-object/from16 v26, v13

    .end local v4    # "bShallUseSB":Z
    .restart local v23    # "bShallUseSB":Z
    goto/16 :goto_ad2

    .line 1244
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .local v2, "sUrl":Ljava/lang/String;
    .restart local v3    # "oUrl":Ljava/lang/String;
    .restart local v4    # "bShallUseSB":Z
    .restart local v5    # "sizeForExtremeCase":J
    .restart local v8    # "end":J
    .restart local v11    # "maxBufDataSize":J
    .restart local v14    # "iInf":I
    .local v23, "start":J
    .restart local v27    # "smartBondingData":[J
    :cond_4d8
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move-wide/from16 v41, v5

    move-wide/from16 v2, v23

    move/from16 v23, v4

    .line 1247
    .end local v3    # "oUrl":Ljava/lang/String;
    .end local v4    # "bShallUseSB":Z
    .end local v5    # "sizeForExtremeCase":J
    .local v2, "start":J
    .local v23, "bShallUseSB":Z
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    .restart local v41    # "sizeForExtremeCase":J
    :goto_4e2
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    move-result v37

    .line 1248
    .local v37, "otherSocketId":I
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    new-instance v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/16 v33, 0x0

    sub-long v24, v8, v2

    move-wide/from16 v43, v11

    .end local v11    # "maxBufDataSize":J
    .local v43, "maxBufDataSize":J
    add-long v10, v24, v19

    long-to-int v7, v10

    int-to-long v10, v7

    new-instance v36, Ljava/util/LinkedList;

    invoke-direct/range {v36 .. v36}, Ljava/util/LinkedList;-><init>()V

    const/16 v38, 0x1

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-wide/from16 v31, v2

    move-wide/from16 v34, v10

    invoke-direct/range {v29 .. v38}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;JIJLjava/util/LinkedList;II)V

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 1249
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_51a
    .catchall {:try_start_4b3 .. :try_end_51a} :catchall_63e

    .line 1250
    :try_start_51a
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    monitor-exit v4
    :try_end_530
    .catchall {:try_start_51a .. :try_end_530} :catchall_63a

    .line 1252
    :try_start_530
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v5, 0x1

    new-array v6, v5, [B

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;[B)[B

    .line 1253
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 1254
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    new-instance v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    move-result-object v36

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v31, v37

    move-wide/from16 v32, v2

    move-wide/from16 v34, v8

    invoke-direct/range {v29 .. v36}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;IJJLcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)V

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2002(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    .line 1255
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 1256
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":ExtremeCondition_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # operator++ for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2108()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1257
    .local v4, "t":Ljava/lang/Thread;
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_61b

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource check: finish reading startup data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    add-long v10, v10, v24

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    sub-long v10, v10, v24

    sub-long v10, v10, v19

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1258
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    sub-long v10, v10, v24

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", now ExtremeThread created:  Main socket read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1259
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    add-long v10, v10, v24

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    sub-long v10, v10, v24

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v2, v19

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", ExtremeThread read from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1257
    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1261
    :cond_61b
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1262
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2302(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1263
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_629
    .catchall {:try_start_530 .. :try_end_629} :catchall_63e

    .line 1265
    :try_start_629
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v5

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/io/RealConnection;->setSoTimeout(I)V
    :try_end_634
    .catchall {:try_start_629 .. :try_end_634} :catchall_635

    goto :goto_636

    .line 1267
    :catchall_635
    move-exception v0

    :goto_636
    nop

    .line 1268
    :try_start_637
    monitor-exit v13
    :try_end_638
    .catchall {:try_start_637 .. :try_end_638} :catchall_63e

    goto/16 :goto_add

    .line 1251
    .end local v4    # "t":Ljava/lang/Thread;
    :catchall_63a
    move-exception v0

    move-object v5, v0

    :try_start_63c
    monitor-exit v4
    :try_end_63d
    .catchall {:try_start_63c .. :try_end_63d} :catchall_63a

    .end local v23    # "bShallUseSB":Z
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    :try_start_63d
    throw v5
    :try_end_63e
    .catchall {:try_start_63d .. :try_end_63e} :catchall_63e

    .line 1379
    .end local v2    # "start":J
    .end local v8    # "end":J
    .end local v14    # "iInf":I
    .end local v27    # "smartBondingData":[J
    .end local v37    # "otherSocketId":I
    .end local v41    # "sizeForExtremeCase":J
    .end local v43    # "maxBufDataSize":J
    .restart local v23    # "bShallUseSB":Z
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    :catchall_63e
    move-exception v0

    move-object v2, v0

    move-object/from16 v26, v13

    goto/16 :goto_ad2

    .end local v23    # "bShallUseSB":Z
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .local v2, "sUrl":Ljava/lang/String;
    .restart local v3    # "oUrl":Ljava/lang/String;
    .local v4, "bShallUseSB":Z
    :catchall_644
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    move-object v2, v0

    move-object/from16 v26, v13

    goto/16 :goto_ad2

    .line 1234
    .restart local v5    # "sizeForExtremeCase":J
    .restart local v11    # "maxBufDataSize":J
    .restart local v14    # "iInf":I
    .restart local v27    # "smartBondingData":[J
    :cond_650
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    move-wide/from16 v41, v5

    move-wide/from16 v43, v11

    .line 1272
    .end local v2    # "sUrl":Ljava/lang/String;
    .end local v3    # "oUrl":Ljava/lang/String;
    .end local v4    # "bShallUseSB":Z
    .end local v5    # "sizeForExtremeCase":J
    .end local v11    # "maxBufDataSize":J
    .restart local v23    # "bShallUseSB":Z
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    .restart local v41    # "sizeForExtremeCase":J
    .restart local v43    # "maxBufDataSize":J
    :try_start_65a
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v2

    .line 1273
    .local v2, "byteBeforeSample":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    .line 1274
    .local v4, "otherInterface":I
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5
    :try_end_670
    .catchall {:try_start_65a .. :try_end_670} :catchall_a92

    const/4 v6, 0x1

    if-eq v5, v6, :cond_73f

    .line 1275
    const/4 v5, 0x0

    .line 1277
    .local v5, "rsp":Lcom/android/okhttp/Response;
    :try_start_674
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v28

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriginalRequestHeader:Lcom/android/okhttp/Request;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v31

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    add-long v33, v8, v19

    move/from16 v29, v4

    move-object/from16 v30, v6

    invoke-virtual/range {v28 .. v34}, Lcom/android/okhttp/internal/io/RealConnection;->sampleRequestConnect(ILcom/android/okhttp/Request;JJ)Lcom/android/okhttp/Response;

    move-result-object v6

    move-object v5, v6

    .line 1278
    if-eqz v5, :cond_70f

    .line 1280
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->code()I

    move-result v6

    .line 1281
    .local v6, "rspCode":I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Response;)J

    move-result-wide v8

    .line 1282
    .local v8, "sampleRequestSize":J
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v11

    move-wide v15, v8

    const-wide/16 v7, -0x1

    .end local v8    # "sampleRequestSize":J
    .local v15, "sampleRequestSize":J
    invoke-static {v11, v7, v8}, Lcom/android/okhttp/internal/http/MultiratUtil;->getFullContentLength(Lcom/android/okhttp/Headers;J)J

    move-result-wide v7

    .line 1283
    .local v7, "fullSize":J
    const/16 v9, 0xc8

    if-eq v6, v9, :cond_6b6

    const/16 v9, 0xce

    if-ne v6, v9, :cond_6b3

    goto :goto_6b6

    :cond_6b3
    move-object/from16 v26, v13

    goto :goto_701

    :cond_6b6
    :goto_6b6
    const-wide/16 v21, 0x2

    cmp-long v9, v15, v21

    if-nez v9, :cond_6ff

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    cmp-long v9, v7, v24

    if-nez v9, :cond_6ff

    .line 1287
    invoke-virtual {v5}, Lcom/android/okhttp/Response;->headers()Lcom/android/okhttp/Headers;

    move-result-object v9

    const-string v11, "Connection"

    invoke-virtual {v9, v11}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6d0
    .catch Ljava/io/IOException; {:try_start_674 .. :try_end_6d0} :catch_727
    .catch Ljava/net/URISyntaxException; {:try_start_674 .. :try_end_6d0} :catch_723
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_674 .. :try_end_6d0} :catch_71f
    .catchall {:try_start_674 .. :try_end_6d0} :catchall_a92

    .line 1288
    .local v9, "sCon":Ljava/lang/String;
    if-eqz v9, :cond_6e9

    :try_start_6d2
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v10, "close"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6e9

    .line 1289
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConClose:Z
    :try_end_6e3
    .catch Ljava/io/IOException; {:try_start_6d2 .. :try_end_6e3} :catch_6e4
    .catch Ljava/net/URISyntaxException; {:try_start_6d2 .. :try_end_6e3} :catch_723
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_6d2 .. :try_end_6e3} :catch_71f
    .catchall {:try_start_6d2 .. :try_end_6e3} :catchall_63e

    goto :goto_6e9

    .line 1295
    .end local v6    # "rspCode":I
    .end local v7    # "fullSize":J
    .end local v9    # "sCon":Ljava/lang/String;
    .end local v15    # "sampleRequestSize":J
    :catch_6e4
    move-exception v0

    move-object v6, v0

    move-object/from16 v26, v13

    goto :goto_72b

    .line 1292
    .restart local v6    # "rspCode":I
    .restart local v7    # "fullSize":J
    .restart local v15    # "sampleRequestSize":J
    :cond_6e9
    :goto_6e9
    :try_start_6e9
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/okhttp/internal/io/RealConnection;->startSampleSocketCreation:J

    .line 1293
    .local v9, "startTime":J
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24
    :try_end_6f7
    .catch Ljava/io/IOException; {:try_start_6e9 .. :try_end_6f7} :catch_727
    .catch Ljava/net/URISyntaxException; {:try_start_6e9 .. :try_end_6f7} :catch_723
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_6e9 .. :try_end_6f7} :catch_71f
    .catchall {:try_start_6e9 .. :try_end_6f7} :catchall_a92

    move-object/from16 v26, v13

    sub-long v12, v24, v9

    :try_start_6fb
    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v11, v12, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2602(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    goto :goto_726

    .line 1283
    .end local v9    # "startTime":J
    :cond_6ff
    move-object/from16 v26, v13

    .line 1284
    :goto_701
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v10, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v9, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1285
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Server Response not proper"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "byteBeforeSample":J
    .end local v4    # "otherInterface":I
    .end local v5    # "rsp":Lcom/android/okhttp/Response;
    .end local v14    # "iInf":I
    .end local v23    # "bShallUseSB":Z
    .end local v27    # "smartBondingData":[J
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .end local v41    # "sizeForExtremeCase":J
    .end local v43    # "maxBufDataSize":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    throw v9

    .line 1279
    .end local v6    # "rspCode":I
    .end local v7    # "fullSize":J
    .end local v15    # "sampleRequestSize":J
    .restart local v2    # "byteBeforeSample":J
    .restart local v4    # "otherInterface":I
    .restart local v5    # "rsp":Lcom/android/okhttp/Response;
    .restart local v14    # "iInf":I
    .restart local v23    # "bShallUseSB":Z
    .restart local v27    # "smartBondingData":[J
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    .restart local v41    # "sizeForExtremeCase":J
    .restart local v43    # "maxBufDataSize":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    :cond_70f
    move-object/from16 v26, v13

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Cannot Connect to Server"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "byteBeforeSample":J
    .end local v4    # "otherInterface":I
    .end local v5    # "rsp":Lcom/android/okhttp/Response;
    .end local v14    # "iInf":I
    .end local v23    # "bShallUseSB":Z
    .end local v27    # "smartBondingData":[J
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .end local v41    # "sizeForExtremeCase":J
    .end local v43    # "maxBufDataSize":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    throw v6
    :try_end_719
    .catch Ljava/io/IOException; {:try_start_6fb .. :try_end_719} :catch_71d
    .catch Ljava/net/URISyntaxException; {:try_start_6fb .. :try_end_719} :catch_71b
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_6fb .. :try_end_719} :catch_719
    .catchall {:try_start_6fb .. :try_end_719} :catchall_ad4

    .line 1301
    .restart local v2    # "byteBeforeSample":J
    .restart local v4    # "otherInterface":I
    .restart local v5    # "rsp":Lcom/android/okhttp/Response;
    .restart local v14    # "iInf":I
    .restart local v23    # "bShallUseSB":Z
    .restart local v27    # "smartBondingData":[J
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    .restart local v41    # "sizeForExtremeCase":J
    .restart local v43    # "maxBufDataSize":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    :catch_719
    move-exception v0

    goto :goto_741

    .line 1299
    :catch_71b
    move-exception v0

    goto :goto_726

    .line 1295
    :catch_71d
    move-exception v0

    goto :goto_72a

    .line 1301
    :catch_71f
    move-exception v0

    move-object/from16 v26, v13

    goto :goto_741

    .line 1299
    :catch_723
    move-exception v0

    move-object/from16 v26, v13

    .line 1302
    :cond_726
    :goto_726
    goto :goto_741

    .line 1295
    :catch_727
    move-exception v0

    move-object/from16 v26, v13

    :goto_72a
    move-object v6, v0

    .line 1296
    .local v6, "e":Ljava/io/IOException;
    :goto_72b
    :try_start_72b
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v8, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1297
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_726

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    goto :goto_726

    .line 1274
    .end local v5    # "rsp":Lcom/android/okhttp/Response;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_73f
    move-object/from16 v26, v13

    .line 1304
    :goto_741
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_773

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOtherSocketConnectTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " mMainSocketConnectTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1305
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1304
    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1306
    :cond_773
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    sget v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->HANDOVER_TIME_RATIO:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_7d8

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_DIFF_TIME_FOR_HANDOVER:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_7d8

    .line 1307
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_7d5

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exiting the Other interface ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " because interface connect time is slow. mMainSocketConnectTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1310
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " currentConnectTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1312
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1307
    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1313
    :cond_7d5
    monitor-exit v26

    goto/16 :goto_add

    .line 1314
    :cond_7d8
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    sget v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->HANDOVER_TIME_RATIO:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_853

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    sget v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_DIFF_TIME_FOR_HANDOVER:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_853

    .line 1315
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_840

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exiting the main interface : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1316
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " because interface connect time is slow. mMainSocketConnectTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1318
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " currentConnectTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1320
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1315
    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_840
    .catchall {:try_start_72b .. :try_end_840} :catchall_ad4

    .line 1322
    :cond_840
    :try_start_840
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/internal/io/RealConnection;->close()V
    :try_end_849
    .catchall {:try_start_840 .. :try_end_849} :catchall_84a

    .line 1326
    goto :goto_84b

    .line 1324
    :catchall_84a
    move-exception v0

    .line 1327
    :goto_84b
    :try_start_84b
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v5, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2802(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1328
    monitor-exit v26

    goto/16 :goto_add

    .line 1331
    :cond_853
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_877

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "both interface connected while bytesRemaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1333
    :cond_877
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    .line 1334
    .local v5, "byteAfterSample":J
    sub-long v7, v2, v5

    .line 1335
    .local v7, "bytesExpected":J
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    sub-long/2addr v10, v7

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9, v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1502(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 1336
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConClose:Z

    invoke-static {v10, v11, v12}, Lcom/android/okhttp/internal/http/MultiratUtil;->getBlockSize(JZ)J

    move-result-wide v10

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v9, v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 1337
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_8d8

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "chunk base download, bytesForMultiSocket="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", bytesExpected="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", BlockSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1338
    :cond_8d8
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    const-wide/16 v15, 0x3

    mul-long/2addr v11, v15

    const-wide/16 v15, 0x2

    div-long/2addr v11, v15

    cmp-long v9, v9, v11

    if-lez v9, :cond_a6b

    .line 1339
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v12

    add-long/2addr v10, v12

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v9, v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 1340
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    rem-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_928

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    div-long/2addr v9, v11

    goto :goto_937

    :cond_928
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    div-long/2addr v9, v11

    add-long v9, v9, v19

    :goto_937
    long-to-int v9, v9

    .line 1341
    .local v9, "blockNum":I
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v12

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_971

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v12

    rem-long/2addr v10, v12

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v15

    const-wide/16 v19, 0x2

    div-long v12, v15, v19

    move-wide v15, v2

    const-wide/32 v2, 0x500000

    .end local v2    # "byteBeforeSample":J
    .local v15, "byteBeforeSample":J
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v2, v10, v2

    if-gtz v2, :cond_972

    .line 1342
    add-int/lit8 v9, v9, -0x1

    goto :goto_972

    .line 1341
    .end local v15    # "byteBeforeSample":J
    .restart local v2    # "byteBeforeSample":J
    :cond_971
    move-wide v15, v2

    .line 1344
    .end local v2    # "byteBeforeSample":J
    .restart local v15    # "byteBeforeSample":J
    :cond_972
    :goto_972
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    new-array v3, v9, [B

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;[B)[B

    .line 1345
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_97a
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_98f

    .line 1346
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    const/4 v10, 0x0

    aput-byte v10, v3, v2

    .line 1345
    add-int/lit8 v2, v2, 0x1

    goto :goto_97a

    .line 1348
    .end local v2    # "i":I
    :cond_98f
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_9b4

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "block status is initialized with size: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v10

    array-length v10, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1349
    :cond_9b4
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-static {}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getFasterInterface()I

    move-result v3

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFasterInterface:I
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3002(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1350
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v3, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1351
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1352
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_a17

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start socket thread for interfaces "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", faster sock is "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1353
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFasterInterface:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1352
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1354
    :cond_a17
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v2

    new-array v2, v2, [Ljava/lang/Thread;

    .line 1355
    .local v2, "t":[Ljava/lang/Thread;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a20
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    if-ge v3, v10, :cond_a4b

    .line 1356
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v10

    new-instance v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->header:Lcom/android/okhttp/Headers;

    invoke-direct {v11, v12, v13, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/Headers;I)V

    aput-object v11, v10, v3

    .line 1357
    new-instance v10, Ljava/lang/Thread;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v11

    aget-object v11, v11, v3

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v10, v2, v3

    .line 1355
    add-int/lit8 v3, v3, 0x1

    goto :goto_a20

    .line 1359
    .end local v3    # "i":I
    :cond_a4b
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a4c
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    if-ge v3, v10, :cond_a5c

    .line 1360
    aget-object v10, v2, v3

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_a59
    .catchall {:try_start_84b .. :try_end_a59} :catchall_ad4

    .line 1359
    add-int/lit8 v3, v3, 0x1

    goto :goto_a4c

    .line 1363
    .end local v3    # "i":I
    :cond_a5c
    :try_start_a5c
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v3

    const/16 v10, 0x1388

    invoke-virtual {v3, v10}, Lcom/android/okhttp/internal/io/RealConnection;->setSoTimeout(I)V
    :try_end_a67
    .catchall {:try_start_a5c .. :try_end_a67} :catchall_a68

    goto :goto_a69

    .line 1365
    :catchall_a68
    move-exception v0

    :goto_a69
    nop

    .line 1366
    .end local v2    # "t":[Ljava/lang/Thread;
    .end local v9    # "blockNum":I
    goto :goto_a90

    .line 1368
    .end local v15    # "byteBeforeSample":J
    .local v2, "byteBeforeSample":J
    :cond_a6b
    move-wide v15, v2

    .end local v2    # "byteBeforeSample":J
    .restart local v15    # "byteBeforeSample":J
    :try_start_a6c
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_a90

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rest size too small to start Multi socket: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1370
    :cond_a90
    :goto_a90
    monitor-exit v26
    :try_end_a91
    .catchall {:try_start_a6c .. :try_end_a91} :catchall_ad4

    goto :goto_add

    .line 1379
    .end local v4    # "otherInterface":I
    .end local v5    # "byteAfterSample":J
    .end local v7    # "bytesExpected":J
    .end local v14    # "iInf":I
    .end local v15    # "byteBeforeSample":J
    .end local v27    # "smartBondingData":[J
    .end local v41    # "sizeForExtremeCase":J
    .end local v43    # "maxBufDataSize":J
    :catchall_a92
    move-exception v0

    move-object/from16 v26, v13

    move-object v2, v0

    goto :goto_ad2

    .line 1191
    .end local v23    # "bShallUseSB":Z
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .local v2, "sUrl":Ljava/lang/String;
    .local v3, "oUrl":Ljava/lang/String;
    .local v4, "bShallUseSB":Z
    .restart local v11    # "maxBufDataSize":J
    .restart local v14    # "iInf":I
    :cond_a97
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    move-wide/from16 v43, v11

    move-object/from16 v26, v13

    .line 1374
    .end local v2    # "sUrl":Ljava/lang/String;
    .end local v3    # "oUrl":Ljava/lang/String;
    .end local v4    # "bShallUseSB":Z
    .end local v11    # "maxBufDataSize":J
    .restart local v23    # "bShallUseSB":Z
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    .restart local v43    # "maxBufDataSize":J
    :goto_aa1
    :try_start_aa1
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v2

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_aac
    .catchall {:try_start_aa1 .. :try_end_aac} :catchall_aad

    .line 1378
    goto :goto_abc

    .line 1376
    :catchall_aad
    move-exception v0

    move-object v2, v0

    .line 1377
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_aaf
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_abc

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1379
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v14    # "iInf":I
    .end local v43    # "maxBufDataSize":J
    :cond_abc
    :goto_abc
    monitor-exit v26

    move/from16 v4, v23

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1a4

    .end local v23    # "bShallUseSB":Z
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .local v2, "sUrl":Ljava/lang/String;
    .restart local v3    # "oUrl":Ljava/lang/String;
    .restart local v4    # "bShallUseSB":Z
    :catchall_ac8
    move-exception v0

    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    move-object/from16 v26, v13

    move-object v2, v0

    .end local v2    # "sUrl":Ljava/lang/String;
    .end local v3    # "oUrl":Ljava/lang/String;
    .end local v4    # "bShallUseSB":Z
    .restart local v23    # "bShallUseSB":Z
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    :goto_ad2
    monitor-exit v26
    :try_end_ad3
    .catchall {:try_start_aaf .. :try_end_ad3} :catchall_ad4

    throw v2

    :catchall_ad4
    move-exception v0

    move-object v2, v0

    goto :goto_ad2

    .line 1176
    .end local v23    # "bShallUseSB":Z
    .end local v39    # "sUrl":Ljava/lang/String;
    .end local v40    # "oUrl":Ljava/lang/String;
    .restart local v2    # "sUrl":Ljava/lang/String;
    .restart local v3    # "oUrl":Ljava/lang/String;
    .restart local v4    # "bShallUseSB":Z
    :cond_ad7
    move-object/from16 v39, v2

    move-object/from16 v40, v3

    move/from16 v23, v4

    .line 1382
    .end local v2    # "sUrl":Ljava/lang/String;
    .end local v3    # "oUrl":Ljava/lang/String;
    .end local v4    # "bShallUseSB":Z
    .restart local v23    # "bShallUseSB":Z
    .restart local v39    # "sUrl":Ljava/lang/String;
    .restart local v40    # "oUrl":Ljava/lang/String;
    :goto_add
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_b01

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish interface watchdog with bMultisocket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1384
    :cond_b01
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v2

    if-nez v2, :cond_b11

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v2

    if-eqz v2, :cond_147f

    .line 1385
    :cond_b11
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v2

    int-to-long v2, v2

    .line 1386
    .local v2, "minTimeToCheckStopSlow0":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    int-to-long v4, v4

    .line 1387
    .local v4, "minTimeToCheckStopSlow1":J
    const/4 v6, 0x2

    new-array v7, v6, [J

    fill-array-data v7, :array_154a

    .line 1388
    .local v7, "prevTime":[J
    new-array v8, v6, [J

    fill-array-data v8, :array_1556

    .line 1389
    .local v8, "prevBytes":[J
    new-array v9, v6, [J

    fill-array-data v9, :array_1562

    .line 1390
    .local v9, "prevSp":[J
    const/4 v11, 0x5

    .line 1391
    .local v11, "maxCountToSend":I
    const-wide/16 v12, 0x7d0

    .line 1392
    .local v12, "byteThresholdAs0":J
    new-array v14, v6, [I

    fill-array-data v14, :array_156e

    move-object v6, v14

    .line 1393
    .local v6, "noDataCount":[I
    :goto_b38
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v14, v14, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v14, :cond_146f

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v14, v14, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closed:Z

    if-nez v14, :cond_146f

    .line 1394
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v14

    const-wide/16 v19, 0x7d0

    if-eqz v14, :cond_e42

    .line 1395
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1396
    :try_start_b55
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v15
    :try_end_b5b
    .catchall {:try_start_b55 .. :try_end_b5b} :catchall_e2f

    const/4 v10, 0x1

    if-ne v15, v10, :cond_bc6

    .line 1397
    :try_start_b5e
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v10

    if-eqz v10, :cond_bb3

    .line 1398
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_b8d

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b75
    .catchall {:try_start_b5e .. :try_end_b75} :catchall_bb6

    move-wide/from16 v24, v2

    .end local v2    # "minTimeToCheckStopSlow0":J
    .local v24, "minTimeToCheckStopSlow0":J
    :try_start_b77
    const-string v2, "Range Request not supported by server, current SBUsed is "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_b8f

    .end local v24    # "minTimeToCheckStopSlow0":J
    .restart local v2    # "minTimeToCheckStopSlow0":J
    :cond_b8d
    move-wide/from16 v24, v2

    .line 1399
    .end local v2    # "minTimeToCheckStopSlow0":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    :goto_b8f
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v2

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    invoke-static {v2, v3, v10}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    .line 1400
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v3, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    :try_end_ba4
    .catchall {:try_start_b77 .. :try_end_ba4} :catchall_ba5

    goto :goto_bc8

    .line 1403
    :catchall_ba5
    move-exception v0

    move-object v2, v0

    move-wide/from16 v29, v4

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    move/from16 v17, v11

    move-wide/from16 v31, v12

    goto/16 :goto_e3d

    .line 1397
    .end local v24    # "minTimeToCheckStopSlow0":J
    .restart local v2    # "minTimeToCheckStopSlow0":J
    :cond_bb3
    move-wide/from16 v24, v2

    .end local v2    # "minTimeToCheckStopSlow0":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    goto :goto_bc8

    .line 1403
    .end local v24    # "minTimeToCheckStopSlow0":J
    .restart local v2    # "minTimeToCheckStopSlow0":J
    :catchall_bb6
    move-exception v0

    move-wide/from16 v24, v2

    move-object v2, v0

    move-wide/from16 v29, v4

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    move/from16 v17, v11

    move-wide/from16 v31, v12

    .end local v2    # "minTimeToCheckStopSlow0":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    goto/16 :goto_e3d

    .line 1396
    .end local v24    # "minTimeToCheckStopSlow0":J
    .restart local v2    # "minTimeToCheckStopSlow0":J
    :cond_bc6
    move-wide/from16 v24, v2

    .line 1403
    .end local v2    # "minTimeToCheckStopSlow0":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    :goto_bc8
    :try_start_bc8
    monitor-exit v14
    :try_end_bc9
    .catchall {:try_start_bc8 .. :try_end_bc9} :catchall_e22

    .line 1404
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v2

    new-array v2, v2, [J

    .line 1405
    .local v2, "lens":[J
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3

    new-array v3, v3, [J

    .line 1406
    .local v3, "times":[J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_bda
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v14

    if-ge v10, v14, :cond_c29

    .line 1407
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v14

    aget-wide v14, v14, v10

    move-wide/from16 v29, v4

    .end local v4    # "minTimeToCheckStopSlow1":J
    .local v29, "minTimeToCheckStopSlow1":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_bf7

    const-wide/16 v4, 0x0

    goto :goto_c01

    :cond_bf7
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v4

    :goto_c01
    add-long/2addr v14, v4

    aput-wide v14, v2, v10

    .line 1408
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v4, v4, v10

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v14

    if-nez v14, :cond_c17

    const-wide/16 v15, 0x0

    goto :goto_c21

    :cond_c17
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v15

    :goto_c21
    add-long/2addr v4, v15

    aput-wide v4, v3, v10

    .line 1406
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v4, v29

    goto :goto_bda

    .end local v29    # "minTimeToCheckStopSlow1":J
    .restart local v4    # "minTimeToCheckStopSlow1":J
    :cond_c29
    move-wide/from16 v29, v4

    .line 1410
    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v10    # "i":I
    .restart local v29    # "minTimeToCheckStopSlow1":J
    const/4 v4, 0x0

    aget-wide v14, v7, v4

    const-wide/16 v4, 0x0

    cmp-long v10, v14, v4

    if-nez v10, :cond_c97

    .line 1411
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c35
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    if-ge v4, v5, :cond_c48

    .line 1412
    aget-wide v17, v3, v4

    aput-wide v17, v7, v4

    .line 1413
    aget-wide v17, v2, v4

    aput-wide v17, v8, v4

    .line 1411
    add-int/lit8 v4, v4, 0x1

    goto :goto_c35

    .line 1415
    .end local v4    # "i":I
    :cond_c48
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_c8d

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[speed calc detail]init speed data: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v11

    move-wide/from16 v31, v12

    const/4 v10, 0x0

    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    .local v17, "maxCountToSend":I
    .local v31, "byteThresholdAs0":J
    aget-wide v11, v8, v10

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v7, v10

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    aget-wide v11, v8, v10

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v7, v10

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_c91

    .end local v17    # "maxCountToSend":I
    .end local v31    # "byteThresholdAs0":J
    .restart local v11    # "maxCountToSend":I
    .restart local v12    # "byteThresholdAs0":J
    :cond_c8d
    move/from16 v17, v11

    move-wide/from16 v31, v12

    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    .restart local v17    # "maxCountToSend":I
    .restart local v31    # "byteThresholdAs0":J
    :goto_c91
    move-object/from16 v18, v8

    move-object/from16 v26, v9

    goto/16 :goto_e4e

    .line 1418
    .end local v17    # "maxCountToSend":I
    .end local v31    # "byteThresholdAs0":J
    .restart local v11    # "maxCountToSend":I
    .restart local v12    # "byteThresholdAs0":J
    :cond_c97
    move/from16 v17, v11

    move-wide/from16 v31, v12

    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    .restart local v17    # "maxCountToSend":I
    .restart local v31    # "byteThresholdAs0":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    new-array v4, v4, [J

    .line 1419
    .local v4, "diffLen":[J
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    new-array v5, v5, [J

    .line 1420
    .local v5, "diffTime":[J
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    new-array v10, v10, [J

    .line 1421
    .local v10, "curSp":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_cb4
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v12

    if-ge v11, v12, :cond_cfb

    .line 1422
    aget-wide v12, v2, v11

    aget-wide v33, v8, v11

    sub-long v12, v12, v33

    aput-wide v12, v4, v11

    .line 1423
    aget-wide v12, v3, v11

    aget-wide v33, v7, v11

    sub-long v12, v12, v33

    aput-wide v12, v5, v11

    .line 1424
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    aget-wide v13, v4, v11

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    .end local v8    # "prevBytes":[J
    .end local v9    # "prevSp":[J
    .local v18, "prevBytes":[J
    .local v26, "prevSp":[J
    aget-wide v8, v5, v11

    invoke-virtual {v12, v13, v14, v8, v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(JJ)J

    move-result-wide v8

    aput-wide v8, v10, v11

    .line 1425
    aget-wide v8, v3, v11

    aput-wide v8, v7, v11

    .line 1426
    aget-wide v8, v2, v11

    aput-wide v8, v18, v11

    .line 1427
    aget-wide v8, v4, v11

    cmp-long v8, v8, v19

    if-gtz v8, :cond_cf1

    .line 1428
    aget v8, v6, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aput v8, v6, v11

    goto :goto_cf4

    .line 1430
    :cond_cf1
    const/4 v8, 0x0

    aput v8, v6, v11

    .line 1421
    :goto_cf4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v18

    move-object/from16 v9, v26

    goto :goto_cb4

    .end local v18    # "prevBytes":[J
    .end local v26    # "prevSp":[J
    .restart local v8    # "prevBytes":[J
    .restart local v9    # "prevSp":[J
    :cond_cfb
    move-object/from16 v18, v8

    move-object/from16 v26, v9

    .line 1432
    .end local v8    # "prevBytes":[J
    .end local v9    # "prevSp":[J
    .end local v11    # "i":I
    .restart local v18    # "prevBytes":[J
    .restart local v26    # "prevSp":[J
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_d69

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[speed calc detail] reportSBUsage current speed:\t"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget-wide v12, v10, v11

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\t:\t"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-wide v13, v10, v12

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\t("

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v4, v11

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v5, v11

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget-wide v12, v4, v11

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v12, v5, v11

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\t noDataCount:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget v13, v6, v12

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v6, v11

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1435
    :cond_d69
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    const/4 v9, 0x5

    if-eqz v8, :cond_dc5

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-eqz v8, :cond_dc5

    const/4 v8, 0x0

    aget v11, v6, v8

    if-lt v11, v9, :cond_dc5

    .line 1436
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bTwoInfDownloading()Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-eqz v8, :cond_d9b

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-nez v8, :cond_d9b

    .line 1437
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    const/4 v8, -0x3

    invoke-static {v11, v12, v8}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    const/4 v12, 0x0

    goto :goto_dc3

    .line 1440
    :cond_d9b
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_dc2

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "noDatacount[0] goes to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget v13, v6, v12

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", but only 1 inf is using now"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_dc3

    :cond_dc2
    const/4 v12, 0x0

    .line 1442
    :goto_dc3
    aput v12, v6, v12

    .line 1444
    :cond_dc5
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-eqz v8, :cond_e4e

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-eqz v8, :cond_e4e

    const/4 v8, 0x1

    aget v11, v6, v8

    if-lt v11, v9, :cond_e4e

    .line 1445
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bTwoInfDownloading()Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-eqz v8, :cond_df6

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-nez v8, :cond_df6

    .line 1446
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    const/4 v11, -0x4

    invoke-static {v8, v9, v11}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    const/4 v11, 0x1

    goto :goto_e1e

    .line 1449
    :cond_df6
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_e1d

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "noDataCount[1] goes to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget v12, v6, v11

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", but only 1 inf is using now"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_e1e

    :cond_e1d
    const/4 v11, 0x1

    .line 1451
    :goto_e1e
    const/4 v8, 0x0

    aput v8, v6, v11

    goto :goto_e4e

    .line 1403
    .end local v2    # "lens":[J
    .end local v3    # "times":[J
    .end local v5    # "diffTime":[J
    .end local v10    # "curSp":[J
    .end local v17    # "maxCountToSend":I
    .end local v18    # "prevBytes":[J
    .end local v26    # "prevSp":[J
    .end local v29    # "minTimeToCheckStopSlow1":J
    .end local v31    # "byteThresholdAs0":J
    .local v4, "minTimeToCheckStopSlow1":J
    .restart local v8    # "prevBytes":[J
    .restart local v9    # "prevSp":[J
    .local v11, "maxCountToSend":I
    .restart local v12    # "byteThresholdAs0":J
    :catchall_e22
    move-exception v0

    move-wide/from16 v29, v4

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    move/from16 v17, v11

    move-wide/from16 v31, v12

    move-object v2, v0

    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v8    # "prevBytes":[J
    .end local v9    # "prevSp":[J
    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    .restart local v17    # "maxCountToSend":I
    .restart local v18    # "prevBytes":[J
    .restart local v26    # "prevSp":[J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    .restart local v31    # "byteThresholdAs0":J
    goto :goto_e3d

    .end local v17    # "maxCountToSend":I
    .end local v18    # "prevBytes":[J
    .end local v24    # "minTimeToCheckStopSlow0":J
    .end local v26    # "prevSp":[J
    .end local v29    # "minTimeToCheckStopSlow1":J
    .end local v31    # "byteThresholdAs0":J
    .local v2, "minTimeToCheckStopSlow0":J
    .restart local v4    # "minTimeToCheckStopSlow1":J
    .restart local v8    # "prevBytes":[J
    .restart local v9    # "prevSp":[J
    .restart local v11    # "maxCountToSend":I
    .restart local v12    # "byteThresholdAs0":J
    :catchall_e2f
    move-exception v0

    move-wide/from16 v24, v2

    move-wide/from16 v29, v4

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    move/from16 v17, v11

    move-wide/from16 v31, v12

    move-object v2, v0

    .end local v2    # "minTimeToCheckStopSlow0":J
    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v8    # "prevBytes":[J
    .end local v9    # "prevSp":[J
    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    .restart local v17    # "maxCountToSend":I
    .restart local v18    # "prevBytes":[J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    .restart local v26    # "prevSp":[J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    .restart local v31    # "byteThresholdAs0":J
    :goto_e3d
    :try_start_e3d
    monitor-exit v14
    :try_end_e3e
    .catchall {:try_start_e3d .. :try_end_e3e} :catchall_e3f

    throw v2

    :catchall_e3f
    move-exception v0

    move-object v2, v0

    goto :goto_e3d

    .line 1394
    .end local v17    # "maxCountToSend":I
    .end local v18    # "prevBytes":[J
    .end local v24    # "minTimeToCheckStopSlow0":J
    .end local v26    # "prevSp":[J
    .end local v29    # "minTimeToCheckStopSlow1":J
    .end local v31    # "byteThresholdAs0":J
    .restart local v2    # "minTimeToCheckStopSlow0":J
    .restart local v4    # "minTimeToCheckStopSlow1":J
    .restart local v8    # "prevBytes":[J
    .restart local v9    # "prevSp":[J
    .restart local v11    # "maxCountToSend":I
    .restart local v12    # "byteThresholdAs0":J
    :cond_e42
    move-wide/from16 v24, v2

    move-wide/from16 v29, v4

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    move/from16 v17, v11

    move-wide/from16 v31, v12

    .line 1469
    .end local v2    # "minTimeToCheckStopSlow0":J
    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v8    # "prevBytes":[J
    .end local v9    # "prevSp":[J
    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    .restart local v17    # "maxCountToSend":I
    .restart local v18    # "prevBytes":[J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    .restart local v26    # "prevSp":[J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    .restart local v31    # "byteThresholdAs0":J
    :cond_e4e
    :goto_e4e
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v2

    if-eqz v2, :cond_139a

    .line 1470
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1471
    :try_start_e5d
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3
    :try_end_e63
    .catchall {:try_start_e5d .. :try_end_e63} :catchall_138d

    const/4 v4, 0x1

    if-ne v3, v4, :cond_eb2

    .line 1472
    :try_start_e66
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-eqz v3, :cond_eb2

    .line 1473
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_e92

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Range Request not supported by server, current SBUsed is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1474
    :cond_e92
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    .line 1475
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v4, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    :try_end_ea7
    .catchall {:try_start_e66 .. :try_end_ea7} :catchall_ea8

    goto :goto_eb2

    .line 1580
    :catchall_ea8
    move-exception v0

    move-object v3, v0

    move-object/from16 v45, v6

    move-object/from16 v38, v7

    move-wide/from16 v4, v29

    goto/16 :goto_1395

    .line 1479
    :cond_eb2
    :goto_eb2
    :try_start_eb2
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-nez v3, :cond_1381

    .line 1480
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-eqz v3, :cond_137a

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-eqz v3, :cond_137a

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v3

    if-eqz v3, :cond_137a

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1481
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v3

    if-nez v3, :cond_1373

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-nez v3, :cond_1373

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1373

    .line 1482
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_eed
    .catchall {:try_start_eb2 .. :try_end_eed} :catchall_138d

    if-eqz v3, :cond_f0f

    :try_start_eef
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extremThread running, main socket reading from socket, remain bytes = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_f0f
    .catchall {:try_start_eef .. :try_end_f0f} :catchall_ea8

    .line 1483
    :cond_f0f
    :try_start_f0f
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v3

    .line 1484
    .local v3, "id0":I
    add-int/lit8 v5, v3, 0x1

    const/4 v8, 0x2

    rem-int/2addr v5, v8

    .line 1485
    .local v5, "id1":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1486
    .local v8, "curTime":J
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v11

    aget-wide v11, v11, v3

    sub-long v11, v8, v11

    .line 1487
    .local v11, "time0":J
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v13

    aget-wide v13, v13, v5

    sub-long v13, v8, v13

    .line 1489
    .local v13, "time1":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v27, v4, v3

    const-wide/16 v15, 0x0

    cmp-long v4, v27, v15

    const-wide/16 v27, 0x8

    const-wide/16 v33, 0x28f5

    const-wide/16 v35, 0xbb8

    if-nez v4, :cond_1031

    cmp-long v4, v11, v35

    if-ltz v4, :cond_1031

    .line 1490
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v10

    aget-wide v41, v10, v3

    aput-wide v41, v4, v3

    .line 1491
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v10

    aget-wide v41, v10, v3

    aput-wide v41, v4, v3

    .line 1492
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v41, v4, v3

    const-wide/16 v15, 0x0

    cmp-long v4, v41, v15

    if-nez v4, :cond_f7a

    const-wide/16 v41, 0x0

    goto :goto_f8e

    :cond_f7a
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v41, v4, v3

    mul-long v41, v41, v27

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v43, v4, v3

    div-long v41, v41, v43
    :try_end_f8e
    .catchall {:try_start_f0f .. :try_end_f8e} :catchall_138d

    :goto_f8e
    move-wide/from16 v43, v41

    .line 1493
    .local v43, "initSpeed0":J
    move-object v10, v6

    move-object v4, v7

    move-wide/from16 v6, v43

    .end local v7    # "prevTime":[J
    .end local v43    # "initSpeed0":J
    .local v4, "prevTime":[J
    .local v6, "initSpeed0":J
    .local v10, "noDataCount":[I
    cmp-long v38, v6, v33

    if-lez v38, :cond_fac

    :try_start_f98
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v15
    :try_end_f9e
    .catchall {:try_start_f98 .. :try_end_f9e} :catchall_fa2

    move-wide/from16 v43, v8

    .end local v8    # "curTime":J
    .local v43, "curTime":J
    int-to-long v8, v15

    .end local v24    # "minTimeToCheckStopSlow0":J
    .local v8, "minTimeToCheckStopSlow0":J
    goto :goto_fb5

    .line 1580
    .end local v3    # "id0":I
    .end local v5    # "id1":I
    .end local v6    # "initSpeed0":J
    .end local v8    # "minTimeToCheckStopSlow0":J
    .end local v11    # "time0":J
    .end local v13    # "time1":J
    .end local v43    # "curTime":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    :catchall_fa2
    move-exception v0

    move-object v3, v0

    move-object/from16 v38, v4

    move-object/from16 v45, v10

    move-wide/from16 v4, v29

    goto/16 :goto_1395

    .line 1494
    .restart local v3    # "id0":I
    .restart local v5    # "id1":I
    .restart local v6    # "initSpeed0":J
    .local v8, "curTime":J
    .restart local v11    # "time0":J
    .restart local v13    # "time1":J
    :cond_fac
    move-wide/from16 v43, v8

    .end local v8    # "curTime":J
    .restart local v43    # "curTime":J
    :try_start_fae
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW_FOR_LOW_TH:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v8
    :try_end_fb4
    .catchall {:try_start_fae .. :try_end_fb4} :catchall_1027

    int-to-long v8, v8

    .line 1495
    .end local v24    # "minTimeToCheckStopSlow0":J
    .local v8, "minTimeToCheckStopSlow0":J
    :goto_fb5
    :try_start_fb5
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v15, :cond_1014

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v15
    :try_end_fbf
    .catchall {:try_start_fb5 .. :try_end_fbf} :catchall_101b

    move-object/from16 v38, v4

    .end local v4    # "prevTime":[J
    .local v38, "prevTime":[J
    :try_start_fc1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_fc6
    .catchall {:try_start_fc1 .. :try_end_fc6} :catchall_100a

    move-object/from16 v45, v10

    .end local v10    # "noDataCount":[I
    .local v45, "noDataCount":[I
    :try_start_fc8
    const-string v10, "[speed calc]set speed calc offset for inf "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1496
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v10

    move-wide/from16 v46, v11

    .end local v11    # "time0":J
    .local v46, "time0":J
    aget-wide v10, v10, v3

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v10

    aget-wide v10, v10, v3

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", initSpeed="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", minTimeToCheckStopSlow0="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1495
    invoke-virtual {v15, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1009
    .catchall {:try_start_fc8 .. :try_end_1009} :catchall_1101

    goto :goto_103b

    .line 1580
    .end local v3    # "id0":I
    .end local v5    # "id1":I
    .end local v6    # "initSpeed0":J
    .end local v13    # "time1":J
    .end local v43    # "curTime":J
    .end local v45    # "noDataCount":[I
    .end local v46    # "time0":J
    .restart local v10    # "noDataCount":[I
    :catchall_100a
    move-exception v0

    move-object/from16 v45, v10

    move-object v3, v0

    move-wide/from16 v24, v8

    move-wide/from16 v4, v29

    .end local v10    # "noDataCount":[I
    .restart local v45    # "noDataCount":[I
    goto/16 :goto_1395

    .line 1495
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v3    # "id0":I
    .restart local v4    # "prevTime":[J
    .restart local v5    # "id1":I
    .restart local v6    # "initSpeed0":J
    .restart local v10    # "noDataCount":[I
    .restart local v11    # "time0":J
    .restart local v13    # "time1":J
    .restart local v43    # "curTime":J
    :cond_1014
    move-object/from16 v38, v4

    move-object/from16 v45, v10

    move-wide/from16 v46, v11

    .end local v4    # "prevTime":[J
    .end local v10    # "noDataCount":[I
    .end local v11    # "time0":J
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    .restart local v46    # "time0":J
    goto :goto_103b

    .line 1580
    .end local v3    # "id0":I
    .end local v5    # "id1":I
    .end local v6    # "initSpeed0":J
    .end local v13    # "time1":J
    .end local v38    # "prevTime":[J
    .end local v43    # "curTime":J
    .end local v45    # "noDataCount":[I
    .end local v46    # "time0":J
    .restart local v4    # "prevTime":[J
    .restart local v10    # "noDataCount":[I
    :catchall_101b
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v45, v10

    move-object v3, v0

    move-wide/from16 v24, v8

    move-wide/from16 v4, v29

    .end local v4    # "prevTime":[J
    .end local v10    # "noDataCount":[I
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    goto/16 :goto_1395

    .end local v8    # "minTimeToCheckStopSlow0":J
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v4    # "prevTime":[J
    .restart local v10    # "noDataCount":[I
    .restart local v24    # "minTimeToCheckStopSlow0":J
    :catchall_1027
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v45, v10

    move-object v3, v0

    move-wide/from16 v4, v29

    .end local v4    # "prevTime":[J
    .end local v10    # "noDataCount":[I
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    goto/16 :goto_1395

    .line 1489
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v3    # "id0":I
    .restart local v5    # "id1":I
    .local v6, "noDataCount":[I
    .restart local v7    # "prevTime":[J
    .local v8, "curTime":J
    .restart local v11    # "time0":J
    .restart local v13    # "time1":J
    :cond_1031
    move-object/from16 v45, v6

    move-object/from16 v38, v7

    move-wide/from16 v43, v8

    move-wide/from16 v46, v11

    .line 1499
    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .end local v8    # "curTime":J
    .end local v11    # "time0":J
    .restart local v38    # "prevTime":[J
    .restart local v43    # "curTime":J
    .restart local v45    # "noDataCount":[I
    .restart local v46    # "time0":J
    move-wide/from16 v8, v24

    .end local v24    # "minTimeToCheckStopSlow0":J
    .local v8, "minTimeToCheckStopSlow0":J
    :goto_103b
    :try_start_103b
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v6, v4, v5
    :try_end_1043
    .catchall {:try_start_103b .. :try_end_1043} :catchall_136c

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-nez v4, :cond_1109

    cmp-long v4, v13, v35

    if-ltz v4, :cond_1109

    .line 1500
    :try_start_104d
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v6

    aget-wide v6, v6, v5

    aput-wide v6, v4, v5

    .line 1501
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v6

    aget-wide v6, v6, v5

    aput-wide v6, v4, v5

    .line 1502
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v6, v4, v5

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-nez v4, :cond_107e

    const-wide/16 v6, 0x0

    goto :goto_1091

    :cond_107e
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v6, v4, v5

    mul-long v6, v6, v27

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v10, v4, v5

    div-long/2addr v6, v10

    .line 1503
    .local v6, "initSpeed1":J
    :goto_1091
    cmp-long v4, v6, v33

    if-lez v4, :cond_109d

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4

    int-to-long v10, v4

    .end local v29    # "minTimeToCheckStopSlow1":J
    .local v10, "minTimeToCheckStopSlow1":J
    goto :goto_10a4

    .line 1504
    .end local v10    # "minTimeToCheckStopSlow1":J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    :cond_109d
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW_FOR_LOW_TH:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v4
    :try_end_10a3
    .catchall {:try_start_104d .. :try_end_10a3} :catchall_1101

    int-to-long v10, v4

    .line 1505
    .end local v29    # "minTimeToCheckStopSlow1":J
    .restart local v10    # "minTimeToCheckStopSlow1":J
    :goto_10a4
    :try_start_10a4
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_10f5

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[speed calc]set speed calc offset for inf "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1506
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v15

    move-wide/from16 v27, v13

    .end local v13    # "time1":J
    .local v27, "time1":J
    aget-wide v13, v15, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v13

    aget-wide v13, v13, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", initSpeed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", minTimeToCheckStopSlow1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1505
    invoke-virtual {v4, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_10f4
    .catchall {:try_start_10a4 .. :try_end_10f4} :catchall_10fa

    goto :goto_10f7

    .end local v27    # "time1":J
    .restart local v13    # "time1":J
    :cond_10f5
    move-wide/from16 v27, v13

    .line 1511
    .end local v6    # "initSpeed1":J
    .end local v13    # "time1":J
    .restart local v27    # "time1":J
    :goto_10f7
    move-wide/from16 v29, v10

    goto :goto_110b

    .line 1580
    .end local v3    # "id0":I
    .end local v5    # "id1":I
    .end local v27    # "time1":J
    .end local v43    # "curTime":J
    .end local v46    # "time0":J
    :catchall_10fa
    move-exception v0

    move-object v3, v0

    move-wide/from16 v24, v8

    move-wide v4, v10

    goto/16 :goto_1395

    .end local v10    # "minTimeToCheckStopSlow1":J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    :catchall_1101
    move-exception v0

    move-object v3, v0

    move-wide/from16 v24, v8

    move-wide/from16 v4, v29

    goto/16 :goto_1395

    .line 1499
    .restart local v3    # "id0":I
    .restart local v5    # "id1":I
    .restart local v13    # "time1":J
    .restart local v43    # "curTime":J
    .restart local v46    # "time0":J
    :cond_1109
    move-wide/from16 v27, v13

    .line 1511
    .end local v13    # "time1":J
    .restart local v27    # "time1":J
    :goto_110b
    cmp-long v4, v46, v8

    if-ltz v4, :cond_1365

    :try_start_110f
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v6, v4, v3

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v10, v4, v3

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1365

    .line 1512
    const-wide/16 v6, 0x0

    .line 1513
    .local v6, "sp0":J
    const-wide/16 v10, 0x0

    .line 1514
    .local v10, "sp1":J
    const-wide/16 v12, 0x0

    .line 1515
    .local v12, "spNoOffset0":J
    const-wide/16 v14, 0x0

    .line 1517
    .local v14, "spNoOffset1":J
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeedWithOffset(I)J

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 1518
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeedWithOffset(I)J

    move-result-wide v24

    move-wide/from16 v10, v24

    .line 1519
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v24

    move-wide/from16 v12, v24

    .line 1520
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 1528
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_11c6

    .line 1529
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4
    :try_end_1155
    .catchall {:try_start_110f .. :try_end_1155} :catchall_136c

    move-wide/from16 v24, v8

    .end local v8    # "minTimeToCheckStopSlow0":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    :try_start_1157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[speed calc]current speed is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " threshold ratio is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4900()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5000()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", elapsed time is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v33, v6

    move-wide/from16 v6, v46

    .end local v46    # "time0":J
    .local v6, "time0":J
    .local v33, "sp0":J
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v46, v6

    move-wide/from16 v6, v27

    .end local v27    # "time1":J
    .local v6, "time1":J
    .restart local v46    # "time0":J
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1529
    invoke-virtual {v4, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1532
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[speed calc]speed without offset is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_11cc

    .line 1528
    .end local v24    # "minTimeToCheckStopSlow0":J
    .end local v33    # "sp0":J
    .local v6, "sp0":J
    .restart local v8    # "minTimeToCheckStopSlow0":J
    .restart local v27    # "time1":J
    :cond_11c6
    move-wide/from16 v33, v6

    move-wide/from16 v24, v8

    move-wide/from16 v6, v27

    .line 1535
    .end local v8    # "minTimeToCheckStopSlow0":J
    .end local v27    # "time1":J
    .local v6, "time1":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    .restart local v33    # "sp0":J
    :goto_11cc
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4900()I

    move-result v4

    if-ltz v4, :cond_12c0

    cmp-long v4, v6, v29

    if-ltz v4, :cond_1207

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1537
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v27, v4, v5

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v35, v4, v5

    cmp-long v4, v27, v35

    if-eqz v4, :cond_1205

    .line 1538
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4900()I

    move-result v4

    int-to-long v8, v4

    mul-long/2addr v8, v10

    cmp-long v4, v33, v8

    if-lez v4, :cond_1203

    const-wide/16 v8, 0x0

    cmp-long v4, v33, v8

    if-ltz v4, :cond_1203

    cmp-long v4, v10, v8

    move-wide v8, v14

    .end local v14    # "spNoOffset1":J
    .local v8, "spNoOffset1":J
    if-gez v4, :cond_1200

    goto :goto_1208

    :cond_1200
    const-wide/16 v21, 0x2

    goto :goto_1238

    .end local v8    # "spNoOffset1":J
    .restart local v14    # "spNoOffset1":J
    :cond_1203
    move-wide v8, v14

    .end local v14    # "spNoOffset1":J
    .restart local v8    # "spNoOffset1":J
    goto :goto_1208

    .line 1537
    .end local v8    # "spNoOffset1":J
    .restart local v14    # "spNoOffset1":J
    :cond_1205
    move-wide v8, v14

    .end local v14    # "spNoOffset1":J
    .restart local v8    # "spNoOffset1":J
    goto :goto_1208

    .line 1535
    .end local v8    # "spNoOffset1":J
    .restart local v14    # "spNoOffset1":J
    :cond_1207
    move-wide v8, v14

    .line 1538
    .end local v14    # "spNoOffset1":J
    .restart local v8    # "spNoOffset1":J
    :goto_1208
    const-wide/16 v35, 0xa

    cmp-long v4, v8, v35

    if-gtz v4, :cond_12bd

    const-wide/16 v21, 0x2

    div-long v35, v29, v21

    cmp-long v4, v6, v35

    if-ltz v4, :cond_12c3

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1539
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v35, v4, v5

    const-wide/16 v14, 0x0

    cmp-long v4, v35, v14

    if-lez v4, :cond_12c3

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 1540
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v35, v4, v5

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v4

    aget-wide v41, v4, v5

    cmp-long v4, v35, v41

    if-eqz v4, :cond_12c3

    .line 1541
    :goto_1238
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_125e

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "now stop the interface [1st>2nd] "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " and swtich sec interface to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1542
    :cond_125e
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v14, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v4, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4302(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1543
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WIFI2SESSION:Z
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5100()Z

    move-result v4

    if-eqz v4, :cond_1280

    .line 1544
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchSocket(I)Z

    move-result v4

    if-eqz v4, :cond_12a3

    .line 1545
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    goto :goto_12a3

    .line 1549
    :cond_1280
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v14, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z
    invoke-static {v4, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1550
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z
    invoke-static {v4, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1551
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v4, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1552
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v4

    const/4 v14, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    invoke-static {v4, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->access$5202(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;Z)Z

    .line 1553
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 1555
    :cond_12a3
    :goto_12a3
    if-nez v3, :cond_12b1

    .line 1556
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v14

    const/4 v4, -0x1

    invoke-static {v14, v15, v4}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto/16 :goto_1387

    .line 1558
    :cond_12b1
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v14

    const/4 v4, -0x2

    invoke-static {v14, v15, v4}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto/16 :goto_1387

    .line 1538
    :cond_12bd
    const-wide/16 v21, 0x2

    goto :goto_12c3

    .line 1535
    .end local v8    # "spNoOffset1":J
    .restart local v14    # "spNoOffset1":J
    :cond_12c0
    move-wide v8, v14

    const-wide/16 v21, 0x2

    .line 1561
    .end local v14    # "spNoOffset1":J
    .restart local v8    # "spNoOffset1":J
    :cond_12c3
    :goto_12c3
    cmp-long v4, v6, v29

    if-ltz v4, :cond_1387

    .line 1562
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5000()I

    move-result v4

    if-ltz v4, :cond_1387

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5000()I

    move-result v4

    int-to-long v14, v4

    mul-long v14, v14, v33

    cmp-long v4, v10, v14

    if-lez v4, :cond_1387

    const-wide/16 v14, 0x0

    cmp-long v4, v33, v14

    if-lez v4, :cond_1387

    cmp-long v4, v10, v14

    if-lez v4, :cond_1387

    .line 1563
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v4

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->access$5300(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;)Z

    move-result v4

    if-eqz v4, :cond_133c

    .line 1564
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v14, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v4, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4302(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1565
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2802(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1566
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closeMainSocket()V
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V

    .line 1567
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1324

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "now stop the interface [2nd>1st]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " and switch main interface to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1568
    :cond_1324
    if-nez v5, :cond_1331

    .line 1569
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v14

    const/4 v4, -0x1

    invoke-static {v14, v15, v4}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto :goto_1387

    .line 1571
    :cond_1331
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v14

    const/4 v4, -0x2

    invoke-static {v14, v15, v4}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto :goto_1387

    .line 1574
    :cond_133c
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1387

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "do not stop the interface [2nd>1st] since "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " is not working"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_135f
    .catchall {:try_start_1157 .. :try_end_135f} :catchall_1360

    goto :goto_1387

    .line 1580
    .end local v3    # "id0":I
    .end local v5    # "id1":I
    .end local v6    # "time1":J
    .end local v8    # "spNoOffset1":J
    .end local v10    # "sp1":J
    .end local v12    # "spNoOffset0":J
    .end local v33    # "sp0":J
    .end local v43    # "curTime":J
    .end local v46    # "time0":J
    :catchall_1360
    move-exception v0

    move-object v3, v0

    move-wide/from16 v4, v29

    goto :goto_1395

    .line 1511
    .end local v24    # "minTimeToCheckStopSlow0":J
    .restart local v3    # "id0":I
    .restart local v5    # "id1":I
    .local v8, "minTimeToCheckStopSlow0":J
    .restart local v27    # "time1":J
    .restart local v43    # "curTime":J
    .restart local v46    # "time0":J
    :cond_1365
    move-wide/from16 v24, v8

    move-wide/from16 v6, v27

    const-wide/16 v21, 0x2

    .end local v8    # "minTimeToCheckStopSlow0":J
    .end local v27    # "time1":J
    .restart local v6    # "time1":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    goto :goto_1387

    .line 1580
    .end local v3    # "id0":I
    .end local v5    # "id1":I
    .end local v6    # "time1":J
    .end local v24    # "minTimeToCheckStopSlow0":J
    .end local v43    # "curTime":J
    .end local v46    # "time0":J
    .restart local v8    # "minTimeToCheckStopSlow0":J
    :catchall_136c
    move-exception v0

    move-wide/from16 v24, v8

    move-object v3, v0

    move-wide/from16 v4, v29

    .end local v8    # "minTimeToCheckStopSlow0":J
    .restart local v24    # "minTimeToCheckStopSlow0":J
    goto :goto_1395

    .line 1481
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .local v6, "noDataCount":[I
    .restart local v7    # "prevTime":[J
    :cond_1373
    move-object/from16 v45, v6

    move-object/from16 v38, v7

    const-wide/16 v21, 0x2

    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    goto :goto_1387

    .line 1480
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v6    # "noDataCount":[I
    .restart local v7    # "prevTime":[J
    :cond_137a
    move-object/from16 v45, v6

    move-object/from16 v38, v7

    const-wide/16 v21, 0x2

    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    goto :goto_1387

    .line 1479
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v6    # "noDataCount":[I
    .restart local v7    # "prevTime":[J
    :cond_1381
    move-object/from16 v45, v6

    move-object/from16 v38, v7

    const-wide/16 v21, 0x2

    .line 1580
    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    :cond_1387
    :goto_1387
    move-wide/from16 v4, v29

    .end local v29    # "minTimeToCheckStopSlow1":J
    .local v4, "minTimeToCheckStopSlow1":J
    :try_start_1389
    monitor-exit v2

    move-wide/from16 v2, v24

    goto :goto_13a4

    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v6    # "noDataCount":[I
    .restart local v7    # "prevTime":[J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    :catchall_138d
    move-exception v0

    move-object/from16 v45, v6

    move-object/from16 v38, v7

    move-object v3, v0

    move-wide/from16 v4, v29

    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .end local v29    # "minTimeToCheckStopSlow1":J
    .restart local v4    # "minTimeToCheckStopSlow1":J
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    :goto_1395
    monitor-exit v2
    :try_end_1396
    .catchall {:try_start_1389 .. :try_end_1396} :catchall_1397

    throw v3

    :catchall_1397
    move-exception v0

    move-object v3, v0

    goto :goto_1395

    .line 1469
    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .restart local v6    # "noDataCount":[I
    .restart local v7    # "prevTime":[J
    .restart local v29    # "minTimeToCheckStopSlow1":J
    :cond_139a
    move-object/from16 v45, v6

    move-object/from16 v38, v7

    const-wide/16 v21, 0x2

    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .restart local v38    # "prevTime":[J
    .restart local v45    # "noDataCount":[I
    move-wide/from16 v2, v24

    move-wide/from16 v4, v29

    .line 1583
    .end local v24    # "minTimeToCheckStopSlow0":J
    .end local v29    # "minTimeToCheckStopSlow1":J
    .restart local v2    # "minTimeToCheckStopSlow0":J
    .restart local v4    # "minTimeToCheckStopSlow1":J
    :goto_13a4
    const-wide/16 v6, 0x0

    .line 1584
    .local v6, "nonReadTime":J
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_13be

    .line 1585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 1586
    :cond_13be
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_13ea

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nonReadTime till now = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " bAppIsReadingNow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1587
    :cond_13ea
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closed:Z

    if-nez v8, :cond_144b

    sget v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_1400

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-nez v8, :cond_1400

    goto :goto_144b

    .line 1592
    :cond_1400
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v8

    if-nez v8, :cond_142f

    cmp-long v8, v6, v19

    if-lez v8, :cond_142f

    .line 1593
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_142a

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stop reading data for second chunks for APP nonReadTime is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1594
    :cond_142a
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z

    .line 1596
    :cond_142f
    monitor-enter p0

    .line 1598
    const-wide/16 v8, 0x3e8

    :try_start_1432
    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1435
    .catchall {:try_start_1432 .. :try_end_1435} :catchall_1436

    .line 1600
    :goto_1435
    goto :goto_1438

    :catchall_1436
    move-exception v0

    goto :goto_1435

    .line 1601
    :goto_1438
    :try_start_1438
    monitor-exit p0

    .line 1602
    .end local v6    # "nonReadTime":J
    move/from16 v11, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v26

    move-wide/from16 v12, v31

    move-object/from16 v7, v38

    move-object/from16 v6, v45

    goto/16 :goto_b38

    .line 1601
    .restart local v6    # "nonReadTime":J
    :catchall_1447
    move-exception v0

    move-object v8, v0

    monitor-exit p0
    :try_end_144a
    .catchall {:try_start_1438 .. :try_end_144a} :catchall_1447

    throw v8

    .line 1588
    :cond_144b
    :goto_144b
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    .line 1589
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_147f

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close input stream since app is not reading data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_147f

    .line 1393
    .end local v17    # "maxCountToSend":I
    .end local v18    # "prevBytes":[J
    .end local v26    # "prevSp":[J
    .end local v31    # "byteThresholdAs0":J
    .end local v38    # "prevTime":[J
    .end local v45    # "noDataCount":[I
    .local v6, "noDataCount":[I
    .restart local v7    # "prevTime":[J
    .local v8, "prevBytes":[J
    .restart local v9    # "prevSp":[J
    .local v11, "maxCountToSend":I
    .local v12, "byteThresholdAs0":J
    :cond_146f
    move-wide/from16 v24, v2

    move-wide/from16 v29, v4

    move-object/from16 v45, v6

    move-object/from16 v38, v7

    move-object/from16 v18, v8

    move-object/from16 v26, v9

    move/from16 v17, v11

    move-wide/from16 v31, v12

    .line 1604
    .end local v2    # "minTimeToCheckStopSlow0":J
    .end local v4    # "minTimeToCheckStopSlow1":J
    .end local v6    # "noDataCount":[I
    .end local v7    # "prevTime":[J
    .end local v8    # "prevBytes":[J
    .end local v9    # "prevSp":[J
    .end local v11    # "maxCountToSend":I
    .end local v12    # "byteThresholdAs0":J
    :cond_147f
    :goto_147f
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v2, :cond_14a6

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closed:Z

    if-nez v2, :cond_14a6

    .line 1605
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_149a

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    const-string v3, "close input stream for time out"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1607
    :cond_149a
    :try_start_149a
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->close()V

    .line 1608
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closeMainSocket()V
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V
    :try_end_14a4
    .catchall {:try_start_149a .. :try_end_14a4} :catchall_14a5

    goto :goto_14a6

    .line 1610
    :catchall_14a5
    move-exception v0

    .line 1612
    :cond_14a6
    :goto_14a6
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1613
    :try_start_14ad
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-eqz v3, :cond_151d

    .line 1614
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_14c4

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    const-string v4, "try to stopSBusage finally"

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1615
    :cond_14c4
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_14db

    .line 1616
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto :goto_1517

    .line 1617
    :cond_14db
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bHasIOException:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v3

    if-nez v3, :cond_14ee

    .line 1618
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto :goto_1517

    .line 1620
    :cond_14ee
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v3

    if-eqz v3, :cond_1508

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isServerReject()Z

    move-result v3

    if-eqz v3, :cond_1508

    .line 1621
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v4, 0x2

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 1623
    :cond_1508
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    .line 1625
    :goto_1517
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v4, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z
    invoke-static {v3, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 1627
    :cond_151d
    monitor-exit v2
    :try_end_151e
    .catchall {:try_start_14ad .. :try_end_151e} :catchall_1545

    .line 1629
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_1544

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: thread checking: stop interface watchdog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1630
    :cond_1544
    return-void

    .line 1627
    :catchall_1545
    move-exception v0

    move-object v3, v0

    :try_start_1547
    monitor-exit v2
    :try_end_1548
    .catchall {:try_start_1547 .. :try_end_1548} :catchall_1545

    throw v3

    nop

    :array_154a
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1556
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_1562
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_156e
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
