.class Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
.super Ljava/lang/Object;
.source "TwoChunkInputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/TwoChunkInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecondChunkThread"
.end annotation


# instance fields
.field private blacklist bDeprecated:Z

.field private blacklist bTryBoth:Z

.field blacklist dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

.field blacklist end:J

.field private blacklist input:Ljava/io/InputStream;

.field private blacklist locker:Ljava/lang/Object;

.field private blacklist mSecThreadCreationResult:I

.field private blacklist mStartReadHeaderTime:J

.field private blacklist output:Ljava/io/OutputStream;

.field private blacklist s:Ljava/net/Socket;

.field private blacklist sockID:I

.field blacklist start:J

.field private blacklist switchToSocketID:I

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;IJJLcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;)V
    .registers 11
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p2, "socketID"    # I
    .param p3, "startOffset"    # J
    .param p5, "endOffset"    # J
    .param p7, "buf"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 788
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->output:Ljava/io/OutputStream;

    .line 777
    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    .line 778
    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    .line 780
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    .line 781
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    .line 782
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    .line 783
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    .line 789
    iput p2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    .line 790
    iput-wide p3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    .line 791
    iput-wide p5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    .line 792
    iput-object p7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    .line 794
    return-void
.end method


# virtual methods
.method protected blacklist closeSocketAndStreams()V
    .registers 4

    .line 1132
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close sec input stream in depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1133
    :cond_2e
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 1134
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->output:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 1135
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 1136
    return-void
.end method

.method public blacklist createTwoChunkInSec(Z)V
    .registers 35
    .param p1, "bReverse"    # Z

    .line 817
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v0, :cond_20

    .line 818
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v2, "createTwoChunkInSec: session is finished"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 819
    :cond_1f
    return-void

    .line 821
    :cond_20
    monitor-enter p0

    .line 822
    :try_start_21
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1b6

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    if-nez v0, :cond_1b6

    .line 823
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_79

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk0 is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$600(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " start offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$700(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 826
    :cond_79
    const-wide/16 v26, 0x0

    if-eqz p1, :cond_83

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    cmp-long v0, v2, v26

    if-lez v0, :cond_1b6

    .line 827
    :cond_83
    iget v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    move v11, v0

    .line 828
    .local v11, "sock0":I
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v12

    .line 829
    .local v12, "speed0":J
    iget v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    rem-int/lit8 v0, v0, 0x2

    move v10, v0

    .line 830
    .local v10, "sock1":I
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v14
    :try_end_a1
    .catchall {:try_start_21 .. :try_end_a1} :catchall_1b8

    .line 832
    .local v14, "speed1":J
    :try_start_a1
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v7, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v4, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_1b1

    move/from16 v17, v10

    .end local v10    # "sock1":I
    .local v17, "sock1":I
    :try_start_af
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 833
    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mOriReqHeader:Lcom/android/okhttp/Request;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$800(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/Request;

    move-result-object v18

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 834
    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v19, v2, 0x1

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v20

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mFullConSize:J
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v21

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeOut:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v23

    .line 835
    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;
    :try_end_d7
    .catchall {:try_start_af .. :try_end_d7} :catchall_1ab

    if-nez v2, :cond_e7

    :try_start_d9
    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->getHasReadLen()J

    move-result-wide v24
    :try_end_df
    .catchall {:try_start_d9 .. :try_end_df} :catchall_e0

    goto :goto_e9

    .line 855
    :catchall_e0
    move-exception v0

    move/from16 v31, v11

    move/from16 v30, v17

    goto/16 :goto_1b6

    .line 835
    :cond_e7
    move-wide/from16 v24, v26

    :goto_e9
    :try_start_e9
    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v28

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v29
    :try_end_f5
    .catchall {:try_start_e9 .. :try_end_f5} :catchall_1ab

    move-object v2, v7

    move-wide/from16 v30, v5

    move v5, v11

    move/from16 v6, v17

    move-object/from16 v32, v0

    move-object v0, v7

    move-wide/from16 v7, v30

    move/from16 v30, v17

    .end local v17    # "sock1":I
    .local v30, "sock1":I
    move/from16 v31, v11

    .end local v11    # "sock0":I
    .local v31, "sock0":I
    move-object/from16 v11, v18

    move/from16 v16, v19

    move-object/from16 v17, v20

    move-wide/from16 v18, v21

    move/from16 v20, v23

    move/from16 v21, p1

    move-wide/from16 v22, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    :try_start_116
    invoke-direct/range {v2 .. v25}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;IIJJLcom/android/okhttp/Request;JJILcom/android/okhttp/internal/http/MultiSocketInputStream;JIZJLcom/android/okhttp/internal/http/MultiratLog;Lcom/android/okhttp/internal/io/RealConnection;)V

    .line 832
    move-object/from16 v2, v32

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v2, v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$502(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 836
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getNeedToExitSecThread()I

    move-result v0

    iput v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    .line 837
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    .line 838
    iget v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    if-nez v0, :cond_1a2

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    .line 840
    if-eqz p1, :cond_15f

    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    cmp-long v0, v2, v26

    if-lez v0, :cond_15f

    .line 841
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_15b

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v2, "Need to start another sec chunk input"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 842
    :cond_15b
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    goto :goto_187

    .line 845
    :cond_15f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    .line 846
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_187

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in sec chunk create child input = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 848
    :cond_187
    :goto_187
    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->push(Ljava/io/InputStream;JJ)V

    .line 849
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->startRun(Ljava/net/Socket;)V

    goto :goto_1b6

    .line 852
    :cond_1a2
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const/4 v2, 0x0

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$502(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_end_1a8
    .catchall {:try_start_116 .. :try_end_1a8} :catchall_1a9

    goto :goto_1b6

    .line 855
    :catchall_1a9
    move-exception v0

    goto :goto_1b6

    .end local v30    # "sock1":I
    .end local v31    # "sock0":I
    .restart local v11    # "sock0":I
    .restart local v17    # "sock1":I
    :catchall_1ab
    move-exception v0

    move/from16 v31, v11

    move/from16 v30, v17

    .end local v11    # "sock0":I
    .end local v17    # "sock1":I
    .restart local v30    # "sock1":I
    .restart local v31    # "sock0":I
    goto :goto_1b6

    .end local v30    # "sock1":I
    .end local v31    # "sock0":I
    .restart local v10    # "sock1":I
    .restart local v11    # "sock0":I
    :catchall_1b1
    move-exception v0

    move/from16 v30, v10

    move/from16 v31, v11

    .line 858
    .end local v10    # "sock1":I
    .end local v11    # "sock0":I
    .end local v12    # "speed0":J
    .end local v14    # "speed1":J
    :cond_1b6
    :goto_1b6
    :try_start_1b6
    monitor-exit p0

    .line 859
    return-void

    .line 858
    :catchall_1b8
    move-exception v0

    monitor-exit p0
    :try_end_1ba
    .catchall {:try_start_1b6 .. :try_end_1ba} :catchall_1b8

    throw v0
.end method

.method public blacklist getSocketID()I
    .registers 2

    .line 797
    iget v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    return v0
.end method

.method public whitelist core-platform-api test-api run()V
    .registers 29

    .line 864
    move-object/from16 v1, p0

    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_50

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: thread checking: start SecondChunkThread_depth"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", start to download with socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 865
    :cond_50
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 866
    .local v2, "bytesToRead":J
    const-wide/16 v6, 0x0

    .line 867
    .local v6, "totallen":J
    :goto_5a
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_812

    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v8, :cond_812

    cmp-long v8, v6, v2

    if-gez v8, :cond_812

    .line 870
    :try_start_6e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    .line 871
    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_791

    const/4 v13, -0x1

    if-ltz v8, :cond_89

    .line 872
    :try_start_79
    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    iput v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    .line 873
    iput v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_80

    goto :goto_89

    .line 1090
    :catchall_80
    move-exception v0

    move-wide/from16 v16, v4

    move-wide/from16 v21, v6

    move-wide v4, v2

    move-object v2, v0

    goto/16 :goto_798

    .line 875
    :cond_89
    :goto_89
    :try_start_89
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v8
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_791

    const-wide/16 v14, -0x1

    if-nez v8, :cond_1bc

    :try_start_93
    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z
    :try_end_95
    .catchall {:try_start_93 .. :try_end_95} :catchall_80

    if-nez v8, :cond_1bc

    .line 877
    :try_start_97
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v16

    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mOriReqHeader:Lcom/android/okhttp/Request;
    invoke-static {v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$800(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/Request;

    move-result-object v18
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a5} :catch_f7
    .catchall {:try_start_97 .. :try_end_a5} :catchall_80

    :try_start_a5
    iget-wide v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 878
    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mFullConSize:J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v23

    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v25

    iget-boolean v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    const/16 v27, 0x1

    .line 877
    move/from16 v17, v8

    move-wide/from16 v19, v4

    move-wide/from16 v21, v11

    move/from16 v26, v13

    invoke-virtual/range {v16 .. v27}, Lcom/android/okhttp/internal/io/RealConnection;->extremeConditionConnect(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    .line 879
    if-nez v4, :cond_f6

    .line 880
    iput-boolean v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    .line 881
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bFailedInSecChunk:Z
    invoke-static {v4, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1302(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Z)Z

    .line 882
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_df

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    const-string v5, "unexpected HTTP response in ExtremThread"

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_df} :catch_f7
    .catchall {:try_start_a5 .. :try_end_df} :catchall_1e2

    .line 1106
    :cond_df
    monitor-enter p0

    .line 1107
    :try_start_e0
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_ef

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_ef

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_ef
    monitor-exit p0

    .line 883
    goto/16 :goto_812

    .line 1109
    :catchall_f2
    move-exception v0

    move-object v4, v0

    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_e0 .. :try_end_f5} :catchall_f2

    throw v4

    .line 894
    :cond_f6
    goto :goto_10e

    .line 886
    :catch_f7
    move-exception v0

    move-object v4, v0

    .line 887
    .local v4, "e":Ljava/lang/Exception;
    :try_start_f9
    monitor-enter p0
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_1e2

    .line 888
    :try_start_fa
    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v5

    if-eqz v5, :cond_1b6

    .line 891
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_10d

    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const-string v8, "childIS is created before this exception"

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 893
    :cond_10d
    monitor-exit p0
    :try_end_10e
    .catchall {:try_start_fa .. :try_end_10e} :catchall_1b8

    .line 896
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_10e
    :try_start_10e
    monitor-enter p0
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_1e2

    .line 897
    :try_start_10f
    iput-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mStartReadHeaderTime:J

    .line 898
    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-eqz v4, :cond_138

    .line 899
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_120

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const-string v5, "thread is deprecated, break"

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 900
    :cond_120
    monitor-exit p0
    :try_end_121
    .catchall {:try_start_10f .. :try_end_121} :catchall_1b2

    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_122
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_131

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_131

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_131
    monitor-exit p0

    .line 900
    goto/16 :goto_812

    .line 1109
    :catchall_134
    move-exception v0

    move-object v4, v0

    monitor-exit p0
    :try_end_137
    .catchall {:try_start_122 .. :try_end_137} :catchall_134

    throw v4

    .line 902
    :cond_138
    :try_start_138
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_1a5

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_1a5

    .line 903
    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    if-eqz v4, :cond_16d

    .line 904
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/io/RealConnection;

    move-result-object v5

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16b

    .line 905
    iput v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    goto :goto_16d

    .line 908
    :cond_16b
    iput v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    .line 912
    :cond_16d
    :goto_16d
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 914
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->output:Ljava/io/OutputStream;

    .line 915
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->s:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    .line 916
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1b0

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new input stream in sec chunk reconnect input = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_1b0

    .line 919
    :cond_1a5
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1b0

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const-string v5, "childIS is created before this connection"

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 921
    :cond_1b0
    :goto_1b0
    monitor-exit p0

    goto :goto_1bc

    :catchall_1b2
    move-exception v0

    move-object v4, v0

    monitor-exit p0
    :try_end_1b5
    .catchall {:try_start_138 .. :try_end_1b5} :catchall_1b2

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :try_start_1b5
    throw v4
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1e2

    .line 889
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_1b6
    nop

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :try_start_1b7
    throw v4

    .line 893
    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :catchall_1b8
    move-exception v0

    move-object v5, v0

    monitor-exit p0
    :try_end_1bb
    .catchall {:try_start_1b7 .. :try_end_1bb} :catchall_1b8

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :try_start_1bb
    throw v5
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1e2

    .line 924
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_1bc
    :goto_1bc
    :try_start_1bc
    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z
    :try_end_1be
    .catchall {:try_start_1bc .. :try_end_1be} :catchall_789

    if-eqz v4, :cond_1eb

    .line 925
    :try_start_1c0
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1cb

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const-string v5, "thread is deprecated2, break"

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_1cb
    .catchall {:try_start_1c0 .. :try_end_1cb} :catchall_1e2

    .line 1106
    :cond_1cb
    monitor-enter p0

    .line 1107
    :try_start_1cc
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_1db

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_1db

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_1db
    monitor-exit p0

    .line 926
    goto/16 :goto_812

    .line 1109
    :catchall_1de
    move-exception v0

    move-object v4, v0

    monitor-exit p0
    :try_end_1e1
    .catchall {:try_start_1cc .. :try_end_1e1} :catchall_1de

    throw v4

    .line 1090
    :catchall_1e2
    move-exception v0

    move-wide v4, v2

    move-wide/from16 v21, v6

    const-wide/16 v16, 0x1

    move-object v2, v0

    goto/16 :goto_798

    .line 929
    :cond_1eb
    :try_start_1eb
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    if-nez v4, :cond_307

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v4, :cond_307

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_307

    .line 930
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_1ff
    .catchall {:try_start_1eb .. :try_end_1ff} :catchall_789

    if-eqz v4, :cond_21e

    :try_start_201
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected for socket "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", need to use this socket to get actual data"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_21e
    .catchall {:try_start_201 .. :try_end_21e} :catchall_1e2

    .line 931
    :cond_21e
    :try_start_21e
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v4

    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v4

    .line 932
    .local v4, "speed0":J
    const-wide/16 v11, 0x0

    cmp-long v8, v4, v11

    if-nez v8, :cond_23a

    const-wide v11, 0x7fffffffffffffffL

    goto :goto_244

    :cond_23a
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v11

    const-wide/16 v13, 0x8

    mul-long/2addr v11, v13

    div-long/2addr v11, v4

    .line 933
    .local v11, "timeForRemainBy0":J
    :goto_244
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_246
    .catchall {:try_start_21e .. :try_end_246} :catchall_789

    if-eqz v8, :cond_266

    :try_start_248
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "socket0 speed="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", timeForRemainBy0="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v8, v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_266
    .catchall {:try_start_248 .. :try_end_266} :catchall_1e2

    .line 934
    :cond_266
    const-wide/16 v13, 0x1388

    cmp-long v8, v11, v13

    if-lez v8, :cond_2da

    .line 935
    :try_start_26c
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_end_26e
    .catchall {:try_start_26c .. :try_end_26e} :catchall_789

    const-wide/16 v9, 0x0

    cmp-long v13, v4, v9

    const-wide/16 v9, 0x3

    if-nez v13, :cond_281

    :try_start_276
    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v13

    const-wide/16 v15, 0x2

    mul-long/2addr v13, v15

    div-long/2addr v13, v9
    :try_end_280
    .catchall {:try_start_276 .. :try_end_280} :catchall_1e2

    goto :goto_288

    :cond_281
    :try_start_281
    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v13

    div-long/2addr v13, v9

    :goto_288
    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v8, v13, v14}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$402(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J

    .line 936
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v13

    sub-long/2addr v8, v13

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    iput-wide v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    .line 937
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v13, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v15, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v15}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v19

    move-object v15, v13

    move-object/from16 v16, v14

    move-wide/from16 v17, v8

    invoke-direct/range {v15 .. v20}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;-><init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;JJ)V

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;
    invoke-static {v10, v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1502(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;)Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 938
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    move-result-object v8

    iput-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 940
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J
    :try_end_2bc
    .catchall {:try_start_281 .. :try_end_2bc} :catchall_789

    sub-long/2addr v8, v13

    const-wide/16 v16, 0x1

    add-long v2, v8, v16

    .line 941
    const-wide/16 v6, 0x0

    .line 942
    :try_start_2c3
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_2d2

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    const-string v9, "do reconnect"

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 943
    :cond_2d2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "please reconnect to get actual data"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v8

    .line 946
    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_2da
    const-wide/16 v16, 0x1

    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_2eb

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v8

    const-string v13, "small data left, ignore me, exit thread"

    invoke-virtual {v8, v13}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 947
    :cond_2eb
    iput-boolean v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V
    :try_end_2f0
    .catchall {:try_start_2c3 .. :try_end_2f0} :catchall_783

    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_2f1
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v8

    if-nez v8, :cond_300

    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v8, :cond_300

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_300
    monitor-exit p0

    .line 949
    goto/16 :goto_812

    .line 1109
    :catchall_303
    move-exception v0

    move-object v8, v0

    monitor-exit p0
    :try_end_306
    .catchall {:try_start_2f1 .. :try_end_306} :catchall_303

    throw v8

    .line 929
    .end local v4    # "speed0":J
    .end local v11    # "timeForRemainBy0":J
    :cond_307
    const-wide/16 v16, 0x1

    .line 953
    :try_start_309
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1600(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)[J

    move-result-object v4

    iget v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget-wide v4, v4, v5

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-nez v4, :cond_327

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1600(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)[J

    move-result-object v4

    iget v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    aput-wide v11, v4, v5

    .line 956
    :cond_327
    const/4 v4, 0x0

    .line 957
    .local v4, "buf_offset":I
    const-wide/16 v11, 0x0

    .line 963
    .local v11, "buf_ret":J
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_350

    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SecondChunkThread starts to read data from "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->end:J

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 964
    :cond_350
    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkStart:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1700(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v13

    const-wide/16 v20, 0x0

    cmp-long v5, v13, v20

    if-gez v5, :cond_36a

    .line 965
    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkStart:J
    invoke-static {v5, v13, v14}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1702(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J

    .line 966
    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J
    invoke-static {v5, v13, v14}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1802(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J

    .line 968
    :cond_36a
    sget v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_BUFFERLEN:I

    new-array v5, v5, [B

    .line 969
    .local v5, "buf":[B
    :goto_36e
    cmp-long v8, v6, v2

    if-gez v8, :cond_73e

    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v8, :cond_73e

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v8, :cond_73e

    .line 970
    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    const/16 v13, -0x64

    if-ne v8, v13, :cond_3bd

    .line 971
    invoke-virtual {v1, v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->createTwoChunkInSec(Z)V

    .line 972
    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-eqz v8, :cond_3ab

    .line 973
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_73e

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Secchunk Thread deprecated at offset "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    goto/16 :goto_73e

    .line 978
    :cond_3ab
    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    const/4 v14, -0x1

    if-ne v8, v14, :cond_3bd

    .line 979
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 980
    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    add-int/2addr v8, v10

    rem-int/lit8 v8, v8, 0x2

    invoke-virtual {v1, v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchSocket(I)V
    :try_end_3bb
    .catchall {:try_start_309 .. :try_end_3bb} :catchall_783

    .line 981
    goto/16 :goto_73e

    .line 986
    :cond_3bd
    const/4 v4, 0x0

    .line 987
    const-wide/16 v11, 0x0

    .line 988
    const/4 v8, 0x0

    .line 991
    .local v8, "len":I
    :try_start_3c1
    iget-object v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v14}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v14

    iget-object v14, v14, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v14
    :try_end_3ca
    .catchall {:try_start_3c1 .. :try_end_3ca} :catchall_6a8

    .line 992
    :goto_3ca
    :try_start_3ca
    iget-object v15, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v15

    iget-boolean v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z

    if-nez v15, :cond_41d

    iget-object v15, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v15

    iget-boolean v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v15, :cond_41d

    .line 993
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_3e0
    .catchall {:try_start_3ca .. :try_end_3e0} :catchall_69c

    if-eqz v15, :cond_3f4

    :try_start_3e2
    iget-object v15, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v15}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v15

    const-string v9, "APP not reading, waiting"

    invoke-virtual {v15, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_3ed
    .catchall {:try_start_3e2 .. :try_end_3ed} :catchall_3ee

    goto :goto_3f4

    .line 1001
    :catchall_3ee
    move-exception v0

    move-object v9, v0

    move-wide/from16 v21, v11

    goto/16 :goto_6a0

    .line 995
    :cond_3f4
    :goto_3f4
    :try_start_3f4
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v9

    iget-object v9, v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;
    :try_end_3fc
    .catchall {:try_start_3f4 .. :try_end_3fc} :catchall_407

    move-wide/from16 v21, v11

    .end local v11    # "buf_ret":J
    .local v21, "buf_ret":J
    const-wide/16 v10, 0x3e8

    :try_start_400
    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_403
    .catchall {:try_start_400 .. :try_end_403} :catchall_404

    goto :goto_418

    .line 997
    :catchall_404
    move-exception v0

    move-object v9, v0

    goto :goto_40b

    .end local v21    # "buf_ret":J
    .restart local v11    # "buf_ret":J
    :catchall_407
    move-exception v0

    move-wide/from16 v21, v11

    move-object v9, v0

    .line 998
    .end local v11    # "buf_ret":J
    .local v9, "e":Ljava/lang/Throwable;
    .restart local v21    # "buf_ret":J
    :goto_40b
    :try_start_40b
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_418

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 999
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_418
    :goto_418
    move-wide/from16 v11, v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_3ca

    .line 992
    .end local v21    # "buf_ret":J
    .restart local v11    # "buf_ret":J
    :cond_41d
    move-wide/from16 v21, v11

    .line 1001
    .end local v11    # "buf_ret":J
    .restart local v21    # "buf_ret":J
    monitor-exit v14
    :try_end_420
    .catchall {:try_start_40b .. :try_end_420} :catchall_6a5

    .line 1003
    :cond_420
    :try_start_420
    iget-boolean v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v9, :cond_4f0

    array-length v9, v5

    if-ge v4, v9, :cond_4f0

    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    array-length v10, v5

    sub-int/2addr v10, v4

    invoke-virtual {v9, v5, v4, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    move v8, v9

    if-lez v9, :cond_4f0

    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v9, :cond_4f0

    .line 1004
    add-int/2addr v4, v8

    .line 1006
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_48c

    .line 1007
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_4f0

    .line 1008
    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->mSecThreadCreationResult:I

    if-ne v9, v13, :cond_4f0

    .line 1009
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Now it is time to stop this thread, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "<="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J
    invoke-static {v11}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", buf_offset:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_4f0

    .line 1013
    :cond_48c
    int-to-long v9, v4

    add-long/2addr v9, v6

    cmp-long v9, v9, v2

    if-nez v9, :cond_4bd

    .line 1014
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_4f0

    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Full data read, break: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    goto :goto_4f0

    .line 1017
    :cond_4bd
    int-to-long v9, v4

    add-long/2addr v9, v6

    cmp-long v9, v9, v2

    if-lez v9, :cond_420

    .line 1018
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_4ed

    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Full data read, break: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "+"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_4ed
    .catchall {:try_start_420 .. :try_end_4ed} :catchall_6a2

    .line 1019
    :cond_4ed
    sub-long v9, v2, v6

    long-to-int v4, v9

    .line 1031
    :cond_4f0
    :goto_4f0
    nop

    .line 1036
    if-lez v4, :cond_613

    :try_start_4f3
    iget-boolean v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v9, :cond_613

    .line 1037
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v9
    :try_end_4fa
    .catchall {:try_start_4f3 .. :try_end_4fa} :catchall_783

    .line 1038
    :try_start_4fa
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    iget v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v10, v11, v5, v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->push(I[BI)J

    move-result-wide v10
    :try_end_502
    .catchall {:try_start_4fa .. :try_end_502} :catchall_60a

    move-wide v11, v10

    .line 1039
    .end local v21    # "buf_ret":J
    .restart local v11    # "buf_ret":J
    const-wide/16 v13, -0x1

    cmp-long v10, v11, v13

    if-nez v10, :cond_532

    .line 1040
    :try_start_509
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_52a

    .line 1041
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This block shall be read by another socket, this socket is slow: block[0], socket["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v10, v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1044
    :cond_52a
    new-instance v10, Ljava/io/IOException;

    const-string v13, "Data is not pushed to buffer may be socket has changed."

    invoke-direct {v10, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v4    # "buf_offset":I
    .end local v5    # "buf":[B
    .end local v6    # "totallen":J
    .end local v8    # "len":I
    .end local v11    # "buf_ret":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v10

    .line 1046
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "buf_offset":I
    .restart local v5    # "buf":[B
    .restart local v6    # "totallen":J
    .restart local v8    # "len":I
    .restart local v11    # "buf_ret":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_532
    const-wide/16 v13, 0x0

    cmp-long v10, v11, v13

    if-gez v10, :cond_573

    .line 1047
    const-wide/16 v13, -0x1

    mul-long v14, v11, v13

    iput-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    .line 1048
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_55a

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v10, v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1049
    :cond_55a
    new-instance v10, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "some buffered data is removed from cache file, read again from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v4    # "buf_offset":I
    .end local v5    # "buf":[B
    .end local v6    # "totallen":J
    .end local v8    # "len":I
    .end local v11    # "buf_ret":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v10

    .line 1052
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "buf_offset":I
    .restart local v5    # "buf":[B
    .restart local v6    # "totallen":J
    .restart local v8    # "len":I
    .restart local v11    # "buf_ret":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_573
    const-wide/16 v13, -0x1

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    add-long/2addr v13, v11

    iput-wide v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    .line 1053
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # += operator for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J
    invoke-static {v10, v11, v12}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1814(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J
    :try_end_57f
    .catchall {:try_start_509 .. :try_end_57f} :catchall_610

    .line 1054
    add-long/2addr v6, v11

    .line 1055
    :try_start_580
    iget v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I
    invoke-static {v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v13

    if-eq v10, v13, :cond_5a8

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v10

    if-nez v10, :cond_5a8

    iget-boolean v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v10, :cond_5a8

    .line 1056
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v10, v13}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->setTime(I)V

    .line 1057
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I
    :try_end_5a1
    .catchall {:try_start_580 .. :try_end_5a1} :catchall_605

    move-wide/from16 v21, v6

    .end local v6    # "totallen":J
    .local v21, "totallen":J
    int-to-long v6, v4

    :try_start_5a4
    invoke-virtual {v10, v13, v6, v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->incByte(IJ)V
    :try_end_5a7
    .catchall {:try_start_5a4 .. :try_end_5a7} :catchall_600

    goto :goto_5aa

    .line 1055
    .end local v21    # "totallen":J
    .restart local v6    # "totallen":J
    :cond_5a8
    move-wide/from16 v21, v6

    .line 1061
    .end local v6    # "totallen":J
    .restart local v21    # "totallen":J
    :goto_5aa
    :try_start_5aa
    iget-object v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->dBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V
    :try_end_5af
    .catchall {:try_start_5aa .. :try_end_5af} :catchall_5b0

    .line 1064
    goto :goto_5b1

    .line 1063
    :catchall_5b0
    move-exception v0

    .line 1065
    :goto_5b1
    :try_start_5b1
    monitor-exit v9
    :try_end_5b2
    .catchall {:try_start_5b1 .. :try_end_5b2} :catchall_600

    .line 1083
    :try_start_5b2
    iget v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    if-ltz v6, :cond_5f5

    .line 1084
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_5dc

    iget-object v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to swtich to socket "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " while remain data offset "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->start:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1085
    :cond_5dc
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to swtich to socket "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v21    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v6
    :try_end_5f5
    .catchall {:try_start_5b2 .. :try_end_5f5} :catchall_5fb

    .line 1087
    .end local v8    # "len":I
    .restart local v2    # "bytesToRead":J
    .restart local v21    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_5f5
    move-wide/from16 v6, v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_36e

    .line 1090
    .end local v4    # "buf_offset":I
    .end local v5    # "buf":[B
    .end local v11    # "buf_ret":J
    :catchall_5fb
    move-exception v0

    move-wide v4, v2

    move-object v2, v0

    goto/16 :goto_798

    .line 1065
    .restart local v4    # "buf_offset":I
    .restart local v5    # "buf":[B
    .restart local v8    # "len":I
    .restart local v11    # "buf_ret":J
    :catchall_600
    move-exception v0

    move-object v10, v0

    move-wide/from16 v6, v21

    goto :goto_60e

    .end local v21    # "totallen":J
    .restart local v6    # "totallen":J
    :catchall_605
    move-exception v0

    move-wide/from16 v21, v6

    move-object v10, v0

    .end local v6    # "totallen":J
    .restart local v21    # "totallen":J
    goto :goto_60e

    .end local v11    # "buf_ret":J
    .restart local v6    # "totallen":J
    .local v21, "buf_ret":J
    :catchall_60a
    move-exception v0

    move-object v10, v0

    move-wide/from16 v11, v21

    .end local v21    # "buf_ret":J
    .restart local v11    # "buf_ret":J
    :goto_60e
    :try_start_60e
    monitor-exit v9
    :try_end_60f
    .catchall {:try_start_60e .. :try_end_60f} :catchall_610

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :try_start_60f
    throw v10

    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :catchall_610
    move-exception v0

    move-object v10, v0

    goto :goto_60e

    .line 1067
    .end local v11    # "buf_ret":J
    .restart local v21    # "buf_ret":J
    :cond_613
    const/4 v9, -0x1

    if-ne v8, v9, :cond_65b

    cmp-long v9, v6, v2

    if-gez v9, :cond_65b

    .line 1068
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_63c

    .line 1069
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecondChunkThread read body Exception: totallen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", bytesToRead= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1072
    :cond_63c
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecondChunkThread read body Exception: totallen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", bytesToRead= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v9

    .line 1076
    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_65b
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_67d

    .line 1077
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecondChunkThread read body Exception2: totallen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", bytesToRead= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1080
    :cond_67d
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SecondChunkThread read body Exception2: totallen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", bytesToRead= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v9
    :try_end_69c
    .catchall {:try_start_60f .. :try_end_69c} :catchall_783

    .line 1001
    .end local v21    # "buf_ret":J
    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local v11    # "buf_ret":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :catchall_69c
    move-exception v0

    move-wide/from16 v21, v11

    move-object v9, v0

    .end local v11    # "buf_ret":J
    .restart local v21    # "buf_ret":J
    :goto_6a0
    :try_start_6a0
    monitor-exit v14
    :try_end_6a1
    .catchall {:try_start_6a0 .. :try_end_6a1} :catchall_6a5

    .end local v2    # "bytesToRead":J
    .end local v4    # "buf_offset":I
    .end local v5    # "buf":[B
    .end local v6    # "totallen":J
    .end local v8    # "len":I
    .end local v21    # "buf_ret":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :try_start_6a1
    throw v9
    :try_end_6a2
    .catchall {:try_start_6a1 .. :try_end_6a2} :catchall_6a2

    .line 1025
    .restart local v2    # "bytesToRead":J
    .restart local v4    # "buf_offset":I
    .restart local v5    # "buf":[B
    .restart local v6    # "totallen":J
    .restart local v8    # "len":I
    .restart local v21    # "buf_ret":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :catchall_6a2
    move-exception v0

    move-object v9, v0

    goto :goto_6ac

    .line 1001
    :catchall_6a5
    move-exception v0

    move-object v9, v0

    goto :goto_6a0

    .line 1025
    .end local v21    # "buf_ret":J
    .restart local v11    # "buf_ret":J
    :catchall_6a8
    move-exception v0

    move-wide/from16 v21, v11

    move-object v9, v0

    .line 1026
    .end local v11    # "buf_ret":J
    .local v9, "ex":Ljava/lang/Throwable;
    .restart local v21    # "buf_ret":J
    :goto_6ac
    :try_start_6ac
    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v10

    iget-object v10, v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    iget v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget v12, v10, v11

    const/4 v13, 0x1

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 1027
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_6f4

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SocketTimeoutException Count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v12

    iget-object v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v12

    iget-object v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1028
    :cond_6f4
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_72f

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in getting block: buf_offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", buf.length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", len:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", bFinished="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v12}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1029
    :cond_72f
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_73c

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1030
    :cond_73c
    nop

    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    throw v9

    .line 1088
    .end local v8    # "len":I
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v21    # "buf_ret":J
    .restart local v2    # "bytesToRead":J
    .restart local v6    # "totallen":J
    .restart local v11    # "buf_ret":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :cond_73e
    :goto_73e
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_76c

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Speed of current socket is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v10

    iget v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v10, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " for content size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V
    :try_end_76c
    .catchall {:try_start_6ac .. :try_end_76c} :catchall_783

    .line 1106
    .end local v4    # "buf_offset":I
    .end local v5    # "buf":[B
    .end local v11    # "buf_ret":J
    :cond_76c
    monitor-enter p0

    .line 1107
    :try_start_76d
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v4

    if-nez v4, :cond_77c

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_77c

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_77c
    monitor-exit p0

    .line 1110
    goto/16 :goto_7ee

    .line 1109
    :catchall_77f
    move-exception v0

    move-object v4, v0

    monitor-exit p0
    :try_end_782
    .catchall {:try_start_76d .. :try_end_782} :catchall_77f

    throw v4

    .line 1090
    :catchall_783
    move-exception v0

    move-wide v4, v2

    move-wide/from16 v21, v6

    move-object v2, v0

    goto :goto_798

    :catchall_789
    move-exception v0

    const-wide/16 v16, 0x1

    move-wide v4, v2

    move-wide/from16 v21, v6

    move-object v2, v0

    goto :goto_798

    :catchall_791
    move-exception v0

    move-wide/from16 v16, v4

    move-wide v4, v2

    move-wide/from16 v21, v6

    move-object v2, v0

    .line 1091
    .end local v6    # "totallen":J
    .local v2, "t":Ljava/lang/Throwable;
    .local v4, "bytesToRead":J
    .local v21, "totallen":J
    :goto_798
    :try_start_798
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_7a5

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1092
    :cond_7a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1093
    .local v6, "sTime":J
    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7ac
    .catchall {:try_start_798 .. :try_end_7ac} :catchall_7fa

    .line 1095
    :try_start_7ac
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_7b3
    .catchall {:try_start_7ac .. :try_end_7b3} :catchall_7b4

    .line 1098
    goto :goto_7b5

    .line 1097
    :catchall_7b4
    move-exception v0

    .line 1099
    :goto_7b5
    :try_start_7b5
    monitor-exit v3
    :try_end_7b6
    .catchall {:try_start_7b5 .. :try_end_7b6} :catchall_7f6

    .line 1100
    :try_start_7b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 1101
    .local v8, "waitedTime":J
    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$1900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)[J

    move-result-object v3

    iget v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    aget-wide v10, v3, v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_7da

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v3

    if-nez v3, :cond_7da

    .line 1102
    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v3, v10, v8, v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->decTime(IJ)V
    :try_end_7da
    .catchall {:try_start_7b6 .. :try_end_7da} :catchall_7fa

    .line 1106
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v6    # "sTime":J
    .end local v8    # "waitedTime":J
    :cond_7da
    monitor-enter p0

    .line 1107
    :try_start_7db
    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v2

    if-nez v2, :cond_7ea

    iget-boolean v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v2, :cond_7ea

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_7ea
    monitor-exit p0

    .line 1110
    move-wide v2, v4

    move-wide/from16 v6, v21

    .end local v4    # "bytesToRead":J
    .end local v21    # "totallen":J
    .local v2, "bytesToRead":J
    .local v6, "totallen":J
    :goto_7ee
    move-wide/from16 v4, v16

    goto/16 :goto_5a

    .line 1109
    .end local v2    # "bytesToRead":J
    .end local v6    # "totallen":J
    .restart local v4    # "bytesToRead":J
    .restart local v21    # "totallen":J
    :catchall_7f2
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_7f5
    .catchall {:try_start_7db .. :try_end_7f5} :catchall_7f2

    throw v2

    .line 1099
    .local v2, "t":Ljava/lang/Throwable;
    .local v6, "sTime":J
    :catchall_7f6
    move-exception v0

    move-object v8, v0

    :try_start_7f8
    monitor-exit v3
    :try_end_7f9
    .catchall {:try_start_7f8 .. :try_end_7f9} :catchall_7f6

    .end local v4    # "bytesToRead":J
    .end local v21    # "totallen":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :try_start_7f9
    throw v8
    :try_end_7fa
    .catchall {:try_start_7f9 .. :try_end_7fa} :catchall_7fa

    .line 1106
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v6    # "sTime":J
    .restart local v4    # "bytesToRead":J
    .restart local v21    # "totallen":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    :catchall_7fa
    move-exception v0

    move-object v2, v0

    monitor-enter p0

    .line 1107
    :try_start_7fd
    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    invoke-static {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    move-result-object v3

    if-nez v3, :cond_80c

    iget-boolean v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v3, :cond_80c

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 1109
    :cond_80c
    monitor-exit p0
    :try_end_80d
    .catchall {:try_start_7fd .. :try_end_80d} :catchall_80e

    .line 1110
    throw v2

    .line 1109
    :catchall_80e
    move-exception v0

    move-object v2, v0

    :try_start_810
    monitor-exit p0
    :try_end_811
    .catchall {:try_start_810 .. :try_end_811} :catchall_80e

    throw v2

    .line 1112
    .end local v4    # "bytesToRead":J
    .end local v21    # "totallen":J
    .local v2, "bytesToRead":J
    .local v6, "totallen":J
    :cond_812
    :goto_812
    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bDeprecated:Z

    if-nez v4, :cond_83f

    .line 1113
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const/4 v5, 0x0

    # setter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$2002(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Z)Z

    .line 1114
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v4, :cond_83f

    .line 1115
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    monitor-enter v4

    .line 1117
    :try_start_829
    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->locker:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_830
    .catchall {:try_start_829 .. :try_end_830} :catchall_831

    goto :goto_832

    .line 1119
    :catchall_831
    move-exception v0

    :goto_832
    nop

    .line 1120
    :try_start_833
    monitor-exit v4
    :try_end_834
    .catchall {:try_start_833 .. :try_end_834} :catchall_83b

    .line 1121
    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const/4 v5, 0x1

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->createTwoChunkInTwoChunk(Z)V
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$2100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Z)V

    goto :goto_83f

    .line 1120
    :catchall_83b
    move-exception v0

    move-object v5, v0

    :try_start_83d
    monitor-exit v4
    :try_end_83e
    .catchall {:try_start_83d .. :try_end_83e} :catchall_83b

    throw v5

    .line 1125
    :cond_83f
    :goto_83f
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_879

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource check: thread checking: stop SecondChunkThread_depth"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I
    invoke-static {v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", finish to download with socket "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 1126
    :cond_879
    return-void
.end method

.method public blacklist setInput(Ljava/io/InputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;

    .line 812
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    .line 813
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    # getter for: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new input stream in sec chunk setinput input = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->input:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 814
    :cond_22
    return-void
.end method

.method public blacklist startTryBoth(I)V
    .registers 5
    .param p1, "preferSock"    # I

    .line 807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->bTryBoth:Z

    .line 808
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sec start try both, prefer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 809
    :cond_1d
    return-void
.end method

.method public blacklist switchSocket(I)V
    .registers 5
    .param p1, "sid"    # I

    .line 801
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->this$0:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requested to switch socket id from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V

    .line 802
    :cond_24
    iget v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->sockID:I

    if-eq p1, v0, :cond_2a

    .line 803
    iput p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchToSocketID:I

    .line 804
    :cond_2a
    return-void
.end method
