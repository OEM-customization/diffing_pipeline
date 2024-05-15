.class public final Lcom/android/okhttp/internal/http/TwoChunkInputStream;
.super Lcom/android/okhttp/internal/http/AbstractHttpInputStream;
.source "TwoChunkInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;,
        Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_READING_SPEED:I = 0x1e

.field private static final blacklist MAXDEPTH:I = 0xa

.field private static final blacklist MAX_TIMEFOR_REUSE:J = 0x1388L

.field private static final blacklist MIN_CACHED_DATA_TO_CONSIDER:J = 0xa00000L

.field private static final blacklist MIN_DIV_SIZE:I = 0x100000


# instance fields
.field private final blacklist MAX_TIMEFORALL_BY0:J

.field private final blacklist MAX_TIMEFORALL_BY1:J

.field private final blacklist MAX_TIMEFORTAIL_BY0:J

.field private blacklist bFailedInSecChunk:Z

.field private blacklist bHasSetMainSocket:Z

.field private blacklist bSecThreadExisted:Z

.field private blacklist bSecThreadStarted:Z

.field private blacklist bServerReject:Z

.field private blacklist bSwitchOnFirstRead:Z

.field private blacklist childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

.field private blacklist connection:Lcom/android/okhttp/internal/io/RealConnection;

.field private blacklist cr:Ljava/net/CacheRequest;

.field private blacklist logger:Lcom/android/okhttp/internal/http/MultiratLog;

.field private blacklist mBytesForTail:J

.field protected blacklist mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

.field private blacklist mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

.field private blacklist mDataDownloaded:[J

.field private final blacklist mDepth:I

.field private final blacklist mEnd:J

.field private final blacklist mFullConSize:J

.field private blacklist mKeepSecondChunk:I

.field private final blacklist mLength:J

.field private blacklist mOriReqHeader:Lcom/android/okhttp/Request;

.field private blacklist mPrevSpeed:[J

.field private blacklist mRemainBytes:J

.field private blacklist mSecChunkEnd:J

.field private blacklist mSecChunkStart:J

.field private blacklist mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

.field private blacklist mSocket0:I

.field private blacklist mSocket1:I

.field private final blacklist mStart:J

.field private blacklist mStartReadTime:[J

.field private blacklist mTimeForDownload:[J

.field private final blacklist mTimeOut:I

.field private blacklist mainInput:Ljava/io/InputStream;

.field private blacklist mainSocket:Ljava/net/Socket;

.field private final blacklist parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;IIJJLcom/android/okhttp/Request;JJILcom/android/okhttp/internal/http/MultiSocketInputStream;JIZJLcom/android/okhttp/internal/http/MultiratLog;Lcom/android/okhttp/internal/io/RealConnection;)V
    .registers 64
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "httpEngine"    # Lcom/android/okhttp/internal/http/HttpEngine;
    .param p3, "sockID0"    # I
    .param p4, "sockID1"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "oriReq"    # Lcom/android/okhttp/Request;
    .param p10, "speed0"    # J
    .param p12, "speed1"    # J
    .param p14, "depth"    # I
    .param p15, "multiInput"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .param p16, "fullSize"    # J
    .param p18, "timeout"    # I
    .param p19, "bswitch"    # Z
    .param p20, "cachedData"    # J
    .param p22, "log"    # Lcom/android/okhttp/internal/http/MultiratLog;
    .param p23, "con"    # Lcom/android/okhttp/internal/io/RealConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    move-object/from16 v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move-wide/from16 v5, p10

    move-wide/from16 v3, p12

    move/from16 v15, p14

    move-object/from16 v7, p15

    move-wide/from16 v1, p16

    move/from16 v0, p19

    invoke-direct/range {p0 .. p2}, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;)V

    .line 123
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 135
    iput-boolean v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bFailedInSecChunk:Z

    .line 136
    iput-boolean v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bServerReject:Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 138
    iput-object v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainSocket:Ljava/net/Socket;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bHasSetMainSocket:Z

    .line 140
    const-wide/16 v0, -0x1

    iput-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkStart:J

    .line 141
    iput-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J

    .line 162
    move-object/from16 v2, p23

    iput-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    .line 163
    move-object/from16 v1, p22

    iput-object v1, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    .line 164
    move-object/from16 v0, p1

    iput-object v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    .line 165
    sget-boolean v18, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v18, :cond_56

    iget-object v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new input stream in twochunk creator sec mainInput = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 167
    :cond_56
    move-object/from16 v2, p9

    iput-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mOriReqHeader:Lcom/android/okhttp/Request;

    .line 168
    iput-wide v11, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    .line 169
    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mEnd:J

    .line 170
    sub-long v0, v13, v11

    const-wide/16 v18, 0x1

    add-long v0, v0, v18

    iput-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    .line 171
    iput-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    .line 172
    iput v9, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    .line 173
    iput v10, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    .line 174
    iput v15, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    .line 175
    iput-object v7, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 176
    move-wide/from16 v0, p16

    iput-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mFullConSize:J

    .line 177
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 178
    move/from16 v2, p18

    iput v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeOut:I

    .line 180
    iget-boolean v2, v7, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bISHTTPS:Z

    const-wide/16 v13, 0xfa0

    if-eqz v2, :cond_8c

    .line 181
    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORTAIL_BY0:J

    .line 182
    const-wide/16 v13, 0x2710

    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY0:J

    .line 183
    const-wide/16 v13, 0x1f40

    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY1:J

    goto :goto_98

    .line 186
    :cond_8c
    const-wide/16 v13, 0x7d0

    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORTAIL_BY0:J

    .line 187
    const-wide/16 v13, 0x1388

    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY0:J

    .line 188
    const-wide/16 v13, 0xfa0

    iput-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY1:J

    .line 191
    :goto_98
    const/4 v2, 0x2

    new-array v13, v2, [J

    iput-object v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDataDownloaded:[J

    .line 192
    new-array v13, v2, [J

    iput-object v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    .line 193
    new-array v13, v2, [J

    iput-object v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    .line 194
    new-array v13, v2, [J

    iput-object v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mPrevSpeed:[J

    .line 195
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_aa
    const-wide/16 v14, 0x0

    if-ge v13, v2, :cond_c0

    .line 196
    iget-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDataDownloaded:[J

    aput-wide v14, v2, v13

    .line 197
    iget-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    aput-wide v14, v2, v13

    .line 198
    iget-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    aput-wide v14, v2, v13

    .line 195
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, p14

    const/4 v2, 0x2

    goto :goto_aa

    .line 200
    .end local v13    # "i":I
    :cond_c0
    iget-object v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mPrevSpeed:[J

    aput-wide v5, v2, v9

    .line 201
    aput-wide v3, v2, v10

    .line 202
    move/from16 v2, p19

    const/4 v13, 0x0

    iput-boolean v2, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 204
    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    .line 205
    .local v21, "ratio":D
    cmp-long v16, v3, v14

    if-eqz v16, :cond_f1

    .line 206
    long-to-double v13, v5

    long-to-double v11, v3

    iget-object v15, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bISHTTPS:Z

    if-eqz v15, :cond_db

    const/4 v15, 0x2

    goto :goto_dc

    :cond_db
    const/4 v15, 0x1

    :goto_dc
    int-to-double v9, v15

    div-double/2addr v11, v9

    div-double/2addr v13, v11

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v21

    move-wide/from16 v9, v21

    goto :goto_f3

    .line 205
    :cond_f1
    move-wide/from16 v9, v21

    .line 208
    .end local v21    # "ratio":D
    .local v9, "ratio":D
    :goto_f3
    move-wide/from16 v11, p20

    .line 209
    .local v11, "cd":J
    const-wide/32 v13, 0xa00000

    cmp-long v13, v11, v13

    if-gtz v13, :cond_fe

    const-wide/16 v11, 0x0

    .line 210
    :cond_fe
    const-wide/16 v13, 0x400

    div-long v21, v11, v13

    div-long v21, v21, v13

    const-wide/16 v13, 0x3e8

    mul-long v13, v13, v21

    long-to-double v13, v13

    iget-object v15, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bISHTTPS:Z

    invoke-direct {v8, v0, v1, v15}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getCacheReadSpeed(JZ)D

    move-result-wide v21

    div-double v13, v13, v21

    double-to-long v13, v13

    .line 211
    .local v13, "timeForCachedData":J
    iget-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    const-wide/16 v21, 0x8

    div-long v25, v5, v21

    mul-long v25, v25, v13

    add-long v0, v0, v25

    long-to-double v0, v0

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    add-double v27, v9, v25

    iget-object v15, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    const-wide/16 v29, 0x0

    if-nez v15, :cond_130

    sget-wide v31, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    div-double v31, v9, v31

    goto :goto_132

    :cond_130
    move-wide/from16 v31, v29

    :goto_132
    sub-double v27, v27, v31

    div-double v0, v0, v27

    double-to-long v0, v0

    .line 212
    .local v0, "lenTail":J
    move-wide/from16 v27, v11

    .end local v11    # "cd":J
    .local v27, "cd":J
    iget-wide v11, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    cmp-long v11, v0, v11

    if-lez v11, :cond_141

    iget-wide v0, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    .line 213
    :cond_141
    const-wide/16 v11, 0x0

    cmp-long v15, v5, v11

    if-nez v15, :cond_14d

    const-wide v31, 0x7fffffffffffffffL

    goto :goto_151

    :cond_14d
    mul-long v31, v0, v21

    div-long v31, v31, v5

    :goto_151
    move-wide/from16 v33, v31

    .line 214
    .local v33, "timeForTailBy0":J
    const-wide/16 v23, 0x0

    cmp-long v15, v5, v23

    if-nez v15, :cond_15f

    const-wide v11, 0x7fffffffffffffffL

    goto :goto_164

    :cond_15f
    iget-wide v11, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    mul-long v11, v11, v21

    div-long/2addr v11, v5

    .line 215
    .local v11, "timeForAllBy0":J
    :goto_164
    const-wide/16 v23, 0x0

    cmp-long v15, v3, v23

    if-nez v15, :cond_174

    move/from16 v7, p4

    move-wide/from16 v31, v13

    const-wide v13, 0x7fffffffffffffffL

    goto :goto_185

    :cond_174
    move-wide/from16 v31, v13

    .end local v13    # "timeForCachedData":J
    .local v31, "timeForCachedData":J
    iget-wide v13, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    mul-long v13, v13, v21

    div-long/2addr v13, v3

    iget-object v15, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v15, v15, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->connectionTime:[J

    move/from16 v7, p4

    aget-wide v21, v15, v7

    add-long v13, v13, v21

    .line 217
    .local v13, "timeForAllBy1":J
    :goto_185
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    const-string v2, "-"

    if-eqz v15, :cond_244

    iget-object v15, v8, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move-object/from16 v21, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start twochunkInputStream["

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] : range="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p5

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p7

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v22, v2

    const-string v2, ", speed="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "), depth="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p14

    move-wide/from16 v5, v23

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", tail="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", timeForTailBy0="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v33

    .end local v33    # "timeForTailBy0":J
    .local v5, "timeForTailBy0":J
    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timeForAllBy0="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timeForAllBy1="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cachedData="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v33, v9

    move-wide/from16 v9, p20

    .end local v9    # "ratio":D
    .local v33, "ratio":D
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timeForCachedData="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v31

    .end local v31    # "timeForCachedData":J
    .local v9, "timeForCachedData":J
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", SocketTimeoutException Count: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    move-wide/from16 v31, v5

    .end local v5    # "timeForTailBy0":J
    .local v31, "timeForTailBy0":J
    iget-object v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v5, v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v5, v5, p3

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v5, v5, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    move-wide/from16 v35, v9

    move-wide/from16 v9, p5

    .end local v9    # "timeForCachedData":J
    .local v35, "timeForCachedData":J
    aget v5, v5, p4

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v21

    invoke-virtual {v6, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_251

    .end local v35    # "timeForCachedData":J
    .local v9, "ratio":D
    .local v31, "timeForCachedData":J
    .local v33, "timeForTailBy0":J
    :cond_244
    move-object/from16 v22, v2

    move-object v2, v8

    move-wide/from16 v35, v31

    move-wide/from16 v31, v33

    move-wide/from16 v7, p7

    move-wide/from16 v33, v9

    move-wide/from16 v9, p5

    .line 223
    .end local v9    # "ratio":D
    .local v31, "timeForTailBy0":J
    .local v33, "ratio":D
    .restart local v35    # "timeForCachedData":J
    :goto_251
    iget-wide v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    const-wide/32 v37, 0x100000

    cmp-long v5, v5, v37

    if-gtz v5, :cond_290

    .line 224
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 225
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    .line 226
    iput-object v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 227
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 228
    iput-boolean v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 229
    const/4 v5, 0x1

    iput v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 230
    sget-boolean v5, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v5, :cond_287

    iget-object v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "download by one interface for length is small, bSwitchOnFirstRead = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    :cond_287
    move-object/from16 v39, v22

    move-wide/from16 v21, v31

    move-wide/from16 v31, v11

    move-object v12, v2

    goto/16 :goto_4b1

    .line 232
    :cond_290
    iget-wide v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY0:J

    cmp-long v5, v11, v5

    const-wide/16 v37, 0x2

    if-ltz v5, :cond_46b

    iget-wide v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY1:J

    cmp-long v5, v13, v5

    if-gez v5, :cond_2a7

    move-object/from16 v39, v22

    move-wide/from16 v21, v31

    move-wide/from16 v31, v11

    move-object v12, v2

    goto/16 :goto_472

    .line 245
    :cond_2a7
    cmp-long v5, v3, v37

    if-gtz v5, :cond_2e7

    .line 246
    const-wide/16 v5, 0x0

    .line 247
    .end local v0    # "lenTail":J
    .local v5, "lenTail":J
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2b8

    iget-object v0, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "speed1 is 0, set tail be 0"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 248
    :cond_2b8
    iput-wide v5, v2, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 249
    new-instance v15, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    sub-long v16, v7, v18

    const/16 v20, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v39, v22

    move/from16 v2, p4

    move-wide/from16 v3, v16

    move-wide/from16 v8, p10

    move-wide/from16 v16, v5

    move-wide/from16 v21, v31

    .end local v5    # "lenTail":J
    .end local v31    # "timeForTailBy0":J
    .local v16, "lenTail":J
    .local v21, "timeForTailBy0":J
    move-wide/from16 v5, p7

    move-wide/from16 v31, v11

    move-wide/from16 v10, p7

    .end local v11    # "timeForAllBy0":J
    .local v31, "timeForAllBy0":J
    move-object/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;-><init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;IJJLcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;)V

    move-object/from16 v12, p0

    iput-object v15, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    .line 250
    const/4 v0, 0x0

    iput v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    move-wide/from16 v0, v16

    move-wide/from16 v9, v33

    goto/16 :goto_4b3

    .line 252
    .end local v16    # "lenTail":J
    .end local v21    # "timeForTailBy0":J
    .restart local v0    # "lenTail":J
    .restart local v11    # "timeForAllBy0":J
    .local v31, "timeForTailBy0":J
    :cond_2e7
    move-object/from16 v39, v22

    move-wide/from16 v21, v31

    move-wide/from16 v31, v11

    move-object v12, v2

    move-wide v10, v7

    move-wide/from16 v8, p10

    .end local v11    # "timeForAllBy0":J
    .restart local v21    # "timeForTailBy0":J
    .local v31, "timeForAllBy0":J
    cmp-long v2, v8, v37

    if-gtz v2, :cond_323

    .line 253
    const-wide/16 v5, 0x0

    .line 254
    .end local v0    # "lenTail":J
    .restart local v5    # "lenTail":J
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_302

    iget-object v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "speed0 is 0, switch chunk and set tail be 0"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 255
    :cond_302
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 256
    iput-wide v5, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 257
    new-instance v15, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    sub-long v3, v10, v18

    const/4 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-wide/from16 v16, v5

    .end local v5    # "lenTail":J
    .restart local v16    # "lenTail":J
    move-wide/from16 v5, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;-><init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;IJJLcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;)V

    iput-object v15, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    .line 258
    const/4 v0, 0x0

    iput v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    move-wide/from16 v0, v16

    move-wide/from16 v9, v33

    goto/16 :goto_4b3

    .line 260
    .end local v16    # "lenTail":J
    .restart local v0    # "lenTail":J
    :cond_323
    iget-wide v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORTAIL_BY0:J

    cmp-long v2, v21, v2

    if-ltz v2, :cond_43d

    iget v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_43d

    .line 261
    move/from16 v2, p4

    .line 262
    .local v2, "secChunkSock":I
    cmpg-double v3, v33, v25

    if-gez v3, :cond_343

    iget-object v3, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p3

    iget-object v4, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v4, v4, p4

    if-gt v3, v4, :cond_36c

    :cond_343
    iget-object v3, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_354

    iget-object v3, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p4

    if-eqz v3, :cond_36c

    :cond_354
    iget-object v3, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p3

    iget-object v4, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v4, v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v4, v4, p4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_3aa

    iget-object v3, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v3, v3, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v3, v3, p4

    if-lez v3, :cond_3aa

    .line 265
    :cond_36c
    move-wide/from16 v3, p12

    long-to-double v5, v3

    move v7, v2

    .end local v2    # "secChunkSock":I
    .local v7, "secChunkSock":I
    long-to-double v2, v8

    div-double/2addr v5, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 267
    .end local v33    # "ratio":D
    .local v2, "ratio":D
    iget-wide v4, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    long-to-double v4, v4

    add-double v25, v2, v25

    iget-object v6, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v6, v6, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-nez v6, :cond_390

    sget-wide v16, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->B_Ratio_BUF_LTE:D

    div-double v29, v2, v16

    :cond_390
    sub-double v25, v25, v29

    div-double v4, v4, v25

    double-to-long v0, v4

    .line 268
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_3a0

    iget-object v4, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v5, "ratio too small and there is disconnection experience in sockID0, switch chunk"

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 269
    :cond_3a0
    move/from16 v4, p3

    .line 270
    .end local v7    # "secChunkSock":I
    .local v4, "secChunkSock":I
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    move-wide v6, v0

    move-wide/from16 v33, v2

    move v15, v4

    goto :goto_3ad

    .line 262
    .end local v4    # "secChunkSock":I
    .local v2, "secChunkSock":I
    .restart local v33    # "ratio":D
    :cond_3aa
    move v7, v2

    .line 272
    .end local v2    # "secChunkSock":I
    .restart local v7    # "secChunkSock":I
    move v15, v7

    move-wide v6, v0

    .end local v0    # "lenTail":J
    .end local v7    # "secChunkSock":I
    .local v6, "lenTail":J
    .local v15, "secChunkSock":I
    :goto_3ad
    iput-wide v6, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 273
    iget-object v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3ee

    .line 274
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v1, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    .line 275
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3ee

    iget-object v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[fileIO][create] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v2, v2, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mDownloadedFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current file position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 277
    :cond_3ee
    new-instance v4, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    sub-long v0, v10, v6

    add-long v2, v0, v18

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v8, v4

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;-><init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;JJ)V

    iput-object v8, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 278
    new-instance v9, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    sub-long v0, v10, v6

    add-long v3, v0, v18

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v15

    move-wide v10, v6

    .end local v6    # "lenTail":J
    .local v10, "lenTail":J
    move-wide/from16 v5, p7

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;-><init>(Lcom/android/okhttp/internal/http/TwoChunkInputStream;IJJLcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;)V

    iput-object v9, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    .line 279
    const/4 v0, 0x0

    iput v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 280
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_438

    iget-object v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divide chunk with a tail length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bSwitchOnFirstRead = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 281
    .end local v15    # "secChunkSock":I
    :cond_438
    move-wide v0, v10

    move-wide/from16 v9, v33

    goto/16 :goto_4b3

    .line 283
    .end local v10    # "lenTail":J
    .restart local v0    # "lenTail":J
    :cond_43d
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_457

    iget-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tail chunk is small, not to start another chunk for length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 284
    :cond_457
    const-wide/16 v0, 0x0

    .line 285
    iput-wide v0, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 286
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    .line 287
    iput-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 288
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 289
    iput-boolean v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 290
    const/4 v2, 0x1

    iput v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    move-wide/from16 v9, v33

    goto :goto_4b3

    .line 232
    .end local v21    # "timeForTailBy0":J
    .restart local v11    # "timeForAllBy0":J
    .local v31, "timeForTailBy0":J
    :cond_46b
    move-object/from16 v39, v22

    move-wide/from16 v21, v31

    move-wide/from16 v31, v11

    move-object v12, v2

    .line 233
    .end local v11    # "timeForAllBy0":J
    .restart local v21    # "timeForTailBy0":J
    .local v31, "timeForAllBy0":J
    :goto_472
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 234
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    .line 235
    iput-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 236
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 237
    iput-boolean v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 238
    const/4 v2, 0x1

    iput v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 239
    sub-long v3, v31, v13

    iget-wide v5, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY0:J

    iget-wide v7, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->MAX_TIMEFORALL_BY1:J

    sub-long/2addr v5, v7

    mul-long v5, v5, v37

    cmp-long v3, v3, v5

    if-lez v3, :cond_495

    .line 240
    iput-boolean v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 241
    const/4 v2, -0x1

    iput v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 243
    :cond_495
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_4b1

    iget-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download by one interface time is small, bSwitchOnFirstRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 292
    .end local v21    # "timeForTailBy0":J
    .restart local v11    # "timeForAllBy0":J
    .local v31, "timeForTailBy0":J
    :cond_4b1
    :goto_4b1
    move-wide/from16 v9, v33

    .end local v11    # "timeForAllBy0":J
    .end local v33    # "ratio":D
    .restart local v9    # "ratio":D
    .restart local v21    # "timeForTailBy0":J
    .local v31, "timeForAllBy0":J
    :goto_4b3
    if-eqz p19, :cond_4b8

    const/4 v2, 0x0

    iput v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    .line 293
    :cond_4b8
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_50c

    iget-object v2, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculated mBytesForTail is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", chunk0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, p5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v39

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    move-wide v15, v0

    move-wide/from16 v0, p7

    .end local v0    # "lenTail":J
    .local v15, "lenTail":J
    sub-long v7, v0, v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", chunk1: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    sub-long v7, v0, v7

    add-long v7, v7, v18

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mKeepSecondChunk is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_511

    .end local v15    # "lenTail":J
    .restart local v0    # "lenTail":J
    :cond_50c
    move-wide/from16 v4, p5

    move-wide v15, v0

    move-wide/from16 v0, p7

    .line 297
    .end local v0    # "lenTail":J
    .restart local v15    # "lenTail":J
    :goto_511
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    return-object v0
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mFullConSize:J

    return-wide v0
.end method

.method static synthetic blacklist access$1100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeOut:I

    return v0
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/io/RealConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    return-object v0
.end method

.method static synthetic blacklist access$1302(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bFailedInSecChunk:Z

    return p1
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    return v0
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    return-object v0
.end method

.method static synthetic blacklist access$1502(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;)Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    .line 23
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    return-object p1
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    return-object v0
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkStart:J

    return-wide v0
.end method

.method static synthetic blacklist access$1702(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # J

    .line 23
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkStart:J

    return-wide p1
.end method

.method static synthetic blacklist access$1802(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # J

    .line 23
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J

    return-wide p1
.end method

.method static synthetic blacklist access$1814(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # J

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J

    return-wide v0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    return-object v0
.end method

.method static synthetic blacklist access$2002(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    return p1
.end method

.method static synthetic blacklist access$2100(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->createTwoChunkInTwoChunk(Z)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    return-wide v0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    return-wide v0
.end method

.method static synthetic blacklist access$402(Lcom/android/okhttp/internal/http/TwoChunkInputStream;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # J

    .line 23
    iput-wide p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    return-wide p1
.end method

.method static synthetic blacklist access$500(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    return-object v0
.end method

.method static synthetic blacklist access$502(Lcom/android/okhttp/internal/http/TwoChunkInputStream;Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .param p1, "x1"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    return-object p1
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    return-wide v0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    return-wide v0
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)Lcom/android/okhttp/Request;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mOriReqHeader:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/http/TwoChunkInputStream;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 23
    iget v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    return v0
.end method

.method private blacklist closeMainSocket()V
    .registers 4

    .line 362
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to close maininput and socket, input is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", socket is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 363
    :cond_2a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 364
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiratUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 365
    return-void
.end method

.method private blacklist createTwoChunkInTwoChunk(Z)V
    .registers 34
    .param p1, "bReversed"    # Z

    .line 576
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-eqz v0, :cond_14

    .line 577
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v2, "createTwoChunkInTwoChunk: session is finished"

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 578
    :cond_13
    return-void

    .line 580
    :cond_14
    monitor-enter p0

    .line 581
    :try_start_15
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    if-eqz v0, :cond_168

    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    if-nez v0, :cond_168

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_168

    .line 582
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_51

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chunk1 is finished while mRemainBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " totallen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " start offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_16a

    .line 584
    :cond_51
    :try_start_51
    iget-wide v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    iget-wide v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    const-wide/32 v6, 0x100000

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_13b

    .line 585
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v0, v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v14

    .line 586
    .local v14, "speed0":J
    iget v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    add-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    .line 587
    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v3, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getSpeed(I)J

    move-result-wide v16

    .line 588
    .local v16, "speed1":J
    new-instance v0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    iget-object v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->httpEngine:Lcom/android/okhttp/internal/http/HttpEngine;

    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v3, v9

    iget-wide v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long v9, v3, v9

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v3, v11

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    sub-long/2addr v3, v11

    const-wide/16 v28, 0x1

    sub-long v11, v3, v28

    iget-object v13, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mOriReqHeader:Lcom/android/okhttp/Request;

    iget v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    add-int/lit8 v18, v3, 0x1

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mFullConSize:J

    move-wide/from16 v19, v3

    iget v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeOut:I

    const-wide/16 v24, 0x0

    iget-object v4, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    move-wide/from16 v30, v14

    .end local v14    # "speed0":J
    .local v30, "speed0":J
    iget-object v14, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    move-object v15, v4

    move-wide/from16 v20, v19

    move-object v4, v0

    move-object/from16 v19, v2

    move/from16 v22, v3

    move/from16 v23, p1

    move-object/from16 v26, v15

    move-object/from16 v27, v14

    move-wide/from16 v14, v30

    .end local v30    # "speed0":J
    .restart local v14    # "speed0":J
    invoke-direct/range {v4 .. v27}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;-><init>(Ljava/io/InputStream;Lcom/android/okhttp/internal/http/HttpEngine;IIJJLcom/android/okhttp/Request;JJILcom/android/okhttp/internal/http/MultiSocketInputStream;JIZJLcom/android/okhttp/internal/http/MultiratLog;Lcom/android/okhttp/internal/io/RealConnection;)V

    iput-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    .line 591
    iput-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    .line 592
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_db

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new input stream in create twochunk sec mainInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 593
    :cond_db
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v0, :cond_f5

    .line 594
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isSingleThreadRun()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    .line 595
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    iget-object v2, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v2}, Lcom/android/okhttp/internal/io/RealConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->startRun(Ljava/net/Socket;)V

    .line 598
    :cond_f5
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_13a

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource check: finish reading chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v3, v5

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v3, v5

    sub-long v3, v3, v28

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    iget-wide v5, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " from child socket,  now start to read from child child input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 601
    .end local v14    # "speed0":J
    .end local v16    # "speed1":J
    :cond_13a
    goto :goto_168

    .line 603
    :cond_13b
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->startSingleThreadRunning(Z)V

    .line 604
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_168

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not to create sec thread since mRemainBytes is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " and mBytesForTail is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_166
    .catchall {:try_start_51 .. :try_end_166} :catchall_167

    goto :goto_168

    .line 608
    :catchall_167
    move-exception v0

    .line 610
    :cond_168
    :goto_168
    :try_start_168
    monitor-exit p0

    .line 611
    return-void

    .line 610
    :catchall_16a
    move-exception v0

    monitor-exit p0
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_16a

    throw v0
.end method

.method private blacklist getCacheReadSpeed(JZ)D
    .registers 6
    .param p1, "fileSize"    # J
    .param p3, "bIsHTTPS"    # Z

    .line 1558
    sget-wide v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BUF_Read_Speed:D

    return-wide v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Depth_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private blacklist readForChunk0([BII)I
    .registers 37
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/okhttp/internal/http/RouteException;
        }
    .end annotation

    .line 623
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    .line 625
    .local v5, "isMyThrown":Z
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    :try_start_c
    iget-boolean v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    if-eqz v0, :cond_41

    .line 626
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_36

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Need to switch socket for the first read from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 627
    :cond_36
    iput-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSwitchOnFirstRead:Z

    .line 628
    const/4 v5, 0x1

    .line 629
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Please switch socket"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "isMyThrown":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v0

    .line 631
    .restart local v5    # "isMyThrown":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_41
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    aget-wide v9, v0, v9

    cmp-long v0, v9, v6

    if-nez v0, :cond_55

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    aput-wide v10, v0, v9

    .line 632
    :cond_55
    invoke-direct {v1, v8}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->createTwoChunkInTwoChunk(Z)V

    .line 633
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 634
    .local v0, "read":I
    if-ltz v0, :cond_70

    .line 637
    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v9, :cond_6f

    .line 638
    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    int-to-long v10, v0

    invoke-virtual {v1, v9, v10, v11}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->incByte(IJ)V

    .line 639
    iget v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v1, v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->setTime(I)V

    .line 641
    :cond_6f
    return v0

    .line 635
    :cond_70
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read return exception value "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "isMyThrown":Z
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v9
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_87} :catch_87

    .line 643
    .end local v0    # "read":I
    .restart local v5    # "isMyThrown":Z
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catch_87
    move-exception v0

    move-object v9, v0

    .line 644
    .local v9, "e":Ljava/io/IOException;
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_b9

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException in TwoChunk reading while mRemainBytes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " totallen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " start offset="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 645
    :cond_b9
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_c2

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 646
    :cond_c2
    const/4 v10, 0x1

    if-nez v5, :cond_d0

    .line 647
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    iget v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    aget v12, v0, v11

    add-int/2addr v12, v10

    aput v12, v0, v11

    .line 648
    :cond_d0
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_fc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SocketTimeoutException Count: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v11, v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v11, v11, v8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-object v11, v11, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->disconnCount:[I

    aget v11, v11, v10

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->log(Ljava/lang/String;)V

    .line 649
    :cond_fc
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bDoNotUseMultiSockSinceWiFiOnly:Z

    if-eqz v0, :cond_10e

    .line 650
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_10d

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v6, "throw exception since bDoNotUseMultiSockSinceWiFiOnly is true"

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 651
    :cond_10d
    throw v9

    .line 653
    :cond_10e
    monitor-enter p0

    .line 654
    :try_start_10f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_end_111
    .catchall {:try_start_10f .. :try_end_111} :catchall_3af

    if-eqz v0, :cond_144

    .line 655
    :try_start_113
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_11e

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v6, "childIS is created"

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 656
    :cond_11e
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 657
    .restart local v0    # "read":I
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_13e

    iget-object v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "childIS is created and read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 658
    :cond_13e
    monitor-exit p0
    :try_end_13f
    .catchall {:try_start_113 .. :try_end_13f} :catchall_140

    return v0

    .line 660
    .end local v0    # "read":I
    :catchall_140
    move-exception v0

    move-object v12, v9

    goto/16 :goto_3b1

    :cond_144
    :try_start_144
    monitor-exit p0
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_3af

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 662
    .local v11, "startWaitTime":J
    const/4 v0, 0x0

    .line 664
    .local v0, "bForceThrow":Z
    const/4 v13, 0x0

    move v14, v13

    move v13, v0

    .line 665
    .end local v0    # "bForceThrow":Z
    .local v13, "bForceThrow":Z
    .local v14, "triedNum":I
    :goto_14d
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v0, :cond_3ad

    .line 667
    const/4 v0, 0x3

    if-le v14, v0, :cond_180

    .line 668
    :try_start_156
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_161

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v15, "tried twice, check NB status"

    invoke-virtual {v0, v15}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 669
    :cond_161
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->isMultiRATworking()Z

    move-result v0

    if-nez v0, :cond_177

    .line 670
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_174

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v15, "tried twice, and NB Status is false"

    invoke-virtual {v0, v15}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 671
    :cond_174
    const/4 v13, 0x1

    .line 672
    nop

    .end local v5    # "isMyThrown":Z
    .end local v11    # "startWaitTime":J
    .end local v13    # "bForceThrow":Z
    .end local v14    # "triedNum":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v9
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_177} :catch_179

    .line 675
    .restart local v5    # "isMyThrown":Z
    .restart local v11    # "startWaitTime":J
    .restart local v13    # "bForceThrow":Z
    .restart local v14    # "triedNum":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_177
    const/4 v14, 0x0

    goto :goto_180

    .line 726
    :catch_179
    move-exception v0

    move v6, v10

    move-wide/from16 v30, v11

    move-object v12, v9

    goto/16 :goto_326

    .line 678
    :cond_180
    :goto_180
    :try_start_180
    monitor-enter p0
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_181} :catch_321

    .line 679
    :try_start_181
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_2c1

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "s":Ljava/net/Socket;
    sget-boolean v15, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_188
    .catchall {:try_start_181 .. :try_end_188} :catchall_316

    if-eqz v15, :cond_1b4

    :try_start_18a
    iget-object v15, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to close main input stream  in exception in depth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", input is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_1ac
    .catchall {:try_start_18a .. :try_end_1ac} :catchall_1ad

    goto :goto_1b4

    .line 714
    .end local v0    # "s":Ljava/net/Socket;
    :catchall_1ad
    move-exception v0

    move v6, v10

    move-wide/from16 v30, v11

    move-object v12, v9

    goto/16 :goto_31b

    .line 682
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_1b4
    :goto_1b4
    :try_start_1b4
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->closeMainSocket()V

    .line 683
    iget-object v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    iget-object v15, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mOriReqHeader:Lcom/android/okhttp/Request;
    :try_end_1bd
    .catchall {:try_start_1b4 .. :try_end_1bd} :catchall_316

    move-wide/from16 v30, v11

    .end local v11    # "startWaitTime":J
    .local v30, "startWaitTime":J
    :try_start_1bf
    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J
    :try_end_1c1
    .catchall {:try_start_1bf .. :try_end_1c1} :catchall_2bd

    move-object v12, v9

    .end local v9    # "e":Ljava/io/IOException;
    .local v12, "e":Ljava/io/IOException;
    :try_start_1c2
    iget-wide v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v10, v8

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long v21, v10, v8

    iget-wide v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mEnd:J

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mFullConSize:J

    move-object/from16 v32, v0

    .end local v0    # "s":Ljava/net/Socket;
    .local v32, "s":Ljava/net/Socket;
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    const/16 v28, 0x1

    const/16 v29, 0x0

    move-object/from16 v18, v6

    move/from16 v19, v7

    move-object/from16 v20, v15

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    move-object/from16 v27, v0

    invoke-virtual/range {v18 .. v29}, Lcom/android/okhttp/internal/io/RealConnection;->extremeConditionConnect(ILcom/android/okhttp/Request;JJJLcom/android/okhttp/internal/http/MultiSocketInputStream;ZZ)Ljava/net/Socket;

    move-result-object v0

    .line 685
    .end local v32    # "s":Ljava/net/Socket;
    .restart local v0    # "s":Ljava/net/Socket;
    if-eqz v0, :cond_2ae

    .line 690
    iget v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    .line 691
    .local v6, "preMainSocketID":I
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v7

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/android/okhttp/internal/io/RealConnection;->getLocalAddr(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_209

    .line 692
    iput v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I
    :try_end_204
    .catchall {:try_start_1c2 .. :try_end_204} :catchall_2ba

    .line 693
    const/4 v7, 0x1

    :try_start_205
    iput v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    const/4 v7, 0x0

    goto :goto_20f

    .line 696
    :cond_209
    const/4 v7, 0x1

    iput v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I
    :try_end_20c
    .catchall {:try_start_205 .. :try_end_20c} :catchall_2aa

    .line 697
    const/4 v7, 0x0

    :try_start_20d
    iput v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket1:I

    .line 699
    :goto_20f
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_233

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is TwoChunk MainThead, actually switch to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 700
    :cond_233
    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    if-eqz v8, :cond_253

    iget-boolean v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    if-eqz v8, :cond_253

    iget v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    if-eq v8, v6, :cond_253

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    if-eqz v8, :cond_253

    .line 701
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_24e

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v9, "Need to switch TwoChunk SecondThread Socket ID"

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 702
    :cond_24e
    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    invoke-virtual {v8, v6}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->switchSocket(I)V

    .line 704
    :cond_253
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_281

    iget-object v8, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Twochunk Main socket reconnected, now from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    move-object v15, v8

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v10, v7

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mEnd:J

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v15

    invoke-virtual {v8, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 707
    :cond_281
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    .line 708
    iget-object v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v7, v0}, Lcom/android/okhttp/internal/io/RealConnection;->setSocket(Ljava/net/Socket;)V

    .line 709
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_2a8

    iget-object v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new input stream in twochunk main exception sec mainInput = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_2a8
    .catchall {:try_start_20d .. :try_end_2a8} :catchall_2ba

    .line 710
    .end local v0    # "s":Ljava/net/Socket;
    .end local v6    # "preMainSocketID":I
    :cond_2a8
    const/4 v6, 0x1

    goto :goto_2d0

    .line 714
    :catchall_2aa
    move-exception v0

    move v6, v7

    goto/16 :goto_31b

    .line 686
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_2ae
    const/4 v13, 0x1

    .line 687
    const/4 v6, 0x1

    :try_start_2b0
    iput-boolean v6, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bServerReject:Z

    .line 688
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot Connect to Server"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "isMyThrown":Z
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "bForceThrow":Z
    .end local v14    # "triedNum":I
    .end local v30    # "startWaitTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v7

    .line 714
    .end local v0    # "s":Ljava/net/Socket;
    .restart local v5    # "isMyThrown":Z
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "bForceThrow":Z
    .restart local v14    # "triedNum":I
    .restart local v30    # "startWaitTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catchall_2ba
    move-exception v0

    const/4 v6, 0x1

    goto :goto_31b

    .end local v12    # "e":Ljava/io/IOException;
    .restart local v9    # "e":Ljava/io/IOException;
    :catchall_2bd
    move-exception v0

    move-object v12, v9

    const/4 v6, 0x1

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_31b

    .line 712
    .end local v12    # "e":Ljava/io/IOException;
    .end local v30    # "startWaitTime":J
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "startWaitTime":J
    :cond_2c1
    move v6, v10

    move-wide/from16 v30, v11

    move-object v12, v9

    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "startWaitTime":J
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v30    # "startWaitTime":J
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_2d0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v7, "childIS is created before this "

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 714
    :cond_2d0
    :goto_2d0
    monitor-exit p0
    :try_end_2d1
    .catchall {:try_start_2b0 .. :try_end_2d1} :catchall_31f

    .line 715
    :try_start_2d1
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    aget-wide v7, v0, v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_2e7

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    aput-wide v8, v0, v7

    .line 716
    :cond_2e7
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 717
    .local v0, "readLen":I
    if-ltz v0, :cond_2ff

    .line 720
    iget-object v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v7, :cond_2fe

    .line 721
    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    int-to-long v8, v0

    invoke-virtual {v1, v7, v8, v9}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->incByte(IJ)V

    .line 722
    iget v7, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v1, v7}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->setTime(I)V

    .line 724
    :cond_2fe
    return v0

    .line 718
    :cond_2ff
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read return exception value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "isMyThrown":Z
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "bForceThrow":Z
    .end local v14    # "triedNum":I
    .end local v30    # "startWaitTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v7
    :try_end_316
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_316} :catch_31d

    .line 714
    .end local v0    # "readLen":I
    .restart local v5    # "isMyThrown":Z
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "startWaitTime":J
    .restart local v13    # "bForceThrow":Z
    .restart local v14    # "triedNum":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catchall_316
    move-exception v0

    move v6, v10

    move-wide/from16 v30, v11

    move-object v12, v9

    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "startWaitTime":J
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v30    # "startWaitTime":J
    :goto_31b
    :try_start_31b
    monitor-exit p0
    :try_end_31c
    .catchall {:try_start_31b .. :try_end_31c} :catchall_31f

    .end local v5    # "isMyThrown":Z
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "bForceThrow":Z
    .end local v14    # "triedNum":I
    .end local v30    # "startWaitTime":J
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :try_start_31c
    throw v0
    :try_end_31d
    .catch Ljava/io/IOException; {:try_start_31c .. :try_end_31d} :catch_31d

    .line 726
    .restart local v5    # "isMyThrown":Z
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v13    # "bForceThrow":Z
    .restart local v14    # "triedNum":I
    .restart local v30    # "startWaitTime":J
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :catch_31d
    move-exception v0

    goto :goto_326

    .line 714
    :catchall_31f
    move-exception v0

    goto :goto_31b

    .line 726
    .end local v12    # "e":Ljava/io/IOException;
    .end local v30    # "startWaitTime":J
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "startWaitTime":J
    :catch_321
    move-exception v0

    move v6, v10

    move-wide/from16 v30, v11

    move-object v12, v9

    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "startWaitTime":J
    .restart local v12    # "e":Ljava/io/IOException;
    .restart local v30    # "startWaitTime":J
    :goto_326
    move-object v7, v0

    .line 727
    .local v7, "ex":Ljava/io/IOException;
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_341

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in TwoChunk mainInput Handover while force throw is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 728
    :cond_341
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_34a

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v0, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 729
    :cond_34a
    if-nez v13, :cond_3ac

    .line 730
    add-int/lit8 v8, v14, 0x1

    .line 731
    .end local v14    # "triedNum":I
    .local v8, "triedNum":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v30

    .line 732
    .local v9, "waitedTime":J
    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    iget v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    aget-wide v14, v0, v11

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-lez v0, :cond_367

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_367

    .line 733
    invoke-virtual {v1, v11, v9, v10}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->decTime(IJ)V

    .line 734
    :cond_367
    iget v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeOut:I

    if-lez v0, :cond_395

    int-to-long v14, v0

    cmp-long v0, v9, v14

    if-lez v0, :cond_395

    .line 735
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_394

    iget-object v0, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TwoChunk waited time "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " time out "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeOut:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 736
    :cond_394
    throw v7

    .line 738
    :cond_395
    monitor-enter p0

    .line 740
    const-wide/16 v14, 0x1f4

    :try_start_398
    invoke-virtual {v1, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_39b
    .catchall {:try_start_398 .. :try_end_39b} :catchall_39c

    .line 742
    :goto_39b
    goto :goto_39e

    :catchall_39c
    move-exception v0

    goto :goto_39b

    .line 743
    :goto_39e
    :try_start_39e
    monitor-exit p0

    .line 744
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "waitedTime":J
    move v10, v6

    move v14, v8

    move-object v9, v12

    move-wide/from16 v6, v16

    move-wide/from16 v11, v30

    const/4 v8, 0x0

    goto/16 :goto_14d

    .line 743
    .restart local v7    # "ex":Ljava/io/IOException;
    .restart local v9    # "waitedTime":J
    :catchall_3a9
    move-exception v0

    monitor-exit p0
    :try_end_3ab
    .catchall {:try_start_39e .. :try_end_3ab} :catchall_3a9

    throw v0

    .line 729
    .end local v8    # "triedNum":I
    .end local v9    # "waitedTime":J
    .restart local v14    # "triedNum":I
    :cond_3ac
    throw v7

    .line 746
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v30    # "startWaitTime":J
    .local v9, "e":Ljava/io/IOException;
    .restart local v11    # "startWaitTime":J
    :cond_3ad
    move-object v12, v9

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "e":Ljava/io/IOException;
    throw v12

    .line 660
    .end local v11    # "startWaitTime":J
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "bForceThrow":Z
    .end local v14    # "triedNum":I
    .restart local v9    # "e":Ljava/io/IOException;
    :catchall_3af
    move-exception v0

    move-object v12, v9

    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "e":Ljava/io/IOException;
    :goto_3b1
    :try_start_3b1
    monitor-exit p0
    :try_end_3b2
    .catchall {:try_start_3b1 .. :try_end_3b2} :catchall_3b3

    throw v0

    :catchall_3b3
    move-exception v0

    goto :goto_3b1
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-wide v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 491
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 494
    :cond_f
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v0

    .line 495
    :try_start_12
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->getRestLength()J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    return v1

    .line 496
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method protected blacklist bTwoInfDownloading()Z
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    return v0

    .line 321
    :cond_7
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bTwoInfDownloading()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwoChunkInputStream:close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 515
    :cond_1c
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->closed:Z

    if-eqz v0, :cond_21

    .line 516
    return-void

    .line 518
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->closed:Z

    .line 520
    :try_start_24
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    if-eqz v0, :cond_35

    .line 521
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_51

    .line 522
    :try_start_2b
    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->clearBuffer()V

    .line 523
    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :try_start_34
    throw v1

    .line 525
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v0, :cond_3e

    .line 526
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->close()V

    .line 528
    :cond_3e
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    if-eqz v0, :cond_47

    .line 529
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->closeSocketAndStreams()V

    .line 531
    :cond_47
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_50

    .line 532
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mChildRAdownloadedFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_51

    .line 537
    :cond_50
    goto :goto_5b

    .line 535
    :catchall_51
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Throwable;
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    invoke-virtual {v1, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 538
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5b
    :goto_5b
    return-void
.end method

.method protected blacklist decTime(IJ)V
    .registers 4
    .param p1, "sid"    # I
    .param p2, "time"    # J

    .line 565
    return-void
.end method

.method protected blacklist getDownloadLen(I)J
    .registers 6
    .param p1, "sid"    # I

    .line 541
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v2, :cond_b

    const-wide/16 v2, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadLen(I)J

    move-result-wide v2

    :goto_f
    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected blacklist getDownloadTime(I)J
    .registers 6
    .param p1, "sid"    # I

    .line 545
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v0, v0, p1

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v2, :cond_b

    const-wide/16 v2, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v2, p1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getDownloadTime(I)J

    move-result-wide v2

    :goto_f
    add-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getNeedToExitSecThread()I
    .registers 2

    .line 354
    iget v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mKeepSecondChunk:I

    return v0
.end method

.method protected blacklist getSecChunkRange()[J
    .registers 13

    .line 325
    const/4 v0, 0x2

    new-array v1, v0, [J

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkStart:J

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecChunkEnd:J

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    .line 326
    .local v1, "ret":[J
    const/4 v2, 0x0

    .line 327
    .local v2, "childSec":[J
    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-eqz v3, :cond_16

    .line 328
    invoke-virtual {v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->getSecChunkRange()[J

    move-result-object v2

    .line 330
    :cond_16
    if-eqz v2, :cond_82

    array-length v3, v2

    if-ne v3, v0, :cond_82

    .line 331
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

    .line 332
    aget-wide v6, v2, v4

    aput-wide v6, v1, v4

    .line 333
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    goto :goto_82

    .line 335
    :cond_3a
    aget-wide v6, v2, v5

    aget-wide v8, v1, v4

    cmp-long v0, v6, v8

    if-nez v0, :cond_4f

    aget-wide v6, v2, v4

    aget-wide v8, v1, v4

    cmp-long v0, v6, v8

    if-gez v0, :cond_4f

    .line 336
    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    goto :goto_82

    .line 338
    :cond_4f
    aget-wide v6, v2, v4

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-nez v0, :cond_64

    aget-wide v6, v2, v5

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-lez v0, :cond_64

    .line 339
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    goto :goto_82

    .line 341
    :cond_64
    aget-wide v6, v2, v4

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-lez v0, :cond_82

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    iget-wide v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v6, v8

    aget-wide v8, v1, v5

    cmp-long v0, v6, v8

    if-lez v0, :cond_82

    .line 342
    aget-wide v6, v2, v4

    aput-wide v6, v1, v4

    .line 343
    aget-wide v3, v2, v5

    aput-wide v3, v1, v5

    .line 346
    :cond_82
    :goto_82
    return-object v1
.end method

.method protected blacklist incByte(IJ)V
    .registers 9
    .param p1, "sid"    # I
    .param p2, "bytes"    # J

    .line 568
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_40

    .line 569
    const-wide/32 v0, 0x100000

    cmp-long v0, p2, v0

    if-gtz v0, :cond_11

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_40

    .line 570
    :cond_11
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speed calc >> set data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v3, v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " with a inc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/Throwable;)V

    .line 572
    :cond_40
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDataDownloaded:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 573
    return-void
.end method

.method protected blacklist isClosed()Z
    .registers 2

    .line 507
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->closed:Z

    return v0
.end method

.method protected blacklist isServerReject()Z
    .registers 2

    .line 501
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bServerReject:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 502
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->childIS:Lcom/android/okhttp/internal/http/TwoChunkInputStream;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 503
    :cond_c
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->isServerReject()Z

    move-result v0

    return v0
.end method

.method public blacklist isSingleThreadRun()Z
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-super {p0}, Lcom/android/okhttp/internal/http/AbstractHttpInputStream;->read()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 16
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->checkNotClosed()V

    .line 372
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/okhttp/internal/http/MultiratUtil;->checkOffsetAndCount(III)V

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "readLen":I
    const/4 v1, 0x0

    if-nez p3, :cond_37

    .line 376
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read for 0 : buffer.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 377
    :cond_36
    return v1

    .line 380
    :cond_37
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_4b

    .line 381
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v3, "finish to read size, no byte remained, return 0"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 382
    :cond_4a
    return v1

    .line 384
    :cond_4b
    cmp-long v6, v2, v4

    if-gez v6, :cond_6c

    .line 385
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish to read size, remained bytes is negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 386
    :cond_6b
    return v1

    .line 389
    :cond_6c
    move v1, p3

    .line 390
    .local v1, "toReadCount":I
    int-to-long v6, v1

    cmp-long v2, v6, v2

    if-lez v2, :cond_99

    .line 391
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_96

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toReadCount "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " > mReamainBytes "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 392
    :cond_96
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    long-to-int v1, v2

    .line 395
    :cond_99
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bHasSetMainSocket:Z

    const/4 v3, 0x1

    if-nez v2, :cond_a9

    .line 396
    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainSocket:Ljava/net/Socket;

    if-eqz v2, :cond_a7

    .line 397
    iget-object v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->connection:Lcom/android/okhttp/internal/io/RealConnection;

    invoke-virtual {v6, v2}, Lcom/android/okhttp/internal/io/RealConnection;->setSocket(Ljava/net/Socket;)V

    .line 399
    :cond_a7
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bHasSetMainSocket:Z

    .line 402
    :cond_a9
    iget-wide v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v2, v6, v4

    if-gtz v2, :cond_b8

    .line 404
    :try_start_af
    invoke-direct {p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->readForChunk0([BII)I

    move-result v2
    :try_end_b3
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_af .. :try_end_b3} :catch_b6

    move v0, v2

    .line 406
    :goto_b4
    goto/16 :goto_203

    .line 405
    :catch_b6
    move-exception v2

    goto :goto_b4

    .line 409
    :cond_b8
    iget-wide v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    cmp-long v2, v8, v6

    if-lez v2, :cond_ce

    .line 411
    int-to-long v2, v1

    sub-long/2addr v8, v6

    :try_start_c0
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->readForChunk0([BII)I

    move-result v2
    :try_end_c9
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_c0 .. :try_end_c9} :catch_cc

    move v0, v2

    .line 413
    :goto_ca
    goto/16 :goto_203

    .line 412
    :catch_cc
    move-exception v2

    goto :goto_ca

    .line 416
    :cond_ce
    cmp-long v2, v8, v6

    if-nez v2, :cond_18f

    .line 417
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_118

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resource check: finish reading child chunk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStart:J

    iget-wide v9, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    add-long/2addr v7, v9

    iget-wide v9, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mLength:J

    iget-wide v9, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " from child socket,  now mRemainBytes==mBytesForTail=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 420
    :cond_118
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bFailedInSecChunk:Z

    if-eqz v2, :cond_131

    .line 421
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_127

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v6, "bFailedInSecChunk is true, not to use second chunk, and never re-divide"

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 422
    :cond_127
    iput-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    .line 424
    :try_start_129
    invoke-direct {p0, p1, p2, v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->readForChunk0([BII)I

    move-result v2
    :try_end_12d
    .catch Lcom/android/okhttp/internal/http/RouteException; {:try_start_129 .. :try_end_12d} :catch_12f

    move v0, v2

    .line 426
    :goto_12e
    goto :goto_18f

    .line 425
    :catch_12f
    move-exception v2

    goto :goto_12e

    .line 429
    :cond_131
    monitor-enter p0

    .line 430
    :try_start_132
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    if-eqz v2, :cond_145

    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    if-eqz v2, :cond_145

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    if-eqz v2, :cond_145

    .line 431
    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    iget v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSocket0:I

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->startTryBoth(I)V

    .line 432
    :cond_145
    monitor-exit p0
    :try_end_146
    .catchall {:try_start_132 .. :try_end_146} :catchall_18c

    .line 433
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_16c

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to close main input stream in depth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", input is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainInput:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 434
    :cond_16c
    invoke-direct {p0}, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->closeMainSocket()V

    .line 435
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_18f

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end to close main stream in depth "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_18f

    .line 432
    :catchall_18c
    move-exception v2

    :try_start_18d
    monitor-exit p0
    :try_end_18e
    .catchall {:try_start_18d .. :try_end_18e} :catchall_18c

    throw v2

    .line 438
    :cond_18f
    :goto_18f
    iget-wide v6, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_203

    .line 439
    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    monitor-enter v2

    .line 440
    :try_start_198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 441
    .local v6, "startTime":J
    :goto_19c
    iget-object v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->parentIS:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    iget-boolean v8, v8, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->bFinished:Z

    if-nez v8, :cond_1fe

    .line 442
    iget-object v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    invoke-virtual {v8, p1, p2, v1}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;->read([BII)I

    move-result v8

    move v0, v8

    .line 443
    if-nez v0, :cond_1fe

    .line 444
    iget-boolean v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bFailedInSecChunk:Z

    if-eqz v8, :cond_1c4

    .line 445
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1ba

    iget-object v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v5, "exception in reading secChunk"

    invoke-virtual {v4, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 446
    :cond_1ba
    iput-boolean v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bServerReject:Z

    .line 447
    new-instance v3, Ljava/io/IOException;

    const-string v4, "exception in reading secChunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "readLen":I
    .end local v1    # "toReadCount":I
    .end local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    throw v3

    .line 449
    .restart local v0    # "readLen":I
    .restart local v1    # "toReadCount":I
    .restart local p0    # "this":Lcom/android/okhttp/internal/http/TwoChunkInputStream;
    .restart local p1    # "buffer":[B
    .restart local p2    # "offset":I
    .restart local p3    # "count":I
    :cond_1c4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1f4

    .line 450
    sget-boolean v8, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v8, :cond_1eb

    iget-object v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wait for long time without read data, sec thread = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 451
    :cond_1eb
    iget-object v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    if-eqz v8, :cond_1f4

    .line 452
    iget-object v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    invoke-virtual {v8, v3}, Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;->createTwoChunkInSec(Z)V
    :try_end_1f4
    .catchall {:try_start_198 .. :try_end_1f4} :catchall_200

    .line 456
    :cond_1f4
    :try_start_1f4
    iget-object v8, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDBuf:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SimpleDataBuffer;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1fb
    .catchall {:try_start_1f4 .. :try_end_1fb} :catchall_1fc

    goto :goto_1fd

    .line 458
    :catchall_1fc
    move-exception v8

    :goto_1fd
    goto :goto_19c

    .line 464
    .end local v6    # "startTime":J
    :cond_1fe
    :try_start_1fe
    monitor-exit v2

    goto :goto_203

    :catchall_200
    move-exception v3

    monitor-exit v2
    :try_end_202
    .catchall {:try_start_1fe .. :try_end_202} :catchall_200

    throw v3

    .line 468
    :cond_203
    :goto_203
    const/4 v2, -0x1

    if-ne v0, v2, :cond_22d

    .line 469
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_264

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected end of stream, but return 0, mRemainBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mBytesForTail="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mBytesForTail:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_264

    .line 472
    :cond_22d
    array-length v2, p1

    if-le v0, v2, :cond_23c

    .line 473
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    array-length v6, p1

    sub-int v6, v0, v6

    int-to-long v6, v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    .line 474
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    goto :goto_242

    .line 477
    :cond_23c
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    int-to-long v6, v0

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    .line 480
    :goto_242
    iget-wide v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_264

    .line 481
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_264

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no byte remained, start to end input "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mRemainBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 486
    :cond_264
    :goto_264
    return v0
.end method

.method protected blacklist setTime(I)V
    .registers 9
    .param p1, "sid"    # I

    .line 549
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_4d

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    .line 551
    .local v0, "timeDiff":J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_4d

    .line 552
    :cond_1e
    iget-object v2, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed calc >> set time for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    aget-wide v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " with a inc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->w(Ljava/lang/Throwable;)V

    .line 555
    .end local v0    # "timeDiff":J
    :cond_4d
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mTimeForDownload:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mStartReadTime:[J

    aget-wide v3, v3, p1

    sub-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 556
    return-void
.end method

.method public blacklist startRun(Ljava/net/Socket;)V
    .registers 6
    .param p1, "ms"    # Ljava/net/Socket;

    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    if-eqz v0, :cond_40

    .line 306
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "start run sec chunk"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 307
    :cond_10
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mSecThread:Lcom/android/okhttp/internal/http/TwoChunkInputStream$SecondChunkThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":SecChunk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mDepth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 308
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadExisted:Z

    .line 309
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->bSecThreadStarted:Z

    .line 310
    iput-object p1, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->mainSocket:Ljava/net/Socket;

    .line 311
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 312
    .end local v0    # "t":Ljava/lang/Thread;
    goto :goto_4b

    .line 314
    :cond_40
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/okhttp/internal/http/TwoChunkInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;

    const-string v1, "sec chunk is not created"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 316
    :cond_4b
    :goto_4b
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_4d

    throw v0
.end method
