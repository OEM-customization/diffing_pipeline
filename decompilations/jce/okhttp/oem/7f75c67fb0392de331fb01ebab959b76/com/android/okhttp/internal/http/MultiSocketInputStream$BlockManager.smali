.class Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
.super Ljava/lang/Object;
.source "MultiSocketInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/MultiSocketInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockManager"
.end annotation


# static fields
.field public static final blacklist BLOCKINFOSIZE:I = 0x4

.field public static final blacklist MIN_BLOCKSIZE_TO_HANDOVER:I = 0x20000


# instance fields
.field protected blacklist headerTime:[J

.field private blacklist httpRequestID:[I

.field private blacklist minNotReadBlockID:I

.field protected blacklist reconnTime:[J

.field private blacklist socketSpeed:[J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

.field protected blacklist toBeReadLen:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4079
    iput-object p1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4080
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    .line 4081
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    .line 4082
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->reconnTime:[J

    .line 4083
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->headerTime:[J

    .line 4084
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    .line 4085
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 4086
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 4087
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 4088
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->reconnTime:[J

    aput-wide v2, v1, v0

    .line 4089
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->headerTime:[J

    aput-wide v2, v1, v0

    .line 4090
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    aput-wide v2, v1, v0

    .line 4085
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 4092
    .end local v0    # "i":I
    :cond_4e
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    .line 4093
    return-void
.end method

.method static synthetic blacklist access$6000(Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    .line 4042
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    return-object v0
.end method

.method private blacklist getBlockForWithID(II)[J
    .registers 8
    .param p1, "sockID"    # I
    .param p2, "blockid"    # I

    .line 4376
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4377
    .local v0, "tmpID":I
    :cond_d
    if-ltz v0, :cond_52

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_52

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_52

    .line 4378
    add-int/lit8 v0, v0, 0x1

    .line 4380
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_d

    .line 4381
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id reach the maximum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4385
    :cond_52
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a7

    .line 4386
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4387
    :cond_69
    if-ltz v0, :cond_a7

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_a7

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_a7

    .line 4388
    add-int/lit8 v0, v0, -0x1

    .line 4389
    iget v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    if-ne v0, v1, :cond_69

    .line 4390
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_a4

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id reach the minimum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4391
    :cond_a4
    new-array v1, v2, [J

    return-object v1

    .line 4395
    :cond_a7
    if-ltz v0, :cond_bc

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_b3

    goto :goto_bc

    .line 4399
    :cond_b3
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v0, v1, p1

    .line 4400
    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getNewBuf(II)[J

    move-result-object v1

    return-object v1

    .line 4396
    :cond_bc
    :goto_bc
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get an illegal tmpID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4397
    :cond_da
    new-array v1, v2, [J

    return-object v1
.end method

.method private blacklist getContinuousChunk(I)[J
    .registers 23
    .param p1, "sockID"    # I

    .line 4466
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 4467
    .local v0, "notReadContinuousBlock":I
    const-wide/16 v2, -0x1

    .line 4468
    .local v2, "startOffset":J
    const-wide/16 v4, -0x1

    .line 4469
    .local v4, "endOffset":J
    const/4 v6, 0x0

    .line 4470
    .local v6, "blockId":I
    sget-boolean v7, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v7, :cond_50

    .line 4471
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4472
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside getContinuousChunk(), mReadBlockNumber="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4474
    :cond_50
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->readBlockNumber:Ljava/lang/Integer;
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v9, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v10, v7

    move v7, v6

    move-wide v5, v4

    move-wide v3, v2

    move v2, v0

    .end local v0    # "notReadContinuousBlock":I
    .end local v4    # "endOffset":J
    .end local v6    # "blockId":I
    .local v2, "notReadContinuousBlock":I
    .local v3, "startOffset":J
    .local v5, "endOffset":J
    .local v7, "blockId":I
    .local v10, "i":I
    :goto_66
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v0, v0

    const/4 v11, 0x3

    const/4 v12, -0x1

    const/4 v13, 0x2

    if-ge v10, v0, :cond_213

    .line 4476
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_a4

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mBlockStatus["

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v14

    aget-byte v14, v14, v10

    invoke-direct {v1, v14}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->statusToStr(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4477
    :cond_a4
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    aget-byte v0, v0, v10

    if-eq v0, v12, :cond_17f

    if-eqz v0, :cond_123

    if-eq v0, v13, :cond_f4

    if-eq v0, v11, :cond_b6

    goto/16 :goto_20f

    .line 4520
    :cond_b6
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_c5

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v9, "Inside FULLREAD BLOCK"

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4521
    :cond_c5
    if-lt v2, v8, :cond_20f

    .line 4522
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v10, v0

    .line 4523
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_dd

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v9, "Inside FULLREAD BLOCK: exiting this loop as notReadContinuousBlock >= 1"

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4524
    :cond_dd
    add-int v0, v7, v2

    int-to-long v11, v0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    mul-long/2addr v11, v13

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    move-wide v5, v11

    .end local v5    # "endOffset":J
    .local v11, "endOffset":J
    goto/16 :goto_20f

    .line 4529
    .end local v11    # "endOffset":J
    .restart local v5    # "endOffset":J
    :cond_f4
    if-lt v2, v8, :cond_20f

    .line 4530
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v10, v0

    .line 4531
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_10c

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v9, "Inside READING Block: exiting this loop as notReadContinuousBlock >= 1"

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4532
    :cond_10c
    add-int v0, v7, v2

    int-to-long v11, v0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    mul-long/2addr v11, v13

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    move-wide v5, v11

    .end local v5    # "endOffset":J
    .restart local v11    # "endOffset":J
    goto/16 :goto_20f

    .line 4480
    .end local v11    # "endOffset":J
    .restart local v5    # "endOffset":J
    :cond_123
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_132

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v9, "Inside NOT_READ BLOCK"

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4483
    :cond_132
    add-int/lit8 v2, v2, 0x1

    .line 4485
    const-wide/16 v11, -0x1

    cmp-long v0, v3, v11

    if-nez v0, :cond_14b

    .line 4486
    int-to-long v11, v10

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    mul-long/2addr v11, v13

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    add-long v3, v11, v13

    .line 4487
    move v7, v10

    .line 4491
    :cond_14b
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v8

    if-ne v10, v0, :cond_168

    .line 4492
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    move-wide v5, v11

    .end local v5    # "endOffset":J
    .restart local v11    # "endOffset":J
    goto/16 :goto_20f

    .line 4494
    .end local v11    # "endOffset":J
    .restart local v5    # "endOffset":J
    :cond_168
    add-int v0, v7, v2

    int-to-long v11, v0

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    mul-long/2addr v11, v13

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4495
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    .line 4497
    .end local v5    # "endOffset":J
    .restart local v11    # "endOffset":J
    move-wide v5, v11

    goto/16 :goto_20f

    .line 4499
    .end local v11    # "endOffset":J
    .restart local v5    # "endOffset":J
    :cond_17f
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_18e

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v9, "Inside BLOCKED BLOCK"

    invoke-virtual {v0, v9}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4500
    :cond_18e
    if-lt v2, v8, :cond_199

    .line 4501
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v10, v0

    goto/16 :goto_20f

    .line 4502
    :cond_199
    if-nez v2, :cond_20f

    .line 4504
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 4505
    :try_start_1a2
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 4506
    .local v0, "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    monitor-exit v9
    :try_end_1b4
    .catchall {:try_start_1a2 .. :try_end_1b4} :catchall_20c

    .line 4507
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v3

    .line 4508
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_1d6

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inside BLOCKED BLOCK: startOffset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4509
    :cond_1d6
    move v7, v10

    .line 4510
    add-int/lit8 v2, v2, 0x1

    .line 4511
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v9

    array-length v9, v9

    sub-int/2addr v9, v8

    if-ne v10, v9, :cond_1f4

    .line 4512
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v11

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v13

    add-long/2addr v11, v13

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    .end local v5    # "endOffset":J
    .restart local v11    # "endOffset":J
    goto :goto_20a

    .line 4514
    .end local v11    # "endOffset":J
    .restart local v5    # "endOffset":J
    :cond_1f4
    const-wide/16 v13, 0x1

    add-int v9, v7, v2

    int-to-long v11, v9

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v17

    mul-long v11, v11, v17

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v17

    add-long v11, v11, v17

    sub-long/2addr v11, v13

    .line 4516
    .end local v0    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v5    # "endOffset":J
    .restart local v11    # "endOffset":J
    :goto_20a
    move-wide v5, v11

    goto :goto_20f

    .line 4506
    .end local v11    # "endOffset":J
    .restart local v5    # "endOffset":J
    :catchall_20c
    move-exception v0

    :try_start_20d
    monitor-exit v9
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_20c

    throw v0

    .line 4474
    :cond_20f
    :goto_20f
    add-int/2addr v10, v8

    const/4 v9, 0x0

    goto/16 :goto_66

    .line 4541
    .end local v10    # "i":I
    :cond_213
    if-lt v2, v8, :cond_2e4

    .line 4543
    const/4 v0, 0x4

    new-array v9, v0, [J

    .line 4544
    .local v9, "block":[J
    const/4 v0, 0x0

    aput-wide v3, v9, v0

    .line 4545
    aput-wide v5, v9, v8

    .line 4546
    sub-long v14, v5, v3

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    aput-wide v14, v9, v13

    .line 4547
    int-to-long v14, v7

    aput-wide v14, v9, v11

    .line 4550
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    aget-byte v0, v0, v7

    if-eq v0, v12, :cond_2a4

    .line 4551
    const/4 v0, 0x0

    .line 4552
    .local v0, "endIndex":I
    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v10

    array-length v10, v10

    sub-int/2addr v10, v8

    if-ne v7, v10, :cond_242

    .line 4553
    aget-wide v10, v9, v13

    long-to-int v0, v10

    move v15, v0

    goto :goto_259

    .line 4555
    :cond_242
    aget-wide v10, v9, v13

    iget-object v12, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v12}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v14

    cmp-long v10, v10, v14

    if-lez v10, :cond_255

    iget-object v10, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v10}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v10

    goto :goto_257

    :cond_255
    aget-wide v10, v9, v13

    :goto_257
    long-to-int v0, v10

    move v15, v0

    .line 4559
    .end local v0    # "endIndex":I
    .local v15, "endIndex":I
    :goto_259
    new-instance v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    int-to-long v12, v15

    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    move-object v10, v0

    move-wide/from16 v18, v12

    move-wide v12, v3

    move v14, v7

    move/from16 v20, v15

    .end local v15    # "endIndex":I
    .local v20, "endIndex":I
    move-wide/from16 v15, v18

    move/from16 v18, p1

    move/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;JIJLjava/util/LinkedList;II)V

    .line 4561
    .local v10, "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 4562
    :try_start_27a
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4563
    monitor-exit v11
    :try_end_289
    .catchall {:try_start_27a .. :try_end_289} :catchall_2a1

    .line 4565
    monitor-enter v10

    .line 4566
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_28b
    if-ge v0, v2, :cond_29a

    .line 4567
    :try_start_28d
    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v11

    add-int v12, v7, v0

    aput-byte v8, v11, v12

    .line 4566
    add-int/lit8 v0, v0, 0x1

    goto :goto_28b

    .line 4569
    .end local v0    # "j":I
    :cond_29a
    monitor-exit v10

    .line 4570
    .end local v10    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v20    # "endIndex":I
    move/from16 v11, p1

    goto :goto_2e3

    .line 4569
    .restart local v10    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .restart local v20    # "endIndex":I
    :catchall_29e
    move-exception v0

    monitor-exit v10
    :try_end_2a0
    .catchall {:try_start_28d .. :try_end_2a0} :catchall_29e

    throw v0

    .line 4563
    :catchall_2a1
    move-exception v0

    :try_start_2a2
    monitor-exit v11
    :try_end_2a3
    .catchall {:try_start_2a2 .. :try_end_2a3} :catchall_2a1

    throw v0

    .line 4570
    .end local v10    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v20    # "endIndex":I
    :cond_2a4
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    aget-byte v0, v0, v7

    if-ne v0, v12, :cond_2e1

    .line 4572
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 4573
    :try_start_2b5
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    move-object v10, v0

    .line 4574
    .restart local v10    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    monitor-exit v8
    :try_end_2c8
    .catchall {:try_start_2b5 .. :try_end_2c8} :catchall_2da

    .line 4575
    monitor-enter v10

    .line 4576
    :try_start_2c9
    invoke-virtual {v10, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->setTotalChunks(I)V
    :try_end_2cc
    .catchall {:try_start_2c9 .. :try_end_2cc} :catchall_2d5

    .line 4577
    move/from16 v11, p1

    :try_start_2ce
    invoke-virtual {v10, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    .line 4578
    monitor-exit v10

    goto :goto_2e3

    :catchall_2d3
    move-exception v0

    goto :goto_2d8

    :catchall_2d5
    move-exception v0

    move/from16 v11, p1

    :goto_2d8
    monitor-exit v10
    :try_end_2d9
    .catchall {:try_start_2ce .. :try_end_2d9} :catchall_2d3

    throw v0

    .line 4574
    .end local v10    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :catchall_2da
    move-exception v0

    move/from16 v11, p1

    :goto_2dd
    :try_start_2dd
    monitor-exit v8
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2df

    throw v0

    :catchall_2df
    move-exception v0

    goto :goto_2dd

    .line 4570
    :cond_2e1
    move/from16 v11, p1

    .line 4580
    :goto_2e3
    return-object v9

    .line 4582
    .end local v9    # "block":[J
    :cond_2e4
    move/from16 v11, p1

    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method private blacklist getMinNotReadBlock(I)[J
    .registers 7
    .param p1, "sockID"    # I

    .line 4351
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4352
    .local v0, "tmpID":I
    :cond_f
    const/4 v1, 0x0

    if-ltz v0, :cond_58

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_58

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v2

    aget-byte v2, v2, v0

    if-lez v2, :cond_58

    .line 4353
    add-int/lit8 v0, v0, 0x1

    .line 4355
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_f

    .line 4356
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id reach the maximum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4357
    :cond_55
    new-array v1, v1, [J

    return-object v1

    .line 4360
    :cond_58
    if-ltz v0, :cond_71

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_64

    goto :goto_71

    .line 4364
    :cond_64
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    .line 4365
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v0, v1, p1

    .line 4366
    invoke-direct {p0, v0, p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getNewBuf(II)[J

    move-result-object v1

    return-object v1

    .line 4361
    :cond_71
    :goto_71
    sget-boolean v2, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get an illegal tmpID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4362
    :cond_8f
    new-array v1, v1, [J

    return-object v1
.end method

.method private blacklist getMinNotReadBlockID()I
    .registers 5

    .line 4335
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4336
    .local v0, "tmpID":I
    :cond_f
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    if-lez v1, :cond_4b

    .line 4337
    add-int/lit8 v0, v0, 0x1

    .line 4338
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_f

    .line 4339
    sget-boolean v1, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in getMinNotReadBlockID, id reach the maximum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4340
    :cond_49
    const/4 v1, -0x1

    return v1

    .line 4343
    :cond_4b
    return v0
.end method

.method private blacklist getNewBuf(II)[J
    .registers 25
    .param p1, "blockID"    # I
    .param p2, "sockID"    # I

    .line 4410
    move-object/from16 v1, p0

    move/from16 v12, p1

    const/4 v0, 0x4

    new-array v13, v0, [J

    .line 4411
    .local v13, "range":[J
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    .line 4413
    :try_start_e
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    aget-byte v0, v0, v12
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_19b

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-wide/16 v5, 0x1

    const/4 v15, 0x1

    const/4 v7, 0x0

    if-ne v0, v2, :cond_8b

    :try_start_1f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 4414
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_86

    if-eqz v0, :cond_53

    :try_start_34
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "block "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "is blocked and now it is occupied again"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_19b

    .line 4415
    :cond_53
    :try_start_53
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 4416
    .local v0, "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v8

    aput-wide v8, v13, v7

    .line 4417
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getOffset()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v9

    add-long/2addr v7, v9

    sub-long/2addr v7, v5

    aput-wide v7, v13, v15

    .line 4418
    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getToBeReadLength()J

    move-result-wide v5

    aput-wide v5, v13, v4

    .line 4419
    int-to-long v4, v12

    aput-wide v4, v13, v3
    :try_end_7f
    .catchall {:try_start_53 .. :try_end_7f} :catchall_86

    .line 4420
    move/from16 v11, p2

    :try_start_81
    invoke-virtual {v0, v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->changeSockID(I)V

    .line 4421
    .end local v0    # "buf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    goto/16 :goto_185

    .line 4449
    :catchall_86
    move-exception v0

    move/from16 v11, p2

    goto/16 :goto_19c

    .line 4413
    :cond_8b
    move/from16 v11, p2

    .line 4424
    int-to-long v8, v12

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v16

    mul-long v8, v8, v16

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v16

    add-long v16, v8, v16

    .line 4425
    .local v16, "start":J
    aput-wide v16, v13, v7

    .line 4427
    aget-wide v8, v13, v7

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v18

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v20

    add-long v18, v18, v20

    cmp-long v0, v8, v18

    if-ltz v0, :cond_f2

    .line 4428
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_ee

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v13, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") >= totalLength("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v3

    iget-object v5, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), break"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4429
    :cond_ee
    new-array v0, v7, [J

    monitor-exit v14

    return-object v0

    .line 4431
    :cond_f2
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v15

    if-ne v12, v0, :cond_12e

    .line 4432
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v18

    add-long v8, v8, v18

    sub-long/2addr v8, v5

    aput-wide v8, v13, v15

    .line 4433
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_14d

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set for tail chunk "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v13, v15

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_14d

    .line 4436
    :cond_12e
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->BlockSize:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$2900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v8

    add-long v8, v16, v8

    sub-long/2addr v8, v5

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mOriOffset:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$500(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v18

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->totalLengthToBeRead:J
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)J

    move-result-wide v20

    add-long v18, v18, v20

    sub-long v3, v18, v5

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    aput-wide v3, v13, v15

    .line 4438
    :cond_14d
    :goto_14d
    aget-wide v3, v13, v15

    aget-wide v8, v13, v7

    sub-long/2addr v3, v8

    add-long/2addr v3, v5

    const/4 v0, 0x2

    aput-wide v3, v13, v0

    .line 4439
    int-to-long v3, v12

    const/4 v2, 0x3

    aput-wide v3, v13, v2

    .line 4441
    new-instance v18, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    iget-object v3, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    aget-wide v4, v13, v7

    const/4 v0, 0x2

    aget-wide v6, v13, v0

    long-to-int v0, v6

    int-to-long v7, v0

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x1

    move-object/from16 v2, v18

    move/from16 v6, p1

    move/from16 v10, p2

    move v11, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;-><init>(Lcom/android/okhttp/internal/http/MultiSocketInputStream;JIJLjava/util/LinkedList;II)V

    move-object/from16 v0, v18

    .line 4442
    .local v0, "dbuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    iget-object v2, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4444
    .end local v0    # "dbuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v16    # "start":J
    :goto_185
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    aput-byte v15, v0, v12
    :try_end_18d
    .catchall {:try_start_81 .. :try_end_18d} :catchall_19b

    .line 4446
    :try_start_18d
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_196
    .catchall {:try_start_18d .. :try_end_196} :catchall_197

    goto :goto_198

    .line 4448
    :catchall_197
    move-exception v0

    :goto_198
    nop

    .line 4449
    :try_start_199
    monitor-exit v14

    .line 4450
    return-object v13

    .line 4449
    :catchall_19b
    move-exception v0

    :goto_19c
    monitor-exit v14
    :try_end_19d
    .catchall {:try_start_199 .. :try_end_19d} :catchall_19b

    throw v0
.end method

.method private blacklist statusToStr(I)Ljava/lang/String;
    .registers 3
    .param p1, "status"    # I

    .line 4617
    const/4 v0, -0x1

    if-eq p1, v0, :cond_23

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    .line 4624
    const-string v0, "UNKNOWN"

    return-object v0

    .line 4623
    :cond_14
    const-string v0, "CLEARED"

    return-object v0

    .line 4622
    :cond_17
    const-string v0, "FULLREAD"

    return-object v0

    .line 4621
    :cond_1a
    const-string v0, "READING"

    return-object v0

    .line 4620
    :cond_1d
    const-string v0, "OCCUPIED"

    return-object v0

    .line 4619
    :cond_20
    const-string v0, "NOT_READ"

    return-object v0

    .line 4618
    :cond_23
    const-string v0, "BLOCKED"

    return-object v0
.end method


# virtual methods
.method public blacklist block(II)V
    .registers 5
    .param p1, "blockID"    # I
    .param p2, "socketID"    # I

    .line 4135
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v0

    const/4 v1, -0x1

    aput-byte v1, v0, p1

    .line 4136
    iget v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    .line 4137
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aput v1, v0, p2

    .line 4138
    return-void
.end method

.method public blacklist blockStatusToStr()Ljava/lang/String;
    .registers 7

    .line 4590
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BlockStatus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4591
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 4592
    .local v1, "min":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_30

    .line 4593
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    aget-byte v3, v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2d

    .line 4594
    add-int/lit8 v3, v2, -0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4595
    goto :goto_30

    .line 4592
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4598
    .end local v2    # "i":I
    :cond_30
    :goto_30
    add-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4599
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v3}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_48
    if-le v3, v1, :cond_67

    .line 4600
    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v4

    aget-byte v4, v4, v3

    if-eqz v4, :cond_64

    .line 4601
    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4602
    goto :goto_67

    .line 4599
    :cond_64
    add-int/lit8 v3, v3, -0x1

    goto :goto_48

    .line 4606
    .end local v3    # "i":I
    :cond_67
    :goto_67
    move v3, v1

    .restart local v3    # "i":I
    :goto_68
    if-gt v3, v2, :cond_89

    .line 4607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v4

    aget-byte v4, v4, v3

    invoke-direct {p0, v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->statusToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4606
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 4609
    .end local v3    # "i":I
    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public blacklist getMaxFetchingBlock()I
    .registers 4

    .line 4129
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public blacklist getNextHTTPBlock(ILcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;)[J
    .registers 34
    .param p1, "sockID"    # I
    .param p2, "thisBuf"    # Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;

    .line 4146
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # invokes: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->getOtherSocketID(I)I
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1600(Lcom/android/okhttp/internal/http/MultiSocketInputStream;I)I

    move-result v3

    .line 4147
    .local v3, "otherSockID":I
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_41

    .line 4148
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextHTTPBlock("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4149
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->blockStatusToStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->d(Ljava/lang/String;)V

    .line 4154
    :cond_41
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v4, :cond_57

    .line 4156
    new-array v0, v6, [J

    const-wide/16 v6, -0x1

    aput-wide v6, v0, v5

    .line 4157
    .local v0, "status":[J
    return-object v0

    .line 4158
    .end local v0    # "status":[J
    :cond_57
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    if-ne v0, v4, :cond_68

    .line 4161
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getContinuousChunk(I)[J

    move-result-object v0

    return-object v0

    .line 4165
    :cond_68
    if-nez p2, :cond_8d

    .line 4166
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mFasterInterface:I
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v0

    if-ne v2, v0, :cond_74

    move v0, v5

    goto :goto_75

    :cond_74
    move v0, v6

    .line 4167
    .local v0, "candidateChunk":I
    :goto_75
    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v7

    array-length v7, v7

    if-ge v0, v7, :cond_8d

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v7

    aget-byte v7, v7, v0

    if-nez v7, :cond_8d

    .line 4168
    invoke-direct {v1, v2, v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getBlockForWithID(II)[J

    move-result-object v4

    return-object v4

    .line 4176
    .end local v0    # "candidateChunk":I
    :cond_8d
    const-wide/16 v7, 0x0

    .line 4177
    .local v7, "fRatio":D
    const/4 v9, 0x1

    .line 4180
    .local v9, "ratio":I
    if-eqz p2, :cond_4c5

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v0, v0, v3

    if-gez v0, :cond_9d

    move-wide/from16 v21, v7

    move v8, v9

    goto/16 :goto_4c8

    .line 4185
    :cond_9d
    const-wide/16 v10, 0x0

    .line 4186
    .local v10, "thisSpeed":D
    const-wide/16 v12, 0x0

    .line 4187
    .local v12, "otherSpeed":D
    const-wide/16 v14, 0x0

    .line 4188
    .local v14, "lTS":J
    const-wide/16 v16, 0x0

    .line 4189
    .local v16, "lOS":J
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_cf

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thisBuf.getSockID="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current sockID="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4191
    :cond_cf
    :try_start_cf
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aget-wide v5, v0, v2
    :try_end_d3
    .catchall {:try_start_cf .. :try_end_d3} :catchall_4af

    move-wide v14, v5

    .line 4192
    :try_start_d4
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aget-wide v5, v0, v3
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_4a8

    .line 4193
    .end local v16    # "lOS":J
    .local v5, "lOS":J
    :try_start_d8
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z
    :try_end_da
    .catchall {:try_start_d8 .. :try_end_da} :catchall_49f

    if-eqz v0, :cond_109

    :try_start_dc
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e7
    .catchall {:try_start_dc .. :try_end_e7} :catchall_101

    move-wide/from16 v21, v7

    .end local v7    # "fRatio":D
    .local v21, "fRatio":D
    :try_start_e9
    const-string v7, "calculate speed "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_10b

    .line 4201
    .end local v21    # "fRatio":D
    .restart local v7    # "fRatio":D
    :catchall_101
    move-exception v0

    move-wide/from16 v21, v7

    move-wide/from16 v16, v5

    move v8, v9

    .end local v7    # "fRatio":D
    .restart local v21    # "fRatio":D
    goto/16 :goto_4b3

    .line 4193
    .end local v21    # "fRatio":D
    .restart local v7    # "fRatio":D
    :cond_109
    move-wide/from16 v21, v7

    .line 4195
    .end local v7    # "fRatio":D
    .restart local v21    # "fRatio":D
    :goto_10b
    const-wide/16 v7, 0x0

    cmp-long v0, v14, v7

    if-nez v0, :cond_11c

    .line 4196
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0
    :try_end_115
    .catchall {:try_start_e9 .. :try_end_115} :catchall_116

    return-object v0

    .line 4201
    :catchall_116
    move-exception v0

    move-wide/from16 v16, v5

    move v8, v9

    goto/16 :goto_4b3

    .line 4198
    :cond_11c
    long-to-double v10, v14

    .line 4199
    long-to-double v12, v5

    .line 4204
    nop

    .line 4207
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4900()I

    move-result v0

    if-ltz v0, :cond_17f

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MIN_RATIO_FOR_ONLY_ONE_INF_0V1:I
    invoke-static {}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$4900()I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v7, v12

    cmpl-double v0, v10, v7

    if-gtz v0, :cond_13d

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4208
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    aget-object v0, v0, v3

    iget v0, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrExceptionCount:I

    sget v4, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_EXCEPTION_COUNT:I

    if-le v0, v4, :cond_17f

    .line 4209
    :cond_13d
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_14c

    .line 4210
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v4, "The speed of other socket is slow so closing and setting the thread status as RR_STOPPED"

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4214
    :cond_14c
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->closeHTTP()V

    .line 4218
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->requestHandlers:[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3400(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;

    move-result-object v0

    aget-object v0, v0, v3

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$RangeRequest;->rrStatus:I

    .line 4219
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v4

    monitor-enter v4

    .line 4221
    :try_start_169
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->mBlockManager:Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;

    move-result-object v0

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_174
    .catchall {:try_start_169 .. :try_end_174} :catchall_175

    .line 4223
    goto :goto_176

    .line 4222
    :catchall_175
    move-exception v0

    .line 4224
    :goto_176
    :try_start_176
    monitor-exit v4
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_17c

    .line 4225
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getContinuousChunk(I)[J

    move-result-object v0

    return-object v0

    .line 4224
    :catchall_17c
    move-exception v0

    :try_start_17d
    monitor-exit v4
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    throw v0

    .line 4227
    :cond_17f
    invoke-direct/range {p0 .. p0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlockID()I

    move-result v0

    .line 4228
    .local v0, "toBeDoID":I
    if-gez v0, :cond_1d8

    .line 4229
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_1a3

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "all block has been read or is reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4231
    :cond_1a3
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v7, v4, v3

    if-ltz v7, :cond_1d4

    aget v4, v4, v3

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v7}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_1d4

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    .line 4232
    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->blockStatus:[B
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1900(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)[B

    move-result-object v4

    iget-object v7, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v7, v7, v3

    aget-byte v4, v4, v7

    const/4 v7, 0x2

    if-gt v4, v7, :cond_1d4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_1d4

    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v4

    if-ne v4, v2, :cond_1d4

    .line 4233
    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v0, v4, v3

    move v7, v0

    const/4 v4, 0x0

    goto :goto_1da

    .line 4236
    :cond_1d4
    const/4 v4, 0x0

    new-array v4, v4, [J

    return-object v4

    .line 4228
    :cond_1d8
    const/4 v4, 0x0

    move v7, v0

    .line 4239
    .end local v0    # "toBeDoID":I
    .local v7, "toBeDoID":I
    :goto_1da
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_214

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thisSpeed="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", otherSpeed="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", toBeDoID="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", httpRequestID[otherSockID]="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v4, v4, v3

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4241
    :cond_214
    cmpl-double v0, v10, v12

    if-ltz v0, :cond_3a9

    invoke-virtual/range {p2 .. p2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->getSockID()I

    move-result v0

    if-ne v0, v2, :cond_3a9

    .line 4243
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v0, v0, v3

    if-ge v7, v0, :cond_25b

    .line 4244
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_256

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get a smaller block in getNextHTTPBlock for socket "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", toBeDoID="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", httpRequestID[otherSockID]="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v8, v8, v3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4245
    :cond_256
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0

    return-object v0

    .line 4249
    :cond_25b
    const/4 v4, 0x0

    .line 4250
    .local v4, "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8

    .line 4251
    :try_start_263
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_269
    .catchall {:try_start_263 .. :try_end_269} :catchall_39a

    move-object/from16 v20, v4

    .end local v4    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .local v20, "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :try_start_26b
    new-instance v4, Ljava/lang/Integer;
    :try_end_26d
    .catchall {:try_start_26b .. :try_end_26d} :catchall_38e

    move/from16 v23, v9

    .end local v9    # "ratio":I
    .local v23, "ratio":I
    :try_start_26f
    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v9, v9, v3

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :try_end_27c
    .catchall {:try_start_26f .. :try_end_27c} :catchall_384

    move-object v4, v0

    .line 4252
    .end local v20    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .restart local v4    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :try_start_27d
    monitor-exit v8
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_37c

    .line 4254
    if-nez v4, :cond_2a3

    .line 4255
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_29e

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "otherBuf is null in getNextHTTPBlock for socket "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4256
    :cond_29e
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0

    return-object v0

    .line 4259
    :cond_2a3
    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v12, v8

    if-gez v0, :cond_2b2

    .line 4260
    const-wide v8, 0x408f400000000000L    # 1000.0

    .end local v21    # "fRatio":D
    .local v8, "fRatio":D
    goto :goto_2b4

    .line 4262
    .end local v8    # "fRatio":D
    .restart local v21    # "fRatio":D
    :cond_2b2
    div-double v8, v10, v12

    .line 4263
    .end local v21    # "fRatio":D
    .restart local v8    # "fRatio":D
    :goto_2b4
    const-wide/16 v20, 0x0

    .line 4264
    .local v20, "otherRest":J
    const/4 v0, 0x0

    .line 4265
    .local v0, "bSwitch":Z
    const/16 v22, 0x0

    .line 4267
    .local v22, "bForce":Z
    move/from16 v24, v0

    .end local v0    # "bSwitch":Z
    .local v24, "bSwitch":Z
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->toBeReadLen:[J

    move-wide/from16 v25, v10

    .end local v10    # "thisSpeed":D
    .local v25, "thisSpeed":D
    aget-wide v10, v0, v3

    .line 4268
    .end local v20    # "otherRest":J
    .local v10, "otherRest":J
    const-wide/16 v16, 0x0

    cmp-long v0, v5, v16

    if-nez v0, :cond_2db

    .line 4269
    cmp-long v0, v10, v16

    if-lez v0, :cond_2ce

    const/16 v18, 0x1

    goto :goto_2d0

    :cond_2ce
    const/16 v18, 0x0

    :goto_2d0
    move/from16 v0, v18

    .line 4270
    .end local v24    # "bSwitch":Z
    .restart local v0    # "bSwitch":Z
    const/16 v16, 0x1

    move-wide/from16 v29, v5

    move/from16 v5, v16

    move-wide/from16 v16, v29

    .end local v22    # "bForce":Z
    .local v16, "bForce":Z
    goto :goto_304

    .line 4273
    .end local v0    # "bSwitch":Z
    .end local v16    # "bForce":Z
    .restart local v22    # "bForce":Z
    .restart local v24    # "bSwitch":Z
    :cond_2db
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    cmpl-double v0, v8, v16

    if-lez v0, :cond_2f8

    const-wide/16 v16, 0x8

    mul-long v20, v10, v16

    div-long v20, v20, v14

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->headerTime:[J

    aget-wide v27, v0, v2

    add-long v20, v20, v27

    mul-long v16, v16, v10

    div-long v16, v16, v5

    cmp-long v0, v20, v16

    if-gez v0, :cond_2f8

    const/16 v18, 0x1

    goto :goto_2fa

    :cond_2f8
    const/16 v18, 0x0

    :goto_2fa
    move/from16 v0, v18

    .line 4274
    .end local v24    # "bSwitch":Z
    .restart local v0    # "bSwitch":Z
    const/16 v16, 0x0

    move-wide/from16 v29, v5

    move/from16 v5, v16

    move-wide/from16 v16, v29

    .line 4281
    .end local v22    # "bForce":Z
    .local v5, "bForce":Z
    .local v16, "lOS":J
    :goto_304
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_33b

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    move-wide/from16 v27, v14

    .end local v14    # "lTS":J
    .local v27, "lTS":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "prepare for switch socket "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", , "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->headerTime:[J

    move-wide/from16 v19, v8

    .end local v8    # "fRatio":D
    .local v19, "fRatio":D
    aget-wide v8, v15, v2

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_33f

    .end local v19    # "fRatio":D
    .end local v27    # "lTS":J
    .restart local v8    # "fRatio":D
    .restart local v14    # "lTS":J
    :cond_33b
    move-wide/from16 v19, v8

    move-wide/from16 v27, v14

    .line 4282
    .end local v8    # "fRatio":D
    .end local v14    # "lTS":J
    .restart local v19    # "fRatio":D
    .restart local v27    # "lTS":J
    :goto_33f
    if-eqz v0, :cond_368

    .line 4283
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_350

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v8, "ratio or rest len is big, switch socket"

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4284
    :cond_350
    invoke-virtual {v4, v2, v5}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;->switchSocket(IZ)[J

    move-result-object v6

    .line 4285
    .local v6, "ret":[J
    if-eqz v6, :cond_363

    array-length v8, v6

    if-nez v8, :cond_35a

    goto :goto_363

    .line 4289
    :cond_35a
    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    const/4 v9, 0x3

    aget-wide v14, v6, v9

    long-to-int v9, v14

    aput v9, v8, v2

    .line 4290
    return-object v6

    .line 4286
    :cond_363
    :goto_363
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v8

    return-object v8

    .line 4294
    .end local v6    # "ret":[J
    :cond_368
    sget-boolean v6, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v6, :cond_377

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v6

    const-string v8, "ratio or rest len is not too big, get next block"

    invoke-virtual {v6, v8}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4295
    :cond_377
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v6

    return-object v6

    .line 4252
    .end local v0    # "bSwitch":Z
    .end local v16    # "lOS":J
    .end local v19    # "fRatio":D
    .end local v25    # "thisSpeed":D
    .end local v27    # "lTS":J
    .local v5, "lOS":J
    .local v10, "thisSpeed":D
    .restart local v14    # "lTS":J
    .restart local v21    # "fRatio":D
    :catchall_37c
    move-exception v0

    move-wide/from16 v16, v5

    move-wide/from16 v25, v10

    move-wide/from16 v27, v14

    .end local v5    # "lOS":J
    .end local v10    # "thisSpeed":D
    .end local v14    # "lTS":J
    .restart local v16    # "lOS":J
    .restart local v25    # "thisSpeed":D
    .restart local v27    # "lTS":J
    goto :goto_3a5

    .end local v4    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v16    # "lOS":J
    .end local v25    # "thisSpeed":D
    .end local v27    # "lTS":J
    .restart local v5    # "lOS":J
    .restart local v10    # "thisSpeed":D
    .restart local v14    # "lTS":J
    .local v20, "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    :catchall_384
    move-exception v0

    move-wide/from16 v16, v5

    move-wide/from16 v25, v10

    move-wide/from16 v27, v14

    move-object/from16 v4, v20

    .end local v5    # "lOS":J
    .end local v10    # "thisSpeed":D
    .end local v14    # "lTS":J
    .restart local v16    # "lOS":J
    .restart local v25    # "thisSpeed":D
    .restart local v27    # "lTS":J
    goto :goto_3a5

    .end local v16    # "lOS":J
    .end local v23    # "ratio":I
    .end local v25    # "thisSpeed":D
    .end local v27    # "lTS":J
    .restart local v5    # "lOS":J
    .restart local v9    # "ratio":I
    .restart local v10    # "thisSpeed":D
    .restart local v14    # "lTS":J
    :catchall_38e
    move-exception v0

    move-wide/from16 v16, v5

    move/from16 v23, v9

    move-wide/from16 v25, v10

    move-wide/from16 v27, v14

    move-object/from16 v4, v20

    .end local v5    # "lOS":J
    .end local v9    # "ratio":I
    .end local v10    # "thisSpeed":D
    .end local v14    # "lTS":J
    .restart local v16    # "lOS":J
    .restart local v23    # "ratio":I
    .restart local v25    # "thisSpeed":D
    .restart local v27    # "lTS":J
    goto :goto_3a5

    .end local v16    # "lOS":J
    .end local v20    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v23    # "ratio":I
    .end local v25    # "thisSpeed":D
    .end local v27    # "lTS":J
    .restart local v4    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .restart local v5    # "lOS":J
    .restart local v9    # "ratio":I
    .restart local v10    # "thisSpeed":D
    .restart local v14    # "lTS":J
    :catchall_39a
    move-exception v0

    move-object/from16 v20, v4

    move-wide/from16 v16, v5

    move/from16 v23, v9

    move-wide/from16 v25, v10

    move-wide/from16 v27, v14

    .end local v5    # "lOS":J
    .end local v9    # "ratio":I
    .end local v10    # "thisSpeed":D
    .end local v14    # "lTS":J
    .restart local v16    # "lOS":J
    .restart local v23    # "ratio":I
    .restart local v25    # "thisSpeed":D
    .restart local v27    # "lTS":J
    :goto_3a5
    :try_start_3a5
    monitor-exit v8
    :try_end_3a6
    .catchall {:try_start_3a5 .. :try_end_3a6} :catchall_3a7

    throw v0

    :catchall_3a7
    move-exception v0

    goto :goto_3a5

    .line 4241
    .end local v4    # "otherBuf":Lcom/android/okhttp/internal/http/MultiSocketInputStream$DataBuffer;
    .end local v16    # "lOS":J
    .end local v23    # "ratio":I
    .end local v25    # "thisSpeed":D
    .end local v27    # "lTS":J
    .restart local v5    # "lOS":J
    .restart local v9    # "ratio":I
    .restart local v10    # "thisSpeed":D
    .restart local v14    # "lTS":J
    :cond_3a9
    move-wide/from16 v16, v5

    move/from16 v23, v9

    move-wide/from16 v25, v10

    move-wide/from16 v27, v14

    .line 4301
    .end local v5    # "lOS":J
    .end local v9    # "ratio":I
    .end local v10    # "thisSpeed":D
    .end local v14    # "lTS":J
    .restart local v16    # "lOS":J
    .restart local v23    # "ratio":I
    .restart local v25    # "thisSpeed":D
    .restart local v27    # "lTS":J
    div-double v4, v12, v25

    .line 4302
    .end local v21    # "fRatio":D
    .local v4, "fRatio":D
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_3e5

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this socket slower than other speed, fRatio="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, ", other socket is downloading "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v8, v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", toBeDoID is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4304
    :cond_3e5
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v4, v8

    if-gez v0, :cond_413

    .line 4305
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_40c

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "this socket is not too slow, download toBeDoID, ratio="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v23

    .end local v23    # "ratio":I
    .local v8, "ratio":I
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    goto :goto_40e

    .end local v8    # "ratio":I
    .restart local v23    # "ratio":I
    :cond_40c
    move/from16 v8, v23

    .line 4306
    .end local v23    # "ratio":I
    .restart local v8    # "ratio":I
    :goto_40e
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0

    return-object v0

    .line 4308
    .end local v8    # "ratio":I
    .restart local v23    # "ratio":I
    :cond_413
    move/from16 v8, v23

    .end local v23    # "ratio":I
    .restart local v8    # "ratio":I
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v0, v0, v3

    if-ge v7, v0, :cond_42f

    .line 4309
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_42a

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    const-string v6, "this socket is slow, but there is blank portion, still download smallest portion"

    invoke-virtual {v0, v6}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4310
    :cond_42a
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0

    return-object v0

    .line 4315
    :cond_42f
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 4316
    :try_start_436
    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->inBuffer:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$1800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->iMaxBlockNumber:I
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$5800(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-lt v0, v9, :cond_450

    .line 4317
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 4319
    :cond_450
    monitor-exit v6
    :try_end_451
    .catchall {:try_start_436 .. :try_end_451} :catchall_49c

    .line 4321
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->MAX_JUMP_STEP:I
    invoke-static {v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$6300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4322
    .local v0, "iR":I
    iget-object v6, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v6, v6, v3

    add-int/2addr v6, v0

    .line 4323
    .local v6, "nextid":I
    sget-boolean v9, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v9, :cond_497

    iget-object v9, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v9}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "this socket is slow, download with step, ratio="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", otherRequestID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v11, v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", nextid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4324
    :cond_497
    invoke-direct {v1, v2, v6}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getBlockForWithID(II)[J

    move-result-object v9

    return-object v9

    .line 4319
    .end local v0    # "iR":I
    .end local v6    # "nextid":I
    :catchall_49c
    move-exception v0

    :try_start_49d
    monitor-exit v6
    :try_end_49e
    .catchall {:try_start_49d .. :try_end_49e} :catchall_49c

    throw v0

    .line 4201
    .end local v4    # "fRatio":D
    .end local v8    # "ratio":I
    .end local v16    # "lOS":J
    .end local v25    # "thisSpeed":D
    .end local v27    # "lTS":J
    .restart local v5    # "lOS":J
    .local v7, "fRatio":D
    .restart local v9    # "ratio":I
    .restart local v10    # "thisSpeed":D
    .restart local v14    # "lTS":J
    :catchall_49f
    move-exception v0

    move-wide/from16 v16, v5

    move-wide/from16 v21, v7

    move v8, v9

    move-wide/from16 v27, v14

    .end local v5    # "lOS":J
    .end local v7    # "fRatio":D
    .end local v9    # "ratio":I
    .end local v14    # "lTS":J
    .restart local v8    # "ratio":I
    .restart local v16    # "lOS":J
    .restart local v21    # "fRatio":D
    .restart local v27    # "lTS":J
    goto :goto_4b3

    .end local v8    # "ratio":I
    .end local v21    # "fRatio":D
    .end local v27    # "lTS":J
    .restart local v7    # "fRatio":D
    .restart local v9    # "ratio":I
    .restart local v14    # "lTS":J
    :catchall_4a8
    move-exception v0

    move-wide/from16 v21, v7

    move v8, v9

    move-wide/from16 v27, v14

    .end local v7    # "fRatio":D
    .end local v9    # "ratio":I
    .end local v14    # "lTS":J
    .restart local v8    # "ratio":I
    .restart local v21    # "fRatio":D
    .restart local v27    # "lTS":J
    goto :goto_4b3

    .end local v8    # "ratio":I
    .end local v21    # "fRatio":D
    .end local v27    # "lTS":J
    .restart local v7    # "fRatio":D
    .restart local v9    # "ratio":I
    .restart local v14    # "lTS":J
    :catchall_4af
    move-exception v0

    move-wide/from16 v21, v7

    move v8, v9

    .line 4202
    .end local v7    # "fRatio":D
    .end local v9    # "ratio":I
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v8    # "ratio":I
    .restart local v21    # "fRatio":D
    :goto_4b3
    sget-boolean v4, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v4, :cond_4c0

    iget-object v4, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v4}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/Throwable;)V

    .line 4203
    :cond_4c0
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v4

    return-object v4

    .line 4180
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v8    # "ratio":I
    .end local v10    # "thisSpeed":D
    .end local v12    # "otherSpeed":D
    .end local v14    # "lTS":J
    .end local v16    # "lOS":J
    .end local v21    # "fRatio":D
    .restart local v7    # "fRatio":D
    .restart local v9    # "ratio":I
    :cond_4c5
    move-wide/from16 v21, v7

    move v8, v9

    .line 4181
    .end local v7    # "fRatio":D
    .end local v9    # "ratio":I
    .restart local v8    # "ratio":I
    .restart local v21    # "fRatio":D
    :goto_4c8
    sget-boolean v0, Lcom/android/okhttp/internal/http/MultiratLog;->MRATLOG:Z

    if-eqz v0, :cond_4eb

    iget-object v0, v1, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->logger:Lcom/android/okhttp/internal/http/MultiratLog;
    invoke-static {v0}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$000(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)Lcom/android/okhttp/internal/http/MultiratLog;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "first time getNextHTTPBlock for socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " or the other socket is not active"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/okhttp/internal/http/MultiratLog;->i(Ljava/lang/String;)V

    .line 4182
    :cond_4eb
    invoke-direct/range {p0 .. p1}, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->getMinNotReadBlock(I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSpeed(I)J
    .registers 4
    .param p1, "sid"    # I

    .line 4122
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist setSpeed(IJ)V
    .registers 5
    .param p1, "sid"    # I
    .param p2, "speed"    # J

    .line 4113
    iget-object v0, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->socketSpeed:[J

    aput-wide p2, v0, p1

    .line 4114
    return-void
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 4098
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BlockManager:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4099
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "httpRequestID{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->this$0:Lcom/android/okhttp/internal/http/MultiSocketInputStream;

    # getter for: Lcom/android/okhttp/internal/http/MultiSocketInputStream;->socketNumber:I
    invoke-static {v2}, Lcom/android/okhttp/internal/http/MultiSocketInputStream;->access$3300(Lcom/android/okhttp/internal/http/MultiSocketInputStream;)I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 4101
    iget-object v2, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->httpRequestID:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4100
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 4103
    .end local v1    # "i":I
    :cond_24
    const-string v1, "}; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4104
    const-string v1, "minNotReadBlockID{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/android/okhttp/internal/http/MultiSocketInputStream$BlockManager;->minNotReadBlockID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4105
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
