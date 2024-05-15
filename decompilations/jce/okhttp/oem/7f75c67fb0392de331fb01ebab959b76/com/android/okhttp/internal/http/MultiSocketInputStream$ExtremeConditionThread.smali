.class Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
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
    name = "ExtremeConditionThread"
.end annotation


# instance fields
.field private blacklist bDeprecated:Z

.field private blacklist bIsSocketWorkingFine:Z

.field private blacklist bTryBoth:Z

.field blacklist dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

.field blacklist end:J

.field private blacklist input:Ljava/io/InputStream;

.field blacklist isExceptionInResponse:Z

.field protected blacklist mNonBufOffset:J

.field private blacklist mSecThreadCreationResult:I

.field private blacklist mStartReadHeaderTime:J

.field protected blacklist mTotalReceivedBytes:J

.field private blacklist output:Ljava/io/OutputStream;

.field private blacklist s:Ljava/net/Socket;

.field private blacklist sockID:I

.field blacklist start:J

.field private blacklist switchToSocketID:I

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;IJJLcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p2, "socketID"    # I
    .param p3, "startOffset"    # J
    .param p5, "endOffset"    # J
    .param p7, "buf"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 4684
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->output:Ljava/io/OutputStream;

    .line 4669
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    .line 4670
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    .line 4671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    .line 4672
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    .line 4673
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 4674
    const/16 v1, -0x64

    iput v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    .line 4675
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mTotalReceivedBytes:J

    .line 4676
    iput-wide v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    .line 4679
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z

    .line 4685
    iput p2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 4686
    iput-wide p3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    .line 4687
    iput-wide p5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    .line 4688
    iput-object p7, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 4689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    .line 4690
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    .line 4691
    return-void
.end method

.method static synthetic blacklist access$5202(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    .param p1, "x1"    # Z

    .line 4644
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    return p1
.end method

.method static synthetic blacklist access$5300(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    .line 4644
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z

    return v0
.end method

.method static synthetic blacklist access$6200(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    .line 4644
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    return v0
.end method


# virtual methods
.method protected blacklist closeSocketAndStreams()V
    .registers 5

    .line 5115
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to close extreme input stream in main, input is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 5116
    :cond_25
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 5117
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->output:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 5118
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 5119
    return-void
.end method

.method public blacklist createTwoChunkInput(Z)V
    .registers 35
    .param p1, "bReverseSock"    # Z

    .line 4714
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v0, :cond_195

    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v0, :cond_e

    goto/16 :goto_195

    .line 4718
    :cond_e
    monitor-enter p0

    .line 4719
    :try_start_f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_190

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    if-nez v0, :cond_190

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4720
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v0

    if-nez v0, :cond_190

    .line 4721
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_58

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main Socket is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", extrem read bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4724
    :cond_58
    const-wide/16 v26, 0x0

    if-eqz p1, :cond_62

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    cmp-long v0, v2, v26

    if-lez v0, :cond_190

    .line 4725
    :cond_62
    iget v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    move v11, v0

    .line 4726
    .local v11, "sock0":I
    const-wide/16 v2, 0x0

    .line 4727
    .local v2, "speed0":J
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v0, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v12

    .line 4728
    .end local v2    # "speed0":J
    .local v12, "speed0":J
    iget v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    rem-int/lit8 v0, v0, 0x2

    move v10, v0

    .line 4729
    .local v10, "sock1":I
    const-wide/16 v2, 0x0

    .line 4730
    .local v2, "speed1":J
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v14
    :try_end_7c
    .catchall {:try_start_f .. :try_end_7c} :catchall_192

    .line 4732
    .end local v2    # "speed1":J
    .local v14, "speed1":J
    :try_start_7c
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    new-instance v7, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v4, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J
    :try_end_88
    .catchall {:try_start_7c .. :try_end_88} :catchall_17e

    move/from16 v17, v10

    .end local v10    # "sock1":I
    .local v17, "sock1":I
    :try_start_8a
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v8, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriginalRequestHeader:Lcom/android/okhttp/Request;

    const/16 v18, 0x0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4734
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v20

    sget v22, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    .line 4735
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;
    :try_end_a2
    .catchall {:try_start_8a .. :try_end_a2} :catchall_178

    if-nez v2, :cond_b2

    :try_start_a4
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getHasReadLen()J

    move-result-wide v23
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_ab

    goto :goto_b4

    .line 4756
    :catchall_ab
    move-exception v0

    move/from16 v30, v11

    move/from16 v29, v17

    goto/16 :goto_183

    .line 4735
    :cond_b2
    move-wide/from16 v23, v26

    :goto_b4
    :try_start_b4
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v25

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v28
    :try_end_c0
    .catchall {:try_start_b4 .. :try_end_c0} :catchall_178

    move-object v2, v7

    move-wide/from16 v29, v5

    move v5, v11

    move/from16 v6, v17

    move-object/from16 v31, v0

    move-object v0, v7

    move-object/from16 v32, v8

    move-wide/from16 v7, v29

    move/from16 v29, v17

    .end local v17    # "sock1":I
    .local v29, "sock1":I
    move/from16 v30, v11

    .end local v11    # "sock0":I
    .local v30, "sock0":I
    move-object/from16 v11, v32

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-wide/from16 v18, v20

    move/from16 v20, v22

    move/from16 v21, p1

    move-wide/from16 v22, v23

    move-object/from16 v24, v25

    move-object/from16 v25, v28

    :try_start_e3
    invoke-direct/range {v2 .. v25}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;IIJJLcom/android/okhttp/Request;JJILcom/android/okhttp/internal/http/MultiSocketInputStream;JIZJLcom/android/okhttp/internal/http/MultiratLog;Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 4732
    move-object/from16 v2, v31

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v2, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 4736
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getNeedToExitSecThread()I

    move-result v0

    iput v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    .line 4737
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    iput-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mNonBufOffset:J

    .line 4738
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    .line 4739
    iget v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    if-nez v0, :cond_16f

    .line 4740
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 4741
    if-eqz p1, :cond_12c

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    cmp-long v0, v2, v26

    if-lez v0, :cond_12c

    .line 4742
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_128

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v2, "Need to start another Extreme Input"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4743
    :cond_128
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    goto :goto_154

    .line 4746
    :cond_12c
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    .line 4747
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_154

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in create two chunk extremInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4749
    :cond_154
    :goto_154
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->push(Ljava/io/InputStream;JJ)V

    .line 4750
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->startRun(Ljava/net/Socket;)V

    goto :goto_175

    .line 4753
    :cond_16f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v2, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_end_175
    .catchall {:try_start_e3 .. :try_end_175} :catchall_176

    .line 4758
    :goto_175
    goto :goto_190

    .line 4756
    :catchall_176
    move-exception v0

    goto :goto_183

    .end local v29    # "sock1":I
    .end local v30    # "sock0":I
    .restart local v11    # "sock0":I
    .restart local v17    # "sock1":I
    :catchall_178
    move-exception v0

    move/from16 v30, v11

    move/from16 v29, v17

    .end local v11    # "sock0":I
    .end local v17    # "sock1":I
    .restart local v29    # "sock1":I
    .restart local v30    # "sock0":I
    goto :goto_183

    .end local v29    # "sock1":I
    .end local v30    # "sock0":I
    .restart local v10    # "sock1":I
    .restart local v11    # "sock0":I
    :catchall_17e
    move-exception v0

    move/from16 v29, v10

    move/from16 v30, v11

    .line 4757
    .end local v10    # "sock1":I
    .end local v11    # "sock0":I
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v29    # "sock1":I
    .restart local v30    # "sock0":I
    :goto_183
    :try_start_183
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_190

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 4761
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v12    # "speed0":J
    .end local v14    # "speed1":J
    .end local v29    # "sock1":I
    .end local v30    # "sock0":I
    :cond_190
    :goto_190
    monitor-exit p0

    .line 4762
    return-void

    .line 4761
    :catchall_192
    move-exception v0

    monitor-exit p0
    :try_end_194
    .catchall {:try_start_183 .. :try_end_194} :catchall_192

    throw v0

    .line 4715
    :cond_195
    :goto_195
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1a4

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v2, "createTwoChunkInput: session is finished"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4716
    :cond_1a4
    return-void
.end method

.method public blacklist getSocketID()I
    .registers 2

    .line 4694
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    return v0
.end method

.method public whitelist core-platform-api test-api run()V
    .registers 34

    .line 4767
    move-object/from16 v1, p0

    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_46

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: thread checking: start ExtremThread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", start to download with socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4768
    :cond_46
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 4769
    .local v2, "bytesToRead":J
    const-wide/16 v4, 0x0

    .line 4770
    .local v4, "totallen":J
    :goto_50
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    const/4 v7, 0x0

    if-nez v6, :cond_a24

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_a24

    cmp-long v6, v4, v2

    if-gez v6, :cond_a24

    .line 4773
    const/4 v9, -0x1

    :try_start_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    .line 4774
    iput-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z

    .line 4775
    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    if-ltz v12, :cond_72

    .line 4776
    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    iput v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 4777
    iput v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    .line 4779
    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4780
    .local v12, "sTime":J
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v14

    if-nez v14, :cond_1ee

    iget-boolean v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    :try_end_80
    .catchall {:try_start_60 .. :try_end_80} :catchall_905

    if-nez v14, :cond_1ee

    .line 4782
    :try_start_82
    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v17

    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriginalRequestHeader:Lcom/android/okhttp/Request;

    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4783
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v24

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    const/16 v28, 0x1

    .line 4782
    move/from16 v18, v14

    move-object/from16 v19, v15

    move-wide/from16 v20, v6

    move-wide/from16 v22, v9

    move-object/from16 v26, v8

    move/from16 v27, v11

    invoke-virtual/range {v17 .. v28}, Lcom/android/okhttp/internal/io/RealConnection;->extremeConditionConnect(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    .line 4784
    if-nez v6, :cond_e6

    .line 4785
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v7, 0x2

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v6, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 4786
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 4787
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v7, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 4788
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_cf

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v7, "unexpected HTTP response in ExtremThread"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_cf} :catch_e7
    .catchall {:try_start_82 .. :try_end_cf} :catchall_905

    .line 5083
    :cond_cf
    monitor-enter p0

    .line 5084
    :try_start_d0
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v6

    if-nez v6, :cond_df

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_df

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_df
    monitor-exit p0

    .line 4789
    goto/16 :goto_a24

    .line 5086
    :catchall_e2
    move-exception v0

    move-object v6, v0

    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_d0 .. :try_end_e5} :catchall_e2

    throw v6

    .line 4800
    :cond_e6
    goto :goto_102

    .line 4792
    :catch_e7
    move-exception v0

    move-object v6, v0

    .line 4793
    .local v6, "e":Ljava/lang/Exception;
    :try_start_e9
    monitor-enter p0
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_905

    .line 4794
    :try_start_ea
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v7

    if-eqz v7, :cond_1e8

    .line 4797
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_101

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    const-string v8, "childIS is created before this exception"

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4799
    :cond_101
    monitor-exit p0
    :try_end_102
    .catchall {:try_start_ea .. :try_end_102} :catchall_1ea

    .line 4802
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_102
    :try_start_102
    monitor-enter p0
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_905

    .line 4803
    const-wide/16 v6, -0x1

    :try_start_105
    iput-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mStartReadHeaderTime:J

    .line 4804
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v6, :cond_132

    .line 4805
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_11a

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v7, "thread is deprecated, break"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4806
    :cond_11a
    monitor-exit p0
    :try_end_11b
    .catchall {:try_start_105 .. :try_end_11b} :catchall_1e4

    .line 5083
    monitor-enter p0

    .line 5084
    :try_start_11c
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v6

    if-nez v6, :cond_12b

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_12b

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_12b
    monitor-exit p0

    .line 4806
    goto/16 :goto_a24

    .line 5086
    :catchall_12e
    move-exception v0

    move-object v6, v0

    monitor-exit p0
    :try_end_131
    .catchall {:try_start_11c .. :try_end_131} :catchall_12e

    throw v6

    .line 4808
    :cond_132
    :try_start_132
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v6

    if-nez v6, :cond_1d0

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_1d0

    .line 4809
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    if-eqz v6, :cond_169

    .line 4810
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v7

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_166

    .line 4811
    iput v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    goto :goto_169

    .line 4814
    :cond_166
    const/4 v6, 0x1

    iput v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    .line 4818
    :cond_169
    :goto_169
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 4820
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iput-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->output:Ljava/io/OutputStream;

    .line 4821
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->s:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    .line 4822
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_1a0

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new input stream in after reconnect extremInput = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4823
    :cond_1a0
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    .line 4825
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v6

    if-eqz v6, :cond_1b4

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1e2

    .line 4826
    :cond_1b4
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v7, 0x4

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v6, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 4827
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v6

    monitor-enter v6
    :try_end_1c1
    .catchall {:try_start_132 .. :try_end_1c1} :catchall_1e4

    .line 4828
    :try_start_1c1
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 4829
    monitor-exit v6

    goto :goto_1e2

    :catchall_1cc
    move-exception v0

    move-object v7, v0

    monitor-exit v6
    :try_end_1cf
    .catchall {:try_start_1c1 .. :try_end_1cf} :catchall_1cc

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local v12    # "sTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_1cf
    throw v7

    .line 4834
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v12    # "sTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_1d0
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_1df

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v7, "childIS is created before this connection"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4835
    :cond_1df
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    .line 4837
    :cond_1e2
    :goto_1e2
    monitor-exit p0

    goto :goto_1ee

    :catchall_1e4
    move-exception v0

    move-object v6, v0

    monitor-exit p0
    :try_end_1e7
    .catchall {:try_start_1cf .. :try_end_1e7} :catchall_1e4

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_1e7
    throw v6
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_905

    .line 4795
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v6    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_1e8
    nop

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local v12    # "sTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_1e9
    throw v6

    .line 4799
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v12    # "sTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_1ea
    move-exception v0

    move-object v7, v0

    monitor-exit p0
    :try_end_1ed
    .catchall {:try_start_1e9 .. :try_end_1ed} :catchall_1ea

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_1ed
    throw v7

    .line 4840
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_1ee
    :goto_1ee
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v6, :cond_218

    .line 4841
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_201

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v7, "thread is deprecated2, break"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_201
    .catchall {:try_start_1ed .. :try_end_201} :catchall_905

    .line 5083
    :cond_201
    monitor-enter p0

    .line 5084
    :try_start_202
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v6

    if-nez v6, :cond_211

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_211

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_211
    monitor-exit p0

    .line 4842
    goto/16 :goto_a24

    .line 5086
    :catchall_214
    move-exception v0

    move-object v6, v0

    monitor-exit p0
    :try_end_217
    .catchall {:try_start_202 .. :try_end_217} :catchall_214

    throw v6

    .line 4845
    :cond_218
    :try_start_218
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_263

    .line 4846
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v12

    aput-wide v8, v6, v7

    .line 4847
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_263

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Socket["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] connection time is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    iget v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4849
    :cond_263
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v6

    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_281

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v6

    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 4852
    :cond_281
    const/4 v6, 0x0

    .line 4853
    .local v6, "buf_offset":I
    const-wide/16 v7, 0x0

    .line 4856
    .local v7, "buf_ret":J
    iget-boolean v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v9, :cond_29d

    .line 4857
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v9
    :try_end_28b
    .catchall {:try_start_218 .. :try_end_28b} :catchall_905

    .line 4858
    :try_start_28b
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->startReceiveData()V

    .line 4859
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    .line 4860
    monitor-exit v9

    goto :goto_29d

    :catchall_299
    move-exception v0

    move-object v10, v0

    monitor-exit v9
    :try_end_29c
    .catchall {:try_start_28b .. :try_end_29c} :catchall_299

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_29c
    throw v10

    .line 4867
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_29d
    :goto_29d
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_2c7

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Extreme Thread starts to read data from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->end:J

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4868
    :cond_2c7
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v9, v9, v14

    if-gez v9, :cond_2e1

    .line 4869
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J
    invoke-static {v9, v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 4870
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J
    invoke-static {v9, v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6502(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J

    .line 4872
    :cond_2e1
    sget v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->INIT_BUFFERLEN:I

    int-to-long v9, v9

    .line 4873
    .local v9, "iRealBlockSize":J
    sget v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_BUFFERLEN:I

    new-array v11, v11, [B

    .line 4874
    .local v11, "buf":[B
    :goto_2e8
    cmp-long v14, v4, v2

    if-gez v14, :cond_8b8

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v14, v14, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v14, :cond_8b8

    iget-boolean v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v14, :cond_8b8

    .line 4875
    iget v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/16 v15, -0x64

    if-ne v14, v15, :cond_350

    .line 4877
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->createTwoChunkInput(Z)V

    .line 4878
    iget-boolean v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-eqz v14, :cond_333

    .line 4879
    sget-boolean v14, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v14, :cond_329

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6    # "buf_offset":I
    .local v17, "buf_offset":I
    const-string v6, "Extreme Thread deprecated at offset "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v7

    .end local v7    # "buf_ret":J
    .local v18, "buf_ret":J
    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_32d

    .end local v17    # "buf_offset":I
    .end local v18    # "buf_ret":J
    .restart local v6    # "buf_offset":I
    .restart local v7    # "buf_ret":J
    :cond_329
    move/from16 v17, v6

    move-wide/from16 v18, v7

    .end local v6    # "buf_offset":I
    .end local v7    # "buf_ret":J
    .restart local v17    # "buf_offset":I
    .restart local v18    # "buf_ret":J
    :goto_32d
    move-wide/from16 v22, v9

    move-wide/from16 v26, v12

    goto/16 :goto_8c0

    .line 4884
    .end local v17    # "buf_offset":I
    .end local v18    # "buf_ret":J
    .restart local v6    # "buf_offset":I
    .restart local v7    # "buf_ret":J
    :cond_333
    move/from16 v17, v6

    move-wide/from16 v18, v7

    .end local v6    # "buf_offset":I
    .end local v7    # "buf_ret":J
    .restart local v17    # "buf_offset":I
    .restart local v18    # "buf_ret":J
    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_34e

    .line 4885
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 4886
    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchSocket(I)Z

    .line 4887
    move-wide/from16 v22, v9

    move-wide/from16 v26, v12

    goto/16 :goto_8c0

    .line 4884
    :cond_34e
    move v6, v15

    goto :goto_355

    .line 4875
    .end local v17    # "buf_offset":I
    .end local v18    # "buf_ret":J
    .restart local v6    # "buf_offset":I
    .restart local v7    # "buf_ret":J
    :cond_350
    move/from16 v17, v6

    move-wide/from16 v18, v7

    move v6, v15

    .line 4891
    .end local v6    # "buf_offset":I
    .end local v7    # "buf_ret":J
    .restart local v17    # "buf_offset":I
    .restart local v18    # "buf_ret":J
    :goto_355
    sub-long v7, v2, v4

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 4893
    .local v7, "bsize":I
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->isBufferInFile()Z

    move-result v8

    if-nez v8, :cond_367

    .line 4894
    new-array v8, v7, [B

    move-object v11, v8

    .line 4895
    :cond_367
    sget v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_BUFFERLEN:I

    move/from16 v20, v7

    .end local v7    # "bsize":I
    .local v20, "bsize":I
    int-to-long v6, v8

    const/4 v8, 0x1

    shl-long v14, v9, v8

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-wide/from16 v22, v9

    .end local v9    # "iRealBlockSize":J
    .local v22, "iRealBlockSize":J
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6
    :try_end_37f
    .catchall {:try_start_29c .. :try_end_37f} :catchall_905

    move-wide v9, v6

    .line 4896
    .end local v22    # "iRealBlockSize":J
    .restart local v9    # "iRealBlockSize":J
    const/4 v6, 0x0

    .line 4897
    .end local v17    # "buf_offset":I
    .restart local v6    # "buf_offset":I
    const-wide/16 v7, 0x0

    .line 4898
    .end local v18    # "buf_ret":J
    .local v7, "buf_ret":J
    const/4 v14, 0x0

    .line 4901
    .local v14, "len":I
    :try_start_384
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v15
    :try_end_389
    .catchall {:try_start_384 .. :try_end_389} :catchall_821

    .line 4902
    :goto_389
    move/from16 v17, v6

    .end local v6    # "buf_offset":I
    .restart local v17    # "buf_offset":I
    :try_start_38b
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z
    :try_end_38f
    .catchall {:try_start_38b .. :try_end_38f} :catchall_80e

    move-wide/from16 v18, v7

    .end local v7    # "buf_ret":J
    .restart local v18    # "buf_ret":J
    if-nez v6, :cond_3cf

    :try_start_393
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v6, :cond_3cf

    .line 4903
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_3a8

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v7, "APP not reading, waiting"

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_3a8
    .catchall {:try_start_393 .. :try_end_3a8} :catchall_3c6

    .line 4905
    :cond_3a8
    :try_start_3a8
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3b1
    .catchall {:try_start_3a8 .. :try_end_3b1} :catchall_3b6

    .line 4909
    :cond_3b1
    :goto_3b1
    move/from16 v6, v17

    move-wide/from16 v7, v18

    goto :goto_389

    .line 4907
    :catchall_3b6
    move-exception v0

    move-object v6, v0

    .line 4908
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_3b8
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_3b1

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V
    :try_end_3c5
    .catchall {:try_start_3b8 .. :try_end_3c5} :catchall_3c6

    goto :goto_3b1

    .line 4911
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_3c6
    move-exception v0

    move-object v7, v0

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    move-object v6, v15

    goto/16 :goto_817

    :cond_3cf
    :try_start_3cf
    monitor-exit v15
    :try_end_3d0
    .catchall {:try_start_3cf .. :try_end_3d0} :catchall_806

    .line 4913
    const/4 v6, 0x1

    :try_start_3d1
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z
    :try_end_3d3
    .catchall {:try_start_3d1 .. :try_end_3d3} :catchall_7fd

    move/from16 v6, v17

    .line 4915
    .end local v17    # "buf_offset":I
    .local v6, "buf_offset":I
    :goto_3d5
    :try_start_3d5
    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    :try_end_3d7
    .catchall {:try_start_3d5 .. :try_end_3d7} :catchall_7f6

    if-nez v7, :cond_4e6

    :try_start_3d9
    array-length v7, v11

    if-ge v6, v7, :cond_4e6

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->input:Ljava/io/InputStream;

    array-length v8, v11

    sub-int/2addr v8, v6

    invoke-virtual {v7, v11, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    move v14, v7

    if-lez v7, :cond_4e6

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v7, :cond_4e6

    .line 4916
    add-int/2addr v6, v14

    .line 4917
    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mTotalReceivedBytes:J
    :try_end_3f0
    .catchall {:try_start_3d9 .. :try_end_3f0} :catchall_4e9

    move-wide/from16 v24, v9

    .end local v9    # "iRealBlockSize":J
    .local v24, "iRealBlockSize":J
    int-to-long v9, v14

    add-long/2addr v7, v9

    :try_start_3f4
    iput-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mTotalReceivedBytes:J

    .line 4918
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 4921
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v7

    if-nez v7, :cond_413

    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v7, :cond_413

    .line 4922
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->setTime(I)V

    .line 4923
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    int-to-long v9, v14

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->incByte(IJ)V

    .line 4926
    :cond_413
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v7

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_46d

    .line 4927
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_4f1

    .line 4928
    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->mSecThreadCreationResult:I

    const/16 v8, -0x64

    if-ne v7, v8, :cond_4f1

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v7

    if-nez v7, :cond_4f1

    .line 4929
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Now it is time to stop this thread, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", buf_offset:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V

    goto/16 :goto_4f1

    .line 4933
    :cond_46d
    const/16 v8, -0x64

    int-to-long v9, v6

    add-long/2addr v9, v4

    cmp-long v7, v9, v2

    if-nez v7, :cond_4a4

    .line 4934
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_4f1

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full data read, break: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_4f1

    .line 4937
    :cond_4a4
    int-to-long v9, v6

    add-long/2addr v9, v4

    cmp-long v7, v9, v2

    if-lez v7, :cond_4dc

    .line 4938
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_4d8

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full data read, break: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_4d8
    .catchall {:try_start_3f4 .. :try_end_4d8} :catchall_4e0

    .line 4939
    :cond_4d8
    sub-long v7, v2, v4

    long-to-int v6, v7

    .line 4940
    goto :goto_4f1

    .line 4937
    :cond_4dc
    move-wide/from16 v9, v24

    goto/16 :goto_3d5

    .line 4945
    :catchall_4e0
    move-exception v0

    move-object v7, v0

    move-wide/from16 v26, v12

    goto/16 :goto_82b

    .line 4915
    .end local v24    # "iRealBlockSize":J
    .restart local v9    # "iRealBlockSize":J
    :cond_4e6
    move-wide/from16 v24, v9

    .end local v9    # "iRealBlockSize":J
    .restart local v24    # "iRealBlockSize":J
    goto :goto_4f1

    .line 4945
    .end local v24    # "iRealBlockSize":J
    .restart local v9    # "iRealBlockSize":J
    :catchall_4e9
    move-exception v0

    move-wide/from16 v24, v9

    move-object v7, v0

    move-wide/from16 v26, v12

    .end local v9    # "iRealBlockSize":J
    .restart local v24    # "iRealBlockSize":J
    goto/16 :goto_82b

    .line 4943
    :cond_4f1
    :goto_4f1
    :try_start_4f1
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_4f3
    .catchall {:try_start_4f1 .. :try_end_4f3} :catchall_7ef

    .line 4952
    nop

    .line 4956
    if-lez v6, :cond_75a

    :try_start_4f6
    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v7, :cond_75a

    .line 4957
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v7
    :try_end_4fd
    .catchall {:try_start_4f6 .. :try_end_4fd} :catchall_905

    .line 4958
    :try_start_4fd
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v8, v9, v11, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->push(I[BI)J

    move-result-wide v8
    :try_end_505
    .catchall {:try_start_4fd .. :try_end_505} :catchall_74d

    .line 4960
    .end local v18    # "buf_ret":J
    .local v8, "buf_ret":J
    const-wide/16 v17, -0x1

    cmp-long v10, v8, v17

    if-nez v10, :cond_54b

    .line 4961
    :try_start_50b
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_533

    .line 4962
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_51a
    .catchall {:try_start_50b .. :try_end_51a} :catchall_543

    move/from16 v17, v6

    .end local v6    # "buf_offset":I
    .restart local v17    # "buf_offset":I
    :try_start_51c
    const-string v6, "This block shall be read by another socket, this socket is slow: block[0], socket["

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_535

    .line 4961
    .end local v17    # "buf_offset":I
    .restart local v6    # "buf_offset":I
    :cond_533
    move/from16 v17, v6

    .line 4965
    .end local v6    # "buf_offset":I
    .restart local v17    # "buf_offset":I
    :goto_535
    new-instance v6, Ljava/io/IOException;

    const-string v10, "Data is not pushed to buffer may be socket has changed."

    invoke-direct {v6, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local v8    # "buf_ret":J
    .end local v11    # "buf":[B
    .end local v12    # "sTime":J
    .end local v14    # "len":I
    .end local v17    # "buf_offset":I
    .end local v20    # "bsize":I
    .end local v24    # "iRealBlockSize":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    throw v6
    :try_end_53d
    .catchall {:try_start_51c .. :try_end_53d} :catchall_53d

    .line 4982
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v8    # "buf_ret":J
    .restart local v11    # "buf":[B
    .restart local v12    # "sTime":J
    .restart local v14    # "len":I
    .restart local v17    # "buf_offset":I
    .restart local v20    # "bsize":I
    .restart local v24    # "iRealBlockSize":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_53d
    move-exception v0

    move-object v6, v0

    move-wide/from16 v26, v12

    goto/16 :goto_755

    .end local v17    # "buf_offset":I
    .restart local v6    # "buf_offset":I
    :catchall_543
    move-exception v0

    move/from16 v17, v6

    move-object v6, v0

    move-wide/from16 v26, v12

    .end local v6    # "buf_offset":I
    .restart local v17    # "buf_offset":I
    goto/16 :goto_755

    .line 4967
    .end local v17    # "buf_offset":I
    .restart local v6    # "buf_offset":I
    :cond_54b
    move/from16 v17, v6

    .end local v6    # "buf_offset":I
    .restart local v17    # "buf_offset":I
    const-wide/16 v15, 0x0

    cmp-long v6, v8, v15

    if-gez v6, :cond_594

    .line 4968
    move-wide/from16 v26, v12

    const-wide/16 v18, -0x1

    .end local v12    # "sTime":J
    .local v26, "sTime":J
    mul-long v12, v8, v18

    :try_start_559
    iput-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    .line 4969
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_57b

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4970
    :cond_57b
    new-instance v6, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local v8    # "buf_ret":J
    .end local v11    # "buf":[B
    .end local v14    # "len":I
    .end local v17    # "buf_offset":I
    .end local v20    # "bsize":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    throw v6

    .line 4973
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v8    # "buf_ret":J
    .restart local v11    # "buf":[B
    .restart local v12    # "sTime":J
    .restart local v14    # "len":I
    .restart local v17    # "buf_offset":I
    .restart local v20    # "bsize":I
    .restart local v24    # "iRealBlockSize":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_594
    move-wide/from16 v26, v12

    const-wide/16 v18, -0x1

    .end local v12    # "sTime":J
    .restart local v26    # "sTime":J
    iget-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    add-long/2addr v12, v8

    iput-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    .line 4974
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # += operator for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J
    invoke-static {v6, v8, v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6514(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    :try_end_5a2
    .catchall {:try_start_559 .. :try_end_5a2} :catchall_757

    .line 4975
    add-long/2addr v4, v8

    .line 4978
    :try_start_5a3
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_5a8
    .catchall {:try_start_5a3 .. :try_end_5a8} :catchall_5a9

    .line 4981
    goto :goto_5aa

    .line 4980
    :catchall_5a9
    move-exception v0

    .line 4982
    :goto_5aa
    :try_start_5aa
    monitor-exit v7
    :try_end_5ab
    .catchall {:try_start_5aa .. :try_end_5ab} :catchall_748

    .line 4983
    :try_start_5ab
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v6
    :try_end_5ae
    .catchall {:try_start_5ab .. :try_end_5ae} :catchall_742

    .line 4984
    :try_start_5ae
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->isBufferInFile()Z

    move-result v7

    if-nez v7, :cond_6df

    .line 4985
    :goto_5b6
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getRestLength()J

    move-result-wide v12

    const-wide/32 v29, 0x10000000

    cmp-long v7, v12, v29

    if-lez v7, :cond_6db

    .line 4986
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_5c5
    .catchall {:try_start_5ae .. :try_end_5c5} :catchall_735

    if-eqz v7, :cond_5ee

    :try_start_5c7
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "now rest length of the dBuf is over limit: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getRestLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_5e7
    .catchall {:try_start_5c7 .. :try_end_5e7} :catchall_5e8

    goto :goto_5ee

    .line 5015
    :catchall_5e8
    move-exception v0

    move-wide/from16 v31, v4

    move-object v4, v0

    goto/16 :goto_739

    .line 4988
    :cond_5ee
    :goto_5ee
    :try_start_5ee
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :try_end_5f0
    .catchall {:try_start_5ee .. :try_end_5f0} :catchall_5f8

    const-wide/16 v12, 0x3e8

    :try_start_5f2
    invoke-virtual {v7, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_5f5
    .catchall {:try_start_5f2 .. :try_end_5f5} :catchall_5f6

    goto :goto_5fb

    .line 4990
    :catchall_5f6
    move-exception v0

    goto :goto_5fb

    :catchall_5f8
    move-exception v0

    const-wide/16 v12, 0x3e8

    :goto_5fb
    nop

    .line 4991
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 4992
    .local v21, "ratio":D
    :try_start_5fe
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v7

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v15, v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v12

    aput-wide v12, v7, v10

    .line 4993
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v7

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    const/4 v13, 0x2

    rem-int/2addr v10, v13

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    add-int/2addr v13, v12

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    invoke-virtual {v15, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v12

    aput-wide v12, v7, v10

    .line 4994
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v7

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v12, 0x1

    add-int/2addr v10, v12

    const/4 v12, 0x2

    rem-int/2addr v10, v12

    aget-wide v12, v7, v10

    const-wide/16 v15, 0x0

    cmp-long v7, v12, v15

    if-lez v7, :cond_65e

    .line 4995
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v7

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v12, v7, v10

    long-to-double v12, v12

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4996
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v7

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v15, 0x1

    add-int/2addr v10, v15

    const/4 v15, 0x2

    rem-int/2addr v10, v15
    :try_end_654
    .catchall {:try_start_5fe .. :try_end_654} :catchall_735

    move-wide/from16 v31, v4

    .end local v4    # "totallen":J
    .local v31, "totallen":J
    :try_start_656
    aget-wide v4, v7, v10

    long-to-double v4, v4

    div-double v21, v12, v4

    move-wide/from16 v4, v21

    goto :goto_662

    .line 4994
    .end local v31    # "totallen":J
    .restart local v4    # "totallen":J
    :cond_65e
    move-wide/from16 v31, v4

    .end local v4    # "totallen":J
    .restart local v31    # "totallen":J
    move-wide/from16 v4, v21

    .line 4998
    .end local v21    # "ratio":D
    .local v4, "ratio":D
    :goto_662
    iget v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v10

    if-eq v7, v10, :cond_6d6

    sget v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SPEED_RATIO_FOR_EXTREME_HO:I

    int-to-double v12, v7

    cmpl-double v7, v4, v12

    if-lez v7, :cond_6d6

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z

    move-result v7

    if-nez v7, :cond_6d6

    .line 4999
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I
    invoke-static {v7, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2802(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    :try_end_682
    .catchall {:try_start_656 .. :try_end_682} :catchall_73f

    .line 5002
    :try_start_682
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/okhttp/internal/io/RealConnection;->close()V
    :try_end_68b
    .catchall {:try_start_682 .. :try_end_68b} :catchall_68c

    .line 5006
    goto :goto_68d

    .line 5004
    :catchall_68c
    move-exception v0

    .line 5007
    :goto_68d
    :try_start_68d
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_6d4

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Close main socket Speed of current socket in waiting for MEM: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 5008
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v12

    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v12, v12, v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " Speed of Other socket: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 5010
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v12

    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    const/4 v15, 0x1

    add-int/2addr v13, v15

    const/4 v15, 0x2

    rem-int/2addr v13, v15

    aget-wide v12, v12, v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " Speed ratio is "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5007
    invoke-virtual {v7, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_6d7

    :cond_6d4
    const/4 v15, 0x2

    goto :goto_6d7

    .line 4998
    :cond_6d6
    const/4 v15, 0x2

    .line 5013
    .end local v4    # "ratio":D
    :goto_6d7
    move-wide/from16 v4, v31

    goto/16 :goto_5b6

    .line 4985
    .end local v31    # "totallen":J
    .local v4, "totallen":J
    :cond_6db
    move-wide/from16 v31, v4

    const/4 v15, 0x2

    .end local v4    # "totallen":J
    .restart local v31    # "totallen":J
    goto :goto_6e2

    .line 4984
    .end local v31    # "totallen":J
    .restart local v4    # "totallen":J
    :cond_6df
    move-wide/from16 v31, v4

    const/4 v15, 0x2

    .line 5015
    .end local v4    # "totallen":J
    .restart local v31    # "totallen":J
    :goto_6e2
    monitor-exit v6
    :try_end_6e3
    .catchall {:try_start_68d .. :try_end_6e3} :catchall_73f

    .line 5030
    :try_start_6e3
    iget v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    if-ltz v4, :cond_72a

    .line 5031
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_711

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to swtich to socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " while remain data offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->start:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 5032
    :cond_711
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to swtich to socket "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v31    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    throw v4
    :try_end_72a
    .catchall {:try_start_6e3 .. :try_end_72a} :catchall_73b

    .line 5034
    .end local v14    # "len":I
    .end local v20    # "bsize":I
    .restart local v2    # "bytesToRead":J
    .restart local v31    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_72a
    move-wide v7, v8

    move/from16 v6, v17

    move-wide/from16 v9, v24

    move-wide/from16 v12, v26

    move-wide/from16 v4, v31

    goto/16 :goto_2e8

    .line 5015
    .end local v31    # "totallen":J
    .restart local v4    # "totallen":J
    .restart local v14    # "len":I
    .restart local v20    # "bsize":I
    :catchall_735
    move-exception v0

    move-wide/from16 v31, v4

    move-object v4, v0

    .end local v4    # "totallen":J
    .restart local v31    # "totallen":J
    :goto_739
    :try_start_739
    monitor-exit v6
    :try_end_73a
    .catchall {:try_start_739 .. :try_end_73a} :catchall_73f

    .end local v2    # "bytesToRead":J
    .end local v31    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_73a
    throw v4
    :try_end_73b
    .catchall {:try_start_73a .. :try_end_73b} :catchall_73b

    .line 5037
    .end local v8    # "buf_ret":J
    .end local v11    # "buf":[B
    .end local v14    # "len":I
    .end local v17    # "buf_offset":I
    .end local v20    # "bsize":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v2    # "bytesToRead":J
    .restart local v31    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_73b
    move-exception v0

    move-object v4, v0

    goto/16 :goto_909

    .line 5015
    .restart local v8    # "buf_ret":J
    .restart local v11    # "buf":[B
    .restart local v14    # "len":I
    .restart local v17    # "buf_offset":I
    .restart local v20    # "bsize":I
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    :catchall_73f
    move-exception v0

    move-object v4, v0

    goto :goto_739

    .line 5037
    .end local v8    # "buf_ret":J
    .end local v11    # "buf":[B
    .end local v14    # "len":I
    .end local v17    # "buf_offset":I
    .end local v20    # "bsize":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .end local v31    # "totallen":J
    .restart local v4    # "totallen":J
    :catchall_742
    move-exception v0

    move-wide/from16 v31, v4

    move-object v4, v0

    .end local v4    # "totallen":J
    .restart local v31    # "totallen":J
    goto/16 :goto_909

    .line 4982
    .end local v31    # "totallen":J
    .restart local v4    # "totallen":J
    .restart local v8    # "buf_ret":J
    .restart local v11    # "buf":[B
    .restart local v14    # "len":I
    .restart local v17    # "buf_offset":I
    .restart local v20    # "bsize":I
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    :catchall_748
    move-exception v0

    move-wide/from16 v31, v4

    move-object v6, v0

    .end local v4    # "totallen":J
    .restart local v31    # "totallen":J
    goto :goto_755

    .end local v8    # "buf_ret":J
    .end local v17    # "buf_offset":I
    .end local v26    # "sTime":J
    .end local v31    # "totallen":J
    .restart local v4    # "totallen":J
    .restart local v6    # "buf_offset":I
    .restart local v12    # "sTime":J
    .restart local v18    # "buf_ret":J
    :catchall_74d
    move-exception v0

    move/from16 v17, v6

    move-wide/from16 v26, v12

    move-object v6, v0

    move-wide/from16 v8, v18

    .end local v6    # "buf_offset":I
    .end local v12    # "sTime":J
    .end local v18    # "buf_ret":J
    .restart local v8    # "buf_ret":J
    .restart local v17    # "buf_offset":I
    .restart local v26    # "sTime":J
    :goto_755
    :try_start_755
    monitor-exit v7
    :try_end_756
    .catchall {:try_start_755 .. :try_end_756} :catchall_757

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_756
    throw v6

    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_757
    move-exception v0

    move-object v6, v0

    goto :goto_755

    .line 4956
    .end local v8    # "buf_ret":J
    .end local v17    # "buf_offset":I
    .end local v26    # "sTime":J
    .restart local v6    # "buf_offset":I
    .restart local v12    # "sTime":J
    .restart local v18    # "buf_ret":J
    :cond_75a
    move/from16 v17, v6

    move-wide/from16 v26, v12

    .line 5018
    .end local v6    # "buf_offset":I
    .end local v12    # "sTime":J
    .restart local v17    # "buf_offset":I
    .restart local v26    # "sTime":J
    const/4 v6, -0x1

    if-ne v14, v6, :cond_7aa

    cmp-long v6, v4, v2

    if-gez v6, :cond_7aa

    .line 5019
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_78b

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtremeConditionThread read body Exception: totallen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 5021
    :cond_78b
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtremeContionThread read body Exception: totallen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    throw v6

    .line 5025
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_7aa
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_7d0

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtremeConditionThread read body Exception2: totallen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 5027
    :cond_7d0
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtremeContionThread read body Exception2: totallen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", bytesToRead= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    throw v6
    :try_end_7ef
    .catchall {:try_start_756 .. :try_end_7ef} :catchall_905

    .line 4945
    .end local v17    # "buf_offset":I
    .end local v26    # "sTime":J
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v6    # "buf_offset":I
    .restart local v12    # "sTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_7ef
    move-exception v0

    move/from16 v17, v6

    move-wide/from16 v26, v12

    move-object v7, v0

    .end local v6    # "buf_offset":I
    .end local v12    # "sTime":J
    .restart local v17    # "buf_offset":I
    .restart local v26    # "sTime":J
    goto :goto_82b

    .end local v17    # "buf_offset":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v6    # "buf_offset":I
    .restart local v9    # "iRealBlockSize":J
    .restart local v12    # "sTime":J
    :catchall_7f6
    move-exception v0

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    move-object v7, v0

    .end local v9    # "iRealBlockSize":J
    .end local v12    # "sTime":J
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    goto :goto_82b

    .end local v6    # "buf_offset":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v9    # "iRealBlockSize":J
    .restart local v12    # "sTime":J
    .restart local v17    # "buf_offset":I
    :catchall_7fd
    move-exception v0

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    move-object v7, v0

    move/from16 v6, v17

    .end local v9    # "iRealBlockSize":J
    .end local v12    # "sTime":J
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    goto :goto_82b

    .line 4911
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v9    # "iRealBlockSize":J
    .restart local v12    # "sTime":J
    :catchall_806
    move-exception v0

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    move-object v6, v15

    move-object v7, v0

    .end local v9    # "iRealBlockSize":J
    .end local v12    # "sTime":J
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    goto :goto_817

    .end local v18    # "buf_ret":J
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v7    # "buf_ret":J
    .restart local v9    # "iRealBlockSize":J
    .restart local v12    # "sTime":J
    :catchall_80e
    move-exception v0

    move-wide/from16 v18, v7

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    move-object v6, v15

    move-object v7, v0

    .end local v7    # "buf_ret":J
    .end local v9    # "iRealBlockSize":J
    .end local v12    # "sTime":J
    .restart local v18    # "buf_ret":J
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    :goto_817
    :try_start_817
    monitor-exit v6
    :try_end_818
    .catchall {:try_start_817 .. :try_end_818} :catchall_81e

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local v11    # "buf":[B
    .end local v14    # "len":I
    .end local v17    # "buf_offset":I
    .end local v18    # "buf_ret":J
    .end local v20    # "bsize":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_818
    throw v7
    :try_end_819
    .catchall {:try_start_818 .. :try_end_819} :catchall_819

    .line 4945
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .restart local v11    # "buf":[B
    .restart local v14    # "len":I
    .restart local v17    # "buf_offset":I
    .restart local v18    # "buf_ret":J
    .restart local v20    # "bsize":I
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_819
    move-exception v0

    move-object v7, v0

    move/from16 v6, v17

    goto :goto_82b

    .line 4911
    :catchall_81e
    move-exception v0

    move-object v7, v0

    goto :goto_817

    .line 4945
    .end local v17    # "buf_offset":I
    .end local v18    # "buf_ret":J
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v6    # "buf_offset":I
    .restart local v7    # "buf_ret":J
    .restart local v9    # "iRealBlockSize":J
    .restart local v12    # "sTime":J
    :catchall_821
    move-exception v0

    move/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v24, v9

    move-wide/from16 v26, v12

    move-object v7, v0

    .line 4946
    .end local v9    # "iRealBlockSize":J
    .end local v12    # "sTime":J
    .local v7, "ex":Ljava/lang/Throwable;
    .restart local v18    # "buf_ret":J
    .restart local v24    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    :goto_82b
    const/4 v8, 0x0

    :try_start_82c
    iput-boolean v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z

    .line 4947
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    iget v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget v10, v8, v9

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aput v10, v8, v9

    .line 4948
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_86e

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SocketTimeoutException Count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v10, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    const/4 v12, 0x0

    aget v10, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v10, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    const/4 v12, 0x1

    aget v10, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4949
    :cond_86e
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_8a9

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in getting block: buf_offset="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", buf.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", len:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", bFinished="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v10, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4950
    :cond_8a9
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_8b6

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 4951
    :cond_8b6
    nop

    .end local v2    # "bytesToRead":J
    .end local v4    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    throw v7

    .line 4874
    .end local v14    # "len":I
    .end local v18    # "buf_ret":J
    .end local v20    # "bsize":I
    .end local v24    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "totallen":J
    .local v7, "buf_ret":J
    .restart local v9    # "iRealBlockSize":J
    .restart local v12    # "sTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_8b8
    move/from16 v17, v6

    move-wide/from16 v18, v7

    move-wide/from16 v22, v9

    move-wide/from16 v26, v12

    .line 5035
    .end local v6    # "buf_offset":I
    .end local v7    # "buf_ret":J
    .end local v9    # "iRealBlockSize":J
    .end local v12    # "sTime":J
    .restart local v17    # "buf_offset":I
    .restart local v18    # "buf_ret":J
    .restart local v22    # "iRealBlockSize":J
    .restart local v26    # "sTime":J
    :goto_8c0
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_8ee

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Speed of current socket is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " for content size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_8ee
    .catchall {:try_start_82c .. :try_end_8ee} :catchall_905

    .line 5083
    .end local v11    # "buf":[B
    .end local v17    # "buf_offset":I
    .end local v18    # "buf_ret":J
    .end local v22    # "iRealBlockSize":J
    .end local v26    # "sTime":J
    :cond_8ee
    monitor-enter p0

    .line 5084
    :try_start_8ef
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v6

    if-nez v6, :cond_8fe

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_8fe

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_8fe
    monitor-exit p0

    .line 5087
    goto/16 :goto_50

    .line 5086
    :catchall_901
    move-exception v0

    move-object v6, v0

    monitor-exit p0
    :try_end_904
    .catchall {:try_start_8ef .. :try_end_904} :catchall_901

    throw v6

    .line 5037
    :catchall_905
    move-exception v0

    move-wide/from16 v31, v4

    move-object v4, v0

    .line 5038
    .local v4, "t":Ljava/lang/Throwable;
    .restart local v31    # "totallen":J
    :goto_909
    const/4 v5, 0x0

    :try_start_90a
    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bIsSocketWorkingFine:Z

    .line 5039
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_919

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 5040
    :cond_919
    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->isExceptionInResponse:Z

    if-eqz v5, :cond_978

    .line 5041
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    if-eqz v5, :cond_92e

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9ef

    .line 5042
    :cond_92e
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v6, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 5043
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 5044
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 5045
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v6, 0x3

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 5046
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v6, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    invoke-static {v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    .line 5047
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v5

    monitor-enter v5
    :try_end_951
    .catchall {:try_start_90a .. :try_end_951} :catchall_a0c

    .line 5048
    :try_start_951
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 5049
    monitor-exit v5
    :try_end_95b
    .catchall {:try_start_951 .. :try_end_95b} :catchall_974

    .line 5083
    monitor-enter p0

    .line 5084
    :try_start_95c
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v5

    if-nez v5, :cond_96b

    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v5, :cond_96b

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_96b
    monitor-exit p0

    .line 5050
    move-wide/from16 v4, v31

    goto/16 :goto_a24

    .line 5086
    :catchall_970
    move-exception v0

    move-object v5, v0

    monitor-exit p0
    :try_end_973
    .catchall {:try_start_95c .. :try_end_973} :catchall_970

    throw v5

    .line 5049
    :catchall_974
    move-exception v0

    move-object v6, v0

    :try_start_976
    monitor-exit v5
    :try_end_977
    .catchall {:try_start_976 .. :try_end_977} :catchall_974

    .end local v2    # "bytesToRead":J
    .end local v31    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_977
    throw v6

    .line 5053
    .restart local v2    # "bytesToRead":J
    .restart local v31    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_978
    instance-of v5, v4, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_9b0

    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v5, :cond_9b0

    .line 5054
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v5
    :try_end_983
    .catchall {:try_start_977 .. :try_end_983} :catchall_a0c

    .line 5055
    :try_start_983
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V
    :try_end_986
    .catchall {:try_start_983 .. :try_end_986} :catchall_9ac

    .line 5057
    :try_start_986
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->removeTail(I)V
    :try_end_98d
    .catchall {:try_start_986 .. :try_end_98d} :catchall_98e

    .line 5061
    goto :goto_99d

    .line 5059
    :catchall_98e
    move-exception v0

    move-object v6, v0

    .line 5060
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_990
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_99d

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 5062
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_99d
    :goto_99d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 5063
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    aput-byte v7, v6, v8

    .line 5064
    monitor-exit v5

    goto :goto_9ef

    :catchall_9ac
    move-exception v0

    move-object v6, v0

    monitor-exit v5
    :try_end_9af
    .catchall {:try_start_990 .. :try_end_9af} :catchall_9ac

    .end local v2    # "bytesToRead":J
    .end local v31    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_9af
    throw v6

    .line 5067
    .restart local v2    # "bytesToRead":J
    .restart local v31    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :cond_9b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 5068
    .local v5, "sTime":J
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v7
    :try_end_9b7
    .catchall {:try_start_9af .. :try_end_9b7} :catchall_a0c

    .line 5070
    :try_start_9b7
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_9be
    .catchall {:try_start_9b7 .. :try_end_9be} :catchall_9bf

    .line 5073
    goto :goto_9c0

    .line 5072
    :catchall_9bf
    move-exception v0

    .line 5074
    :goto_9c0
    :try_start_9c0
    monitor-exit v7
    :try_end_9c1
    .catchall {:try_start_9c0 .. :try_end_9c1} :catchall_a08

    .line 5075
    :try_start_9c1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 5076
    .local v7, "waitedTime":J
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J

    move-result-object v9

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    aget-wide v9, v9, v10

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_9e5

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v9

    if-nez v9, :cond_9e5

    .line 5077
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v9, v10, v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->decTime(IJ)V

    .line 5078
    :cond_9e5
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, 0x0

    aput-byte v10, v9, v11
    :try_end_9ef
    .catchall {:try_start_9c1 .. :try_end_9ef} :catchall_a0c

    .line 5083
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "sTime":J
    .end local v7    # "waitedTime":J
    :cond_9ef
    :goto_9ef
    monitor-enter p0

    .line 5084
    :try_start_9f0
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_9ff

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v4, :cond_9ff

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_9ff
    monitor-exit p0

    .line 5087
    move-wide/from16 v4, v31

    goto/16 :goto_50

    .line 5086
    :catchall_a04
    move-exception v0

    move-object v4, v0

    monitor-exit p0
    :try_end_a07
    .catchall {:try_start_9f0 .. :try_end_a07} :catchall_a04

    throw v4

    .line 5074
    .restart local v4    # "t":Ljava/lang/Throwable;
    .restart local v5    # "sTime":J
    :catchall_a08
    move-exception v0

    move-object v8, v0

    :try_start_a0a
    monitor-exit v7
    :try_end_a0b
    .catchall {:try_start_a0a .. :try_end_a0b} :catchall_a08

    .end local v2    # "bytesToRead":J
    .end local v31    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :try_start_a0b
    throw v8
    :try_end_a0c
    .catchall {:try_start_a0b .. :try_end_a0c} :catchall_a0c

    .line 5083
    .end local v4    # "t":Ljava/lang/Throwable;
    .end local v5    # "sTime":J
    .restart local v2    # "bytesToRead":J
    .restart local v31    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    :catchall_a0c
    move-exception v0

    move-object v4, v0

    monitor-enter p0

    .line 5084
    :try_start_a0f
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v5

    if-nez v5, :cond_a1e

    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v5, :cond_a1e

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 5086
    :cond_a1e
    monitor-exit p0
    :try_end_a1f
    .catchall {:try_start_a0f .. :try_end_a1f} :catchall_a20

    .line 5087
    throw v4

    .line 5086
    :catchall_a20
    move-exception v0

    move-object v4, v0

    :try_start_a22
    monitor-exit p0
    :try_end_a23
    .catchall {:try_start_a22 .. :try_end_a23} :catchall_a20

    throw v4

    .line 5090
    .end local v31    # "totallen":J
    .local v4, "totallen":J
    :cond_a24
    :goto_a24
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z

    if-nez v6, :cond_a65

    .line 5091
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v6

    .line 5092
    :try_start_a2b
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v8, 0x0

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z
    invoke-static {v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2302(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z

    .line 5093
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 5094
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v7, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z
    :try_end_a3a
    .catchall {:try_start_a2b .. :try_end_a3a} :catchall_a61

    if-nez v7, :cond_a53

    .line 5096
    :try_start_a3c
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->dBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_a43
    .catchall {:try_start_a3c .. :try_end_a43} :catchall_a44

    .line 5100
    goto :goto_a53

    .line 5098
    :catchall_a44
    move-exception v0

    move-object v7, v0

    .line 5099
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_a46
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_a53

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 5102
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_a53
    :goto_a53
    monitor-exit v6
    :try_end_a54
    .catchall {:try_start_a46 .. :try_end_a54} :catchall_a61

    .line 5103
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v6, :cond_a65

    .line 5104
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->createTwoChunkInputInMain(Z)V

    goto :goto_a65

    .line 5102
    :catchall_a61
    move-exception v0

    move-object v7, v0

    :try_start_a63
    monitor-exit v6
    :try_end_a64
    .catchall {:try_start_a63 .. :try_end_a64} :catchall_a61

    throw v7

    .line 5108
    :cond_a65
    :goto_a65
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_a95

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource check: thread checking: stop ExtremThread "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", exit from socket "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 5109
    :cond_a95
    return-void
.end method

.method public blacklist startTryBoth(I)V
    .registers 5
    .param p1, "preferSock"    # I

    .line 4709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bTryBoth:Z

    .line 4710
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start try both, prefer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4711
    :cond_21
    return-void
.end method

.method public blacklist switchSocket(I)Z
    .registers 5
    .param p1, "sid"    # I

    .line 4698
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested to switch socket id from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4699
    :cond_28
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->sockID:I

    if-eq p1, v0, :cond_30

    .line 4700
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchToSocketID:I

    .line 4701
    const/4 v0, 0x1

    return v0

    .line 4704
    :cond_30
    const/4 v0, 0x0

    return v0
.end method
