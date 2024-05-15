.class Ljava/math/BigDecimal$StringBuilderHelper;
.super Ljava/lang/Object;
.source "BigDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringBuilderHelper"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field static final blacklist DIGIT_ONES:[C

.field static final blacklist DIGIT_TENS:[C


# instance fields
.field final blacklist cmpCharArray:[C

.field final blacklist sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3355
    const-class v0, Ljava/math/BigDecimal;

    .line 3420
    const/16 v0, 0x64

    new-array v1, v0, [C

    fill-array-data v1, :array_14

    sput-object v1, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_TENS:[C

    .line 3433
    new-array v0, v0, [C

    fill-array-data v0, :array_7c

    sput-object v0, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_ONES:[C

    return-void

    nop

    :array_14
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_7c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 3359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljava/math/BigDecimal$StringBuilderHelper;->sb:Ljava/lang/StringBuilder;

    .line 3362
    const/16 v0, 0x13

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/math/BigDecimal$StringBuilderHelper;->cmpCharArray:[C

    .line 3363
    return-void
.end method


# virtual methods
.method blacklist getCompactCharArray()[C
    .registers 2

    .line 3372
    iget-object v0, p0, Ljava/math/BigDecimal$StringBuilderHelper;->cmpCharArray:[C

    return-object v0
.end method

.method blacklist getStringBuilder()Ljava/lang/StringBuilder;
    .registers 3

    .line 3367
    iget-object v0, p0, Ljava/math/BigDecimal$StringBuilderHelper;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3368
    iget-object v0, p0, Ljava/math/BigDecimal$StringBuilderHelper;->sb:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method blacklist putIntCompact(J)I
    .registers 9
    .param p1, "intCompact"    # J

    .line 3385
    nop

    .line 3391
    iget-object v0, p0, Ljava/math/BigDecimal$StringBuilderHelper;->cmpCharArray:[C

    array-length v0, v0

    .line 3394
    .local v0, "charPos":I
    :goto_4
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-lez v1, :cond_27

    .line 3395
    const-wide/16 v1, 0x64

    div-long v3, p1, v1

    .line 3396
    .local v3, "q":J
    mul-long/2addr v1, v3

    sub-long v1, p1, v1

    long-to-int v1, v1

    .line 3397
    .local v1, "r":I
    move-wide p1, v3

    .line 3398
    iget-object v2, p0, Ljava/math/BigDecimal$StringBuilderHelper;->cmpCharArray:[C

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_ONES:[C

    aget-char v5, v5, v1

    aput-char v5, v2, v0

    .line 3399
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_TENS:[C

    aget-char v5, v5, v1

    aput-char v5, v2, v0

    goto :goto_4

    .line 3404
    .end local v1    # "r":I
    .end local v3    # "q":J
    :cond_27
    long-to-int v1, p1

    .line 3405
    .local v1, "i2":I
    :goto_28
    const/16 v2, 0x64

    if-lt v1, v2, :cond_46

    .line 3406
    div-int/lit8 v2, v1, 0x64

    .line 3407
    .local v2, "q2":I
    mul-int/lit8 v3, v2, 0x64

    sub-int v3, v1, v3

    .line 3408
    .local v3, "r":I
    move v1, v2

    .line 3409
    iget-object v4, p0, Ljava/math/BigDecimal$StringBuilderHelper;->cmpCharArray:[C

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_ONES:[C

    aget-char v5, v5, v3

    aput-char v5, v4, v0

    .line 3410
    add-int/lit8 v0, v0, -0x1

    sget-object v5, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_TENS:[C

    aget-char v5, v5, v3

    aput-char v5, v4, v0

    goto :goto_28

    .line 3413
    .end local v2    # "q2":I
    .end local v3    # "r":I
    :cond_46
    iget-object v2, p0, Ljava/math/BigDecimal$StringBuilderHelper;->cmpCharArray:[C

    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_ONES:[C

    aget-char v3, v3, v1

    aput-char v3, v2, v0

    .line 3414
    const/16 v3, 0xa

    if-lt v1, v3, :cond_5c

    .line 3415
    add-int/lit8 v0, v0, -0x1

    sget-object v3, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_TENS:[C

    aget-char v3, v3, v1

    aput-char v3, v2, v0

    .line 3417
    :cond_5c
    return v0
.end method
