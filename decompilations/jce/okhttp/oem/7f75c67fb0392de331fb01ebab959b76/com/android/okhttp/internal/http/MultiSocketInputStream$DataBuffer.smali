.class Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataBuffer"
.end annotation


# instance fields
.field private blacklist bSavedInFile:Z

.field private blacklist bSwitchedToChild:Z

.field private final blacklist bufOffset:J

.field private blacklist childChunkEnd:J

.field private blacklist childChunkInput:Ljava/io/InputStream;

.field private blacklist childChunkStart:J

.field private blacklist dis:Ljava/io/DataInputStream;

.field private blacklist dos:Ljava/io/DataOutputStream;

.field private blacklist fileBuf:Ljava/io/File;

.field private blacklist firstBlockOffset:I

.field private blacklist fullRead:Z

.field private blacklist hasReadLen:J

.field private blacklist hasReadLenForSpeed:J

.field private blacklist lastTime:J

.field private blacklist mBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final blacklist mBufferLength:J

.field private final blacklist mID:I

.field private blacklist offset:J

.field private blacklist readOffset:J

.field private blacklist restLen:J

.field private blacklist sockID:I

.field private blacklist startReadCacheTime:J

.field private blacklist startTime:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

.field private blacklist totalContinuousChunk:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;JIJLjava/util/LinkedList;II)V
    .registers 26
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p2, "start"    # J
    .param p4, "id"    # I
    .param p5, "len"    # J
    .param p8, "sID"    # I
    .param p9, "totalBlocks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/LinkedList<",
            "[B>;II)V"
        }
    .end annotation

    .line 3477
    .local p7, "buffer":Ljava/util/LinkedList;, "Ljava/util/LinkedList<[B>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    iput-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3445
    const/4 v9, 0x0

    iput-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    .line 3449
    iput-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    .line 3453
    iput-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    .line 3458
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 3460
    iput-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 3461
    const-wide/16 v11, 0x0

    iput-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    .line 3462
    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    .line 3465
    iput-boolean v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    .line 3466
    iput-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    .line 3478
    iput v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    .line 3479
    move/from16 v13, p8

    iput v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    .line 3480
    iput-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    .line 3481
    iput-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 3482
    if-nez v8, :cond_3c

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    .line 3483
    :cond_3c
    iput-boolean v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fullRead:Z

    .line 3484
    iput-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    .line 3485
    iput-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    .line 3486
    iput-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startTime:J

    .line 3487
    iput-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->lastTime:J

    .line 3488
    iput-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    .line 3489
    iput-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    .line 3490
    iput-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    .line 3491
    move/from16 v11, p9

    iput v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    .line 3492
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_7c

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "new DBuffer added with ["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "], from "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " with length "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3494
    :cond_7c
    iget v0, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    if-nez v0, :cond_f7

    .line 3495
    const/4 v12, 0x0

    .line 3496
    .local v12, "bCreated":Z
    iget-object v0, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_c0

    .line 3498
    :try_start_85
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_a5

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "seek to file pos "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDiff_Http_File_Pos:J

    sub-long v10, v3, v10

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3499
    :cond_a5
    iget-object v0, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    iget-wide v10, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDiff_Http_File_Pos:J

    sub-long v10, v3, v10

    invoke-virtual {v0, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3500
    const/4 v12, 0x1

    .line 3501
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b1} :catch_b2

    .line 3508
    goto :goto_c0

    .line 3505
    :catch_b2
    move-exception v0

    .line 3506
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_be

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static/range {p1 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3507
    :cond_be
    iput-object v9, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 3510
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_c0
    :goto_c0
    iget-object v0, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_ec

    .line 3511
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_c6
    const/4 v0, 0x3

    if-ge v9, v0, :cond_ec

    .line 3512
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->createTempBufFile()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 3513
    const/4 v12, 0x1

    .line 3514
    goto :goto_ec

    .line 3517
    :cond_d1
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v10, v0

    .line 3519
    .local v10, "obj":Ljava/lang/Object;
    monitor-enter v10

    .line 3521
    const-wide/16 v3, 0x1f4

    :try_start_dd
    invoke-virtual {v10, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e1

    .line 3523
    :goto_e0
    goto :goto_e3

    :catchall_e1
    move-exception v0

    goto :goto_e0

    .line 3524
    :goto_e3
    :try_start_e3
    monitor-exit v10

    .line 3511
    .end local v10    # "obj":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v3, p2

    goto :goto_c6

    .line 3524
    .restart local v10    # "obj":Ljava/lang/Object;
    :catchall_e9
    move-exception v0

    monitor-exit v10
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_e9

    throw v0

    .line 3528
    .end local v9    # "i":I
    .end local v10    # "obj":Ljava/lang/Object;
    :cond_ec
    :goto_ec
    if-eqz v12, :cond_f4

    iget v0, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    if-nez v0, :cond_f4

    const/4 v10, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v10, 0x0

    :goto_f5
    iput-boolean v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    .line 3530
    .end local v12    # "bCreated":Z
    :cond_f7
    return-void
.end method

.method private blacklist closeAndDelFile()V
    .registers 5

    .line 3559
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 3561
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    if-eqz v1, :cond_6c

    .line 3562
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 3563
    :cond_12
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_20

    .line 3564
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 3565
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 3567
    :cond_20
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3568
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: buffered file removed (main) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_69

    .line 3571
    :cond_49
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: failed to remove buffered file (main) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3573
    :cond_69
    :goto_69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    .line 3575
    :cond_6c
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->clearBufferDir()V
    :try_end_71
    .catchall {:try_start_5 .. :try_end_71} :catchall_72

    .line 3579
    goto :goto_80

    .line 3577
    :catchall_72
    move-exception v1

    .line 3578
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_73
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_80

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3580
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_80
    :goto_80
    monitor-exit v0

    .line 3581
    return-void

    .line 3580
    :catchall_82
    move-exception v1

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_82

    throw v1
.end method

.method private blacklist createTempBufFile()Z
    .registers 6

    .line 3536
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 3537
    :try_start_5
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

    .line 3538
    .local v1, "bufFileName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to save buffer to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_b0

    .line 3540
    :cond_48
    :try_start_48
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->createBufferDir()V

    .line 3541
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    .line 3542
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    .line 3543
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    .line 3544
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: buffered file generated (main) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_48 .. :try_end_98} :catchall_9b

    .line 3545
    :cond_98
    const/4 v2, 0x1

    :try_start_99
    monitor-exit v0

    return v2

    .line 3547
    :catchall_9b
    move-exception v2

    .line 3548
    .local v2, "e":Ljava/lang/Throwable;
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3549
    :cond_a9
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3550
    const/4 v1, 0x0

    .line 3551
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 3553
    .end local v1    # "bufFileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_b0
    move-exception v1

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_99 .. :try_end_b2} :catchall_b0

    throw v1
.end method


# virtual methods
.method public blacklist changeSockID(I)V
    .registers 2
    .param p1, "sid"    # I

    .line 3944
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    .line 3945
    return-void
.end method

.method public blacklist clearBuffer()V
    .registers 2

    .line 3962
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v0, :cond_8

    .line 3963
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    goto :goto_d

    .line 3966
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 3968
    :goto_d
    return-void
.end method

.method public blacklist getHasReadLen()J
    .registers 3

    .line 3615
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    return-wide v0
.end method

.method public blacklist getID()I
    .registers 2

    .line 3601
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    return v0
.end method

.method public blacklist getLength()J
    .registers 3

    .line 3594
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    return-wide v0
.end method

.method public blacklist getOffset()J
    .registers 3

    .line 4014
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    return-wide v0
.end method

.method public blacklist getRestLength()J
    .registers 3

    .line 4000
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    return-wide v0
.end method

.method public blacklist getSockID()I
    .registers 2

    .line 3608
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    return v0
.end method

.method public blacklist getToBeReadLength()J
    .registers 5

    .line 4007
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalChunks()I
    .registers 2

    .line 4023
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    return v0
.end method

.method public blacklist isBufferInFile()Z
    .registers 3

    .line 3587
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public blacklist isEmpty()Z
    .registers 7

    .line 3951
    monitor-enter p0

    .line 3952
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fileBuf:Ljava/io/File;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_16

    .line 3953
    monitor-exit p0

    return v1

    .line 3954
    :cond_16
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    monitor-exit p0

    return v1

    .line 3955
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public blacklist isFullRead()Z
    .registers 2

    .line 3992
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fullRead:Z

    return v0
.end method

.method public blacklist push(I[BI)J
    .registers 12
    .param p1, "sid"    # I
    .param p2, "b"    # [B
    .param p3, "length"    # I

    .line 3853
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    const-wide/16 v1, -0x1

    if-eq v0, p1, :cond_7

    .line 3854
    return-wide v1

    .line 3857
    :cond_7
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_49

    .line 3859
    :try_start_d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_19

    .line 3860
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2, v4, p3}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_22

    .line 3863
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, v4, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 3864
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_23

    .line 3878
    :goto_22
    goto :goto_62

    .line 3869
    :catchall_23
    move-exception v0

    .line 3870
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v3, :cond_3b

    .line 3871
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    const-string v2, "resource check: buffered file is already removed since download cancelled "

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3872
    :cond_39
    int-to-long v1, p3

    return-wide v1

    .line 3875
    :cond_3b
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3876
    :cond_48
    return-wide v1

    .line 3880
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_49
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    if-ne v0, v3, :cond_62

    .line 3881
    array-length v0, p2

    if-ne v0, p3, :cond_58

    .line 3882
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_62

    .line 3885
    :cond_58
    new-array v0, p3, [B

    .line 3886
    .local v0, "tmp":[B
    invoke-static {p2, v4, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3887
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3893
    .end local v0    # "tmp":[B
    :cond_62
    :goto_62
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    int-to-long v4, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    .line 3894
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    .line 3895
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    .line 3896
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    .line 3897
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_b7

    .line 3898
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer full read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3899
    :cond_aa
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fullRead:Z

    .line 3900
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 3902
    :cond_b7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->lastTime:J

    .line 3903
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startTime:J

    sub-long/2addr v0, v2

    .line 3907
    .local v0, "t":J
    int-to-long v2, p3

    return-wide v2
.end method

.method public blacklist push(Ljava/io/InputStream;JJ)V
    .registers 12
    .param p1, "cin"    # Ljava/io/InputStream;
    .param p2, "s"    # J
    .param p4, "e"    # J

    .line 3625
    monitor-enter p0

    .line 3626
    :try_start_1
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    .line 3627
    iput-wide p2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    .line 3628
    iput-wide p4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    .line 3630
    sub-long v0, p4, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 3631
    .local v0, "len":J
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    .line 3632
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    .line 3633
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    .line 3634
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    .line 3635
    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5e

    .line 3636
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer full read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3637
    :cond_50
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->fullRead:Z

    .line 3638
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v2

    iget v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v4, 0x3

    aput-byte v4, v2, v3

    .line 3640
    :cond_5e
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

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

    .line 3641
    .end local v0    # "len":J
    :cond_84
    monitor-exit p0

    .line 3642
    return-void

    .line 3641
    :catchall_86
    move-exception v0

    monitor-exit p0
    :try_end_88
    .catchall {:try_start_1 .. :try_end_88} :catchall_86

    throw v0
.end method

.method public blacklist read([BII)I
    .registers 19
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 3654
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    .line 3655
    .local v5, "readLen":I
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_19a

    .line 3657
    :try_start_12
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    return v7

    .line 3658
    :cond_19
    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    cmp-long v0, v13, v11

    if-nez v0, :cond_25

    .line 3659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    .line 3662
    :cond_25
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    const-wide/32 v13, 0x7fffffff

    if-nez v0, :cond_54

    .line 3663
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_3a

    .line 3664
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .end local v5    # "readLen":I
    .local v0, "readLen":I
    goto/16 :goto_198

    .line 3667
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_3a
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    array-length v0, v2

    int-to-long v11, v0

    sub-long/2addr v13, v11

    cmp-long v0, v6, v13

    if-ltz v0, :cond_48

    .line 3668
    const v0, 0x7fffffff

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto :goto_4f

    .line 3671
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_48
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    array-length v0, v2

    int-to-long v11, v0

    add-long/2addr v6, v11

    long-to-int v0, v6

    move v5, v0

    .line 3673
    :goto_4f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 3721
    :goto_51
    move v0, v5

    goto/16 :goto_198

    .line 3677
    :cond_54
    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v6, v11, v6

    if-gez v6, :cond_92

    .line 3678
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_74

    .line 3679
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->dis:Ljava/io/DataInputStream;

    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    sub-long/2addr v6, v11

    long-to-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v0, v2, v3, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto/16 :goto_198

    .line 3682
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_74
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    sub-long/2addr v6, v11

    array-length v0, v2

    int-to-long v11, v0

    sub-long/2addr v13, v11

    cmp-long v0, v6, v13

    if-ltz v0, :cond_85

    .line 3683
    const v0, 0x7fffffff

    move v5, v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto :goto_8f

    .line 3686
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_85
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    sub-long/2addr v6, v11

    array-length v0, v2

    int-to-long v11, v0

    add-long/2addr v6, v11

    long-to-int v0, v6

    move v5, v0

    .line 3688
    :goto_8f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    goto :goto_51

    .line 3692
    :cond_92
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    if-nez v6, :cond_121

    .line 3693
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_11c

    .line 3694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    sub-long/2addr v6, v11

    .line 3695
    .local v6, "usedTime":J
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resource check: finish reading chunk "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " with length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    sub-long/2addr v13, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " using time "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", so speed is "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    const-wide/16 v9, 0x0

    cmp-long v13, v6, v9

    if-nez v13, :cond_e4

    const-wide/16 v9, 0x0

    goto :goto_f4

    :cond_e4
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    sub-long/2addr v9, v13

    const-wide/16 v13, 0x8

    mul-long/2addr v9, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v9, v13

    div-long/2addr v9, v6

    const-wide/16 v13, 0x400

    div-long/2addr v9, v13

    div-long/2addr v9, v13

    :goto_f4
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " Mbps from cache file, now bytesRemaining data "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " will be read from child input "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3695
    invoke-virtual {v11, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3701
    .end local v6    # "usedTime":J
    :cond_11c
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3702
    iput-boolean v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    .line 3704
    :cond_121
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_14d

    .line 3705
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_14d

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v6, :cond_14d

    .line 3706
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now start to read from childChunkInput "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3709
    :cond_14d
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    instance-of v6, v6, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v6, :cond_17f

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    check-cast v6, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 3710
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_17d

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "childChunkInput is closed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3711
    :cond_17d
    const/4 v0, -0x1

    return v0

    .line 3713
    :cond_17f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_185
    .catchall {:try_start_12 .. :try_end_185} :catchall_186

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto :goto_198

    .line 3717
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :catchall_186
    move-exception v0

    .line 3718
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_194

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3719
    :cond_194
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3720
    const/4 v0, -0x1

    .line 3721
    .end local v5    # "readLen":I
    .local v0, "readLen":I
    :goto_198
    goto/16 :goto_312

    .line 3723
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_19a
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    if-ne v6, v8, :cond_2df

    .line 3724
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    monitor-enter v6

    .line 3725
    :try_start_1a3
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_1b1

    .line 3726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    .line 3728
    :cond_1b1
    move/from16 v9, p2

    .line 3729
    .local v9, "appOffset":I
    :goto_1b3
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f0

    .line 3730
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 3731
    .local v10, "b":[B
    if-nez v10, :cond_1c8

    .line 3732
    iput v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 3733
    goto :goto_1f0

    .line 3735
    :cond_1c8
    array-length v11, v10

    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    sub-int/2addr v11, v12

    .line 3737
    .local v11, "notReadLen":I
    add-int v12, v5, v11

    if-gt v12, v4, :cond_1e2

    .line 3738
    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    invoke-static {v10, v12, v2, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3739
    add-int/2addr v5, v11

    .line 3740
    add-int/2addr v9, v11

    .line 3741
    iput v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 3742
    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 3743
    if-ne v5, v4, :cond_1e1

    .line 3744
    goto :goto_1f0

    .line 3755
    .end local v10    # "b":[B
    .end local v11    # "notReadLen":I
    :cond_1e1
    goto :goto_1b3

    .line 3748
    .restart local v10    # "b":[B
    .restart local v11    # "notReadLen":I
    :cond_1e2
    sub-int v7, v4, v5

    .line 3749
    .local v7, "l":I
    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    invoke-static {v10, v12, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3750
    add-int/2addr v5, v7

    .line 3751
    add-int/2addr v9, v7

    .line 3752
    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    add-int/2addr v12, v7

    iput v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->firstBlockOffset:I

    .line 3756
    .end local v7    # "l":I
    .end local v10    # "b":[B
    .end local v11    # "notReadLen":I
    :cond_1f0
    :goto_1f0
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v7, :cond_2d9

    if-nez v5, :cond_2d9

    .line 3757
    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    if-nez v7, :cond_263

    .line 3758
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_261

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resource check: finish reading chunk "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " with length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " using time "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " from RAM cache, now bytesRemaining data "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " will be read from child input "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3758
    invoke-virtual {v7, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3762
    :cond_261
    iput-boolean v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSwitchedToChild:Z

    .line 3764
    :cond_263
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_28f

    .line 3765
    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v7, v7, v10

    if-nez v7, :cond_28f

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-eqz v7, :cond_28f

    .line 3766
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "now start to read from childChunkInput "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3769
    :cond_28f
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    instance-of v7, v7, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v7, :cond_2c2

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    check-cast v7, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_2c2

    .line 3770
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_2bf

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "childChunkInput is closed : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3771
    :cond_2bf
    monitor-exit v6
    :try_end_2c0
    .catchall {:try_start_1a3 .. :try_end_2c0} :catchall_2dc

    const/4 v0, -0x1

    return v0

    .line 3774
    :cond_2c2
    :try_start_2c2
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_2c8
    .catchall {:try_start_2c2 .. :try_end_2c8} :catchall_2ca

    .line 3779
    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    move v5, v0

    goto :goto_2d9

    .line 3776
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :catchall_2ca
    move-exception v0

    .line 3777
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2cb
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_2d8

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 3778
    :cond_2d8
    const/4 v5, -0x1

    .line 3781
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v9    # "appOffset":I
    :cond_2d9
    :goto_2d9
    monitor-exit v6

    move v0, v5

    goto :goto_312

    :catchall_2dc
    move-exception v0

    monitor-exit v6
    :try_end_2de
    .catchall {:try_start_2cb .. :try_end_2de} :catchall_2dc

    throw v0

    .line 3785
    :cond_2df
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    if-nez v0, :cond_2ec

    .line 3786
    int-to-long v6, v4

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    .end local v5    # "readLen":I
    .local v0, "readLen":I
    goto :goto_312

    .line 3788
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_2ec
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_2fb

    .line 3789
    sub-long/2addr v8, v6

    long-to-int v0, v8

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto :goto_312

    .line 3793
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :cond_2fb
    :try_start_2fb
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_2ff
    .catchall {:try_start_2fb .. :try_end_2ff} :catchall_300

    .line 3798
    .end local v5    # "readLen":I
    .restart local v0    # "readLen":I
    goto :goto_312

    .line 3795
    .end local v0    # "readLen":I
    .restart local v5    # "readLen":I
    :catchall_300
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 3796
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_310

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/Throwable;)V

    .line 3797
    :cond_310
    const/4 v5, -0x1

    move v0, v5

    .line 3802
    .end local v5    # "readLen":I
    .local v0, "readLen":I
    :goto_312
    int-to-long v5, v0

    .line 3803
    .local v5, "actReadLen":J
    array-length v7, v2

    if-le v0, v7, :cond_31c

    .line 3804
    array-length v7, v2

    sub-int v7, v0, v7

    int-to-long v5, v7

    .line 3805
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 3809
    :cond_31c
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_489

    .line 3810
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    add-long/2addr v9, v5

    iput-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    .line 3811
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    sub-long/2addr v9, v5

    iput-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    .line 3812
    cmp-long v9, v9, v7

    if-nez v9, :cond_3b9

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3b9

    .line 3813
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v7

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v9, 0x4

    aput-byte v9, v7, v8

    .line 3814
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_3b2

    .line 3815
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resource check: finish reading chunk "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    add-long/2addr v9, v11

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " with length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", in which "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " is from cache file, and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkStart:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkEnd:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " is from child input "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->childChunkInput:Ljava/io/InputStream;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3820
    :cond_3b2
    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v7, :cond_3b9

    .line 3821
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->closeAndDelFile()V

    .line 3824
    :cond_3b9
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_489

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v7, :cond_489

    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v7, :cond_489

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_3dd

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBufferLength:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_40f

    :cond_3dd
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 3825
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v7

    if-eqz v7, :cond_489

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v7

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->access$6200(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;)I

    move-result v7

    const/16 v8, -0x64

    if-eq v7, v8, :cond_489

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_489

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_489

    .line 3826
    :cond_40f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReadCacheTime:J

    sub-long/2addr v7, v9

    .line 3827
    .local v7, "time":J
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->readOffset:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bufOffset:J

    sub-long/2addr v9, v11

    .line 3828
    .local v9, "len":J
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v11, v9, v10, v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(JJ)J

    move-result-wide v12

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J
    invoke-static {v11, v12, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 3829
    const-wide/16 v11, 0x0

    cmp-long v13, v7, v11

    if-lez v13, :cond_463

    cmp-long v11, v9, v11

    if-lez v11, :cond_463

    .line 3830
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_489

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calculate buf read speed with len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " and time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " speed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_489

    .line 3833
    :cond_463
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_489

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot calculate buf read speed with len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " and time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3838
    .end local v7    # "time":J
    .end local v9    # "len":J
    :cond_489
    :goto_489
    return v0
.end method

.method public blacklist removeTail(I)V
    .registers 8
    .param p1, "count"    # I

    .line 3974
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->bSavedInFile:Z

    if-eqz v0, :cond_5

    goto :goto_2f

    .line 3978
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, p1, :cond_2f

    .line 3979
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 3980
    .local v1, "b":[B
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    array-length v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLen:J

    .line 3981
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    array-length v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->restLen:J

    .line 3982
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    array-length v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    .line 3983
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    array-length v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    .line 3978
    .end local v1    # "b":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3986
    .end local v0    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method

.method public blacklist setTotalChunks(I)V
    .registers 2
    .param p1, "totalChunks"    # I

    .line 4032
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->totalContinuousChunk:I

    .line 4033
    return-void
.end method

.method public blacklist startReceiveData()V
    .registers 4

    .line 3844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startTime:J

    .line 3845
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->hasReadLenForSpeed:J

    .line 3846
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    iget v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 3847
    return-void
.end method

.method public blacklist switchSocket(IZ)[J
    .registers 9
    .param p1, "newSockID"    # I
    .param p2, "bForced"    # Z

    .line 3915
    monitor-enter p0

    .line 3916
    :try_start_1
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket try to switch for block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tobeReadLen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3917
    :cond_3f
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_60

    if-nez p2, :cond_60

    .line 3918
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v2, "Socket do not need to switch"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3919
    :cond_5c
    new-array v0, v1, [J

    monitor-exit p0

    return-object v0

    .line 3922
    :cond_60
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket switch for block["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3923
    :cond_92
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    array-length v0, v0

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    if-le v0, v2, :cond_bf

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_bf

    .line 3924
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->handOver()V

    goto :goto_ce

    .line 3927
    :cond_bf
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v2, "Socket can not be switch because requestHandler is null"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 3929
    :cond_ce
    :goto_ce
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 3930
    .local v0, "range":[J
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    aput-wide v2, v0, v1

    .line 3931
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->offset:J

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 3932
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 3933
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->mID:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 3934
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->sockID:I

    .line 3935
    monitor-exit p0

    return-object v0

    .line 3937
    .end local v0    # "range":[J
    :catchall_f3
    move-exception v0

    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_1 .. :try_end_f5} :catchall_f3

    throw v0
.end method
