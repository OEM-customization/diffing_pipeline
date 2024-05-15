.class Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;
.super Ljava/lang/Object;
.source "TwoChunkInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/TwoChunkInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleDataBuffer"
.end annotation


# instance fields
.field private blacklist bSwitchedToChild:Z

.field private final blacklist bufOffset:J

.field private blacklist childChunkEnd:J

.field private blacklist childChunkInput:Ljava/io/InputStream;

.field private blacklist childChunkStart:J

.field private blacklist dis:Ljava/io/DataInputStream;

.field private blacklist dos:Ljava/io/DataOutputStream;

.field private blacklist fileBuf:Ljava/io/File;

.field private blacklist fullRead:Z

.field private blacklist hasReadLen:J

.field private final blacklist mBufferLength:J

.field private blacklist offset:J

.field private blacklist readOffset:J

.field private blacklist restLen:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;JJ)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p2, "start"    # J
    .param p4, "len"    # J

    .line 1190
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    .line 1169
    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    .line 1173
    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1175
    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 1176
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    .line 1177
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    .line 1180
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bSwitchedToChild:Z

    .line 1191
    iput-wide p4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    .line 1192
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    .line 1193
    iput-wide v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    .line 1194
    iput-wide v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1195
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    .line 1196
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    .line 1197
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    .line 1198
    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v1

    iget v1, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_99

    .line 1199
    iget-object v1, p1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_72

    .line 1201
    :try_start_34
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_54

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek to file pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDiff_Http_File_Pos:J

    sub-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1202
    :cond_54
    iget-object v1, p1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDiff_Http_File_Pos:J

    sub-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1203
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_63} :catch_64

    .line 1210
    goto :goto_72

    .line 1207
    :catch_64
    move-exception v1

    .line 1208
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_70

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1209
    :cond_70
    iput-object v0, p1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 1212
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_72
    :goto_72
    iget-object v0, p1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_99

    .line 1213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_77
    const/4 v1, 0x3

    if-ge v0, v1, :cond_99

    .line 1214
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->createTempBufFile()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1215
    goto :goto_99

    .line 1218
    :cond_81
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1219
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1220
    .local v1, "obj":Ljava/lang/Object;
    monitor-enter v1

    .line 1222
    const-wide/16 v2, 0x1f4

    :try_start_8c
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_90

    .line 1224
    :goto_8f
    goto :goto_92

    :catchall_90
    move-exception v2

    goto :goto_8f

    .line 1225
    :goto_92
    :try_start_92
    monitor-exit v1

    .line 1213
    .end local v1    # "obj":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 1225
    .restart local v1    # "obj":Ljava/lang/Object;
    :catchall_96
    move-exception v2

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_96

    throw v2

    .line 1230
    .end local v0    # "i":I
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_99
    :goto_99
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_bd

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SimpleDBuffer added from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " with length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1231
    :cond_bd
    return-void
.end method

.method private blacklist closeAndDelFile()V
    .registers 5

    .line 1260
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 1262
    :try_start_9
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v1, :cond_4c

    .line 1263
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 1264
    :cond_16
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_24

    .line 1265
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1266
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1268
    :cond_24
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1269
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: buffered file removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1270
    :cond_49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1272
    :cond_4c
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->clearBufferDir()V
    :try_end_55
    .catchall {:try_start_9 .. :try_end_55} :catchall_56

    .line 1276
    goto :goto_64

    .line 1274
    :catchall_56
    move-exception v1

    .line 1275
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_57
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1277
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_64
    :goto_64
    monitor-exit v0

    .line 1278
    return-void

    .line 1277
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_57 .. :try_end_68} :catchall_66

    throw v1
.end method

.method private blacklist createTempBufFile()Z
    .registers 7

    .line 1237
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 1238
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".sbBuf_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1239
    .local v1, "bufFileName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to save buffer to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_bd

    .line 1241
    :cond_4c
    const/4 v2, 0x0

    :try_start_4d
    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->createBufferDir()V

    .line 1242
    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v3

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1243
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    .line 1244
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    .line 1245
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_a4

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource check: buffered file generated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_4d .. :try_end_a4} :catchall_a7

    .line 1246
    :cond_a4
    const/4 v2, 0x1

    :try_start_a5
    monitor-exit v0

    return v2

    .line 1248
    :catchall_a7
    move-exception v3

    .line 1249
    .local v3, "e":Ljava/lang/Throwable;
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_b5

    iget-object v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1250
    :cond_b5
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1251
    iput-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    .line 1252
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1254
    .end local v1    # "bufFileName":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_bd

    throw v1
.end method


# virtual methods
.method public blacklist clearBuffer()V
    .registers 1

    .line 1524
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1525
    return-void
.end method

.method public blacklist getHasReadLen()J
    .registers 3

    .line 1291
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    return-wide v0
.end method

.method public blacklist getLength()J
    .registers 3

    .line 1284
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    return-wide v0
.end method

.method public blacklist getOffset()J
    .registers 3

    .line 1553
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    return-wide v0
.end method

.method public blacklist getRestLength()J
    .registers 3

    .line 1539
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    return-wide v0
.end method

.method public blacklist getToBeReadLength()J
    .registers 5

    .line 1546
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist isEmpty()Z
    .registers 7

    .line 1513
    monitor-enter p0

    .line 1514
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_12

    .line 1515
    monitor-exit p0

    return v1

    .line 1516
    :cond_12
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    monitor-exit p0

    return v1

    .line 1517
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public blacklist isFullRead()Z
    .registers 2

    .line 1531
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    return v0
.end method

.method public blacklist push(I[BI)J
    .registers 12
    .param p1, "sid"    # I
    .param p2, "b"    # [B
    .param p3, "length"    # I

    .line 1432
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    goto/16 :goto_fa

    .line 1437
    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_1a

    .line 1438
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2, v0, p3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_23

    .line 1441
    :cond_1a
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p2, v0, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1442
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_25

    .line 1497
    :goto_23
    goto/16 :goto_fa

    .line 1447
    :catchall_25
    move-exception v1

    .line 1448
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v2, :cond_52

    .line 1449
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: buffered file is already removed since download cancelled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1450
    :cond_50
    int-to-long v2, p3

    return-wide v2

    .line 1452
    :cond_52
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1453
    :cond_5f
    const/4 v2, 0x1

    .line 1454
    .local v2, "bCreated":Z
    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_bb

    .line 1455
    :cond_6a
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resource check: buffered file not found in push "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1456
    :cond_8a
    const/4 v2, 0x0

    .line 1457
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8c
    const/4 v4, 0x3

    if-ge v3, v4, :cond_aa

    .line 1458
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1459
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->createTempBufFile()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 1460
    const/4 v2, 0x1

    .line 1461
    goto :goto_aa

    .line 1464
    :cond_9a
    monitor-enter p0

    .line 1466
    const-wide/16 v4, 0x1f4

    :try_start_9d
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    .line 1468
    :goto_a0
    goto :goto_a3

    :catchall_a1
    move-exception v4

    goto :goto_a0

    .line 1469
    :goto_a3
    :try_start_a3
    monitor-exit p0

    .line 1457
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 1469
    :catchall_a7
    move-exception v0

    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_a7

    throw v0

    .line 1472
    .end local v3    # "i":I
    :cond_aa
    :goto_aa
    if-nez v2, :cond_bb

    .line 1473
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_bb

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    const-string v4, "resource check: failed to create temp buffered file for 3 times "

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1476
    :cond_bb
    const-wide/16 v3, -0x1

    if-eqz v2, :cond_16d

    .line 1477
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_df

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buffer file created again in push exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1478
    :cond_df
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_149

    .line 1479
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_f4

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    const-string v6, "buffer is empty now, can keep on write"

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1481
    :cond_f4
    :try_start_f4
    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5, p2, v0, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_137

    .line 1486
    nop

    .line 1499
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "bCreated":Z
    :goto_fa
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    .line 1500
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1501
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    .line 1502
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_135

    .line 1503
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_132

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer full read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1504
    :cond_132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    .line 1506
    :cond_135
    int-to-long v0, p3

    return-wide v0

    .line 1483
    .restart local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "bCreated":Z
    :catchall_137
    move-exception v0

    .line 1484
    .local v0, "ex":Ljava/lang/Throwable;
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_145

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1485
    :cond_145
    iget-wide v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    mul-long/2addr v5, v3

    return-wide v5

    .line 1489
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_149
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_169

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer file created again in push exception, but some bufferred data is missing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1490
    :cond_169
    iget-wide v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    mul-long/2addr v5, v3

    return-wide v5

    .line 1494
    :cond_16d
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v5, "buffer cannot be created again"

    invoke-virtual {v0, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1495
    :cond_17c
    iget-wide v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    mul-long/2addr v5, v3

    return-wide v5
.end method

.method public blacklist push(Ljava/io/InputStream;JJ)V
    .registers 12
    .param p1, "cin"    # Ljava/io/InputStream;
    .param p2, "s"    # J
    .param p4, "e"    # J

    .line 1300
    monitor-enter p0

    .line 1301
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 1302
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    .line 1303
    iput-wide p4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    .line 1305
    sub-long v0, p4, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1306
    .local v0, "len":J
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    .line 1307
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1308
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->offset:J

    .line 1309
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_44

    .line 1310
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer full read : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1311
    :cond_41
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fullRead:Z

    .line 1313
    :cond_44
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push inputstream to data buffer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1314
    .end local v0    # "len":J
    :cond_6a
    monitor-exit p0

    .line 1315
    return-void

    .line 1314
    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public blacklist read([BII)I
    .registers 20
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1326
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    .line 1327
    .local v5, "readLen":I
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    const-string v6, " with length "

    const-wide/16 v7, 0x1

    const-string v9, "-"

    const/4 v10, 0x2

    if-ne v0, v10, :cond_50

    .line 1328
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v0, :cond_28

    .line 1329
    int-to-long v10, v4

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v0, v10

    .end local v5    # "readLen":I
    .local v0, "readLen":I
    goto/16 :goto_1b9

    .line 1331
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_28
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_38

    .line 1332
    sub-long/2addr v12, v10

    long-to-int v0, v12

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_1b9

    .line 1336
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_38
    :try_start_38
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3e

    .line 1341
    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    :goto_3c
    goto/16 :goto_1b9

    .line 1338
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :catchall_3e
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 1339
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_4e

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1340
    :cond_4e
    const/4 v0, -0x1

    .end local v5    # "readLen":I
    .local v0, "readLen":I
    goto :goto_3c

    .line 1346
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_50
    :try_start_50
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    return v0

    .line 1347
    :cond_58
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    const-wide/32 v10, 0x7fffffff

    if-nez v0, :cond_86

    .line 1348
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6e

    .line 1349
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_182

    .line 1352
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_6e
    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    array-length v0, v2

    int-to-long v14, v0

    sub-long/2addr v10, v14

    cmp-long v0, v12, v10

    if-ltz v0, :cond_7d

    .line 1353
    const v0, 0x7fffffff

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_182

    .line 1356
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_7d
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    array-length v0, v2

    int-to-long v12, v0

    add-long/2addr v10, v12

    long-to-int v0, v10

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_182

    .line 1361
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_86
    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_c5

    .line 1362
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_a7

    .line 1363
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->dis:Ljava/io/DataInputStream;

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    sub-long/2addr v10, v12

    long-to-int v10, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v0, v2, v3, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_182

    .line 1366
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_a7
    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    sub-long/2addr v12, v14

    array-length v0, v2

    int-to-long v14, v0

    sub-long/2addr v10, v14

    cmp-long v0, v12, v10

    if-ltz v0, :cond_b9

    .line 1367
    const v0, 0x7fffffff

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_182

    .line 1370
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_b9
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    sub-long/2addr v10, v12

    array-length v0, v2

    int-to-long v12, v0

    add-long/2addr v10, v12

    long-to-int v0, v10

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_182

    .line 1375
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_c5
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bSwitchedToChild:Z

    if-nez v0, :cond_129

    .line 1376
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_123

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resource check: finish reading sec chunk "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    sub-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " from cache file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", now bytesRemaining data "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " will be read from child input "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1380
    :cond_123
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1381
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bSwitchedToChild:Z

    .line 1383
    :cond_129
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_151

    .line 1384
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    cmp-long v0, v10, v12

    if-nez v0, :cond_151

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v0, :cond_151

    .line 1385
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now start to read from childChunkInput "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1388
    :cond_151
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v0, :cond_17b

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    check-cast v0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 1389
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "childChunkInput is closed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v0, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1390
    const/4 v0, -0x1

    return v0

    .line 1392
    :cond_17b
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v5, v0

    .line 1395
    :goto_182
    if-gez v5, :cond_1a4

    .line 1396
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1a2

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get read length < 0, but return 0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1a2
    .catchall {:try_start_50 .. :try_end_1a2} :catchall_1a6

    .line 1397
    :cond_1a2
    const/4 v0, -0x1

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto :goto_1a5

    .line 1395
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_1a4
    move v0, v5

    .line 1404
    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    :goto_1a5
    goto :goto_1b9

    .line 1400
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :catchall_1a6
    move-exception v0

    .line 1401
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_1b4

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1402
    :cond_1b4
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1403
    const/4 v5, 0x0

    move v0, v5

    .line 1406
    .end local v5    # "readLen":I
    .local v0, "readLen":I
    :goto_1b9
    int-to-long v10, v0

    .line 1407
    .local v10, "actReadLen":J
    array-length v5, v2

    if-le v0, v5, :cond_1c3

    .line 1408
    array-length v5, v2

    sub-int v5, v0, v5

    int-to-long v10, v5

    .line 1409
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 1413
    :cond_1c3
    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_24f

    .line 1414
    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    add-long/2addr v14, v10

    iput-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->readOffset:J

    .line 1415
    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    sub-long/2addr v14, v10

    iput-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->restLen:J

    .line 1416
    cmp-long v5, v14, v12

    if-nez v5, :cond_24f

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->hasReadLen:J

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    cmp-long v5, v12, v14

    if-ltz v5, :cond_24f

    .line 1417
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_24c

    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resource check: finish reading chunk "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    add-long/2addr v13, v2

    sub-long/2addr v13, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->mBufferLength:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", in which "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->bufOffset:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    sub-long/2addr v2, v7

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is from cache file "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", and "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkStart:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkEnd:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is from child input "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1422
    :cond_24c
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->closeAndDelFile()V

    .line 1425
    :cond_24f
    return v0
.end method
