.class public final Lcom/android/okhttp/internal/http/MultiSocketInputStream;
.super Lcom/android/okhttp/internal/http/AbstractHttpInputStream;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;,
        Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;,
        Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;,
        Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;,
        Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    }
.end annotation


# static fields
.field private static final blacklist BLOCKED:B = -0x1t

.field protected static blacklist BUF_Read_Speed:D = 0.0

.field protected static blacklist B_Ratio_BUF_LTE:D = 0.0

.field private static final blacklist CAL_REAL_TIME_SPEED:Z = true

.field private static final blacklist CLEARED:B = 0x4t

.field protected static final blacklist DETAIL_LOG:Z = false

.field private static final blacklist ENABLE_EXTREME_CONDITION_THREAD:Z = true

.field private static final blacklist ENABLE_TWO_CHUNK_AFTER_SLOW:Z = true

.field private static final blacklist EXIT_CANCEL:I = 0x1

.field private static final blacklist EXIT_CONNECTION_FAIL:I = 0x3

.field private static final blacklist EXIT_NOTSUPPORT:I = 0x2

.field private static final blacklist EXIT_SUCCEED:I = 0x0

.field protected static blacklist EXPECTSIZE:I = 0x0

.field private static final blacklist FULLREAD:B = 0x3t

.field protected static blacklist HANDOVER_TIME_RATIO:I = 0x0

.field protected static final blacklist HANDOVER_WAIT_INTERVAL:I = 0x1f4

.field private static final blacklist IDLE_THREAD_WAIT_INTERVAL:I = 0x3e8

.field protected static blacklist INIT_BUFFERLEN:I = 0x0

.field private static final blacklist LOADBALANCE:Z = true

.field private static final blacklist MAXBLOCK:I = 0x6

.field protected static final blacklist MAXTIMEFORSPEED:J = 0x1eL

.field protected static blacklist MAX_BUFFERLEN:I = 0x0

.field private static final blacklist MAX_DATA_BUFFER_REST_SIZE:J = 0x10000000L

.field private static final blacklist MAX_DATA_BUFFER_SIZE:J = 0x7fffffffffffffffL

.field private static final blacklist MAX_DATA_BUFFER_SIZE_MEMORY:J = 0x2000000L

.field protected static blacklist MAX_EXCEPTION_COUNT:I = 0x0

.field private static final blacklist MAX_MULTISOCK_THREAD_NUM:I = 0x4

.field protected static final blacklist MINSIZEFORSPEED:I

.field protected static final blacklist MINTIMEFORSPEED:J = 0x5L

.field protected static blacklist MIN_BYTES_TO_CALC_INIT_SPEED:I = 0x0

.field private static final blacklist MIN_DATA_FOR_HANDOVER_EXTREME:J = 0x400000L

.field protected static blacklist MIN_DIFF_TIME_FOR_HANDOVER:I = 0x0

.field protected static blacklist MIN_MILS_TO_CALC_SPEED:I = 0x0

.field private static blacklist MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I = 0x0

.field private static blacklist MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I = 0x0

.field private static final blacklist MIN_SIZE_FOR_MULTISOCKET:I = 0x200000

.field private static final blacklist MIN_SIZE_FOR_MULTISOCKET_CON:I = 0x500000

.field private static final blacklist MIN_TIME_TO_SUBMIT:J = 0x7d0L

.field private static final blacklist NOT_READ:B = 0x0t

.field private static final blacklist OCCUPIED:B = 0x1t

.field private static final blacklist OFFSET_TIME_TO_CHECK_STOP_SLOW:I = 0xbb8

.field private static final blacklist READING:B = 0x2t

.field private static final blacklist RR_FAILED:I = 0x1

.field private static final blacklist RR_NOT_INITIALED:I = 0x0

.field private static final blacklist RR_STOPPED:I = -0x1

.field private static final blacklist RR_SUCCESS1:I = 0x3

.field private static final blacklist RR_SUCCESS2:I = 0x4

.field private static final blacklist SAVE_BUF_TO_FILE:Z = true

.field private static final blacklist SB_EXIT_SPRATIO_LTE:I = -0x2

.field private static final blacklist SB_EXIT_SPRATIO_WIFI:I = -0x1

.field private static final blacklist SB_SHOWABNORMAL_LTE:I = -0x4

.field private static final blacklist SB_SHOWABNORMAL_STARTREADBUFFER:I = -0x5

.field private static final blacklist SB_SHOWABNORMAL_WIFI:I = -0x3

.field private static final blacklist SLOW_SOCKET_START:J = 0x7d0L

.field protected static blacklist SPEED_RATIO_FOR_EXTREME_HO:I = 0x0

.field protected static blacklist SPEED_RATIO_MAKE_STOPPED:I = 0x0

.field private static final blacklist STOP_SEC_INF_WHILE_SLOW:Z = true

.field private static final blacklist THRESHOLD_OF_SLOW_TH:I = 0x28f5

.field protected static final blacklist WAIT_FOR_FIRST_RANGEREQUEST:I = 0x1388

.field protected static final blacklist WAIT_FOR_FORCE_HANDOVER:I = 0x3e8

.field protected static blacklist WAIT_FOR_INTERFACE_TIME_OUT:I = 0x0

.field protected static final blacklist WAIT_FOR_RANGEREQUEST_TIME_OUT:I = 0x3e8

.field protected static blacklist WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I = 0x0

.field private static blacklist WIFI2SESSION:Z = false

.field private static blacklist bConsiderWiFiOnly:Z = false

.field private static blacklist bPropInitiated:Z = false

.field private static final blacklist iContinueFullMaxBlock:I = 0x2

.field private static blacklist iCurrentMultiSocketNum:I = 0x0

.field protected static final blacklist sBufFileName_pre:Ljava/lang/String; = ".sbBuf_"

.field protected static final blacklist sBufFilePath_pre:Ljava/lang/String; = "/data/data/sbcache"

.field private static blacklist threadID:I


# instance fields
.field private blacklist BlockSize:J

.field private final blacklist MAX_JUMP_STEP:I

.field protected final blacklist MIN_BYTES_TO_CALC_SPEED:I

.field private final blacklist MIN_TIME_TO_CHECK_STOP_SLOW:I

.field private final blacklist MIN_TIME_TO_CHECK_STOP_SLOW_FOR_LOW_TH:I

.field private blacklist SEND_NO_TRAFFIC_WARN:Z

.field private blacklist TESTSPEEDRATIO:I

.field private blacklist TEST_GET_TRAFFIC:Z

.field private blacklist bAppIsReadingNow:Z

.field protected blacklist bAppReading:Z

.field private blacklist bAppStartRead:Z

.field protected blacklist bConClose:Z

.field protected blacklist bDoNotUseMultiSockSinceWiFiOnly:Z

.field private blacklist bExtremThreadExisted:Z

.field private blacklist bExtremThreadStarted:Z

.field protected blacklist bFinished:Z

.field private blacklist bHasIOException:Z

.field protected final blacklist bISHTTPS:Z

.field private blacklist bMultiSocketStarted:Z

.field private blacklist bRRSuccessInMainSocket:I

.field private blacklist bRangeRequestSuccess:I

.field private blacklist bReadFromBuffer:Z

.field private blacklist bSBUsed:Z

.field private blacklist bSourceBufferCleared:Z

.field private blacklist bStartReadBufferSBStopSent:Z

.field private blacklist bStopSecDecisionMade:Z

.field private blacklist bWaitPrinted:Z

.field private blacklist blockStatus:[B

.field private blacklist bufReadSpeed:J

.field private blacklist bufSource:Lcom/android/okhttp/okio/BufferedSource;

.field private blacklist bytesForMultiSocket:J

.field private blacklist bytesRemaining:J

.field private blacklist childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

.field private blacklist connection:Lcom/android/okhttp/internal/io/RealConnection;

.field protected blacklist connectionTime:[J

.field private blacklist cr:Ljava/net/CacheRequest;

.field protected blacklist disconnCount:[I

.field private blacklist failReasonInExtreme:I

.field private blacklist finishedThreadNum:I

.field private final blacklist iMaxBlockNumber:I

.field private blacklist inBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist lockAppReading:Ljava/lang/Object;

.field private blacklist logger:Lcom/android/okhttp/internal/http/MultiratLog;

.field private blacklist mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

.field protected final blacklist mCacheType:I

.field private blacklist mDataDownloaded:[J

.field protected blacklist mDiff_Http_File_Pos:J

.field protected blacklist mDownloadedFile:Ljava/io/File;

.field protected blacklist mDownloadedFileName:Ljava/lang/String;

.field private blacklist mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

.field private blacklist mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

.field private blacklist mFasterInterface:I

.field private final blacklist mFullConSize:J

.field private final blacklist mHeader:Lcom/android/okhttp/Headers;

.field protected blacklist mInitPosition:J

.field private blacklist mLastReadTime:J

.field private blacklist mMainSocketAfterHandover:I

.field private blacklist mMainSocketConnectTime:J

.field private blacklist mMainSocketInterfaceID:I

.field private blacklist mMainThreadID:J

.field private blacklist mOffset:J

.field protected final blacklist mOriMainSocketID:I

.field private final blacklist mOriOffset:J

.field protected blacklist mOriginalRequestHeader:Lcom/android/okhttp/Request;

.field private blacklist mOtherSocketConnectTime:J

.field protected blacklist mRAdownloadedFile:Ljava/io/RandomAccessFile;

.field private blacklist mSecChunkEnd:J

.field private blacklist mSecChunkStart:J

.field private blacklist mSpeedForEachInterface:[J

.field private blacklist mSpeedRatio:D

.field private blacklist mStartDataOffsetForSpeedCalc:[J

.field private blacklist mStartReadTime:[J

.field private blacklist mStartTimeOffsetForSpeedCalc:[J

.field private blacklist mTimeForDownload:[J

.field private blacklist mainInput:Ljava/io/InputStream;

.field protected blacklist parentDir:Ljava/io/File;

.field private blacklist readBlockNumber:Ljava/lang/Integer;

.field private blacklist requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

.field private blacklist restBlockSize:J

.field private blacklist restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

.field public blacklist sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

.field private blacklist sbUsedLocker:Ljava/lang/Object;

.field private final blacklist socketNumber:I

.field protected blacklist tmpFileLocker:Ljava/lang/Object;

.field private final blacklist totalLengthToBeRead:J

.field private final blacklist uri:Ljava/net/URI;

.field private blacklist waitTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 266
    const/high16 v0, 0x80000

    sput v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->EXPECTSIZE:I

    .line 297
    const v0, 0x8000

    sput v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->INIT_BUFFERLEN:I

    .line 302
    const/high16 v1, 0x100000

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_BUFFERLEN:I

    .line 306
    const/high16 v1, 0x40000

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_BYTES_TO_CALC_INIT_SPEED:I

    .line 314
    const/16 v1, 0x7d0

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_MILS_TO_CALC_SPEED:I

    .line 318
    sput v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MINSIZEFORSPEED:I

    .line 337
    const/16 v0, 0x7530

    sput v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    .line 397
    const/4 v0, 0x0

    sput v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I

    .line 417
    sput v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I

    .line 425
    const/16 v1, 0x3e8

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_TIME_TILL_READ_FROM_COMMON_BUFFER:I

    .line 429
    const/4 v2, 0x5

    sput v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SPEED_RATIO_MAKE_STOPPED:I

    .line 433
    const/4 v3, 0x2

    sput v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SPEED_RATIO_FOR_EXTREME_HO:I

    .line 437
    const/4 v3, 0x1

    sput v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_EXCEPTION_COUNT:I

    .line 450
    sput v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->HANDOVER_TIME_RATIO:I

    .line 454
    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_DIFF_TIME_FOR_HANDOVER:I

    .line 578
    sput v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    .line 579
    sput v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    .line 581
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WIFI2SESSION:Z

    .line 597
    sput-boolean v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConsiderWiFiOnly:Z

    .line 598
    sput-boolean v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bPropInitiated:Z

    .line 614
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    sput-wide v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    .line 615
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    sput-wide v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BUF_Read_Speed:D

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/BufferedSource;Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;JJLcom/android/okhttp/Request;JZJJLjava/net/Socket;Lcom/android/okhttp/Request;ILcom/android/okhttp/internal/http/MultiratLog;)V
    .registers 42
    .param p1, "source"    # Lcom/android/okhttp/okio/BufferedSource;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p4, "length"    # J
    .param p6, "blockSize"    # J
    .param p8, "reqHeader"    # Lcom/android/okhttp/Request;
    .param p9, "offset"    # J
    .param p11, "conClose"    # Z
    .param p12, "fullS"    # J
    .param p14, "mainResponseTime"    # J
    .param p16, "mainSocket"    # Ljava/net/Socket;
    .param p17, "originalRequestHeader"    # Lcom/android/okhttp/Request;
    .param p18, "cacheType"    # I
    .param p19, "log"    # Lcom/android/okhttp/internal/http/MultiratLog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p9

    move-object/from16 v8, p3

    invoke-direct {v0, v1, v8}, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 95
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    .line 219
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    .line 223
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    .line 228
    iput v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRRSuccessInMainSocket:I

    .line 233
    iput v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    .line 262
    const-wide/16 v11, 0x0

    iput-wide v11, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    .line 472
    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 476
    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    .line 494
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D

    .line 502
    const/4 v13, -0x1

    iput v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I

    .line 537
    const/4 v14, 0x2

    new-array v15, v14, [Lcom/android/okhttp/Request;

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    .line 548
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    .line 549
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    .line 551
    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 552
    iput-wide v11, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 567
    const/4 v15, 0x3

    iput v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I

    .line 568
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    .line 569
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bHasIOException:Z

    .line 586
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z

    .line 588
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    .line 592
    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    .line 593
    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    .line 594
    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 599
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bDoNotUseMultiSockSinceWiFiOnly:Z

    .line 600
    const-wide/16 v11, -0x1

    iput-wide v11, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J

    .line 601
    iput-wide v11, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J

    .line 602
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    .line 603
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    .line 605
    new-array v15, v14, [I

    fill-array-data v15, :array_3e4

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    .line 606
    iput v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I

    .line 607
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 608
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z

    .line 609
    new-instance v15, Ljava/lang/Object;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    .line 611
    new-array v15, v14, [J

    fill-array-data v15, :array_3ec

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    .line 613
    const-wide/16 v11, 0x0

    iput-wide v11, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J

    .line 655
    move-object/from16 v11, p19

    iput-object v11, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    .line 656
    move-object/from16 v12, p1

    iput-object v12, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufSource:Lcom/android/okhttp/okio/BufferedSource;

    .line 657
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSourceBufferCleared:Z

    .line 658
    invoke-virtual/range {p3 .. p3}, Lcom/android/okhttp/internal/http/HttpEngine;->getConnection()Lcom/android/okhttp/Connection;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lcom/android/okhttp/internal/io/RealConnection;

    iput-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 659
    iput-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    .line 660
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v15, :cond_b0

    iget-object v15, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new input stream mainInput = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 662
    :cond_b0
    iput-wide v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    .line 663
    const-wide/16 v14, 0x0

    cmp-long v9, v2, v14

    if-nez v9, :cond_bb

    .line 664
    invoke-virtual {v0, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->endOfInput(Z)V

    .line 666
    :cond_bb
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    .line 667
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 668
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    .line 669
    iput-wide v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    .line 670
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->waitTime:J

    .line 671
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bWaitPrinted:Z

    .line 672
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 673
    iput-wide v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J

    .line 674
    iput-wide v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBlockSize:J

    .line 675
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    .line 676
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    .line 677
    iput-wide v6, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J

    .line 678
    iput-wide v6, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    .line 679
    invoke-virtual/range {p8 .. p8}, Lcom/android/okhttp/Request;->uri()Ljava/net/URI;

    move-result-object v9

    iput-object v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->uri:Ljava/net/URI;

    .line 680
    move/from16 v9, p11

    iput-boolean v9, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConClose:Z

    .line 681
    iget v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    new-array v14, v14, [Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    iput-object v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    .line 682
    iput-boolean v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppStartRead:Z

    .line 683
    invoke-virtual/range {p8 .. p8}, Lcom/android/okhttp/Request;->headers()Lcom/android/okhttp/Headers;

    move-result-object v14

    iput-object v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mHeader:Lcom/android/okhttp/Headers;

    .line 684
    move-wide/from16 v10, p12

    iput-wide v10, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J

    .line 686
    const-wide/16 v14, -0x1

    iput-wide v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    .line 687
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v14

    .line 688
    .local v14, "maxMem":J
    const-wide/16 v18, 0x2

    div-long v18, v14, v18

    move-wide/from16 v20, v14

    .end local v14    # "maxMem":J
    .local v20, "maxMem":J
    iget-wide v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J

    div-long v13, v18, v13

    long-to-int v13, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I

    .line 689
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_14a

    iget-object v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "max memory size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v20

    .end local v20    # "maxMem":J
    .local v1, "maxMem":J
    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", maxBlockNumber: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_14c

    .end local v1    # "maxMem":J
    .restart local v20    # "maxMem":J
    :cond_14a
    move-wide/from16 v1, v20

    .line 690
    .end local v20    # "maxMem":J
    .restart local v1    # "maxMem":J
    :goto_14c
    new-instance v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    invoke-direct {v3, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V

    iput-object v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    .line 691
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    .line 692
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    .line 693
    iput-boolean v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    .line 694
    iget-wide v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J

    const-wide/16 v18, 0x4

    div-long v14, v14, v18

    long-to-int v13, v14

    const/high16 v14, 0x300000

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_BYTES_TO_CALC_SPEED:I

    .line 695
    iget v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I

    const/4 v14, 0x2

    div-int/2addr v13, v14

    const/4 v15, 0x1

    add-int/2addr v13, v15

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_JUMP_STEP:I

    .line 696
    move-wide/from16 v13, p14

    iput-wide v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J

    .line 699
    invoke-virtual/range {p16 .. p16}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v15

    iget-object v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual/range {p16 .. p16}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v18

    move-wide/from16 v20, v1

    .end local v1    # "maxMem":J
    .restart local v20    # "maxMem":J
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 700
    iput v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    goto :goto_19c

    .line 702
    :cond_199
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    .line 704
    :goto_19c
    iget v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriMainSocketID:I

    .line 705
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/io/RealConnection;->setMainSocketDestIP(I)V

    .line 707
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_1c1

    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main Socket Interface ID is (0-WIFI, 1-MOBILE) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriMainSocketID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 709
    :cond_1c1
    const/4 v1, 0x2

    new-array v2, v1, [J

    iput-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    .line 710
    new-array v2, v1, [J

    iput-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J

    .line 711
    new-array v2, v1, [J

    iput-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    .line 712
    new-array v2, v1, [J

    iput-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J

    .line 713
    new-array v2, v1, [J

    iput-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    .line 714
    new-array v2, v1, [J

    iput-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J

    .line 716
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1db
    if-ge v2, v1, :cond_1fb

    .line 717
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    const-wide/16 v15, 0x0

    aput-wide v15, v1, v2

    .line 718
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J

    aput-wide v15, v1, v2

    .line 719
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aput-wide v15, v1, v2

    .line 720
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J

    aput-wide v15, v1, v2

    .line 721
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J

    aput-wide v15, v1, v2

    .line 722
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    aput-wide v15, v1, v2

    .line 716
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x2

    goto :goto_1db

    .line 724
    .end local v2    # "i":I
    :cond_1fb
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    .line 725
    iput-boolean v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    .line 726
    invoke-virtual/range {p17 .. p17}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriginalRequestHeader:Lcom/android/okhttp/Request;

    .line 727
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    iget v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    invoke-virtual/range {p8 .. p8}, Lcom/android/okhttp/Request;->newBuilder()Lcom/android/okhttp/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/okhttp/Request$Builder;->build()Lcom/android/okhttp/Request;

    move-result-object v3

    aput-object v3, v1, v2

    .line 728
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sRedirectedRequestHeaders:[Lcom/android/okhttp/Request;

    iget v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 730
    iget-object v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/io/RealConnection;->isSSLSocket()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bISHTTPS:Z

    .line 731
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    iget v3, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    iget-wide v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J

    aput-wide v13, v2, v3

    .line 733
    if-eqz v1, :cond_23e

    .line 734
    const/16 v1, 0x4650

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I

    .line 735
    const/16 v1, 0x5208

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW_FOR_LOW_TH:I

    goto :goto_246

    .line 738
    :cond_23e
    const/16 v1, 0x1770

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I

    .line 739
    const/16 v1, 0x1b58

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW_FOR_LOW_TH:I

    .line 742
    :goto_246
    move/from16 v1, p18

    iput v1, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    .line 745
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mHeader:Lcom/android/okhttp/Headers;

    invoke-direct {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->checkLocalFile(Lcom/android/okhttp/Headers;)V

    .line 746
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_275

    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "write to local file + "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " from start pos "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 747
    :cond_275
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_3c0

    .line 748
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bPropInitiated:Z

    if-nez v2, :cond_2b4

    .line 750
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "Start to init prop"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 752
    const-string v2, "0v1"

    invoke-direct {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getRatioThreshold(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    .line 753
    const-string v2, "1v0"

    invoke-direct {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getRatioThreshold(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    .line 754
    iget-boolean v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    const-string v3, "persist.sys.sb.gettraffic"

    invoke-direct {v0, v3, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    .line 755
    if-eqz v2, :cond_2aa

    .line 756
    iget-boolean v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    const-string v3, "persist.sys.sb.warning.show"

    invoke-direct {v0, v3, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getBooleanProp(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    .line 758
    :cond_2aa
    iget v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I

    const-string v3, "persist.sys.sb.testinitratio"

    invoke-direct {v0, v3, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getIntProp(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I

    .line 763
    :cond_2b4
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CacheType is (0-File, 1-RAM, 2-None) :  "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 764
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MIN_RATIO_FOR_ONLY_ONE_INF_0V1 is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 765
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MIN_RATIO_FOR_ONLY_ONE_INF_1V0 is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 766
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WIFI2SESSION is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WIFI2SESSION:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 767
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bConsiderWiFiOnly is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConsiderWiFiOnly:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 768
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MAX_BUFFERLEN is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_BUFFERLEN:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 769
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TEST_GET_TRAFFIC is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 770
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SEND_NO_TRAFFIC_WARN is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 771
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TESTSPEEDRATIO is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 772
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bISHTTPS is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bISHTTPS:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 773
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Main Socket connection time is "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    iget v14, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    aget-wide v13, v13, v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 775
    :cond_3c0
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mHeader:Lcom/android/okhttp/Headers;

    invoke-direct {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->checkWiFiOnly(Lcom/android/okhttp/Headers;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bDoNotUseMultiSockSinceWiFiOnly:Z

    .line 776
    if-eqz v2, :cond_3e2

    .line 777
    iget-object v2, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bDoNotUseMultiSockSinceWiFiOnly is : "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bDoNotUseMultiSockSinceWiFiOnly:Z

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 778
    :cond_3e2
    return-void

    nop

    :array_3e4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3ec
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    return-wide v0
.end method

.method static synthetic blacklist access$1000()I
    .registers 1

    .line 77
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I

    return v0
.end method

.method static synthetic blacklist access$1008()I
    .registers 2

    .line 77
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I

    return v0
.end method

.method static synthetic blacklist access$1010()I
    .registers 2

    .line 77
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iCurrentMultiSocketNum:I

    return v0
.end method

.method static synthetic blacklist access$102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    return-wide p1
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TESTSPEEDRATIO:I

    return v0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D

    return-wide v0
.end method

.method static synthetic blacklist access$1202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;D)D
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # D

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedRatio:D

    return-wide p1
.end method

.method static synthetic blacklist access$1300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    return v0
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J

    return-wide v0
.end method

.method static synthetic blacklist access$1402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J

    return-wide p1
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    return-wide v0
.end method

.method static synthetic blacklist access$1502(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    return-wide p1
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getOtherSocketID(I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    return-object v0
.end method

.method static synthetic blacklist access$1702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 77
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtDBuf:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    return-object p1
.end method

.method static synthetic blacklist access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    return-object v0
.end method

.method static synthetic blacklist access$1902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;[B)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # [B

    .line 77
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    return-object p1
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/net/URI;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->uri:Ljava/net/URI;

    return-object v0
.end method

.method static synthetic blacklist access$2000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    return-object v0
.end method

.method static synthetic blacklist access$2002(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    .line 77
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    return-object p1
.end method

.method static synthetic blacklist access$2108()I
    .registers 2

    .line 77
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I

    return v0
.end method

.method static synthetic blacklist access$2200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    return v0
.end method

.method static synthetic blacklist access$2202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    return p1
.end method

.method static synthetic blacklist access$2300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    return v0
.end method

.method static synthetic blacklist access$2302(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    return p1
.end method

.method static synthetic blacklist access$2400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    return v0
.end method

.method static synthetic blacklist access$2402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    return p1
.end method

.method static synthetic blacklist access$2500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J

    return-wide v0
.end method

.method static synthetic blacklist access$2600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J

    return-wide v0
.end method

.method static synthetic blacklist access$2602(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOtherSocketConnectTime:J

    return-wide p1
.end method

.method static synthetic blacklist access$2700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketConnectTime:J

    return-wide v0
.end method

.method static synthetic blacklist access$2802(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I

    return p1
.end method

.method static synthetic blacklist access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J

    return-wide v0
.end method

.method static synthetic blacklist access$2902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J

    return-wide p1
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    return-object v0
.end method

.method static synthetic blacklist access$3000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFasterInterface:I

    return v0
.end method

.method static synthetic blacklist access$3002(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFasterInterface:I

    return p1
.end method

.method static synthetic blacklist access$3100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    return v0
.end method

.method static synthetic blacklist access$3102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    return p1
.end method

.method static synthetic blacklist access$3200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I

    return v0
.end method

.method static synthetic blacklist access$3202(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I

    return p1
.end method

.method static synthetic blacklist access$3208(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->finishedThreadNum:I

    return v0
.end method

.method static synthetic blacklist access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    return v0
.end method

.method static synthetic blacklist access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    return-object v0
.end method

.method static synthetic blacklist access$3500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->TEST_GET_TRAFFIC:Z

    return v0
.end method

.method static synthetic blacklist access$3600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW:I

    return v0
.end method

.method static synthetic blacklist access$3700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I

    return v0
.end method

.method static synthetic blacklist access$3702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I

    return p1
.end method

.method static synthetic blacklist access$3800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    return-object v0
.end method

.method static synthetic blacklist access$3900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    return-object v0
.end method

.method static synthetic blacklist access$3902(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 77
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    return-object p1
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    return-wide v0
.end method

.method static synthetic blacklist access$4000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    return-object v0
.end method

.method static synthetic blacklist access$4100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->SEND_NO_TRAFFIC_WARN:Z

    return v0
.end method

.method static synthetic blacklist access$4200(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bTwoInfDownloading()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$4300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z

    return v0
.end method

.method static synthetic blacklist access$4302(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z

    return p1
.end method

.method static synthetic blacklist access$4400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    return v0
.end method

.method static synthetic blacklist access$4402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    return p1
.end method

.method static synthetic blacklist access$4500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    return-object v0
.end method

.method static synthetic blacklist access$4600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J

    return-object v0
.end method

.method static synthetic blacklist access$4700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J

    return-object v0
.end method

.method static synthetic blacklist access$4800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_TIME_TO_CHECK_STOP_SLOW_FOR_LOW_TH:I

    return v0
.end method

.method static synthetic blacklist access$4900()I
    .registers 1

    .line 77
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I

    return v0
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    return-wide v0
.end method

.method static synthetic blacklist access$5000()I
    .registers 1

    .line 77
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_1V0:I

    return v0
.end method

.method static synthetic blacklist access$5100()Z
    .registers 1

    .line 77
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WIFI2SESSION:Z

    return v0
.end method

.method static synthetic blacklist access$5400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closeMainSocket()V

    return-void
.end method

.method static synthetic blacklist access$5500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    return-wide v0
.end method

.method static synthetic blacklist access$5600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    return v0
.end method

.method static synthetic blacklist access$5700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bHasIOException:Z

    return v0
.end method

.method static synthetic blacklist access$5800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I

    return v0
.end method

.method static synthetic blacklist access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic blacklist access$6100(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J

    return-wide v0
.end method

.method static synthetic blacklist access$6102(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J

    return-wide p1
.end method

.method static synthetic blacklist access$6300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_JUMP_STEP:I

    return v0
.end method

.method static synthetic blacklist access$6400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J

    return-wide v0
.end method

.method static synthetic blacklist access$6402(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J

    return-wide p1
.end method

.method static synthetic blacklist access$6502(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J

    return-wide p1
.end method

.method static synthetic blacklist access$6514(Lcom/android/okhttp/internal/http/MultiSocketInputStream;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # J

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J

    return-wide v0
.end method

.method static synthetic blacklist access$6600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSpeedForEachInterface:[J

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    return v0
.end method

.method static synthetic blacklist access$702(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    return p1
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    return-wide v0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 77
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    return-object v0
.end method

.method private blacklist bTwoInfDownloading()Z
    .registers 2

    .line 2081
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2082
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    return v0

    .line 2083
    :cond_f
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bTwoInfDownloading()Z

    move-result v0

    return v0
.end method

.method private blacklist checkLocalFile(Lcom/android/okhttp/Headers;)V
    .registers 11
    .param p1, "header"    # Lcom/android/okhttp/Headers;

    .line 791
    :try_start_0
    const-string v0, "NETWORKBOOSTER_LOCAL_FILE_NAME"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    .line 793
    if-eqz v0, :cond_12f

    .line 794
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    .line 796
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownloadedFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 798
    :cond_2f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 799
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 800
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fileIO][create] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 801
    :cond_66
    const-wide/16 v0, -0x1

    .line 802
    .local v0, "fileLen":J
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    .line 803
    const-string v4, "NETWORKBOOSTER_LOCAL_FILE_RANGE"

    invoke-virtual {p1, v4}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "cr":Ljava/lang/String;
    if-eqz v4, :cond_e5

    .line 805
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 806
    .local v5, "index":I
    if-lez v5, :cond_b0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_b0

    .line 807
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 808
    .local v6, "subS":Ljava/lang/String;
    if-eqz v6, :cond_b0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_94
    .catchall {:try_start_0 .. :try_end_94} :catchall_130

    if-lez v7, :cond_b0

    .line 810
    :try_start_96
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_a2
    .catchall {:try_start_96 .. :try_end_a2} :catchall_a4

    move-wide v0, v7

    .line 815
    goto :goto_b0

    .line 812
    :catchall_a4
    move-exception v7

    .line 813
    .local v7, "ex":Ljava/lang/Throwable;
    :try_start_a5
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_ae

    iget-object v8, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v8, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 814
    :cond_ae
    const-wide/16 v0, -0x1

    .line 818
    .end local v6    # "subS":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_b0
    :goto_b0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 819
    if-lez v5, :cond_e5

    .line 820
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 821
    .restart local v6    # "subS":Ljava/lang/String;
    if-eqz v6, :cond_e5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_c8
    .catchall {:try_start_a5 .. :try_end_c8} :catchall_130

    if-lez v7, :cond_e5

    .line 823
    :try_start_ca
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J
    :try_end_d8
    .catchall {:try_start_ca .. :try_end_d8} :catchall_d9

    .line 828
    goto :goto_e5

    .line 825
    :catchall_d9
    move-exception v7

    .line 826
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :try_start_da
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_e3

    iget-object v8, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v8, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 827
    :cond_e3
    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    .line 833
    .end local v5    # "index":I
    .end local v6    # "subS":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_e5
    :goto_e5
    cmp-long v5, v0, v2

    if-nez v5, :cond_ec

    iget-wide v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    move-wide v0, v5

    .line 834
    :cond_ec
    iget-wide v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_f6

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    .line 835
    :cond_f6
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 836
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDiff_Http_File_Pos:J

    .line 837
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_12a

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[fileIO][setlen] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", current file position "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 838
    :cond_12a
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12f
    .catchall {:try_start_da .. :try_end_12f} :catchall_130

    .line 848
    .end local v0    # "fileLen":J
    .end local v4    # "cr":Ljava/lang/String;
    :cond_12f
    goto :goto_149

    .line 842
    :catchall_130
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_13a

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 844
    :cond_13a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    .line 846
    :try_start_13d
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_148

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_146} :catch_147

    goto :goto_148

    .line 847
    :catch_147
    move-exception v1

    :cond_148
    :goto_148
    nop

    .line 849
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_149
    return-void
.end method

.method private blacklist checkLocalFileFromFirstRead([B)V
    .registers 8
    .param p1, "bFileName"    # [B

    .line 853
    if-eqz p1, :cond_ec

    :try_start_2
    array-length v0, p1

    if-nez v0, :cond_7

    goto/16 :goto_ec

    .line 854
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    .line 855
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fileIO][create-fname] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 856
    :cond_2a
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 858
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 859
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fileIO][create] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 860
    :cond_68
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J

    .line 861
    .local v0, "fileLen":J
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    .line 862
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 863
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDiff_Http_File_Pos:J

    .line 864
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fileIO][setlen] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", current file position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", init position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mInitPosition:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 865
    :cond_ac
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_cc

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[fileIO][create] created file FD is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 866
    :cond_cc
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d1
    .catchall {:try_start_2 .. :try_end_d1} :catchall_d2

    .line 875
    .end local v0    # "fileLen":J
    :cond_d1
    goto :goto_eb

    .line 869
    :catchall_d2
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 871
    :cond_dc
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFile:Ljava/io/File;

    .line 873
    :try_start_df
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e8} :catch_e9

    goto :goto_ea

    .line 874
    :catch_e9
    move-exception v1

    :cond_ea
    :goto_ea
    nop

    .line 876
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_eb
    return-void

    .line 853
    :cond_ec
    :goto_ec
    return-void
.end method

.method private blacklist checkWiFiOnly(Lcom/android/okhttp/Headers;)Z
    .registers 7
    .param p1, "header"    # Lcom/android/okhttp/Headers;

    .line 781
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bConsiderWiFiOnly:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 782
    :cond_6
    const-string v0, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE"

    invoke-virtual {p1, v0}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "cr":Ljava/lang/String;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NETWORKBOOSTER_CANNOT_USE_WIFIORMOBILE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 784
    :cond_26
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_3a

    .line 785
    :cond_2f
    const-string v2, "TRUE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_39

    const/4 v1, 0x1

    return v1

    .line 786
    :cond_39
    return v1

    .line 784
    :cond_3a
    :goto_3a
    return v1
.end method

.method private blacklist closeMainSocket()V
    .registers 4

    .line 2075
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close maininput and socket, input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", socket is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2076
    :cond_2a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 2077
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 2078
    return-void
.end method

.method private blacklist getBooleanProp(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 927
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_18

    if-nez p2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    if-nez v1, :cond_18

    .line 929
    xor-int/lit8 v1, p2, 0x1

    return v1

    .line 932
    :cond_18
    return p2

    .line 935
    .end local v0    # "value":Ljava/lang/String;
    :catchall_19
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Throwable;
    return p2
.end method

.method private blacklist getBufferSize()I
    .registers 6

    .line 880
    const/high16 v0, 0x100000

    :try_start_2
    const-string v1, "com.samsung.DB.bufsize"

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_25

    .line 882
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 883
    .local v2, "size":I
    const/high16 v3, 0xa00000

    const/16 v4, 0x4000

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    .line 884
    .end local v2    # "size":I
    .local v0, "size":I
    return v0

    .line 887
    .end local v0    # "size":I
    :cond_25
    return v0

    .line 890
    .end local v1    # "value":Ljava/lang/String;
    :catchall_26
    move-exception v1

    .line 891
    .local v1, "e":Ljava/lang/Throwable;
    return v0
.end method

.method private blacklist getCacheType()I
    .registers 4

    .line 974
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.samsung.DB.cachetype"

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_13

    const-string v2, "RAM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_13

    .line 976
    const/4 v0, 0x1

    return v0

    .line 978
    :cond_13
    if-eqz v1, :cond_1f

    const-string v2, "MAGIC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_20

    if-nez v2, :cond_1f

    .line 979
    const/4 v0, 0x2

    return v0

    .line 982
    :cond_1f
    return v0

    .line 985
    .end local v1    # "value":Ljava/lang/String;
    :catchall_20
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/Throwable;
    return v0
.end method

.method private blacklist getIntProp(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 942
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 944
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_10

    return v1

    .line 947
    :cond_f
    return p2

    .line 950
    .end local v0    # "value":Ljava/lang/String;
    :catchall_10
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Throwable;
    return p2
.end method

.method private blacklist getOtherSocketID(I)I
    .registers 4
    .param p1, "sockID"    # I

    .line 4636
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private blacklist getProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .line 991
    const/4 v0, 0x0

    .line 993
    .local v0, "value":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 994
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 995
    .local v2, "ir":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 996
    .local v3, "input":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 997
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    move-object v0, v4

    .line 1001
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "ir":Ljava/io/InputStreamReader;
    .end local v3    # "input":Ljava/io/BufferedReader;
    :cond_34
    goto :goto_3f

    .line 999
    :catchall_35
    move-exception v1

    .line 1000
    .local v1, "ex":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1002
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3f
    :goto_3f
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") from exec is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1003
    :cond_61
    return-object v0
.end method

.method private blacklist getRatioThreshold(Ljava/lang/String;)I
    .registers 7
    .param p1, "id"    # Ljava/lang/String;

    .line 957
    const/4 v0, 0x5

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persist.sys.sb.speedratio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_34

    .line 959
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 960
    .local v2, "ratio":I
    const v3, 0x186a0

    const/16 v4, -0x2710

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 961
    .end local v2    # "ratio":I
    .local v0, "ratio":I
    return v0

    .line 964
    .end local v0    # "ratio":I
    :cond_34
    return v0

    .line 967
    .end local v1    # "value":Ljava/lang/String;
    :catchall_35
    move-exception v1

    .line 968
    .local v1, "e":Ljava/lang/Throwable;
    return v0
.end method

.method private blacklist getWhetherUseTwoSession()Z
    .registers 4

    .line 912
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.samsung.NB.wifi2session"

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_13

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    if-nez v2, :cond_13

    .line 914
    const/4 v0, 0x1

    return v0

    .line 917
    :cond_13
    return v0

    .line 920
    .end local v1    # "value":Ljava/lang/String;
    :catchall_14
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/Throwable;
    return v0
.end method

.method private blacklist getWhetherUseWiFiOnly()Z
    .registers 4

    .line 897
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.samsung.NB.wifionly"

    invoke-direct {p0, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_13

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    if-nez v2, :cond_13

    .line 899
    const/4 v0, 0x0

    return v0

    .line 902
    :cond_13
    return v0

    .line 905
    .end local v1    # "value":Ljava/lang/String;
    :catchall_14
    move-exception v1

    .line 906
    .local v1, "e":Ljava/lang/Throwable;
    return v0
.end method

.method private blacklist readFromMainSocket([BII)I
    .registers 33
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    .line 2156
    const-wide/16 v16, 0x0

    const/4 v11, 0x0

    :try_start_b
    invoke-virtual {v13, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->createTwoChunkInputInMain(Z)V

    .line 2157
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    iget v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    aget-wide v0, v0, v1

    cmp-long v0, v0, v16

    if-nez v0, :cond_22

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    iget v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 2158
    :cond_22
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0, v14, v15, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2159
    .local v0, "read":I
    if-ltz v0, :cond_3a

    .line 2162
    iget-object v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v1, :cond_39

    .line 2163
    iget v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    int-to-long v2, v0

    invoke-virtual {v13, v1, v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->incByte(IJ)V

    .line 2164
    iget v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    invoke-virtual {v13, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->setTime(I)V

    .line 2166
    :cond_39
    return v0

    .line 2160
    :cond_3a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read return exception value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v1
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_51} :catch_51

    .line 2168
    .end local v0    # "read":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catch_51
    move-exception v0

    move-object v10, v0

    .line 2169
    .local v10, "e":Ljava/io/IOException;
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_83

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in reading while bytesRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " totallen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " start offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2170
    :cond_83
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_8c

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2171
    :cond_8c
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    iget v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    aget v2, v0, v1

    const/4 v8, 0x1

    add-int/2addr v2, v8

    aput v2, v0, v1

    .line 2172
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_c0

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SocketTimeoutException Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2173
    :cond_c0
    iget-boolean v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bDoNotUseMultiSockSinceWiFiOnly:Z

    if-eqz v0, :cond_d0

    .line 2174
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_cf

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "throw exception since bDoNotUseMultiSockSinceWiFiOnly is true"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2175
    :cond_cf
    throw v10

    .line 2177
    :cond_d0
    iget-boolean v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    if-nez v0, :cond_e0

    .line 2178
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_df

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "throw exception since bSBUsed is false"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2179
    :cond_df
    throw v10

    .line 2181
    :cond_e0
    iget-object v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 2182
    :try_start_e3
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_end_e5
    .catchall {:try_start_e3 .. :try_end_e5} :catchall_45d

    if-eqz v0, :cond_11b

    .line 2183
    :try_start_e7
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_f2

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "childIS is created"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2184
    :cond_f2
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0, v14, v15, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2185
    .restart local v0    # "read":I
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_112

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "childIS is created and read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2186
    :cond_112
    monitor-exit v1
    :try_end_113
    .catchall {:try_start_e7 .. :try_end_113} :catchall_114

    return v0

    .line 2188
    .end local v0    # "read":I
    :catchall_114
    move-exception v0

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    goto/16 :goto_462

    :cond_11b
    :try_start_11b
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_11b .. :try_end_11c} :catchall_45d

    .line 2189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 2191
    .local v18, "startWaitTime":J
    iget v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12a

    iget v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    add-int/2addr v0, v8

    rem-int/lit8 v0, v0, 0x2

    :cond_12a
    move v9, v0

    .line 2192
    .local v9, "otherInterfaceID":I
    iput v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketAfterHandover:I

    .line 2193
    const/4 v0, 0x0

    move v6, v0

    .line 2194
    .local v6, "triedNum":I
    :goto_12f
    iget-boolean v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v0, :cond_45a

    .line 2195
    const/16 v20, 0x0

    .line 2197
    .local v20, "bForceThrow":Z
    :try_start_135
    iget v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRRSuccessInMainSocket:I
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_137} :catch_3c6

    if-ne v0, v8, :cond_155

    .line 2198
    const/16 v20, 0x1

    .line 2199
    :try_start_13b
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_146

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "RR_FAILED in main, throw exception to app"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2200
    :cond_146
    nop

    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v18    # "startWaitTime":J
    .end local v20    # "bForceThrow":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v10

    .line 2275
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v18    # "startWaitTime":J
    .restart local v20    # "bForceThrow":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catch_148
    move-exception v0

    move/from16 v27, v6

    move v1, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    move v14, v11

    goto/16 :goto_3d1

    .line 2202
    :cond_155
    const/4 v0, 0x3

    if-le v6, v0, :cond_184

    .line 2203
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_163

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "tried twice, check NB status"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2204
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v0

    if-nez v0, :cond_178

    .line 2205
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_174

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "tried twice, and NB Status is false"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2206
    :cond_174
    const/16 v20, 0x1

    .line 2207
    nop

    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v18    # "startWaitTime":J
    .end local v20    # "bForceThrow":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v10
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_178} :catch_148

    .line 2210
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v18    # "startWaitTime":J
    .restart local v20    # "bForceThrow":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_178
    const/4 v0, 0x0

    .line 2295
    .end local v6    # "triedNum":I
    .local v0, "triedNum":I
    move v6, v0

    move v1, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    move v14, v11

    goto/16 :goto_44c

    .line 2214
    .end local v0    # "triedNum":I
    .restart local v6    # "triedNum":I
    :cond_184
    :try_start_184
    iget-object v7, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v7
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_3c6

    .line 2215
    :try_start_187
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_end_189
    .catchall {:try_start_187 .. :try_end_189} :catchall_3b3

    if-nez v0, :cond_35a

    .line 2216
    const/16 v21, 0x0

    .line 2217
    .local v21, "s":Ljava/net/Socket;
    :try_start_18d
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_18f
    .catchall {:try_start_18d .. :try_end_18f} :catchall_349

    if-eqz v0, :cond_1b9

    :try_start_191
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close maininput input stream in main exception, input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_191 .. :try_end_1a9} :catchall_1aa

    goto :goto_1b9

    .line 2263
    .end local v21    # "s":Ljava/net/Socket;
    :catchall_1aa
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move v1, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    move v14, v11

    goto/16 :goto_3c0

    .line 2218
    .restart local v21    # "s":Ljava/net/Socket;
    :cond_1b9
    :goto_1b9
    :try_start_1b9
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closeMainSocket()V

    .line 2219
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_1be
    .catchall {:try_start_1b9 .. :try_end_1be} :catchall_349

    if-eqz v0, :cond_1d6

    :try_start_1c0
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is MainThead, try to switch to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1d6
    .catchall {:try_start_1c0 .. :try_end_1d6} :catchall_1aa

    .line 2221
    :cond_1d6
    const-wide/16 v22, 0x1

    :try_start_1d8
    iget-object v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget-object v3, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriginalRequestHeader:Lcom/android/okhttp/Request;

    iget-wide v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    :try_end_1de
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_1d8 .. :try_end_1de} :catch_244
    .catchall {:try_start_1d8 .. :try_end_1de} :catchall_349

    :try_start_1de
    iget-wide v11, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v4, v11

    iget-wide v11, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    sub-long/2addr v4, v11

    iget-wide v11, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    :try_end_1e6
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_1de .. :try_end_1e6} :catch_239
    .catchall {:try_start_1de .. :try_end_1e6} :catchall_22d

    move/from16 v25, v9

    .end local v9    # "otherInterfaceID":I
    .local v25, "otherInterfaceID":I
    :try_start_1e8
    iget-wide v8, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v11, v8

    sub-long v8, v11, v22

    iget-wide v11, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J
    :try_end_1ef
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_1e8 .. :try_end_1ef} :catch_222
    .catchall {:try_start_1e8 .. :try_end_1ef} :catchall_211

    const/4 v0, 0x1

    const/16 v26, 0x0

    move/from16 v2, v25

    move/from16 v27, v6

    move-object/from16 v28, v7

    .end local v6    # "triedNum":I
    .local v27, "triedNum":I
    move-wide v6, v8

    move/from16 v24, v25

    const/4 v14, 0x1

    .end local v25    # "otherInterfaceID":I
    .local v24, "otherInterfaceID":I
    move-wide v8, v11

    move-object/from16 v25, v10

    .end local v10    # "e":Ljava/io/IOException;
    .local v25, "e":Ljava/io/IOException;
    move-object/from16 v10, p0

    const/4 v12, 0x0

    move v11, v0

    move v14, v12

    move/from16 v12, v26

    :try_start_206
    invoke-virtual/range {v1 .. v12}, Lcom/android/okhttp/internal/io/RealConnection;->extremeConditionConnect(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_20a
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_206 .. :try_end_20a} :catch_20f
    .catchall {:try_start_206 .. :try_end_20a} :catchall_336

    move-object/from16 v21, v0

    .line 2225
    move-object/from16 v0, v21

    goto :goto_250

    .line 2224
    :catch_20f
    move-exception v0

    goto :goto_24e

    .line 2263
    .end local v21    # "s":Ljava/net/Socket;
    .end local v24    # "otherInterfaceID":I
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    .restart local v10    # "e":Ljava/io/IOException;
    .local v25, "otherInterfaceID":I
    :catchall_211
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v24, v25

    const/4 v14, 0x0

    move-object/from16 v25, v10

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v1, 0x1

    .end local v6    # "triedNum":I
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "otherInterfaceID":I
    .local v25, "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    goto/16 :goto_3c0

    .line 2224
    .end local v24    # "otherInterfaceID":I
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    .restart local v10    # "e":Ljava/io/IOException;
    .restart local v21    # "s":Ljava/net/Socket;
    .local v25, "otherInterfaceID":I
    :catch_222
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v24, v25

    const/4 v14, 0x0

    move-object/from16 v25, v10

    .end local v6    # "triedNum":I
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "otherInterfaceID":I
    .local v25, "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    goto :goto_24e

    .line 2263
    .end local v21    # "s":Ljava/net/Socket;
    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v10    # "e":Ljava/io/IOException;
    :catchall_22d
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v24, v9

    move-object/from16 v25, v10

    const/4 v14, 0x0

    goto/16 :goto_353

    .line 2224
    .restart local v21    # "s":Ljava/net/Socket;
    :catch_239
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v24, v9

    move-object/from16 v25, v10

    const/4 v14, 0x0

    goto :goto_24e

    :catch_244
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v14, v11

    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "otherInterfaceID":I
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    :goto_24e
    move-object/from16 v0, v21

    .line 2227
    .end local v21    # "s":Ljava/net/Socket;
    .local v0, "s":Ljava/net/Socket;
    :goto_250
    if-eqz v0, :cond_33e

    .line 2233
    const/4 v1, 0x4

    :try_start_253
    iput v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRRSuccessInMainSocket:I

    .line 2234
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_286

    iget-object v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main socket reconnected, now from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v5, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v3, v5

    iget-wide v5, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v5, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v3, v5

    sub-long v3, v3, v22

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2237
    :cond_286
    iget v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    .line 2238
    .local v1, "preMainSocketID":I
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a3

    .line 2239
    iput v14, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    :try_end_2a2
    .catchall {:try_start_253 .. :try_end_2a2} :catchall_336

    goto :goto_2a6

    .line 2242
    :cond_2a3
    const/4 v2, 0x1

    :try_start_2a4
    iput v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I
    :try_end_2a6
    .catchall {:try_start_2a4 .. :try_end_2a6} :catchall_32e

    .line 2244
    :goto_2a6
    :try_start_2a6
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_2ca

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is MainThead, actually switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2245
    :cond_2ca
    iget-boolean v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v2, :cond_305

    iget-boolean v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    if-eqz v2, :cond_305

    iget v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    if-eq v2, v1, :cond_305

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v2, :cond_305

    .line 2246
    iget-boolean v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z

    if-nez v2, :cond_2ef

    .line 2247
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_2e9

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "Need to switch ExtremThread Socket ID"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2248
    :cond_2e9
    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->switchSocket(I)Z

    goto :goto_305

    .line 2251
    :cond_2ef
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_2fa

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "Do not Need to switch ExtremThread Socket ID"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2252
    :cond_2fa
    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    iget-object v3, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->getSocketID()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->startTryBoth(I)V

    .line 2256
    :cond_305
    :goto_305
    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/io/RealConnection;->setSocket(Ljava/net/Socket;)V

    .line 2257
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    .line 2258
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_32c

    iget-object v2, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new input stream in main exception mainInput = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_32c
    .catchall {:try_start_2a6 .. :try_end_32c} :catchall_336

    .line 2259
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "preMainSocketID":I
    :cond_32c
    const/4 v1, 0x1

    goto :goto_36f

    .line 2263
    :catchall_32e
    move-exception v0

    move/from16 v3, p3

    move v1, v2

    move-object/from16 v2, p1

    goto/16 :goto_3c0

    :catchall_336
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v1, 0x1

    goto/16 :goto_3c0

    .line 2229
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_33e
    const/4 v1, 0x1

    :try_start_33f
    iput v1, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRRSuccessInMainSocket:I

    .line 2230
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot Connect to Server"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v18    # "startWaitTime":J
    .end local v20    # "bForceThrow":Z
    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v2

    .line 2263
    .end local v0    # "s":Ljava/net/Socket;
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v10    # "e":Ljava/io/IOException;
    .restart local v18    # "startWaitTime":J
    .restart local v20    # "bForceThrow":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catchall_349
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v14, v11

    :goto_353
    move-object/from16 v2, p1

    move/from16 v3, p3

    move v1, v8

    goto/16 :goto_3c0

    .line 2261
    :cond_35a
    move/from16 v27, v6

    move-object/from16 v28, v7

    move v1, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v14, v11

    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "otherInterfaceID":I
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_36f

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "childIS is created before this "

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2263
    :cond_36f
    :goto_36f
    monitor-exit v28
    :try_end_370
    .catchall {:try_start_33f .. :try_end_370} :catchall_3ad

    .line 2264
    :try_start_370
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;
    :try_end_372
    .catch Ljava/io/IOException; {:try_start_370 .. :try_end_372} :catch_3a7

    move-object/from16 v2, p1

    move/from16 v3, p3

    :try_start_376
    invoke-virtual {v0, v2, v15, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2265
    .local v0, "readLen":I
    if-ltz v0, :cond_390

    .line 2268
    iget-boolean v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v4, :cond_38f

    iget-object v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v4, :cond_38f

    .line 2269
    iget v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    int-to-long v5, v0

    invoke-virtual {v13, v4, v5, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->incByte(IJ)V

    .line 2270
    iget v4, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    invoke-virtual {v13, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->setTime(I)V

    .line 2272
    :cond_38f
    return v0

    .line 2266
    :cond_390
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read return exception value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v18    # "startWaitTime":J
    .end local v20    # "bForceThrow":Z
    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v4
    :try_end_3a7
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_3a7} :catch_3c2

    .line 2275
    .end local v0    # "readLen":I
    .restart local v18    # "startWaitTime":J
    .restart local v20    # "bForceThrow":Z
    .restart local v24    # "otherInterfaceID":I
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catch_3a7
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v3, p3

    goto :goto_3d1

    .line 2263
    :catchall_3ad
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v3, p3

    goto :goto_3c0

    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v10    # "e":Ljava/io/IOException;
    :catchall_3b3
    move-exception v0

    move/from16 v27, v6

    move-object/from16 v28, v7

    move v1, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    move v14, v11

    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "otherInterfaceID":I
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    :goto_3c0
    :try_start_3c0
    monitor-exit v28
    :try_end_3c1
    .catchall {:try_start_3c0 .. :try_end_3c1} :catchall_3c4

    .end local v18    # "startWaitTime":J
    .end local v20    # "bForceThrow":Z
    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_3c1
    throw v0
    :try_end_3c2
    .catch Ljava/io/IOException; {:try_start_3c1 .. :try_end_3c2} :catch_3c2

    .line 2275
    .restart local v18    # "startWaitTime":J
    .restart local v20    # "bForceThrow":Z
    .restart local v24    # "otherInterfaceID":I
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catch_3c2
    move-exception v0

    goto :goto_3d1

    .line 2263
    :catchall_3c4
    move-exception v0

    goto :goto_3c0

    .line 2275
    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v10    # "e":Ljava/io/IOException;
    :catch_3c6
    move-exception v0

    move/from16 v27, v6

    move v1, v8

    move/from16 v24, v9

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    move v14, v11

    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v24    # "otherInterfaceID":I
    .restart local v25    # "e":Ljava/io/IOException;
    .restart local v27    # "triedNum":I
    :goto_3d1
    move-object v4, v0

    .line 2276
    .local v4, "ex":Ljava/io/IOException;
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3ec

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in mainInput Handover "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2277
    :cond_3ec
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3f5

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2278
    :cond_3f5
    if-nez v20, :cond_459

    .line 2281
    add-int/lit8 v6, v27, 0x1

    .line 2282
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v18

    .line 2283
    .local v7, "waitedTime":J
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    iget v5, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    aget-wide v9, v0, v5

    cmp-long v0, v9, v16

    if-lez v0, :cond_410

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_410

    .line 2284
    invoke-virtual {v13, v5, v7, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->decTime(IJ)V

    .line 2285
    :cond_410
    sget v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    if-lez v0, :cond_43e

    int-to-long v9, v0

    cmp-long v0, v7, v9

    if-lez v0, :cond_43e

    .line 2286
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_43d

    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waited time "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " time out "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2287
    :cond_43d
    throw v4

    .line 2289
    :cond_43e
    iget-object v5, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v5

    .line 2291
    :try_start_441
    iget-object v0, v13, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_448
    .catchall {:try_start_441 .. :try_end_448} :catchall_449

    goto :goto_44a

    .line 2293
    :catchall_449
    move-exception v0

    :goto_44a
    nop

    .line 2294
    :try_start_44b
    monitor-exit v5

    .line 2296
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v7    # "waitedTime":J
    .end local v20    # "bForceThrow":Z
    :goto_44c
    move v8, v1

    move v12, v3

    move v11, v14

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object v14, v2

    goto/16 :goto_12f

    .line 2294
    .restart local v4    # "ex":Ljava/io/IOException;
    .restart local v7    # "waitedTime":J
    .restart local v20    # "bForceThrow":Z
    :catchall_456
    move-exception v0

    monitor-exit v5
    :try_end_458
    .catchall {:try_start_44b .. :try_end_458} :catchall_456

    throw v0

    .line 2279
    .end local v6    # "triedNum":I
    .end local v7    # "waitedTime":J
    .restart local v27    # "triedNum":I
    :cond_459
    throw v4

    .line 2297
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v20    # "bForceThrow":Z
    .end local v24    # "otherInterfaceID":I
    .end local v25    # "e":Ljava/io/IOException;
    .end local v27    # "triedNum":I
    .restart local v6    # "triedNum":I
    .restart local v9    # "otherInterfaceID":I
    .restart local v10    # "e":Ljava/io/IOException;
    :cond_45a
    move-object/from16 v25, v10

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v25    # "e":Ljava/io/IOException;
    throw v25

    .line 2188
    .end local v6    # "triedNum":I
    .end local v9    # "otherInterfaceID":I
    .end local v18    # "startWaitTime":J
    .end local v25    # "e":Ljava/io/IOException;
    .restart local v10    # "e":Ljava/io/IOException;
    :catchall_45d
    move-exception v0

    move-object/from16 v25, v10

    move v3, v12

    move-object v2, v14

    .end local v10    # "e":Ljava/io/IOException;
    .restart local v25    # "e":Ljava/io/IOException;
    :goto_462
    :try_start_462
    monitor-exit v1
    :try_end_463
    .catchall {:try_start_462 .. :try_end_463} :catchall_464

    throw v0

    :catchall_464
    move-exception v0

    goto :goto_462
.end method

.method private blacklist readFromSourceBuffer([BII)I
    .registers 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 2134
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufSource:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->readFromBuffer([BII)I

    move-result v0

    .line 2135
    .local v0, "len":I
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read from source buffer, and get byte number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2136
    :cond_20
    if-gtz v0, :cond_24

    .line 2137
    const/4 v1, 0x0

    return v1

    .line 2140
    :cond_24
    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2308
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->checkNotClosed()V

    .line 2309
    const/4 v1, 0x0

    .line 2310
    .local v1, "ret":I
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_82

    if-nez v2, :cond_18

    .line 2312
    :try_start_9
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    if-eqz v2, :cond_17

    .line 2313
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    move v1, v2

    goto :goto_17

    .line 2316
    :catchall_15
    move-exception v2

    .line 2317
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 2318
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_17
    :goto_17
    goto :goto_6c

    .line 2321
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_82

    .line 2322
    :try_start_1b
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6b

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    if-eqz v3, :cond_6b

    .line 2323
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "i":I
    :goto_33
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    array-length v4, v4

    if-ge v3, v4, :cond_6b

    .line 2324
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    aget-byte v4, v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    aget-byte v4, v4, v3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4d

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    aget-byte v4, v4, v3

    const/4 v6, -0x1

    if-ne v4, v6, :cond_61

    .line 2325
    :cond_4d
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 2326
    .local v4, "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    int-to-long v6, v1

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getRestLength()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v1, v6

    .line 2328
    .end local v4    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :cond_61
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    aget-byte v4, v4, v3

    if-eq v4, v5, :cond_68

    .line 2329
    goto :goto_6b

    .line 2323
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2333
    .end local v3    # "i":I
    :cond_6b
    :goto_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_1b .. :try_end_6c} :catchall_7f

    .line 2335
    :goto_6c
    :try_start_6c
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_75

    :goto_74
    goto :goto_7d

    :cond_75
    int-to-long v2, v1

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4
    :try_end_7c
    .catchall {:try_start_6c .. :try_end_7c} :catchall_82

    goto :goto_74

    :goto_7d
    long-to-int v0, v4

    .line 2337
    .end local v1    # "ret":I
    .local v0, "ret":I
    return v0

    .line 2333
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    :catchall_7f
    move-exception v3

    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :try_start_81
    throw v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_82

    .line 2339
    .end local v1    # "ret":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :catchall_82
    move-exception v1

    .line 2340
    .local v1, "ex":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "Exception in MultiSocketInputStream:available"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2341
    :cond_8e
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/Throwable;)V

    .line 2342
    :cond_97
    return v0
.end method

.method protected blacklist clearBufferDir()V
    .registers 6

    .line 1022
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    if-nez v1, :cond_22

    .line 1023
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is a NULL directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_7c

    .line 1025
    :cond_22
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1026
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is not a directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1027
    :cond_46
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1028
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    goto :goto_7c

    .line 1031
    :cond_4e
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1032
    .local v1, "files":[Ljava/lang/String;
    if-eqz v1, :cond_59

    array-length v2, v1

    if-nez v2, :cond_7c

    .line 1033
    :cond_59
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this directory is empty, can be removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1034
    :cond_75
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1035
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7d

    .line 1042
    .end local v1    # "files":[Ljava/lang/String;
    :cond_7c
    :goto_7c
    goto :goto_89

    .line 1039
    :catchall_7d
    move-exception v1

    .line 1040
    .local v1, "e":Ljava/lang/Throwable;
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1041
    :cond_87
    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    .line 1043
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_89
    return-void
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2350
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "MultiSocketInputStream:close"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2351
    :cond_d
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closed:Z

    if-eqz v0, :cond_12

    .line 2352
    return-void

    .line 2354
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closed:Z

    .line 2355
    iput-boolean v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    .line 2356
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 2357
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->unexpectedEndOfInput()V

    .line 2360
    :cond_22
    :try_start_22
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_281

    .line 2361
    :try_start_25
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2362
    .local v6, "i":I
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 2363
    .local v7, "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    if-eqz v7, :cond_51

    .line 2364
    invoke-virtual {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->clearBuffer()V

    .line 2366
    .end local v6    # "i":I
    .end local v7    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :cond_51
    goto :goto_2f

    .line 2367
    :cond_52
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 2368
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_27e

    .line 2370
    :try_start_58
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_281

    .line 2371
    :try_start_5b
    iget-boolean v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v3, :cond_8e

    .line 2372
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    cmp-long v3, v8, v4

    if-nez v3, :cond_6d

    .line 2373
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    invoke-static {v8, v9, v7}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto :goto_8c

    .line 2374
    :cond_6d
    iget-boolean v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bHasIOException:Z

    if-nez v3, :cond_77

    .line 2375
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    invoke-static {v8, v9, v0}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    goto :goto_8c

    .line 2377
    :cond_77
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v3, :cond_85

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isServerReject()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2378
    iput v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I

    .line 2380
    :cond_85
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    iget v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->failReasonInExtreme:I

    invoke-static {v8, v9, v3}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    .line 2382
    :goto_8c
    iput-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    .line 2384
    :cond_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_5b .. :try_end_8f} :catchall_27b

    .line 2386
    :try_start_8f
    iget-boolean v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v2, :cond_208

    .line 2387
    iget v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    new-array v2, v2, [J

    .line 2388
    .local v2, "lens":[J
    iget v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    new-array v3, v3, [J

    .line 2389
    .local v3, "times":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9c
    iget v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    if-ge v8, v9, :cond_c9

    .line 2390
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v9, v9, v8

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v11, :cond_aa

    move-wide v11, v4

    goto :goto_b0

    :cond_aa
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v11, v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v11

    :goto_b0
    add-long/2addr v9, v11

    aput-wide v9, v2, v8

    .line 2391
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v9, v9, v8

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v11, :cond_bd

    move-wide v11, v4

    goto :goto_c3

    :cond_bd
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v11, v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v11

    :goto_c3
    add-long/2addr v9, v11

    aput-wide v9, v3, v8

    .line 2389
    add-int/lit8 v8, v8, 0x1

    goto :goto_9c

    .line 2393
    .end local v8    # "i":I
    :cond_c9
    aget-wide v8, v3, v7

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1c0

    aget-wide v8, v3, v0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1c0

    aget-wide v8, v2, v7

    cmp-long v8, v8, v4

    if-lez v8, :cond_1c0

    aget-wide v8, v2, v0

    cmp-long v8, v8, v4

    if-lez v8, :cond_1c0

    .line 2394
    invoke-static {v2, v3}, Lcom/android/okhttp/internal/http/SBServiceAPI;->submitMultiSocketData([J[J)V

    .line 2395
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v8, :cond_11d

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_11d

    .line 2396
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J

    long-to-double v10, v10

    aget-wide v12, v2, v0

    aget-wide v14, v3, v0

    invoke-virtual {v1, v12, v13, v14, v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(JJ)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    sput-wide v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    .line 2397
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bufReadSpeed:J

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double/2addr v10, v12

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    sput-wide v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BUF_Read_Speed:D

    .line 2399
    :cond_11d
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_208

    .line 2400
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "submit speed for extreme case - socket[0]: len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v3, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", speed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v7

    const-wide/16 v12, 0x8

    mul-long/2addr v10, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    const-wide/16 v16, 0x400

    div-long v10, v10, v16

    aget-wide v18, v3, v7

    div-long v10, v10, v18

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "Kbps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2401
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "submit speed for extreme case - socket[1]: len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v3, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", speed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v0

    mul-long/2addr v10, v12

    mul-long/2addr v10, v14

    div-long v10, v10, v16

    aget-wide v12, v3, v0

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "Kbps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2402
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update B_Ratio_BUF_LTE to be "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, " with buf read speed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BUF_Read_Speed:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "MB/s"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_208

    .line 2406
    :cond_1c0
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_208

    .line 2407
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not to submit speed for extreme case - socket[0]: len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v3, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2408
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not to submit speed for extreme case - socket[1]: len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v2, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v3, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_208
    .catchall {:try_start_8f .. :try_end_208} :catchall_281

    .line 2414
    .end local v2    # "lens":[J
    .end local v3    # "times":[J
    :cond_208
    :goto_208
    :try_start_208
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_253

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    aget-object v2, v2, v7

    if-nez v2, :cond_253

    .line 2415
    iget v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    mul-int/2addr v2, v6

    new-array v2, v2, [J

    .line 2416
    .local v2, "data":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21a
    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I

    if-ge v3, v6, :cond_24c

    .line 2417
    mul-int/lit8 v6, v3, 0x2

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v7, v7, v3

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v9, :cond_22a

    move-wide v9, v4

    goto :goto_230

    :cond_22a
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v9, v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v9

    :goto_230
    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    .line 2418
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v0

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v7, v7, v3

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v9, :cond_240

    move-wide v9, v4

    goto :goto_246

    :cond_240
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v9, v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v9

    :goto_246
    add-long/2addr v7, v9

    aput-wide v7, v2, v6

    .line 2416
    add-int/lit8 v3, v3, 0x1

    goto :goto_21a

    .line 2420
    .end local v3    # "i":I
    :cond_24c
    iget-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    invoke-static {v3, v4, v2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->reportSBUsage(J[J)V
    :try_end_251
    .catchall {:try_start_208 .. :try_end_251} :catchall_252

    goto :goto_253

    .line 2423
    .end local v2    # "data":[J
    :catchall_252
    move-exception v0

    :cond_253
    :goto_253
    nop

    .line 2426
    :try_start_254
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_25d

    .line 2427
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25d
    .catchall {:try_start_254 .. :try_end_25d} :catchall_25e

    .line 2432
    :cond_25d
    goto :goto_268

    .line 2430
    :catchall_25e
    move-exception v0

    .line 2431
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_25f
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_268

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2434
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_268
    :goto_268
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v0, :cond_271

    .line 2435
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->close()V

    .line 2438
    :cond_271
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v0, :cond_282

    .line 2439
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V
    :try_end_27a
    .catchall {:try_start_25f .. :try_end_27a} :catchall_281

    goto :goto_282

    .line 2384
    :catchall_27b
    move-exception v0

    :try_start_27c
    monitor-exit v2
    :try_end_27d
    .catchall {:try_start_27c .. :try_end_27d} :catchall_27b

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :try_start_27d
    throw v0
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_281

    .line 2368
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :catchall_27e
    move-exception v0

    :try_start_27f
    monitor-exit v2
    :try_end_280
    .catchall {:try_start_27f .. :try_end_280} :catchall_27e

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :try_start_280
    throw v0
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_281

    .line 2442
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    :catchall_281
    move-exception v0

    :cond_282
    :goto_282
    nop

    .line 2443
    return-void
.end method

.method protected blacklist createBufferDir()V
    .registers 2

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->parentDir:Ljava/io/File;

    .line 1012
    return-void
.end method

.method protected blacklist createTwoChunkInputInMain(Z)V
    .registers 36
    .param p1, "bReversed"    # Z

    .line 2033
    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v0, :cond_12

    .line 2034
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_11

    iget-object v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "createTwoChunkInputInMain: session is finished"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2035
    :cond_11
    return-void

    .line 2037
    :cond_12
    iget-object v10, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->tmpFileLocker:Ljava/lang/Object;

    monitor-enter v10

    .line 2038
    :try_start_15
    iget-boolean v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v0, :cond_175

    iget-boolean v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    if-nez v0, :cond_175

    iget-object v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_175

    iget v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_175

    iget-boolean v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStopSecDecisionMade:Z

    if-nez v0, :cond_175

    .line 2040
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_46

    iget-object v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chunk1 is finished while mRemainBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_15 .. :try_end_46} :catchall_17a

    .line 2042
    :cond_46
    :try_start_46
    iget-wide v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    iget-wide v2, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    const-wide/32 v4, 0x100000

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_138

    .line 2043
    iget v0, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    .line 2044
    .local v0, "sock0":I
    invoke-virtual {v15, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v11

    .line 2045
    .local v11, "speed0":J
    iget v2, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x2

    move v8, v2

    .line 2046
    .local v8, "sock1":I
    invoke-virtual {v15, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v13

    .line 2047
    .local v13, "speed1":J
    new-instance v9, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v2, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    iget-object v3, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget-wide v4, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v6, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v4, v6

    iget-wide v6, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    sub-long v6, v4, v6

    iget-wide v4, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    move-wide/from16 v25, v11

    .end local v11    # "speed0":J
    .local v25, "speed0":J
    iget-wide v11, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v4, v11

    iget-wide v11, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    sub-long/2addr v4, v11

    const-wide/16 v27, 0x1

    sub-long v11, v4, v27

    iget-object v5, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriginalRequestHeader:Lcom/android/okhttp/Request;

    const/16 v16, 0x0

    move-wide/from16 v29, v13

    .end local v13    # "speed1":J
    .local v29, "speed1":J
    iget-wide v13, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFullConSize:J

    sget v19, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    const-wide/16 v21, 0x0

    iget-object v4, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    iget-object v1, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;
    :try_end_90
    .catchall {:try_start_46 .. :try_end_90} :catchall_167

    move-object/from16 v24, v1

    move-object v1, v9

    move-object/from16 v23, v4

    move v4, v0

    move-object/from16 v17, v5

    move v5, v8

    move/from16 v31, v8

    move-object/from16 v32, v9

    .end local v8    # "sock1":I
    .local v31, "sock1":I
    move-wide v8, v11

    move-object/from16 v33, v10

    move-object/from16 v10, v17

    move-object v11, v15

    move/from16 v15, v16

    move-object/from16 v16, p0

    move-wide/from16 v17, v13

    move/from16 v20, p1

    move-wide/from16 v11, v25

    move-wide/from16 v13, v29

    .end local v25    # "speed0":J
    .end local v29    # "speed1":J
    .restart local v11    # "speed0":J
    .restart local v13    # "speed1":J
    :try_start_af
    invoke-direct/range {v1 .. v24}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;IIJJLcom/android/okhttp/Request;JJILcom/android/okhttp/internal/http/MultiSocketInputStream;JIZJLcom/android/okhttp/internal/http/MultiratLog;Lcom/android/okhttp/internal/io/RealConnection;)V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_134

    move-object/from16 v2, p0

    move-object/from16 v1, v32

    :try_start_b6
    iput-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 2050
    iput-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    .line 2051
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_d6

    iget-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new twochunk input stream mainInput = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2052
    :cond_d6
    iget-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v1, :cond_ee

    .line 2053
    iget-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    .line 2054
    iget-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v3, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v3}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->startRun(Ljava/net/Socket;)V

    .line 2057
    :cond_ee
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_133

    iget-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource check: finish reading chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v6, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v4, v6

    iget-wide v6, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    sub-long/2addr v4, v6

    sub-long v4, v4, v27

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " with length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    iget-wide v6, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " from main socket,  now start to read from child input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2060
    .end local v0    # "sock0":I
    .end local v11    # "speed0":J
    .end local v13    # "speed1":J
    .end local v31    # "sock1":I
    :cond_133
    goto :goto_164

    .line 2067
    :catchall_134
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_16b

    .line 2062
    :cond_138
    move-object/from16 v33, v10

    move-object v2, v15

    invoke-virtual {v2, v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    .line 2063
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_164

    iget-object v0, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not to create sec thread since byteRemaining is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " and bytesForMultiSocket is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_b6 .. :try_end_164} :catchall_165

    .line 2069
    :cond_164
    :goto_164
    goto :goto_178

    .line 2067
    :catchall_165
    move-exception v0

    goto :goto_16b

    :catchall_167
    move-exception v0

    move-object/from16 v33, v10

    move-object v2, v15

    .line 2068
    .local v0, "e":Ljava/lang/Throwable;
    :goto_16b
    :try_start_16b
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_178

    iget-object v1, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    goto :goto_178

    .line 2038
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_175
    move-object/from16 v33, v10

    move-object v2, v15

    .line 2071
    :cond_178
    :goto_178
    monitor-exit v33

    .line 2072
    return-void

    .line 2071
    :catchall_17a
    move-exception v0

    move-object/from16 v33, v10

    move-object v2, v15

    :goto_17e
    monitor-exit v33
    :try_end_17f
    .catchall {:try_start_16b .. :try_end_17f} :catchall_180

    throw v0

    :catchall_180
    move-exception v0

    goto :goto_17e
.end method

.method protected blacklist decTime(IJ)V
    .registers 4
    .param p1, "sid"    # I
    .param p2, "time"    # J

    .line 2462
    return-void
.end method

.method public blacklist getMainThreadID()J
    .registers 3

    .line 1007
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    return-wide v0
.end method

.method protected blacklist getSecChunkRange()[J
    .registers 13

    .line 2087
    const/4 v0, 0x2

    new-array v1, v0, [J

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    .line 2088
    .local v1, "ret":[J
    const/4 v2, 0x0

    .line 2089
    .local v2, "childSec":[J
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v3, :cond_16

    .line 2090
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getSecChunkRange()[J

    move-result-object v2

    .line 2092
    :cond_16
    if-eqz v2, :cond_82

    array-length v3, v2

    if-ne v3, v0, :cond_82

    .line 2093
    aget-wide v6, v2, v5

    aget-wide v8, v1, v4

    cmp-long v0, v6, v8

    if-gez v0, :cond_3a

    aget-wide v6, v2, v5

    aget-wide v8, v2, v4

    sub-long/2addr v6, v8

    aget-wide v8, v1, v5

    aget-wide v10, v1, v4

    sub-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_3a

    .line 2094
    aget-wide v6, v2, v4

    aput-wide v6, v1, v4

    .line 2095
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    goto :goto_82

    .line 2097
    :cond_3a
    aget-wide v6, v2, v5

    aget-wide v8, v1, v4

    cmp-long v0, v6, v8

    if-nez v0, :cond_4f

    aget-wide v6, v2, v4

    aget-wide v8, v1, v4

    cmp-long v0, v6, v8

    if-gez v0, :cond_4f

    .line 2098
    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    goto :goto_82

    .line 2100
    :cond_4f
    aget-wide v6, v2, v4

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-nez v0, :cond_64

    aget-wide v6, v2, v5

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-lez v0, :cond_64

    .line 2101
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    goto :goto_82

    .line 2103
    :cond_64
    aget-wide v6, v2, v4

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-lez v0, :cond_82

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v8, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    sub-long/2addr v6, v8

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-lez v0, :cond_82

    .line 2104
    aget-wide v6, v2, v4

    aput-wide v6, v1, v4

    .line 2105
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    .line 2108
    :cond_82
    :goto_82
    return-object v1
.end method

.method protected blacklist getSpeed(I)J
    .registers 11
    .param p1, "sid"    # I

    .line 2473
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_47

    .line 2474
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_47

    .line 2475
    :cond_19
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main speed calculation with short time for socket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", byte="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/String;)V

    .line 2478
    :cond_47
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_53

    move-wide v5, v3

    goto :goto_57

    :cond_53
    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v5

    :goto_57
    add-long/2addr v0, v5

    .line 2479
    .local v0, "len":J
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v5, v2, p1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v2, :cond_62

    move-wide v7, v3

    goto :goto_66

    :cond_62
    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v7

    :goto_66
    add-long/2addr v5, v7

    .line 2481
    .local v5, "time":J
    cmp-long v2, v5, v3

    const-wide/16 v3, 0x8

    if-gtz v2, :cond_6f

    .line 2482
    mul-long/2addr v3, v0

    return-wide v3

    .line 2485
    :cond_6f
    mul-long/2addr v3, v0

    div-long/2addr v3, v5

    return-wide v3
.end method

.method protected blacklist getSpeed(JJ)J
    .registers 8
    .param p1, "len"    # J
    .param p3, "time"    # J

    .line 2499
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_7

    .line 2500
    return-wide v0

    .line 2503
    :cond_7
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    return-wide v0
.end method

.method protected blacklist getSpeedWithOffset(I)J
    .registers 9
    .param p1, "sid"    # I

    .line 2489
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartDataOffsetForSpeedCalc:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    .line 2490
    .local v0, "data":J
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartTimeOffsetForSpeedCalc:[J

    aget-wide v4, v4, p1

    sub-long/2addr v2, v4

    .line 2491
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_22

    cmp-long v6, v0, v4

    if-gtz v6, :cond_1d

    goto :goto_22

    .line 2495
    :cond_1d
    const-wide/16 v4, 0x8

    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    return-wide v4

    .line 2492
    :cond_22
    :goto_22
    return-wide v4
.end method

.method protected blacklist incByte(IJ)V
    .registers 8
    .param p1, "sid"    # I
    .param p2, "bytes"    # J

    .line 2465
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3b

    .line 2466
    const-wide/32 v0, 0x100000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_11

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3b

    .line 2467
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speed calc >> set data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " with a inc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/String;)V

    .line 2469
    :cond_3b
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDataDownloaded:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 2470
    return-void
.end method

.method protected blacklist isMultiRATworking()Z
    .registers 5

    .line 1015
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_a

    return v3

    .line 1016
    :cond_a
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/http/SBServiceAPI;->getSBUsageStatus(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v3, v1

    :cond_12
    return v3
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1635
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closed:Z

    if-nez v0, :cond_23

    .line 1636
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1637
    .local v1, "buffer":[B
    const/4 v2, -0x1

    .line 1639
    .local v2, "read":I
    iget-boolean v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSourceBufferCleared:Z

    const/4 v4, 0x0

    if-nez v3, :cond_16

    .line 1641
    invoke-direct {p0, v1, v4, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readFromSourceBuffer([BII)I

    move-result v2

    .line 1642
    if-nez v2, :cond_1a

    .line 1643
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSourceBufferCleared:Z

    goto :goto_1a

    .line 1646
    :cond_16
    invoke-direct {p0, v1, v4, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readFromMainSocket([BII)I

    move-result v2

    .line 1649
    :cond_1a
    :goto_1a
    if-gtz v2, :cond_1e

    .line 1650
    const/4 v0, -0x1

    return v0

    .line 1652
    :cond_1e
    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 1635
    .end local v1    # "buffer":[B
    .end local v2    # "read":I
    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "multisocket inpuststream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 28
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 1684
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_a
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 1685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 1686
    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z

    if-nez v7, :cond_26

    .line 1687
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    monitor-enter v7
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_74b
    .catchall {:try_start_a .. :try_end_19} :catchall_748

    .line 1688
    :try_start_19
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppReading:Z

    .line 1689
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->lockAppReading:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 1690
    monitor-exit v7

    goto :goto_26

    :catchall_22
    move-exception v0

    move-object v8, v0

    monitor-exit v7
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_22

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_25
    throw v8

    .line 1693
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_26
    :goto_26
    const/16 v7, -0x64

    if-ne v3, v7, :cond_43

    .line 1694
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_35

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v8, "get fname setting command"

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1695
    :cond_35
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->checkLocalFileFromFirstRead([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_38} :catch_74b
    .catchall {:try_start_25 .. :try_end_38} :catchall_748

    .line 1696
    const/16 v6, -0x65

    .line 2027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 2028
    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 1696
    return v6

    .line 1698
    :cond_43
    const/16 v7, -0x66

    if-ne v3, v7, :cond_65

    .line 1700
    :try_start_47
    array-length v7, v2

    const/16 v8, 0x10

    if-lt v7, v8, :cond_5a

    .line 1706
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkStart:J

    const/16 v7, 0x8

    invoke-static {v9, v10, v2, v5, v7}, Lcom/android/okhttp/internal/http/SBServiceAPI;->convertLongToByte(J[BII)V

    .line 1707
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mSecChunkEnd:J

    invoke-static {v9, v10, v2, v7, v8}, Lcom/android/okhttp/internal/http/SBServiceAPI;->convertLongToByte(J[BII)V

    .line 1710
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5a} :catch_74b
    .catchall {:try_start_47 .. :try_end_5a} :catchall_748

    .line 1720
    :cond_5a
    const/16 v6, -0x67

    .line 2027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 2028
    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 1720
    return v6

    .line 1723
    :cond_65
    :try_start_65
    iget-wide v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, -0x1

    if-gtz v7, :cond_ba

    .line 1724
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_8a

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finish to read size, no byte remained, return -1, remain is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1725
    :cond_8a
    sget-boolean v7, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v7, :cond_ae

    iget-boolean v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bWaitPrinted:Z

    if-nez v7, :cond_ae

    .line 1726
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "\tHTTPTIMER"

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1727
    .local v7, "timerStr":Ljava/lang/StringBuffer;
    const-string v9, "_MWAIT\t\t"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->waitTime:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1728
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1729
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bWaitPrinted:Z

    .line 1731
    .end local v7    # "timerStr":Ljava/lang/StringBuffer;
    :cond_ae
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_b0} :catch_74b
    .catchall {:try_start_65 .. :try_end_b0} :catchall_748

    .line 1732
    nop

    .line 2027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 2028
    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 1732
    return v8

    .line 1735
    :cond_ba
    :try_start_ba
    array-length v7, v2

    invoke-static {v7, v3, v4}, Lcom/android/okhttp/internal/http/MultiratUtil;->checkOffsetAndCount(III)V

    .line 1736
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->checkNotClosed()V

    .line 1738
    const/4 v7, 0x0

    .line 1739
    .local v7, "read":I
    const/16 v11, -0x64

    .line 1742
    .local v11, "readLenForReturn":I
    iget-boolean v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppStartRead:Z

    if-nez v12, :cond_133

    .line 1743
    sget-boolean v12, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v12, :cond_f3

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "first read, buffer size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", offset="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", count="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1744
    :cond_f3
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppStartRead:Z

    .line 1748
    iget-boolean v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bDoNotUseMultiSockSinceWiFiOnly:Z

    if-nez v12, :cond_133

    iget-wide v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    const-wide/32 v14, 0x200000

    cmp-long v12, v12, v14

    if-lez v12, :cond_133

    .line 1749
    new-instance v12, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mHeader:Lcom/android/okhttp/Headers;

    invoke-direct {v12, v1, v13}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;Lcom/android/okhttp/Headers;)V

    .line 1750
    .local v12, "infw":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":InfWatchdog_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I

    add-int/lit8 v16, v15, 0x1

    sput v16, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->threadID:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1751
    .local v13, "tInfw":Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 1755
    .end local v12    # "infw":Lcom/android/okhttp/internal/http/MultiSocketInputStream$InfWatchdog;
    .end local v13    # "tInfw":Ljava/lang/Thread;
    :cond_133
    move/from16 v12, p3

    .line 1756
    .local v12, "toReadCount":I
    int-to-long v13, v12

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    cmp-long v9, v13, v9

    if-lez v9, :cond_163

    .line 1757
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_160

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "toReadCount "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " > bytesRemaining "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1758
    :cond_160
    iget-wide v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    long-to-int v12, v9

    .line 1761
    :cond_163
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 1764
    iget-boolean v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSourceBufferCleared:Z

    if-nez v9, :cond_17a

    .line 1765
    int-to-long v9, v12

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-direct {v1, v2, v3, v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readFromSourceBuffer([BII)I

    move-result v9

    move v7, v9

    .line 1766
    if-nez v7, :cond_17a

    .line 1767
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSourceBufferCleared:Z

    .line 1771
    :cond_17a
    if-nez v7, :cond_30b

    iget-boolean v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    if-nez v14, :cond_30b

    .line 1773
    iget-boolean v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-nez v14, :cond_197

    iget-boolean v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    if-nez v14, :cond_197

    .line 1774
    int-to-long v13, v12

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 1775
    .local v8, "expReadLen":I
    invoke-direct {v1, v2, v3, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readFromMainSocket([BII)I

    move-result v9

    move v7, v9

    .line 1776
    .end local v8    # "expReadLen":I
    goto/16 :goto_301

    .line 1779
    :cond_197
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    cmp-long v8, v8, v13

    if-nez v8, :cond_2b0

    .line 1780
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_1ef

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resource check: finish reading chunk "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    add-long/2addr v13, v5

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    sub-long/2addr v13, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v13, v5

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " with length "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    sub-long/2addr v5, v13

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " from main socket,  now bytesRemaining==bytesForMultiSocket=="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mOffset="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1783
    :cond_1ef
    iget v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mCacheType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22f

    .line 1785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x1388

    add-long/2addr v5, v8

    .line 1786
    .local v5, "finalTime":J
    :goto_1fb
    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    if-eqz v8, :cond_204

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_22f

    .line 1787
    :cond_204
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    monitor-enter v8
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_207} :catch_74b
    .catchall {:try_start_ba .. :try_end_207} :catchall_748

    .line 1789
    :try_start_207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v9, v13, v5

    if-lez v9, :cond_21f

    .line 1790
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_21a

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v13, "time out to wait for first range request"

    invoke-virtual {v9, v13}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1791
    :cond_21a
    const/4 v9, 0x1

    iput v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I
    :try_end_21d
    .catchall {:try_start_207 .. :try_end_21d} :catchall_227

    .line 1792
    :try_start_21d
    monitor-exit v8
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_22b

    goto :goto_22f

    .line 1794
    :cond_21f
    :try_start_21f
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    const-wide/16 v13, 0x3e8

    invoke-virtual {v9, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_226
    .catchall {:try_start_21f .. :try_end_226} :catchall_227

    goto :goto_228

    .line 1796
    :catchall_227
    move-exception v0

    :goto_228
    nop

    .line 1797
    :try_start_229
    monitor-exit v8

    goto :goto_1fb

    :catchall_22b
    move-exception v0

    move-object v9, v0

    monitor-exit v8
    :try_end_22e
    .catchall {:try_start_229 .. :try_end_22e} :catchall_22b

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_22e
    throw v9

    .line 1802
    .end local v5    # "finalTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_22f
    :goto_22f
    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->sbUsedLocker:Ljava/lang/Object;

    monitor-enter v5
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_232} :catch_74b
    .catchall {:try_start_22e .. :try_end_232} :catchall_748

    .line 1803
    :try_start_232
    iget v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_27c

    .line 1804
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    .line 1805
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v6, :cond_24d

    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadExisted:Z

    if-eqz v6, :cond_24d

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v6, :cond_24d

    .line 1806
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    iget v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainSocketInterfaceID:I

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->startTryBoth(I)V

    .line 1809
    :cond_24d
    iget-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    if-eqz v6, :cond_2aa

    .line 1810
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_26d

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "try to close maininput input stream in main, input is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1811
    :cond_26d
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->closeMainSocket()V

    .line 1812
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_2aa

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v8, "end to close main stream"

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_2aa

    .line 1817
    :cond_27c
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    .line 1818
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    .line 1819
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    .line 1820
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v6, :cond_292

    .line 1821
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    const/4 v8, 0x1

    # setter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->bDeprecated:Z
    invoke-static {v6, v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->access$5202(Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;Z)Z

    .line 1822
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    invoke-virtual {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->closeSocketAndStreams()V

    .line 1824
    :cond_292
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_29d

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v8, "server does not support range request, keep on read from main inputstream"

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1825
    :cond_29d
    int-to-long v8, v12

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v6, v8

    .line 1826
    .local v6, "expReadLen":I
    invoke-direct {v1, v2, v3, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readFromMainSocket([BII)I

    move-result v8

    move v7, v8

    .line 1828
    .end local v6    # "expReadLen":I
    :cond_2aa
    :goto_2aa
    monitor-exit v5

    goto :goto_301

    :catchall_2ac
    move-exception v0

    move-object v6, v0

    monitor-exit v5
    :try_end_2af
    .catchall {:try_start_232 .. :try_end_2af} :catchall_2ac

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_2af
    throw v6

    .line 1830
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_2b0
    iget-wide v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    cmp-long v5, v5, v8

    if-lez v5, :cond_2ca

    .line 1831
    int-to-long v5, v12

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    iget-wide v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    sub-long/2addr v8, v13

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 1832
    .local v5, "expReadLen":I
    invoke-direct {v1, v2, v3, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readFromMainSocket([BII)I

    move-result v6

    move v5, v6

    .line 1833
    .end local v7    # "read":I
    .local v5, "read":I
    move v7, v5

    goto :goto_301

    .line 1836
    .end local v5    # "read":I
    .restart local v7    # "read":I
    :cond_2ca
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_2fa

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: bytesRemaining<bytesForMultiSocket("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "<"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesForMultiSocket:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "), mOffset="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/String;)V

    .line 1837
    :cond_2fa
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    .line 1838
    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    .line 1839
    iput-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    .line 1842
    :goto_301
    if-lez v7, :cond_30b

    array-length v5, v2

    if-le v7, v5, :cond_30b

    .line 1843
    move v11, v7

    .line 1844
    array-length v5, v2

    sub-int/2addr v7, v5

    .line 1845
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    .line 1849
    :cond_30b
    if-nez v7, :cond_6df

    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    if-eqz v5, :cond_6df

    .line 1851
    :goto_311
    if-gtz v7, :cond_6dd

    if-ge v7, v12, :cond_6dd

    iget-boolean v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v5, :cond_6dd

    .line 1852
    const-wide/16 v5, 0x0

    .line 1853
    .local v5, "t1":J
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    if-nez v8, :cond_46d

    .line 1854
    sget-boolean v8, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v8, :cond_329

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v5, v19

    .line 1855
    :cond_329
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_334

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v10, "no buffered size"

    invoke-virtual {v8, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1857
    :cond_334
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_337
    .catch Ljava/io/IOException; {:try_start_2af .. :try_end_337} :catch_74b
    .catchall {:try_start_2af .. :try_end_337} :catchall_748

    .line 1859
    :try_start_337
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10
    :try_end_33f
    .catchall {:try_start_337 .. :try_end_33f} :catchall_465

    if-nez v10, :cond_34c

    if-lez v7, :cond_34c

    .line 1860
    :try_start_343
    monitor-exit v8
    :try_end_344
    .catchall {:try_start_343 .. :try_end_344} :catchall_347

    move v9, v11

    goto/16 :goto_6de

    .line 1897
    :catchall_347
    move-exception v0

    move-object v4, v0

    move v9, v11

    goto/16 :goto_468

    .line 1864
    :cond_34c
    :try_start_34c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 1865
    .local v15, "startWaitTime":J
    const/4 v10, 0x0

    move/from16 v21, v10

    .line 1866
    .local v21, "bForceHO":Z
    :goto_353
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_41a

    .line 1867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v15

    .line 1868
    .local v13, "waitedTime":J
    sget v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I
    :try_end_364
    .catchall {:try_start_34c .. :try_end_364} :catchall_465

    if-lez v10, :cond_399

    :try_start_366
    sget v10, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    int-to-long v9, v10

    cmp-long v9, v13, v9

    if-lez v9, :cond_399

    .line 1869
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_391

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited time "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " time out "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1870
    :cond_391
    new-instance v4, Ljava/io/IOException;

    const-string v9, "Timeout to wait either interface connected"

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "t1":J
    .end local v7    # "read":I
    .end local v11    # "readLenForReturn":I
    .end local v12    # "toReadCount":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v4

    .line 1872
    .restart local v5    # "t1":J
    .restart local v7    # "read":I
    .restart local v11    # "readLenForReturn":I
    .restart local v12    # "toReadCount":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_399
    if-nez v21, :cond_407

    const-wide/16 v9, 0x3e8

    cmp-long v4, v13, v9

    if-lez v4, :cond_407

    iget-boolean v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    const/4 v9, 0x1

    if-ne v4, v9, :cond_407

    iget v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    const/4 v9, 0x4

    if-ne v4, v9, :cond_407

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    .line 1874
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_407

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    array-length v9, v9

    if-ge v4, v9, :cond_407

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    .line 1875
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-byte v4, v4, v9

    if-gtz v4, :cond_407

    .line 1876
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_3d5

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v9, "force handover"

    invoke-virtual {v4, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1877
    :cond_3d5
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/io/RealConnection;->bBothInfAvail()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_3ed

    .line 1878
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    const/4 v9, 0x0

    aget-object v4, v4, v9

    if-eqz v4, :cond_404

    .line 1879
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    goto :goto_404

    .line 1881
    :cond_3ed
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/io/RealConnection;->bBothInfAvail()I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_404

    .line 1882
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    const/4 v9, 0x1

    aget-object v4, v4, v9

    if-eqz v4, :cond_404

    .line 1883
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_404
    .catchall {:try_start_366 .. :try_end_404} :catchall_347

    .line 1885
    :cond_404
    :goto_404
    const/4 v4, 0x1

    move/from16 v21, v4

    .line 1888
    :cond_407
    :try_start_407
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    :try_end_409
    .catchall {:try_start_407 .. :try_end_409} :catchall_412

    move v9, v11

    const-wide/16 v10, 0x1f4

    .end local v11    # "readLenForReturn":I
    .local v9, "readLenForReturn":I
    :try_start_40c
    invoke-virtual {v4, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_40f
    .catchall {:try_start_40c .. :try_end_40f} :catchall_410

    goto :goto_414

    .line 1890
    :catchall_410
    move-exception v0

    goto :goto_414

    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :catchall_412
    move-exception v0

    move v9, v11

    .end local v11    # "readLenForReturn":I
    .restart local v9    # "readLenForReturn":I
    :goto_414
    nop

    .line 1891
    .end local v13    # "waitedTime":J
    move/from16 v4, p3

    move v11, v9

    goto/16 :goto_353

    .line 1892
    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :cond_41a
    move v9, v11

    .end local v11    # "readLenForReturn":I
    .restart local v9    # "readLenForReturn":I
    :try_start_41b
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iput-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 1893
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_44c

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get new buffer list["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1894
    :cond_44c
    new-instance v4, Ljava/lang/Integer;

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    .line 1895
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getLength()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBlockSize:J

    .line 1897
    .end local v15    # "startWaitTime":J
    .end local v21    # "bForceHO":Z
    monitor-exit v8

    goto :goto_46e

    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :catchall_465
    move-exception v0

    move v9, v11

    move-object v4, v0

    .end local v11    # "readLenForReturn":I
    .restart local v9    # "readLenForReturn":I
    :goto_468
    monitor-exit v8
    :try_end_469
    .catchall {:try_start_41b .. :try_end_469} :catchall_46a

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_469
    throw v4

    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catchall_46a
    move-exception v0

    move-object v4, v0

    goto :goto_468

    .line 1853
    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :cond_46d
    move v9, v11

    .line 1900
    .end local v11    # "readLenForReturn":I
    .restart local v9    # "readLenForReturn":I
    :goto_46e
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v4
    :try_end_471
    .catch Ljava/io/IOException; {:try_start_469 .. :try_end_471} :catch_74b
    .catchall {:try_start_469 .. :try_end_471} :catchall_748

    .line 1902
    :try_start_471
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v8}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_47e

    if-lez v7, :cond_47e

    .line 1903
    monitor-exit v4

    goto/16 :goto_6de

    .line 1906
    :cond_47e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide v13, v10

    .line 1907
    .local v13, "startWaitTime":J
    const/4 v8, 0x0

    .line 1908
    .local v8, "bForceHO":Z
    :goto_484
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_61d

    .line 1909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v13

    .line 1910
    .local v10, "waitedTime":J
    sget v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    if-lez v15, :cond_4ca

    sget v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    move-wide/from16 v22, v13

    .end local v13    # "startWaitTime":J
    .local v22, "startWaitTime":J
    int-to-long v13, v15

    cmp-long v13, v10, v13

    if-lez v13, :cond_4cc

    .line 1911
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_4c2

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "waited time "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time out "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->WAIT_FOR_INTERFACE_TIME_OUT:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1912
    :cond_4c2
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Timeout to wait either interface connected"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "t1":J
    .end local v7    # "read":I
    .end local v9    # "readLenForReturn":I
    .end local v12    # "toReadCount":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v13

    .line 1910
    .end local v22    # "startWaitTime":J
    .restart local v5    # "t1":J
    .restart local v7    # "read":I
    .restart local v9    # "readLenForReturn":I
    .restart local v12    # "toReadCount":I
    .restart local v13    # "startWaitTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_4ca
    move-wide/from16 v22, v13

    .line 1914
    .end local v13    # "startWaitTime":J
    .restart local v22    # "startWaitTime":J
    :cond_4cc
    iget-boolean v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bExtremThreadStarted:Z

    if-eqz v13, :cond_582

    .line 1915
    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4e8

    .line 1916
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_4e0

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v14, "Range Request failed in extremthread or secchunktread"

    invoke-virtual {v13, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1917
    :cond_4e0
    new-instance v13, Ljava/io/IOException;

    const-string v14, "Disconnected from Server"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "t1":J
    .end local v7    # "read":I
    .end local v9    # "readLenForReturn":I
    .end local v12    # "toReadCount":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v13

    .line 1919
    .restart local v5    # "t1":J
    .restart local v7    # "read":I
    .restart local v9    # "readLenForReturn":I
    .restart local v12    # "toReadCount":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_4e8
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v13, :cond_538

    const-wide/16 v13, 0xfa0

    cmp-long v13, v10, v13

    if-lez v13, :cond_538

    .line 1920
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_516

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "waited time extreme case "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time out "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0xfa0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1921
    :cond_516
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v13

    if-nez v13, :cond_532

    .line 1922
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_527

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v14, "NB disabled, throw exception"

    invoke-virtual {v13, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1923
    :cond_527
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    .line 1924
    new-instance v13, Ljava/io/IOException;

    const-string v14, "read socket time out"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "t1":J
    .end local v7    # "read":I
    .end local v9    # "readLenForReturn":I
    .end local v12    # "toReadCount":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v13

    .line 1921
    .restart local v5    # "t1":J
    .restart local v7    # "read":I
    .restart local v9    # "readLenForReturn":I
    .restart local v12    # "toReadCount":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_532
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    const/4 v14, 0x4

    goto/16 :goto_60b

    .line 1927
    :cond_538
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v13, :cond_57c

    const-wide/16 v13, 0x7d0

    cmp-long v13, v10, v13

    if-lez v13, :cond_57c

    .line 1928
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_566

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "waited time extreme case "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " time out "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x7d0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1929
    :cond_566
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    if-eqz v13, :cond_576

    .line 1930
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mExtThread:Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$ExtremeConditionThread;->createTwoChunkInput(Z)V

    move-wide/from16 v16, v10

    const/4 v11, 0x2

    const/4 v14, 0x4

    goto/16 :goto_60b

    .line 1929
    :cond_576
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    const/4 v14, 0x4

    goto/16 :goto_60b

    .line 1927
    :cond_57c
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    const/4 v14, 0x4

    goto/16 :goto_60b

    .line 1934
    :cond_582
    if-nez v8, :cond_607

    const-wide/16 v13, 0x3e8

    cmp-long v15, v10, v13

    if-lez v15, :cond_607

    iget-boolean v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bMultiSocketStarted:Z

    const/4 v13, 0x1

    if-ne v15, v13, :cond_607

    iget v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bRangeRequestSuccess:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_603

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    .line 1936
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    if-ltz v13, :cond_5ff

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v13, v15

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    array-length v15, v15

    if-ge v13, v15, :cond_5ff

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    .line 1937
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget-byte v13, v13, v15

    if-gtz v13, :cond_5fb

    .line 1938
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_5c5

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v15, "force handover"

    invoke-virtual {v13, v15}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1939
    :cond_5c5
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v13}, Lcom/android/okhttp/internal/io/RealConnection;->bBothInfAvail()I

    move-result v13

    .line 1940
    .local v13, "bBothInfAvail":I
    const/4 v15, 0x1

    if-ne v13, v15, :cond_5e5

    .line 1941
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    if-eqz v15, :cond_5e1

    .line 1942
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    aget-object v15, v15, v16

    move-wide/from16 v16, v10

    .end local v10    # "waitedTime":J
    .local v16, "waitedTime":J
    invoke-virtual {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    const/4 v11, 0x2

    goto :goto_5f9

    .line 1941
    .end local v16    # "waitedTime":J
    .restart local v10    # "waitedTime":J
    :cond_5e1
    move-wide/from16 v16, v10

    .end local v10    # "waitedTime":J
    .restart local v16    # "waitedTime":J
    const/4 v11, 0x2

    goto :goto_5f9

    .line 1944
    .end local v16    # "waitedTime":J
    .restart local v10    # "waitedTime":J
    :cond_5e5
    move-wide/from16 v16, v10

    .end local v10    # "waitedTime":J
    .restart local v16    # "waitedTime":J
    const/4 v11, 0x2

    if-ne v13, v11, :cond_5f9

    .line 1945
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    const/16 v18, 0x1

    aget-object v15, v15, v18

    if-eqz v15, :cond_5f9

    .line 1946
    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    aget-object v15, v15, v18

    invoke-virtual {v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V
    :try_end_5f9
    .catchall {:try_start_471 .. :try_end_5f9} :catchall_6d5

    .line 1948
    :cond_5f9
    :goto_5f9
    const/4 v8, 0x1

    goto :goto_60b

    .line 1937
    .end local v13    # "bBothInfAvail":I
    .end local v16    # "waitedTime":J
    .restart local v10    # "waitedTime":J
    :cond_5fb
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    .end local v10    # "waitedTime":J
    .restart local v16    # "waitedTime":J
    goto :goto_60b

    .line 1936
    .end local v16    # "waitedTime":J
    .restart local v10    # "waitedTime":J
    :cond_5ff
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    .end local v10    # "waitedTime":J
    .restart local v16    # "waitedTime":J
    goto :goto_60b

    .line 1934
    .end local v16    # "waitedTime":J
    .restart local v10    # "waitedTime":J
    :cond_603
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    goto :goto_60b

    :cond_607
    move-wide/from16 v16, v10

    const/4 v11, 0x2

    const/4 v14, 0x4

    .line 1951
    .end local v10    # "waitedTime":J
    .restart local v16    # "waitedTime":J
    :goto_60b
    :try_start_60b
    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :try_end_60d
    .catchall {:try_start_60b .. :try_end_60d} :catchall_615

    const-wide/16 v10, 0x1f4

    :try_start_60f
    invoke-virtual {v13, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_612
    .catchall {:try_start_60f .. :try_end_612} :catchall_613

    goto :goto_618

    .line 1953
    :catchall_613
    move-exception v0

    goto :goto_618

    :catchall_615
    move-exception v0

    const-wide/16 v10, 0x1f4

    :goto_618
    nop

    .line 1954
    .end local v16    # "waitedTime":J
    move-wide/from16 v13, v22

    goto/16 :goto_484

    .line 1955
    .end local v22    # "startWaitTime":J
    .local v13, "startWaitTime":J
    :cond_61d
    move-wide/from16 v22, v13

    const/4 v14, 0x4

    .end local v13    # "startWaitTime":J
    .restart local v22    # "startWaitTime":J
    :try_start_620
    iget-boolean v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bReadFromBuffer:Z

    if-nez v10, :cond_632

    .line 1956
    sget-boolean v10, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v10, :cond_62f

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v11, "ExtremeCase Timeout, break to read from main socket"

    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1957
    :cond_62f
    monitor-exit v4
    :try_end_630
    .catchall {:try_start_620 .. :try_end_630} :catchall_6d5

    goto/16 :goto_6de

    .line 1959
    :cond_632
    const/4 v10, 0x0

    .line 1962
    .local v10, "blockLen":I
    :try_start_633
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    add-int v13, v3, v7

    sub-int v15, v12, v7

    invoke-virtual {v11, v2, v13, v15}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->read([BII)I

    move-result v11

    move v10, v11

    .line 1963
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V
    :try_end_643
    .catchall {:try_start_633 .. :try_end_643} :catchall_644

    .line 1967
    goto :goto_64f

    .line 1965
    :catchall_644
    move-exception v0

    move-object v11, v0

    .line 1966
    .local v11, "e":Ljava/lang/Throwable;
    :try_start_646
    sget-boolean v13, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v13, :cond_64f

    iget-object v13, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v13, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 1968
    .end local v11    # "e":Ljava/lang/Throwable;
    :cond_64f
    :goto_64f
    const/4 v11, -0x1

    if-ne v10, v11, :cond_662

    .line 1969
    sget-boolean v11, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v11, :cond_65d

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v13, "unexpected end from restBuffer.read"

    invoke-virtual {v11, v13}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 1970
    :cond_65d
    const/4 v7, -0x1

    .line 1971
    monitor-exit v4

    move v11, v9

    goto/16 :goto_6df

    .line 1973
    :cond_662
    array-length v11, v2
    :try_end_663
    .catchall {:try_start_646 .. :try_end_663} :catchall_6d5

    if-le v10, v11, :cond_66b

    .line 1974
    move v11, v10

    .line 1975
    .end local v9    # "readLenForReturn":I
    .local v11, "readLenForReturn":I
    :try_start_666
    array-length v9, v2

    sub-int/2addr v10, v9

    .line 1976
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    goto :goto_66c

    .line 1973
    .end local v11    # "readLenForReturn":I
    .restart local v9    # "readLenForReturn":I
    :cond_66b
    move v11, v9

    .line 1979
    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :goto_66c
    add-int/2addr v7, v10

    .line 1980
    iget-wide v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBlockSize:J

    int-to-long v2, v10

    sub-long/2addr v14, v2

    iput-wide v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBlockSize:J

    .line 1982
    .end local v8    # "bForceHO":Z
    .end local v10    # "blockLen":I
    .end local v22    # "startWaitTime":J
    monitor-exit v4
    :try_end_674
    .catchall {:try_start_666 .. :try_end_674} :catchall_6da

    .line 1985
    const-wide/16 v2, 0x0

    cmp-long v4, v14, v2

    if-nez v4, :cond_6a5

    .line 1986
    :try_start_67a
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    monitor-enter v2
    :try_end_67d
    .catch Ljava/io/IOException; {:try_start_67a .. :try_end_67d} :catch_74b
    .catchall {:try_start_67a .. :try_end_67d} :catchall_748

    .line 1987
    const/4 v3, 0x0

    :try_start_67e
    iput-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->restBuffer:Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 1988
    monitor-exit v2
    :try_end_681
    .catchall {:try_start_67e .. :try_end_681} :catchall_6a1

    .line 1989
    :try_start_681
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_684
    .catch Ljava/io/IOException; {:try_start_681 .. :try_end_684} :catch_74b
    .catchall {:try_start_681 .. :try_end_684} :catchall_748

    .line 1990
    :try_start_684
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1992
    monitor-exit v2

    goto :goto_6a5

    :catchall_69d
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_6a0
    .catchall {:try_start_684 .. :try_end_6a0} :catchall_69d

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_6a0
    throw v3
    :try_end_6a1
    .catch Ljava/io/IOException; {:try_start_6a0 .. :try_end_6a1} :catch_74b
    .catchall {:try_start_6a0 .. :try_end_6a1} :catchall_748

    .line 1988
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catchall_6a1
    move-exception v0

    move-object v3, v0

    :try_start_6a3
    monitor-exit v2
    :try_end_6a4
    .catchall {:try_start_6a3 .. :try_end_6a4} :catchall_6a1

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_6a4
    throw v3

    .line 1995
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_6a5
    :goto_6a5
    sget-boolean v2, Lcom/android/okhttp/internal/http/HttpEngine;->HTTPTIMER:Z

    if-eqz v2, :cond_6cd

    .line 1996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 1997
    .local v2, "tmp":J
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->waitTime:J

    add-long/2addr v8, v2

    iput-wide v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->waitTime:J

    .line 1998
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_6cd

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time used for wait buffer to read:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_6cd
    .catch Ljava/io/IOException; {:try_start_6a4 .. :try_end_6cd} :catch_74b
    .catchall {:try_start_6a4 .. :try_end_6cd} :catchall_748

    .line 2000
    .end local v2    # "tmp":J
    .end local v5    # "t1":J
    :cond_6cd
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    goto/16 :goto_311

    .line 1982
    .end local v11    # "readLenForReturn":I
    .restart local v5    # "t1":J
    .restart local v9    # "readLenForReturn":I
    :catchall_6d5
    move-exception v0

    move-object v2, v0

    move v11, v9

    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :goto_6d8
    :try_start_6d8
    monitor-exit v4
    :try_end_6d9
    .catchall {:try_start_6d8 .. :try_end_6d9} :catchall_6da

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_6d9
    throw v2

    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catchall_6da
    move-exception v0

    move-object v2, v0

    goto :goto_6d8

    .line 1851
    .end local v5    # "t1":J
    :cond_6dd
    move v9, v11

    .line 2003
    .end local v11    # "readLenForReturn":I
    .restart local v9    # "readLenForReturn":I
    :goto_6de
    move v11, v9

    .end local v9    # "readLenForReturn":I
    .restart local v11    # "readLenForReturn":I
    :cond_6df
    :goto_6df
    const/4 v2, -0x1

    if-ne v7, v2, :cond_6f8

    .line 2004
    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->unexpectedEndOfInput()V

    .line 2005
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_6f0

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "unexpected end of stream"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2006
    :cond_6f0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v2

    .line 2008
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_6f8
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    int-to-long v4, v7

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    .line 2010
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_732

    .line 2011
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    .line 2012
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_723

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no byte remained, start to end input, remain is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bytesRemaining:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2013
    :cond_723
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->endOfInput(Z)V

    .line 2014
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_732

    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "end to end input"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_732
    .catch Ljava/io/IOException; {:try_start_6d9 .. :try_end_732} :catch_74b
    .catchall {:try_start_6d9 .. :try_end_732} :catchall_748

    .line 2017
    :cond_732
    if-ltz v11, :cond_73e

    .line 2027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 2028
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 2017
    return v11

    .line 2018
    :cond_73e
    const/4 v2, 0x0

    .line 2027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 2028
    iput-boolean v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 2018
    return v7

    .line 2027
    .end local v7    # "read":I
    .end local v11    # "readLenForReturn":I
    .end local v12    # "toReadCount":I
    :catchall_748
    move-exception v0

    move-object v2, v0

    goto :goto_779

    .line 2020
    :catch_74b
    move-exception v0

    move-object v2, v0

    .line 2021
    .local v2, "ex":Ljava/io/IOException;
    :try_start_74d
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_76b

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2022
    :cond_76b
    sget-boolean v3, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v3, :cond_774

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v3, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 2023
    :cond_774
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bHasIOException:Z

    .line 2024
    nop

    .end local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v2
    :try_end_779
    .catchall {:try_start_74d .. :try_end_779} :catchall_748

    .line 2027
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :goto_779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mLastReadTime:J

    .line 2028
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bAppIsReadingNow:Z

    .line 2029
    throw v2
.end method

.method protected blacklist setTime(I)V
    .registers 9
    .param p1, "sid"    # I

    .line 2446
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_4d

    .line 2447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    .line 2448
    .local v0, "timeDiff":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_4d

    .line 2449
    :cond_1e
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed calc >> set time for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    aget-wide v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " with a inc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/Throwable;)V

    .line 2452
    .end local v0    # "timeDiff":J
    :cond_4d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mTimeForDownload:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mStartReadTime:[J

    aget-wide v3, v3, p1

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 2453
    return-void
.end method

.method protected blacklist startSingleThreadRunning(Z)V
    .registers 5
    .param p1, "isSingleThread"    # Z

    .line 2113
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_62

    .line 2114
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSingleThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bSBUsed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2116
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRAdownloadedFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bStartReadBufferSBStopSent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 2120
    :cond_62
    if-eqz p1, :cond_79

    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bSBUsed:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    if-nez v0, :cond_79

    .line 2121
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mMainThreadID:J

    const/4 v2, -0x5

    invoke-static {v0, v1, v2}, Lcom/android/okhttp/internal/http/SBServiceAPI;->stopSBUsageWithReason(JI)I

    .line 2122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bStartReadBufferSBStopSent:Z

    .line 2124
    :cond_79
    return-void
.end method
