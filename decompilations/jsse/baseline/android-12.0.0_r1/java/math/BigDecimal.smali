.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$UnsafeHolder;,
        Ljava/math/BigDecimal$StringBuilderHelper;,
        Ljava/math/BigDecimal$LongOverflow;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static volatile blacklist BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger; = null

.field private static final blacklist BIG_TEN_POWERS_TABLE_INITLEN:I

.field private static final blacklist BIG_TEN_POWERS_TABLE_MAX:I

.field private static final blacklist DIV_NUM_BASE:J = 0x100000000L

.field private static final blacklist HALF_LONG_MAX_VALUE:J = 0x3fffffffffffffffL

.field private static final blacklist HALF_LONG_MIN_VALUE:J = -0x4000000000000000L

.field static final blacklist INFLATED:J = -0x8000000000000000L

.field private static final blacklist INFLATED_BIGINT:Ljava/math/BigInteger;

.field private static final blacklist LONGLONG_TEN_POWERS_TABLE:[[J

.field private static final blacklist LONG_TEN_POWERS_TABLE:[J

.field private static final blacklist MAX_COMPACT_DIGITS:I = 0x12

.field public static final whitelist test-api ONE:Ljava/math/BigDecimal;

.field public static final whitelist test-api ROUND_CEILING:I = 0x2

.field public static final whitelist test-api ROUND_DOWN:I = 0x1

.field public static final whitelist test-api ROUND_FLOOR:I = 0x3

.field public static final whitelist test-api ROUND_HALF_DOWN:I = 0x5

.field public static final whitelist test-api ROUND_HALF_EVEN:I = 0x6

.field public static final whitelist test-api ROUND_HALF_UP:I = 0x4

.field public static final whitelist test-api ROUND_UNNECESSARY:I = 0x7

.field public static final whitelist test-api ROUND_UP:I = 0x0

.field public static final whitelist test-api TEN:Ljava/math/BigDecimal;

.field private static final blacklist THRESHOLDS_TABLE:[J

.field public static final whitelist test-api ZERO:Ljava/math/BigDecimal;

.field private static final greylist-max-o ZERO_SCALED_BY:[Ljava/math/BigDecimal;

.field private static final blacklist double10pow:[D

.field private static final blacklist float10pow:[F

.field private static final whitelist serialVersionUID:J = 0x54c71557f981284fL

.field private static final blacklist threadLocalStringBuilderHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/math/BigDecimal$StringBuilderHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist zeroThroughTen:[Ljava/math/BigDecimal;


# instance fields
.field private final transient blacklist intCompact:J

.field private final greylist-max-o intVal:Ljava/math/BigInteger;

.field private transient greylist-max-o precision:I

.field private final greylist-max-o scale:I

.field private transient blacklist stringCache:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 28

    .line 220
    nop

    .line 261
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    .line 278
    new-instance v0, Ljava/math/BigDecimal$1;

    invoke-direct {v0}, Ljava/math/BigDecimal$1;-><init>()V

    sput-object v0, Ljava/math/BigDecimal;->threadLocalStringBuilderHelper:Ljava/lang/ThreadLocal;

    .line 286
    const/16 v0, 0xb

    new-array v1, v0, [Ljava/math/BigDecimal;

    new-instance v8, Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    new-instance v3, Ljava/math/BigDecimal;

    sget-object v10, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v5, 0x2

    .line 289
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v6, 0x3

    .line 290
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v8, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v7, 0x4

    .line 291
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/16 v9, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v8, 0x5

    .line 292
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    const-wide/16 v10, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v9, 0x6

    .line 293
    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    const-wide/16 v11, 0x6

    const/4 v13, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v10, 0x7

    .line 294
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v12, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v11, 0x8

    .line 295
    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    const-wide/16 v13, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-instance v3, Ljava/math/BigDecimal;

    const-wide/16 v12, 0x9

    .line 296
    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    const-wide/16 v14, 0x9

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-instance v3, Ljava/math/BigDecimal;

    sget-object v14, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    const-wide/16 v15, 0xa

    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v13, 0xa

    aput-object v3, v1, v13

    sput-object v1, Ljava/math/BigDecimal;->zeroThroughTen:[Ljava/math/BigDecimal;

    .line 301
    const/16 v3, 0x10

    new-array v14, v3, [Ljava/math/BigDecimal;

    aget-object v15, v1, v2

    aput-object v15, v14, v2

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v4

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v24, 0x0

    const/16 v26, 0x2

    const/16 v27, 0x1

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v5

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v20, 0x3

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v6

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v26, 0x4

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v7

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v20, 0x5

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v8

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v26, 0x6

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v9

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v20, 0x7

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v10

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v26, 0x8

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v11

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v20, 0x9

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v12

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v26, 0xa

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v13

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v20, 0xb

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    aput-object v15, v14, v0

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v23, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v26, 0xc

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v16, 0xc

    aput-object v15, v14, v16

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v18, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v19, 0x0

    const/16 v21, 0xd

    const/16 v22, 0x1

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v22}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v17, 0xd

    aput-object v15, v14, v17

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v19, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v20, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x1

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v23}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v18, 0xe

    aput-object v15, v14, v18

    new-instance v15, Ljava/math/BigDecimal;

    sget-object v20, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v21, 0x0

    const/16 v23, 0xf

    const/16 v24, 0x1

    move-object/from16 v19, v15

    invoke-direct/range {v19 .. v24}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    const/16 v19, 0xf

    aput-object v15, v14, v19

    sput-object v14, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    .line 330
    aget-object v14, v1, v2

    sput-object v14, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 338
    aget-object v14, v1, v4

    sput-object v14, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 346
    aget-object v1, v1, v13

    sput-object v1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    .line 3314
    const/16 v1, 0x17

    new-array v1, v1, [D

    fill-array-data v1, :array_34e

    sput-object v1, Ljava/math/BigDecimal;->double10pow:[D

    .line 3325
    new-array v1, v0, [F

    fill-array-data v1, :array_3ae

    sput-object v1, Ljava/math/BigDecimal;->float10pow:[F

    .line 3608
    const/16 v1, 0x13

    new-array v14, v1, [J

    fill-array-data v14, :array_3c8

    sput-object v14, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    .line 3630
    new-array v14, v1, [Ljava/math/BigInteger;

    sget-object v15, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v15, v14, v2

    const-wide/16 v20, 0xa

    .line 3632
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v4

    const-wide/16 v20, 0x64

    .line 3633
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v5

    const-wide/16 v20, 0x3e8

    .line 3634
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v6

    const-wide/16 v20, 0x2710

    .line 3635
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v7

    const-wide/32 v20, 0x186a0

    .line 3636
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v8

    const-wide/32 v20, 0xf4240

    .line 3637
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v9

    const-wide/32 v20, 0x989680

    .line 3638
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v10

    const-wide/32 v20, 0x5f5e100

    .line 3639
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v11

    const-wide/32 v20, 0x3b9aca00

    .line 3640
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v12

    const-wide v20, 0x2540be400L

    .line 3641
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v13

    const-wide v20, 0x174876e800L

    .line 3642
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v0

    const-wide v20, 0xe8d4a51000L

    .line 3643
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v16

    const-wide v20, 0x9184e72a000L

    .line 3644
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v17

    const-wide v20, 0x5af3107a4000L

    .line 3645
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v18

    const-wide v20, 0x38d7ea4c68000L

    .line 3646
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v19

    const-wide v20, 0x2386f26fc10000L

    .line 3647
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    aput-object v15, v14, v3

    const-wide v20, 0x16345785d8a0000L

    .line 3648
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    const/16 v20, 0x11

    aput-object v15, v14, v20

    const-wide v21, 0xde0b6b3a7640000L

    .line 3649
    invoke-static/range {v21 .. v22}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    const/16 v21, 0x12

    aput-object v15, v14, v21

    sput-object v14, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 3652
    sget-object v14, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    array-length v14, v14

    sput v14, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_INITLEN:I

    .line 3654
    mul-int/2addr v14, v3

    sput v14, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_MAX:I

    .line 3657
    new-array v14, v1, [J

    fill-array-data v14, :array_418

    sput-object v14, Ljava/math/BigDecimal;->THRESHOLDS_TABLE:[J

    .line 5156
    const/16 v14, 0x14

    new-array v14, v14, [[J

    new-array v15, v5, [J

    fill-array-data v15, :array_468

    aput-object v15, v14, v2

    new-array v2, v5, [J

    fill-array-data v2, :array_474

    aput-object v2, v14, v4

    new-array v2, v5, [J

    fill-array-data v2, :array_480

    aput-object v2, v14, v5

    new-array v2, v5, [J

    fill-array-data v2, :array_48c

    aput-object v2, v14, v6

    new-array v2, v5, [J

    fill-array-data v2, :array_498

    aput-object v2, v14, v7

    new-array v2, v5, [J

    fill-array-data v2, :array_4a4

    aput-object v2, v14, v8

    new-array v2, v5, [J

    fill-array-data v2, :array_4b0

    aput-object v2, v14, v9

    new-array v2, v5, [J

    fill-array-data v2, :array_4bc

    aput-object v2, v14, v10

    new-array v2, v5, [J

    fill-array-data v2, :array_4c8

    aput-object v2, v14, v11

    new-array v2, v5, [J

    fill-array-data v2, :array_4d4

    aput-object v2, v14, v12

    new-array v2, v5, [J

    fill-array-data v2, :array_4e0

    aput-object v2, v14, v13

    new-array v2, v5, [J

    fill-array-data v2, :array_4ec

    aput-object v2, v14, v0

    new-array v0, v5, [J

    fill-array-data v0, :array_4f8

    aput-object v0, v14, v16

    new-array v0, v5, [J

    fill-array-data v0, :array_504

    aput-object v0, v14, v17

    new-array v0, v5, [J

    fill-array-data v0, :array_510

    aput-object v0, v14, v18

    new-array v0, v5, [J

    fill-array-data v0, :array_51c

    aput-object v0, v14, v19

    new-array v0, v5, [J

    fill-array-data v0, :array_528

    aput-object v0, v14, v3

    new-array v0, v5, [J

    fill-array-data v0, :array_534

    aput-object v0, v14, v20

    new-array v0, v5, [J

    fill-array-data v0, :array_540

    aput-object v0, v14, v21

    new-array v0, v5, [J

    fill-array-data v0, :array_54c

    aput-object v0, v14, v1

    sput-object v14, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    return-void

    :array_34e
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_3ae
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_3c8
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_418
    .array-data 8
        0x7fffffffffffffffL
        0xcccccccccccccccL
        0x147ae147ae147aeL
        0x20c49ba5e353f7L
        0x346dc5d638865L
        0x53e2d6238da3L
        0x8637bd05af6L
        0xd6bf94d5e5L
        0x15798ee230L
        0x225c17d04L
        0x36f9bfb3
        0x57f5ff8
        0x8cbccc
        0xe12e1
        0x16849
        0x2407
        0x39a
        0x5c
        0x9
    .end array-data

    :array_468
    .array-data 8
        0x0
        -0x7538dcfb76180000L    # -9.630676049668687E-257
    .end array-data

    :array_474
    .array-data 8
        0x5
        0x6bc75e2d63100000L
    .end array-data

    :array_480
    .array-data 8
        0x36
        0x35c9adc5dea00000L    # 1.3726678355276356E-49
    .end array-data

    :array_48c
    .array-data 8
        0x21e
        0x19e0c9bab2400000L    # 4.938689790935458E-184
    .end array-data

    :array_498
    .array-data 8
        0x152d
        0x2c7e14af6800000L
    .end array-data

    :array_4a4
    .array-data 8
        0xd3c2
        0x1bcecceda1000000L
    .end array-data

    :array_4b0
    .array-data 8
        0x84595
        0x161401484a000000L
    .end array-data

    :array_4bc
    .array-data 8
        0x52b7d2
        -0x2337f32d1c000000L    # -8.950035900659082E138
    .end array-data

    :array_4c8
    .array-data 8
        0x33b2e3c
        -0x602f7fc318000000L    # -1.922961773682622E-155
    .end array-data

    :array_4d4
    .array-data 8
        0x204fce5e
        0x3e25026110000000L    # 2.4458036707031283E-9
    .end array-data

    :array_4e0
    .array-data 8
        0x1431e0faeL
        0x6d7217caa0000000L    # 1.5967094556710666E219
    .end array-data

    :array_4ec
    .array-data 8
        0xc9f2c9cd0L
        0x4674edea40000000L    # 2.6531110215779044E31
    .end array-data

    :array_4f8
    .array-data 8
        0x7e37be2022L
        -0x3f6eb4d980000000L    # -1106.78759765625
    .end array-data

    :array_504
    .array-data 8
        0x4ee2d6d415bL
        -0x7a53107f00000000L
    .end array-data

    :array_510
    .array-data 8
        0x314dc6448d93L
        0x38c15b0a00000000L
    .end array-data

    :array_51c
    .array-data 8
        0x1ed09bead87c0L
        0x378d8e6400000000L    # 4.241108625317677E-41
    .end array-data

    :array_528
    .array-data 8
        0x13426172c74d82L
        0x2b878fe800000000L    # 5.3862443665208984E-99
    .end array-data

    :array_534
    .array-data 8
        0xc097ce7bc90715L
        -0x4cb460f000000000L    # -1.342875060065033E-61
    .end array-data

    :array_540
    .array-data 8
        0x785ee10d5da46d9L
        0xf436a000000000L
    .end array-data

    :array_54c
    .array-data 8
        0x4b3b4ca85a86c47aL    # 2.614767250156754E54
        0x98a224000000000L
    .end array-data
.end method

.method public constructor whitelist test-api <init>(D)V
    .registers 4
    .param p1, "val"    # D

    .line 875
    sget-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    .line 876
    return-void
.end method

.method public constructor whitelist test-api <init>(DLjava/math/MathContext;)V
    .registers 26
    .param p1, "val"    # D
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 897
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_123

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_123

    .line 901
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 902
    .local v2, "valBits":J
    const/16 v4, 0x3f

    shr-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-nez v4, :cond_24

    move v4, v5

    goto :goto_25

    :cond_24
    const/4 v4, -0x1

    .line 903
    .local v4, "sign":I
    :goto_25
    const/16 v8, 0x34

    shr-long v8, v2, v8

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v8, v8

    .line 904
    .local v8, "exponent":I
    const-wide v9, 0xfffffffffffffL

    if-nez v8, :cond_37

    .line 905
    and-long/2addr v9, v2

    shl-long/2addr v9, v5

    goto :goto_3b

    .line 906
    :cond_37
    and-long/2addr v9, v2

    const-wide/high16 v11, 0x10000000000000L

    or-long/2addr v9, v11

    :goto_3b
    nop

    .line 907
    .local v9, "significand":J
    add-int/lit16 v8, v8, -0x433

    .line 914
    cmp-long v11, v9, v6

    if-nez v11, :cond_4e

    .line 915
    sget-object v11, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v11, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 916
    const/4 v11, 0x0

    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    .line 917
    iput-wide v6, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 918
    iput v5, v0, Ljava/math/BigDecimal;->precision:I

    .line 919
    return-void

    .line 922
    :cond_4e
    :goto_4e
    const-wide/16 v11, 0x1

    and-long/2addr v11, v9

    cmp-long v11, v11, v6

    if-nez v11, :cond_59

    .line 923
    shr-long/2addr v9, v5

    .line 924
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 926
    :cond_59
    const/4 v5, 0x0

    .line 929
    .local v5, "scale":I
    int-to-long v6, v4

    mul-long/2addr v6, v9

    .line 930
    .local v6, "compactVal":J
    const-wide/high16 v11, -0x8000000000000000L

    if-nez v8, :cond_69

    .line 931
    cmp-long v13, v6, v11

    if-nez v13, :cond_67

    sget-object v13, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_68

    :cond_67
    const/4 v13, 0x0

    .local v13, "intVal":Ljava/math/BigInteger;
    :goto_68
    goto :goto_8e

    .line 933
    .end local v13    # "intVal":Ljava/math/BigInteger;
    :cond_69
    if-gez v8, :cond_7c

    .line 934
    const-wide/16 v13, 0x5

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    neg-int v14, v8

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 935
    .restart local v13    # "intVal":Ljava/math/BigInteger;
    neg-int v5, v8

    goto :goto_8a

    .line 937
    .end local v13    # "intVal":Ljava/math/BigInteger;
    :cond_7c
    const-wide/16 v13, 0x2

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 939
    .restart local v13    # "intVal":Ljava/math/BigInteger;
    :goto_8a
    invoke-static {v13}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 941
    :goto_8e
    const/4 v14, 0x0

    .line 942
    .local v14, "prec":I
    iget v15, v1, Ljava/math/MathContext;->precision:I

    .line 943
    .local v15, "mcp":I
    if-lez v15, :cond_113

    .line 944
    iget-object v11, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v11, v11, Ljava/math/RoundingMode;->oldMode:I

    .line 946
    .local v11, "mode":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v12, v6, v16

    if-nez v12, :cond_d5

    .line 947
    invoke-static {v13}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v12

    .line 948
    .end local v14    # "prec":I
    .local v12, "prec":I
    sub-int v14, v12, v15

    .line 949
    .local v14, "drop":I
    :goto_a3
    if-lez v14, :cond_cd

    .line 950
    move-wide/from16 v18, v2

    .end local v2    # "valBits":J
    .local v18, "valBits":J
    int-to-long v2, v5

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "sign":I
    .end local v5    # "scale":I
    .local v20, "sign":I
    .local v21, "scale":I
    int-to-long v4, v14

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 951
    .end local v21    # "scale":I
    .restart local v5    # "scale":I
    invoke-static {v13, v14, v11}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v13

    .line 952
    invoke-static {v13}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 953
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v6, v2

    if-eqz v4, :cond_c2

    .line 954
    move v14, v12

    goto :goto_d9

    .line 956
    :cond_c2
    invoke-static {v13}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v12

    .line 957
    sub-int v14, v12, v15

    move-wide/from16 v2, v18

    move/from16 v4, v20

    goto :goto_a3

    .line 949
    .end local v18    # "valBits":J
    .end local v20    # "sign":I
    .restart local v2    # "valBits":J
    .restart local v4    # "sign":I
    :cond_cd
    move-wide/from16 v18, v2

    move/from16 v20, v4

    move/from16 v21, v5

    .end local v2    # "valBits":J
    .end local v4    # "sign":I
    .end local v5    # "scale":I
    .restart local v18    # "valBits":J
    .restart local v20    # "sign":I
    .restart local v21    # "scale":I
    move v14, v12

    goto :goto_d9

    .line 946
    .end local v12    # "prec":I
    .end local v18    # "valBits":J
    .end local v20    # "sign":I
    .end local v21    # "scale":I
    .restart local v2    # "valBits":J
    .restart local v4    # "sign":I
    .restart local v5    # "scale":I
    .local v14, "prec":I
    :cond_d5
    move-wide/from16 v18, v2

    move/from16 v20, v4

    .line 960
    .end local v2    # "valBits":J
    .end local v4    # "sign":I
    .restart local v18    # "valBits":J
    .restart local v20    # "sign":I
    :goto_d9
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v6, v2

    if-eqz v2, :cond_10f

    .line 961
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v2

    .line 962
    .end local v14    # "prec":I
    .local v2, "prec":I
    sub-int v3, v2, v15

    move v14, v2

    .line 963
    .end local v2    # "prec":I
    .local v3, "drop":I
    .restart local v14    # "prec":I
    :goto_e6
    if-lez v3, :cond_109

    .line 964
    move v2, v8

    move-wide/from16 v16, v9

    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .local v2, "exponent":I
    .local v16, "significand":J
    int-to-long v8, v5

    move v10, v5

    .end local v5    # "scale":I
    .local v10, "scale":I
    int-to-long v4, v3

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 965
    .end local v10    # "scale":I
    .restart local v5    # "scale":I
    sget-object v4, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v8, v4, v3

    iget-object v4, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v4, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v6

    .line 966
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v14

    .line 967
    sub-int v3, v14, v15

    move v8, v2

    move-wide/from16 v9, v16

    goto :goto_e6

    .line 969
    .end local v2    # "exponent":I
    .end local v16    # "significand":J
    .restart local v8    # "exponent":I
    .restart local v9    # "significand":J
    :cond_109
    move v2, v8

    move-wide/from16 v16, v9

    move v10, v5

    .end local v5    # "scale":I
    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .restart local v2    # "exponent":I
    .restart local v10    # "scale":I
    .restart local v16    # "significand":J
    const/4 v13, 0x0

    goto :goto_11a

    .line 960
    .end local v2    # "exponent":I
    .end local v3    # "drop":I
    .end local v10    # "scale":I
    .end local v16    # "significand":J
    .restart local v5    # "scale":I
    .restart local v8    # "exponent":I
    .restart local v9    # "significand":J
    :cond_10f
    move v2, v8

    move-wide/from16 v16, v9

    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .restart local v2    # "exponent":I
    .restart local v16    # "significand":J
    goto :goto_11a

    .line 943
    .end local v11    # "mode":I
    .end local v16    # "significand":J
    .end local v18    # "valBits":J
    .end local v20    # "sign":I
    .local v2, "valBits":J
    .restart local v4    # "sign":I
    .restart local v8    # "exponent":I
    .restart local v9    # "significand":J
    :cond_113
    move-wide/from16 v18, v2

    move/from16 v20, v4

    move v2, v8

    move-wide/from16 v16, v9

    .line 972
    .end local v4    # "sign":I
    .end local v8    # "exponent":I
    .end local v9    # "significand":J
    .local v2, "exponent":I
    .restart local v16    # "significand":J
    .restart local v18    # "valBits":J
    .restart local v20    # "sign":I
    :goto_11a
    iput-object v13, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 973
    iput-wide v6, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 974
    iput v5, v0, Ljava/math/BigDecimal;->scale:I

    .line 975
    iput v14, v0, Ljava/math/BigDecimal;->precision:I

    .line 976
    return-void

    .line 898
    .end local v2    # "exponent":I
    .end local v5    # "scale":I
    .end local v6    # "compactVal":J
    .end local v13    # "intVal":Ljava/math/BigInteger;
    .end local v14    # "prec":I
    .end local v15    # "mcp":I
    .end local v16    # "significand":J
    .end local v18    # "valBits":J
    .end local v20    # "sign":I
    :cond_123
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Infinite or NaN"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "val"    # I

    .line 1084
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1085
    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigDecimal;->scale:I

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1088
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/math/MathContext;)V
    .registers 13
    .param p1, "val"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1102
    iget v0, p2, Ljava/math/MathContext;->precision:I

    .line 1103
    .local v0, "mcp":I
    int-to-long v1, p1

    .line 1104
    .local v1, "compactVal":J
    const/4 v3, 0x0

    .line 1105
    .local v3, "scale":I
    const/4 v4, 0x0

    .line 1106
    .local v4, "prec":I
    if-lez v0, :cond_2c

    .line 1107
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v4

    .line 1108
    sub-int v5, v4, v0

    .line 1109
    .local v5, "drop":I
    :goto_10
    if-lez v5, :cond_2c

    .line 1110
    int-to-long v6, v3

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 1111
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v6, v6, v5

    iget-object v8, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v8, v8, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v1, v2, v6, v7, v8}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v1

    .line 1112
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v4

    .line 1113
    sub-int v5, v4, v0

    goto :goto_10

    .line 1116
    .end local v5    # "drop":I
    :cond_2c
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1117
    iput-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1118
    iput v3, p0, Ljava/math/BigDecimal;->scale:I

    .line 1119
    iput v4, p0, Ljava/math/BigDecimal;->precision:I

    .line 1120
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 5
    .param p1, "val"    # J

    .line 1129
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1130
    iput-wide p1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1131
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    sget-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1132
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigDecimal;->scale:I

    .line 1133
    return-void
.end method

.method public constructor whitelist test-api <init>(JLjava/math/MathContext;)V
    .registers 16
    .param p1, "val"    # J
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1147
    iget v0, p3, Ljava/math/MathContext;->precision:I

    .line 1148
    .local v0, "mcp":I
    iget-object v1, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v1, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 1149
    .local v1, "mode":I
    const/4 v2, 0x0

    .line 1150
    .local v2, "prec":I
    const/4 v3, 0x0

    .line 1151
    .local v3, "scale":I
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-nez v6, :cond_14

    sget-object v6, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_15

    :cond_14
    const/4 v6, 0x0

    .line 1152
    .local v6, "intVal":Ljava/math/BigInteger;
    :goto_15
    if-lez v0, :cond_63

    .line 1153
    cmp-long v7, p1, v4

    if-nez v7, :cond_3c

    .line 1154
    const/16 v2, 0x13

    .line 1155
    sub-int v7, v2, v0

    .line 1156
    .local v7, "drop":I
    :goto_1f
    if-lez v7, :cond_3c

    .line 1157
    int-to-long v8, v3

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 1158
    invoke-static {v6, v7, v1}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v6

    .line 1159
    invoke-static {v6}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide p1

    .line 1160
    cmp-long v8, p1, v4

    if-eqz v8, :cond_35

    .line 1161
    goto :goto_3c

    .line 1163
    :cond_35
    invoke-static {v6}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v2

    .line 1164
    sub-int v7, v2, v0

    goto :goto_1f

    .line 1167
    .end local v7    # "drop":I
    :cond_3c
    :goto_3c
    cmp-long v4, p1, v4

    if-eqz v4, :cond_63

    .line 1168
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v2

    .line 1169
    sub-int v4, v2, v0

    .line 1170
    .local v4, "drop":I
    :goto_46
    if-lez v4, :cond_62

    .line 1171
    int-to-long v7, v3

    int-to-long v9, v4

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 1172
    sget-object v5, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v7, v5, v4

    iget-object v5, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {p1, p2, v7, v8, v5}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide p1

    .line 1173
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v2

    .line 1174
    sub-int v4, v2, v0

    goto :goto_46

    .line 1176
    :cond_62
    const/4 v6, 0x0

    .line 1179
    .end local v4    # "drop":I
    :cond_63
    iput-object v6, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1180
    iput-wide p1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1181
    iput v3, p0, Ljava/math/BigDecimal;->scale:I

    .line 1182
    iput v2, p0, Ljava/math/BigDecimal;->precision:I

    .line 1183
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .line 809
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 810
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .registers 6
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, p2}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 828
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 985
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 986
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/BigDecimal;->scale:I

    .line 987
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 988
    invoke-static {p1}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 989
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 1016
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1018
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1019
    invoke-static {p1}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1020
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 1021
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .registers 16
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 1038
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1039
    invoke-static {p1}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    .line 1040
    .local v0, "compactVal":J
    iget v2, p3, Ljava/math/MathContext;->precision:I

    .line 1041
    .local v2, "mcp":I
    const/4 v3, 0x0

    .line 1042
    .local v3, "prec":I
    if-lez v2, :cond_5c

    .line 1043
    iget-object v4, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v4, Ljava/math/RoundingMode;->oldMode:I

    .line 1044
    .local v4, "mode":I
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v0, v5

    if-nez v7, :cond_39

    .line 1045
    invoke-static {p1}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 1046
    sub-int v7, v3, v2

    .line 1047
    .local v7, "drop":I
    :goto_1c
    if-lez v7, :cond_39

    .line 1048
    int-to-long v8, p2

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p2

    .line 1049
    invoke-static {p1, v7, v4}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object p1

    .line 1050
    invoke-static {p1}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    .line 1051
    cmp-long v8, v0, v5

    if-eqz v8, :cond_32

    .line 1052
    goto :goto_39

    .line 1054
    :cond_32
    invoke-static {p1}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v3

    .line 1055
    sub-int v7, v3, v2

    goto :goto_1c

    .line 1058
    .end local v7    # "drop":I
    :cond_39
    :goto_39
    cmp-long v5, v0, v5

    if-eqz v5, :cond_5c

    .line 1059
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v3

    .line 1060
    sub-int v5, v3, v2

    .line 1061
    .local v5, "drop":I
    :goto_43
    if-lez v5, :cond_5b

    .line 1062
    int-to-long v6, p2

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p2

    .line 1063
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v6, v6, v5

    invoke-static {v0, v1, v6, v7, v4}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v0

    .line 1064
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v3

    .line 1065
    sub-int v5, v3, v2

    goto :goto_43

    .line 1067
    :cond_5b
    const/4 p1, 0x0

    .line 1070
    .end local v4    # "mode":I
    .end local v5    # "drop":I
    :cond_5c
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 1071
    iput-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 1072
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 1073
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 1074
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;JII)V
    .registers 6
    .param p1, "intVal"    # Ljava/math/BigInteger;
    .param p2, "val"    # J
    .param p4, "scale"    # I
    .param p5, "prec"    # I

    .line 356
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 357
    iput p4, p0, Ljava/math/BigDecimal;->scale:I

    .line 358
    iput p5, p0, Ljava/math/BigDecimal;->precision:I

    .line 359
    iput-wide p2, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 360
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 361
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1004
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    .line 1005
    return-void
.end method

.method public constructor whitelist test-api <init>([C)V
    .registers 4
    .param p1, "in"    # [C

    .line 680
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 681
    return-void
.end method

.method public constructor whitelist test-api <init>([CII)V
    .registers 5
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 383
    sget-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 384
    return-void
.end method

.method public constructor whitelist test-api <init>([CIILjava/math/MathContext;)V
    .registers 34
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    .line 409
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 411
    array-length v0, v2

    or-int/2addr v0, v3

    or-int v0, v0, p2

    if-ltz v0, :cond_3d6

    array-length v0, v2

    sub-int v0, v0, p2

    if-gt v3, v0, :cond_3d6

    .line 422
    const/4 v5, 0x0

    .line 423
    .local v5, "prec":I
    const/4 v6, 0x0

    .line 424
    .local v6, "scl":I
    const-wide/16 v7, 0x0

    .line 425
    .local v7, "rs":J
    const/4 v9, 0x0

    .line 430
    .local v9, "rb":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 431
    .local v0, "isneg":Z
    :try_start_1c
    aget-char v10, v2, p2

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_28

    .line 432
    const/4 v0, 0x1

    .line 433
    add-int/lit8 v10, p2, 0x1

    .line 434
    .end local p2    # "offset":I
    .local v10, "offset":I
    add-int/lit8 v3, v3, -0x1

    .end local p3    # "len":I
    .local v3, "len":I
    goto :goto_35

    .line 435
    .end local v3    # "len":I
    .end local v10    # "offset":I
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :cond_28
    aget-char v10, v2, p2
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c .. :try_end_2a} :catch_3cb
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1c .. :try_end_2a} :catch_3c0

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_33

    .line 436
    add-int/lit8 v10, p2, 0x1

    .line 437
    .end local p2    # "offset":I
    .restart local v10    # "offset":I
    add-int/lit8 v3, v3, -0x1

    .end local p3    # "len":I
    .restart local v3    # "len":I
    goto :goto_35

    .line 435
    .end local v3    # "len":I
    .end local v10    # "offset":I
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :cond_33
    move/from16 v10, p2

    .line 441
    .end local p2    # "offset":I
    .end local p3    # "len":I
    .restart local v3    # "len":I
    .restart local v10    # "offset":I
    :goto_35
    const/4 v11, 0x0

    .line 442
    .local v11, "dot":Z
    const-wide/16 v12, 0x0

    .line 444
    .local v12, "exp":J
    const/16 v14, 0x12

    if-gt v3, v14, :cond_3e

    const/4 v14, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v14, 0x0

    .line 447
    .local v14, "isCompact":Z
    :goto_3f
    const/16 v16, 0x0

    .line 448
    .local v16, "idx":I
    const/16 v15, 0x30

    const-wide/16 v21, 0x0

    if-eqz v14, :cond_1b8

    .line 451
    :goto_47
    if-lez v3, :cond_124

    .line 452
    :try_start_49
    aget-char v23, v2, v10
    :try_end_4b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_49 .. :try_end_4b} :catch_11d
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_49 .. :try_end_4b} :catch_116

    move/from16 v24, v23

    .line 453
    .local v24, "c":C
    const-wide/16 v25, 0xa

    move-object/from16 v23, v9

    move/from16 v9, v24

    .end local v24    # "c":C
    .local v9, "c":C
    .local v23, "rb":Ljava/math/BigInteger;
    if-ne v9, v15, :cond_6f

    .line 454
    if-nez v5, :cond_59

    .line 455
    const/4 v5, 0x1

    goto :goto_61

    .line 456
    :cond_59
    cmp-long v24, v7, v21

    if-eqz v24, :cond_61

    .line 457
    mul-long v7, v7, v25

    .line 458
    add-int/lit8 v5, v5, 0x1

    .line 460
    :cond_61
    :goto_61
    if-eqz v11, :cond_6a

    .line 461
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v27, v12

    move v15, v14

    goto/16 :goto_d6

    .line 460
    :cond_6a
    move-wide/from16 v27, v12

    move v15, v14

    goto/16 :goto_d6

    .line 462
    :cond_6f
    const/16 v15, 0x31

    if-lt v9, v15, :cond_91

    const/16 v15, 0x39

    if-gt v9, v15, :cond_91

    .line 463
    add-int/lit8 v15, v9, -0x30

    .line 464
    .local v15, "digit":I
    move-wide/from16 v27, v12

    const/4 v12, 0x1

    .end local v12    # "exp":J
    .local v27, "exp":J
    if-ne v5, v12, :cond_82

    cmp-long v12, v7, v21

    if-eqz v12, :cond_84

    .line 465
    :cond_82
    add-int/lit8 v5, v5, 0x1

    .line 466
    :cond_84
    mul-long v25, v25, v7

    int-to-long v12, v15

    add-long v25, v25, v12

    .line 467
    .end local v7    # "rs":J
    .local v25, "rs":J
    if-eqz v11, :cond_8d

    .line 468
    add-int/lit8 v6, v6, 0x1

    .line 469
    .end local v15    # "digit":I
    :cond_8d
    move v15, v14

    move-wide/from16 v7, v25

    goto :goto_d6

    .line 462
    .end local v25    # "rs":J
    .end local v27    # "exp":J
    .restart local v7    # "rs":J
    .restart local v12    # "exp":J
    :cond_91
    move-wide/from16 v27, v12

    .line 469
    .end local v12    # "exp":J
    .restart local v27    # "exp":J
    const/16 v12, 0x2e

    if-ne v9, v12, :cond_a2

    .line 471
    if-nez v11, :cond_9c

    .line 473
    const/4 v11, 0x1

    move v15, v14

    goto :goto_d6

    .line 472
    :cond_9c
    :try_start_9c
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v10    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v12
    :try_end_a2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9c .. :try_end_a2} :catch_3bc
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_9c .. :try_end_a2} :catch_3b8

    .line 474
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_a2
    :try_start_a2
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12
    :try_end_a6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a2 .. :try_end_a6} :catch_10f
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_a2 .. :try_end_a6} :catch_108

    if-eqz v12, :cond_e3

    .line 475
    const/16 v12, 0xa

    :try_start_aa
    invoke-static {v9, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v13

    move v12, v13

    .line 476
    .local v12, "digit":I
    if-nez v12, :cond_c2

    .line 477
    if-nez v5, :cond_b6

    .line 478
    const/4 v5, 0x1

    move v15, v14

    goto :goto_d1

    .line 479
    :cond_b6
    cmp-long v13, v7, v21

    if-eqz v13, :cond_c0

    .line 480
    mul-long v7, v7, v25

    .line 481
    add-int/lit8 v5, v5, 0x1

    move v15, v14

    goto :goto_d1

    .line 479
    :cond_c0
    move v15, v14

    goto :goto_d1

    .line 484
    :cond_c2
    const/4 v13, 0x1

    if-ne v5, v13, :cond_c9

    cmp-long v13, v7, v21

    if-eqz v13, :cond_cb

    .line 485
    :cond_c9
    add-int/lit8 v5, v5, 0x1

    .line 486
    :cond_cb
    mul-long v25, v25, v7

    move v15, v14

    .end local v14    # "isCompact":Z
    .local v15, "isCompact":Z
    int-to-long v13, v12

    add-long v7, v25, v13

    .line 488
    :goto_d1
    if-eqz v11, :cond_d5

    .line 489
    add-int/lit8 v6, v6, 0x1

    .line 490
    .end local v12    # "digit":I
    :cond_d5
    nop

    .line 451
    :goto_d6
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, -0x1

    move v14, v15

    move-object/from16 v9, v23

    move-wide/from16 v12, v27

    const/16 v15, 0x30

    goto/16 :goto_47

    .line 490
    .end local v15    # "isCompact":Z
    .restart local v14    # "isCompact":Z
    :cond_e3
    move v15, v14

    .end local v14    # "isCompact":Z
    .restart local v15    # "isCompact":Z
    const/16 v12, 0x65

    if-eq v9, v12, :cond_f3

    const/16 v12, 0x45

    if-ne v9, v12, :cond_ed

    goto :goto_f3

    .line 497
    :cond_ed
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-direct {v12}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v10    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v12
    :try_end_f3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_aa .. :try_end_f3} :catch_3bc
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_aa .. :try_end_f3} :catch_3b8

    .line 491
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_f3
    :goto_f3
    :try_start_f3
    invoke-static {v2, v10, v3}, Ljava/math/BigDecimal;->parseExp([CII)J

    move-result-wide v12
    :try_end_f7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f3 .. :try_end_f7} :catch_10f
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_f3 .. :try_end_f7} :catch_108

    .line 493
    .end local v27    # "exp":J
    .local v12, "exp":J
    long-to-int v14, v12

    move/from16 v18, v9

    move/from16 p3, v10

    .end local v9    # "c":C
    .end local v10    # "offset":I
    .local v18, "c":C
    .local p3, "offset":I
    int-to-long v9, v14

    cmp-long v9, v9, v12

    if-nez v9, :cond_102

    goto :goto_12b

    .line 494
    :cond_102
    :try_start_102
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-direct {v9}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p3    # "offset":I
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v9

    .line 600
    .end local v0    # "isneg":Z
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .end local v18    # "c":C
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_108
    move-exception v0

    move/from16 p3, v10

    move-object/from16 v9, v23

    .end local v10    # "offset":I
    .restart local p3    # "offset":I
    goto/16 :goto_3c5

    .line 598
    .end local p3    # "offset":I
    .restart local v10    # "offset":I
    :catch_10f
    move-exception v0

    move/from16 p3, v10

    move-object/from16 v9, v23

    .end local v10    # "offset":I
    .restart local p3    # "offset":I
    goto/16 :goto_3d0

    .line 600
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p3    # "offset":I
    .local v9, "rb":Ljava/math/BigInteger;
    .restart local v10    # "offset":I
    :catch_116
    move-exception v0

    move-object/from16 v23, v9

    move/from16 p3, v10

    .end local v9    # "rb":Ljava/math/BigInteger;
    .end local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p3    # "offset":I
    goto/16 :goto_3c5

    .line 598
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p3    # "offset":I
    .restart local v9    # "rb":Ljava/math/BigInteger;
    .restart local v10    # "offset":I
    :catch_11d
    move-exception v0

    move-object/from16 v23, v9

    move/from16 p3, v10

    .end local v9    # "rb":Ljava/math/BigInteger;
    .end local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p3    # "offset":I
    goto/16 :goto_3d0

    .line 451
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p3    # "offset":I
    .restart local v0    # "isneg":Z
    .restart local v9    # "rb":Ljava/math/BigInteger;
    .restart local v10    # "offset":I
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .restart local v14    # "isCompact":Z
    .restart local v16    # "idx":I
    :cond_124
    move-object/from16 v23, v9

    move/from16 p3, v10

    move-wide/from16 v27, v12

    move v15, v14

    .line 500
    .end local v9    # "rb":Ljava/math/BigInteger;
    .end local v10    # "offset":I
    .end local v14    # "isCompact":Z
    .restart local v15    # "isCompact":Z
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p3    # "offset":I
    :goto_12b
    if-eqz v5, :cond_1a1

    .line 503
    cmp-long v9, v12, v21

    if-eqz v9, :cond_136

    .line 504
    invoke-direct {v1, v6, v12, v13}, Ljava/math/BigDecimal;->adjustScale(IJ)I

    move-result v9

    move v6, v9

    .line 506
    :cond_136
    if-eqz v0, :cond_13a

    neg-long v9, v7

    goto :goto_13b

    :cond_13a
    move-wide v9, v7

    :goto_13b
    move-wide v7, v9

    .line 507
    iget v9, v4, Ljava/math/MathContext;->precision:I
    :try_end_13e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_102 .. :try_end_13e} :catch_1b1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_102 .. :try_end_13e} :catch_1aa

    .line 508
    .local v9, "mcp":I
    sub-int v10, v5, v9

    .line 510
    .local v10, "drop":I
    if-lez v9, :cond_198

    if-lez v10, :cond_198

    .line 511
    :goto_144
    if-lez v10, :cond_191

    .line 512
    move v14, v11

    move-wide/from16 v17, v12

    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .local v14, "dot":Z
    .local v17, "exp":J
    int-to-long v11, v6

    move/from16 p2, v5

    move v13, v6

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .local v13, "scl":I
    .local p2, "prec":I
    int-to-long v5, v10

    sub-long/2addr v11, v5

    :try_start_14f
    invoke-static {v11, v12}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5
    :try_end_153
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14f .. :try_end_153} :catch_187
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_14f .. :try_end_153} :catch_17d

    move v6, v5

    .line 513
    .end local v13    # "scl":I
    .restart local v6    # "scl":I
    :try_start_154
    sget-object v5, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v11, v5, v10

    iget-object v5, v4, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v7, v8, v11, v12, v5}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v11

    move-wide v7, v11

    .line 514
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v5
    :try_end_165
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_154 .. :try_end_165} :catch_174
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_154 .. :try_end_165} :catch_16b

    .line 515
    .end local p2    # "prec":I
    .restart local v5    # "prec":I
    sub-int v10, v5, v9

    move v11, v14

    move-wide/from16 v12, v17

    goto :goto_144

    .line 600
    .end local v0    # "isneg":Z
    .end local v5    # "prec":I
    .end local v9    # "mcp":I
    .end local v10    # "drop":I
    .end local v14    # "dot":Z
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .end local v17    # "exp":J
    .restart local p2    # "prec":I
    :catch_16b
    move-exception v0

    move/from16 v5, p2

    move/from16 v10, p3

    move-object/from16 v9, v23

    goto/16 :goto_3c5

    .line 598
    :catch_174
    move-exception v0

    move/from16 v5, p2

    move/from16 v10, p3

    move-object/from16 v9, v23

    goto/16 :goto_3d0

    .line 600
    .end local v6    # "scl":I
    .restart local v13    # "scl":I
    :catch_17d
    move-exception v0

    move/from16 v5, p2

    move/from16 v10, p3

    move v6, v13

    move-object/from16 v9, v23

    goto/16 :goto_3c5

    .line 598
    :catch_187
    move-exception v0

    move/from16 v5, p2

    move/from16 v10, p3

    move v6, v13

    move-object/from16 v9, v23

    goto/16 :goto_3d0

    .line 511
    .end local v13    # "scl":I
    .end local p2    # "prec":I
    .restart local v0    # "isneg":Z
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v9    # "mcp":I
    .restart local v10    # "drop":I
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .restart local v15    # "isCompact":Z
    .restart local v16    # "idx":I
    :cond_191
    move/from16 p2, v5

    move v14, v11

    move-wide/from16 v17, v12

    move v13, v6

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .restart local v13    # "scl":I
    .restart local v14    # "dot":Z
    .restart local v17    # "exp":J
    .restart local p2    # "prec":I
    goto :goto_19b

    .line 510
    .end local v13    # "scl":I
    .end local v14    # "dot":Z
    .end local v17    # "exp":J
    .end local p2    # "prec":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    :cond_198
    move v14, v11

    move-wide/from16 v17, v12

    .line 518
    .end local v9    # "mcp":I
    .end local v10    # "drop":I
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .restart local v14    # "dot":Z
    .restart local v17    # "exp":J
    :goto_19b
    move/from16 v10, p3

    move-object/from16 v9, v23

    goto/16 :goto_376

    .line 501
    .end local v14    # "dot":Z
    .end local v17    # "exp":J
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    :cond_1a1
    move v14, v11

    move-wide/from16 v17, v12

    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .restart local v14    # "dot":Z
    .restart local v17    # "exp":J
    :try_start_1a4
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-direct {v9}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p3    # "offset":I
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v9
    :try_end_1aa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a4 .. :try_end_1aa} :catch_1b1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1a4 .. :try_end_1aa} :catch_1aa

    .line 600
    .end local v0    # "isneg":Z
    .end local v14    # "dot":Z
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .end local v17    # "exp":J
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p3    # "offset":I
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_1aa
    move-exception v0

    move/from16 v10, p3

    move-object/from16 v9, v23

    goto/16 :goto_3c5

    .line 598
    :catch_1b1
    move-exception v0

    move/from16 v10, p3

    move-object/from16 v9, v23

    goto/16 :goto_3d0

    .line 519
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p3    # "offset":I
    .restart local v0    # "isneg":Z
    .local v9, "rb":Ljava/math/BigInteger;
    .local v10, "offset":I
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .local v14, "isCompact":Z
    .restart local v16    # "idx":I
    :cond_1b8
    move-object/from16 v23, v9

    move-wide/from16 v27, v12

    move v15, v14

    .end local v9    # "rb":Ljava/math/BigInteger;
    .end local v12    # "exp":J
    .end local v14    # "isCompact":Z
    .restart local v15    # "isCompact":Z
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local v27    # "exp":J
    :try_start_1bd
    new-array v9, v3, [C
    :try_end_1bf
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1bd .. :try_end_1bf} :catch_3bc
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1bd .. :try_end_1bf} :catch_3b8

    .line 520
    .local v9, "coeff":[C
    :goto_1bf
    if-lez v3, :cond_252

    .line 521
    :try_start_1c1
    aget-char v12, v2, v10

    .line 523
    .local v12, "c":C
    const/16 v13, 0x30

    if-lt v12, v13, :cond_1cc

    const/16 v13, 0x39

    if-le v12, v13, :cond_1d4

    goto :goto_1ce

    :cond_1cc
    const/16 v13, 0x39

    :goto_1ce
    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14
    :try_end_1d2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c1 .. :try_end_1d2} :catch_24b
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1c1 .. :try_end_1d2} :catch_244

    if-eqz v14, :cond_20b

    .line 526
    :cond_1d4
    const/16 v14, 0x30

    if-eq v12, v14, :cond_1f0

    const/16 v13, 0xa

    :try_start_1da
    invoke-static {v12, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    if-nez v17, :cond_1e2

    const/4 v13, 0x1

    goto :goto_1f1

    .line 535
    :cond_1e2
    const/4 v13, 0x1

    if-ne v5, v13, :cond_1e7

    if-eqz v16, :cond_1e9

    .line 536
    :cond_1e7
    add-int/lit8 v5, v5, 0x1

    .line 537
    :cond_1e9
    add-int/lit8 v24, v16, 0x1

    .end local v16    # "idx":I
    .local v24, "idx":I
    aput-char v12, v9, v16

    move/from16 v16, v24

    goto :goto_201

    .line 526
    .end local v24    # "idx":I
    .restart local v16    # "idx":I
    :cond_1f0
    const/4 v13, 0x1

    .line 527
    :goto_1f1
    if-nez v5, :cond_1f7

    .line 528
    aput-char v12, v9, v16

    .line 529
    const/4 v5, 0x1

    goto :goto_201

    .line 530
    :cond_1f7
    if-eqz v16, :cond_201

    .line 531
    add-int/lit8 v24, v16, 0x1

    .end local v16    # "idx":I
    .restart local v24    # "idx":I
    aput-char v12, v9, v16

    .line 532
    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v24

    .line 539
    .end local v24    # "idx":I
    .restart local v16    # "idx":I
    :cond_201
    :goto_201
    if-eqz v11, :cond_208

    .line 540
    add-int/lit8 v6, v6, 0x1

    const/16 v13, 0x2e

    goto :goto_216

    .line 539
    :cond_208
    const/16 v13, 0x2e

    goto :goto_216

    .line 544
    :cond_20b
    const/4 v13, 0x1

    const/16 v14, 0x30

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_221

    .line 546
    if-nez v11, :cond_21b

    .line 548
    const/4 v11, 0x1

    .line 549
    nop

    .line 520
    :goto_216
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1bf

    .line 547
    :cond_21b
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v10    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v13

    .line 552
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_221
    const/16 v13, 0x65

    if-eq v12, v13, :cond_230

    const/16 v13, 0x45

    if-ne v12, v13, :cond_22a

    goto :goto_230

    .line 553
    :cond_22a
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v10    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v13
    :try_end_230
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1da .. :try_end_230} :catch_3bc
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1da .. :try_end_230} :catch_3b8

    .line 554
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :cond_230
    :goto_230
    :try_start_230
    invoke-static {v2, v10, v3}, Ljava/math/BigDecimal;->parseExp([CII)J

    move-result-wide v13
    :try_end_234
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_230 .. :try_end_234} :catch_24b
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_230 .. :try_end_234} :catch_244

    .line 556
    .end local v27    # "exp":J
    .local v13, "exp":J
    long-to-int v2, v13

    move/from16 p3, v3

    .end local v3    # "len":I
    .local p3, "len":I
    int-to-long v2, v2

    cmp-long v2, v2, v13

    if-nez v2, :cond_23e

    move-wide v12, v13

    goto :goto_256

    .line 557
    :cond_23e
    :try_start_23e
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v10    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p3    # "len":I
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v2

    .line 600
    .end local v0    # "isneg":Z
    .end local v9    # "coeff":[C
    .end local v11    # "dot":Z
    .end local v12    # "c":C
    .end local v13    # "exp":J
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .restart local v3    # "len":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_244
    move-exception v0

    move/from16 p3, v3

    move-object/from16 v9, v23

    .end local v3    # "len":I
    .restart local p3    # "len":I
    goto/16 :goto_3c5

    .line 598
    .end local p3    # "len":I
    .restart local v3    # "len":I
    :catch_24b
    move-exception v0

    move/from16 p3, v3

    move-object/from16 v9, v23

    .end local v3    # "len":I
    .restart local p3    # "len":I
    goto/16 :goto_3d0

    .line 520
    .end local p3    # "len":I
    .restart local v0    # "isneg":Z
    .restart local v3    # "len":I
    .restart local v9    # "coeff":[C
    .restart local v11    # "dot":Z
    .restart local v15    # "isCompact":Z
    .restart local v16    # "idx":I
    .restart local v27    # "exp":J
    :cond_252
    move/from16 p3, v3

    .end local v3    # "len":I
    .restart local p3    # "len":I
    move-wide/from16 v12, v27

    .line 561
    .end local v27    # "exp":J
    .local v12, "exp":J
    :goto_256
    if-eqz v5, :cond_39e

    .line 564
    cmp-long v2, v12, v21

    if-eqz v2, :cond_270

    .line 565
    invoke-direct {v1, v6, v12, v13}, Ljava/math/BigDecimal;->adjustScale(IJ)I

    move-result v2
    :try_end_260
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_23e .. :try_end_260} :catch_269
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_23e .. :try_end_260} :catch_262

    move v6, v2

    .end local v6    # "scl":I
    .local v2, "scl":I
    goto :goto_270

    .line 600
    .end local v0    # "isneg":Z
    .end local v2    # "scl":I
    .end local v9    # "coeff":[C
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .restart local v6    # "scl":I
    :catch_262
    move-exception v0

    move/from16 v3, p3

    move-object/from16 v9, v23

    goto/16 :goto_3c5

    .line 598
    :catch_269
    move-exception v0

    move/from16 v3, p3

    move-object/from16 v9, v23

    goto/16 :goto_3d0

    .line 568
    .restart local v0    # "isneg":Z
    .restart local v9    # "coeff":[C
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .restart local v15    # "isCompact":Z
    .restart local v16    # "idx":I
    :cond_270
    :goto_270
    :try_start_270
    new-instance v2, Ljava/math/BigInteger;

    if-eqz v0, :cond_276

    const/4 v3, -0x1

    goto :goto_277

    :cond_276
    const/4 v3, 0x1

    :goto_277
    invoke-direct {v2, v9, v3, v5}, Ljava/math/BigInteger;-><init>([CII)V
    :try_end_27a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_270 .. :try_end_27a} :catch_396
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_270 .. :try_end_27a} :catch_38e

    .line 569
    .end local v23    # "rb":Ljava/math/BigInteger;
    .local v2, "rb":Ljava/math/BigInteger;
    :try_start_27a
    invoke-static {v2}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v17

    move-wide/from16 v7, v17

    .line 570
    iget v3, v4, Ljava/math/MathContext;->precision:I
    :try_end_282
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_27a .. :try_end_282} :catch_387
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_27a .. :try_end_282} :catch_380

    .line 571
    .local v3, "mcp":I
    if-lez v3, :cond_36d

    if-le v5, v3, :cond_36d

    .line 572
    const-wide/high16 v17, -0x8000000000000000L

    cmp-long v14, v7, v17

    if-nez v14, :cond_2fd

    .line 573
    sub-int v14, v5, v3

    .line 574
    .local v14, "drop":I
    :goto_28e
    if-lez v14, :cond_2f7

    .line 575
    move-wide/from16 v19, v7

    .end local v7    # "rs":J
    .local v19, "rs":J
    int-to-long v7, v6

    move/from16 p2, v5

    move/from16 v21, v6

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .local v21, "scl":I
    .restart local p2    # "prec":I
    int-to-long v5, v14

    sub-long/2addr v7, v5

    :try_start_299
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5
    :try_end_29d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_299 .. :try_end_29d} :catch_2eb
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_299 .. :try_end_29d} :catch_2df

    move v6, v5

    .line 576
    .end local v21    # "scl":I
    .restart local v6    # "scl":I
    :try_start_29e
    iget-object v5, v4, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v2, v14, v5}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, v5

    .line 577
    invoke-static {v2}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v7
    :try_end_2ab
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_29e .. :try_end_2ab} :catch_2d5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_29e .. :try_end_2ab} :catch_2cb

    .line 578
    .end local v19    # "rs":J
    .restart local v7    # "rs":J
    cmp-long v5, v7, v17

    if-eqz v5, :cond_2b4

    .line 579
    :try_start_2af
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v5

    .line 580
    .end local p2    # "prec":I
    .restart local v5    # "prec":I
    goto :goto_2fd

    .line 582
    .end local v5    # "prec":I
    .restart local p2    # "prec":I
    :cond_2b4
    invoke-static {v2}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v5
    :try_end_2b8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2af .. :try_end_2b8} :catch_2c3
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2af .. :try_end_2b8} :catch_2bb

    .line 583
    .end local p2    # "prec":I
    .restart local v5    # "prec":I
    sub-int v14, v5, v3

    goto :goto_28e

    .line 600
    .end local v0    # "isneg":Z
    .end local v3    # "mcp":I
    .end local v5    # "prec":I
    .end local v9    # "coeff":[C
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .end local v14    # "drop":I
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .restart local p2    # "prec":I
    :catch_2bb
    move-exception v0

    move/from16 v5, p2

    move/from16 v3, p3

    move-object v9, v2

    goto/16 :goto_3c5

    .line 598
    :catch_2c3
    move-exception v0

    move/from16 v5, p2

    move/from16 v3, p3

    move-object v9, v2

    goto/16 :goto_3d0

    .line 600
    .end local v7    # "rs":J
    .restart local v19    # "rs":J
    :catch_2cb
    move-exception v0

    move/from16 v5, p2

    move/from16 v3, p3

    move-object v9, v2

    move-wide/from16 v7, v19

    goto/16 :goto_3c5

    .line 598
    :catch_2d5
    move-exception v0

    move/from16 v5, p2

    move/from16 v3, p3

    move-object v9, v2

    move-wide/from16 v7, v19

    goto/16 :goto_3d0

    .line 600
    .end local v6    # "scl":I
    .restart local v21    # "scl":I
    :catch_2df
    move-exception v0

    move/from16 v5, p2

    move/from16 v3, p3

    move-object v9, v2

    move-wide/from16 v7, v19

    move/from16 v6, v21

    goto/16 :goto_3c5

    .line 598
    :catch_2eb
    move-exception v0

    move/from16 v5, p2

    move/from16 v3, p3

    move-object v9, v2

    move-wide/from16 v7, v19

    move/from16 v6, v21

    goto/16 :goto_3d0

    .line 574
    .end local v19    # "rs":J
    .end local v21    # "scl":I
    .end local p2    # "prec":I
    .restart local v0    # "isneg":Z
    .restart local v3    # "mcp":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v9    # "coeff":[C
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .restart local v14    # "drop":I
    .restart local v15    # "isCompact":Z
    .restart local v16    # "idx":I
    :cond_2f7
    move/from16 p2, v5

    move/from16 v21, v6

    move-wide/from16 v19, v7

    .line 586
    .end local v14    # "drop":I
    :cond_2fd
    :goto_2fd
    cmp-long v14, v7, v17

    if-eqz v14, :cond_365

    .line 587
    sub-int v14, v5, v3

    .line 588
    .restart local v14    # "drop":I
    :goto_303
    if-lez v14, :cond_359

    .line 589
    move-object/from16 p2, v9

    move/from16 v17, v10

    .end local v9    # "coeff":[C
    .end local v10    # "offset":I
    .local v17, "offset":I
    .local p2, "coeff":[C
    int-to-long v9, v6

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .local v18, "prec":I
    .local v19, "scl":I
    int-to-long v5, v14

    sub-long/2addr v9, v5

    :try_start_310
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5
    :try_end_314
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_310 .. :try_end_314} :catch_34d
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_310 .. :try_end_314} :catch_341

    move v6, v5

    .line 590
    .end local v19    # "scl":I
    .restart local v6    # "scl":I
    :try_start_315
    sget-object v5, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v9, v5, v14

    iget-object v5, v4, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v7, v8, v9, v10, v5}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v9

    move-wide v7, v9

    .line 591
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v5
    :try_end_326
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_315 .. :try_end_326} :catch_337
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_315 .. :try_end_326} :catch_32d

    .line 592
    .end local v18    # "prec":I
    .restart local v5    # "prec":I
    sub-int v14, v5, v3

    move-object/from16 v9, p2

    move/from16 v10, v17

    goto :goto_303

    .line 600
    .end local v0    # "isneg":Z
    .end local v3    # "mcp":I
    .end local v5    # "prec":I
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .end local v14    # "drop":I
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .end local p2    # "coeff":[C
    .restart local v18    # "prec":I
    :catch_32d
    move-exception v0

    move/from16 v3, p3

    move-object v9, v2

    move/from16 v10, v17

    move/from16 v5, v18

    goto/16 :goto_3c5

    .line 598
    :catch_337
    move-exception v0

    move/from16 v3, p3

    move-object v9, v2

    move/from16 v10, v17

    move/from16 v5, v18

    goto/16 :goto_3d0

    .line 600
    .end local v6    # "scl":I
    .restart local v19    # "scl":I
    :catch_341
    move-exception v0

    move/from16 v3, p3

    move-object v9, v2

    move/from16 v10, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_3c5

    .line 598
    :catch_34d
    move-exception v0

    move/from16 v3, p3

    move-object v9, v2

    move/from16 v10, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_3d0

    .line 594
    .end local v17    # "offset":I
    .end local v18    # "prec":I
    .end local v19    # "scl":I
    .restart local v0    # "isneg":Z
    .restart local v3    # "mcp":I
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v9    # "coeff":[C
    .restart local v10    # "offset":I
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .restart local v14    # "drop":I
    .restart local v15    # "isCompact":Z
    .restart local v16    # "idx":I
    :cond_359
    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 p2, v9

    move/from16 v17, v10

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v9    # "coeff":[C
    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    .restart local v18    # "prec":I
    .restart local v19    # "scl":I
    .restart local p2    # "coeff":[C
    const/4 v9, 0x0

    move/from16 v3, p3

    .end local v2    # "rb":Ljava/math/BigInteger;
    .local v9, "rb":Ljava/math/BigInteger;
    goto :goto_376

    .line 586
    .end local v14    # "drop":I
    .end local v17    # "offset":I
    .end local v18    # "prec":I
    .end local v19    # "scl":I
    .end local p2    # "coeff":[C
    .restart local v2    # "rb":Ljava/math/BigInteger;
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .local v9, "coeff":[C
    .restart local v10    # "offset":I
    :cond_365
    move-object/from16 p2, v9

    move/from16 v17, v10

    .end local v9    # "coeff":[C
    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    .restart local p2    # "coeff":[C
    move/from16 v3, p3

    move-object v9, v2

    goto :goto_376

    .line 571
    .end local v17    # "offset":I
    .end local p2    # "coeff":[C
    .restart local v9    # "coeff":[C
    .restart local v10    # "offset":I
    :cond_36d
    move-object/from16 p2, v9

    move/from16 v17, v10

    .line 602
    .end local v0    # "isneg":Z
    .end local v3    # "mcp":I
    .end local v9    # "coeff":[C
    .end local v10    # "offset":I
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .restart local v17    # "offset":I
    move/from16 v3, p3

    move-object v9, v2

    move/from16 v10, v17

    .end local v2    # "rb":Ljava/math/BigInteger;
    .end local v17    # "offset":I
    .end local p3    # "len":I
    .local v3, "len":I
    .local v9, "rb":Ljava/math/BigInteger;
    .restart local v10    # "offset":I
    :goto_376
    nop

    .line 603
    iput v6, v1, Ljava/math/BigDecimal;->scale:I

    .line 604
    iput v5, v1, Ljava/math/BigDecimal;->precision:I

    .line 605
    iput-wide v7, v1, Ljava/math/BigDecimal;->intCompact:J

    .line 606
    iput-object v9, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 607
    return-void

    .line 600
    .end local v3    # "len":I
    .end local v9    # "rb":Ljava/math/BigInteger;
    .restart local v2    # "rb":Ljava/math/BigInteger;
    .restart local p3    # "len":I
    :catch_380
    move-exception v0

    move/from16 v17, v10

    move/from16 v3, p3

    move-object v9, v2

    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_3c5

    .line 598
    .end local v17    # "offset":I
    .restart local v10    # "offset":I
    :catch_387
    move-exception v0

    move/from16 v17, v10

    move/from16 v3, p3

    move-object v9, v2

    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_3d0

    .line 600
    .end local v2    # "rb":Ljava/math/BigInteger;
    .end local v17    # "offset":I
    .restart local v10    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    :catch_38e
    move-exception v0

    move/from16 v17, v10

    move/from16 v3, p3

    move-object/from16 v9, v23

    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_3c5

    .line 598
    .end local v17    # "offset":I
    .restart local v10    # "offset":I
    :catch_396
    move-exception v0

    move/from16 v17, v10

    move/from16 v3, p3

    move-object/from16 v9, v23

    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_3d0

    .line 562
    .end local v17    # "offset":I
    .restart local v0    # "isneg":Z
    .local v9, "coeff":[C
    .restart local v10    # "offset":I
    .restart local v11    # "dot":Z
    .restart local v12    # "exp":J
    .restart local v15    # "isCompact":Z
    .restart local v16    # "idx":I
    :cond_39e
    move-object/from16 p2, v9

    move/from16 v17, v10

    .end local v9    # "coeff":[C
    .end local v10    # "offset":I
    .restart local v17    # "offset":I
    .restart local p2    # "coeff":[C
    :try_start_3a2
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v17    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .end local p0    # "this":Ljava/math/BigDecimal;
    .end local p1    # "in":[C
    .end local p3    # "len":I
    .end local p4    # "mc":Ljava/math/MathContext;
    throw v2
    :try_end_3a8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3a2 .. :try_end_3a8} :catch_3b0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3a2 .. :try_end_3a8} :catch_3a8

    .line 600
    .end local v0    # "isneg":Z
    .end local v11    # "dot":Z
    .end local v12    # "exp":J
    .end local v15    # "isCompact":Z
    .end local v16    # "idx":I
    .end local p2    # "coeff":[C
    .restart local v5    # "prec":I
    .restart local v6    # "scl":I
    .restart local v7    # "rs":J
    .restart local v17    # "offset":I
    .restart local v23    # "rb":Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    .restart local p1    # "in":[C
    .restart local p3    # "len":I
    .restart local p4    # "mc":Ljava/math/MathContext;
    :catch_3a8
    move-exception v0

    move/from16 v3, p3

    move/from16 v10, v17

    move-object/from16 v9, v23

    goto :goto_3c5

    .line 598
    :catch_3b0
    move-exception v0

    move/from16 v3, p3

    move/from16 v10, v17

    move-object/from16 v9, v23

    goto :goto_3d0

    .line 600
    .end local v17    # "offset":I
    .end local p3    # "len":I
    .restart local v3    # "len":I
    .restart local v10    # "offset":I
    :catch_3b8
    move-exception v0

    move-object/from16 v9, v23

    goto :goto_3c5

    .line 598
    :catch_3bc
    move-exception v0

    move-object/from16 v9, v23

    goto :goto_3d0

    .line 600
    .end local v3    # "len":I
    .end local v10    # "offset":I
    .end local v23    # "rb":Ljava/math/BigInteger;
    .local v9, "rb":Ljava/math/BigInteger;
    .local p2, "offset":I
    .restart local p3    # "len":I
    :catch_3c0
    move-exception v0

    move-object/from16 v23, v9

    move/from16 v10, p2

    .line 601
    .end local p2    # "offset":I
    .end local p3    # "len":I
    .local v0, "e":Ljava/lang/NegativeArraySizeException;
    .restart local v3    # "len":I
    .restart local v10    # "offset":I
    :goto_3c5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 598
    .end local v0    # "e":Ljava/lang/NegativeArraySizeException;
    .end local v3    # "len":I
    .end local v10    # "offset":I
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :catch_3cb
    move-exception v0

    move-object/from16 v23, v9

    move/from16 v10, p2

    .line 599
    .end local p2    # "offset":I
    .end local p3    # "len":I
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "len":I
    .restart local v10    # "offset":I
    :goto_3d0
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 412
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v3    # "len":I
    .end local v5    # "prec":I
    .end local v6    # "scl":I
    .end local v7    # "rs":J
    .end local v9    # "rb":Ljava/math/BigInteger;
    .end local v10    # "offset":I
    .restart local p2    # "offset":I
    .restart local p3    # "len":I
    :cond_3d6
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "Bad offset or len arguments for char[] input."

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>([CLjava/math/MathContext;)V
    .registers 5
    .param p1, "in"    # [C
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 704
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    .line 705
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/math/BigDecimal;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "x0"    # Ljava/math/BigDecimal;

    .line 220
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist add(JJ)J
    .registers 10
    .param p0, "xs"    # J
    .param p2, "ys"    # J

    .line 4448
    add-long v0, p0, p2

    .line 4451
    .local v0, "sum":J
    xor-long v2, v0, p0

    xor-long v4, v0, p2

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 4452
    return-wide v0

    .line 4454
    :cond_e
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method private static blacklist add(JIJI)Ljava/math/BigDecimal;
    .registers 27
    .param p0, "xs"    # J
    .param p2, "scale1"    # I
    .param p3, "ys"    # J
    .param p5, "scale2"    # I

    .line 4465
    move-wide/from16 v0, p0

    move/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v11, p5

    int-to-long v2, v8

    int-to-long v4, v11

    sub-long v12, v2, v4

    .line 4466
    .local v12, "sdiff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v12, v2

    if-nez v4, :cond_17

    .line 4467
    invoke-static {v0, v1, v9, v10, v8}, Ljava/math/BigDecimal;->add(JJI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4468
    :cond_17
    cmp-long v4, v12, v2

    const-wide/high16 v6, -0x8000000000000000L

    if-gez v4, :cond_5f

    .line 4469
    neg-long v14, v12

    invoke-static {v0, v1, v14, v15}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v14

    .line 4470
    .local v14, "raise":I
    invoke-static {v0, v1, v14}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v4

    .line 4471
    .local v4, "scaledX":J
    cmp-long v6, v4, v6

    if-eqz v6, :cond_2f

    .line 4472
    invoke-static {v4, v5, v9, v10, v11}, Ljava/math/BigDecimal;->add(JJI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4474
    :cond_2f
    invoke-static {v0, v1, v14}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 4475
    .local v7, "bigsum":Ljava/math/BigInteger;
    xor-long v16, v0, v9

    cmp-long v2, v16, v2

    if-ltz v2, :cond_54

    .line 4476
    new-instance v15, Ljava/math/BigDecimal;

    const-wide/high16 v16, -0x8000000000000000L

    const/16 v18, 0x0

    move-object v2, v15

    move-object v3, v7

    move-wide/from16 v19, v4

    .end local v4    # "scaledX":J
    .local v19, "scaledX":J
    move-wide/from16 v4, v16

    move/from16 v6, p5

    move/from16 v16, v14

    move-object v14, v7

    .end local v7    # "bigsum":Ljava/math/BigInteger;
    .local v14, "bigsum":Ljava/math/BigInteger;
    .local v16, "raise":I
    move/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_5e

    .line 4477
    .end local v16    # "raise":I
    .end local v19    # "scaledX":J
    .restart local v4    # "scaledX":J
    .restart local v7    # "bigsum":Ljava/math/BigInteger;
    .local v14, "raise":I
    :cond_54
    move-wide/from16 v19, v4

    move/from16 v16, v14

    move-object v14, v7

    .end local v4    # "scaledX":J
    .end local v7    # "bigsum":Ljava/math/BigInteger;
    .local v14, "bigsum":Ljava/math/BigInteger;
    .restart local v16    # "raise":I
    .restart local v19    # "scaledX":J
    const/4 v2, 0x0

    invoke-static {v14, v11, v2}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 4475
    :goto_5e
    return-object v15

    .line 4480
    .end local v14    # "bigsum":Ljava/math/BigInteger;
    .end local v16    # "raise":I
    .end local v19    # "scaledX":J
    :cond_5f
    invoke-static {v9, v10, v12, v13}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v14

    .line 4481
    .local v14, "raise":I
    invoke-static {v9, v10, v14}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v4

    .line 4482
    .local v4, "scaledY":J
    cmp-long v6, v4, v6

    if-eqz v6, :cond_70

    .line 4483
    invoke-static {v0, v1, v4, v5, v8}, Ljava/math/BigDecimal;->add(JJI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4485
    :cond_70
    invoke-static {v9, v10, v14}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 4486
    .restart local v7    # "bigsum":Ljava/math/BigInteger;
    xor-long v16, v0, v9

    cmp-long v2, v16, v2

    if-ltz v2, :cond_93

    .line 4487
    new-instance v15, Ljava/math/BigDecimal;

    const-wide/high16 v16, -0x8000000000000000L

    const/16 v18, 0x0

    move-object v2, v15

    move-object v3, v7

    move-wide/from16 v19, v4

    .end local v4    # "scaledY":J
    .local v19, "scaledY":J
    move-wide/from16 v4, v16

    move/from16 v6, p2

    move-object v0, v7

    .end local v7    # "bigsum":Ljava/math/BigInteger;
    .local v0, "bigsum":Ljava/math/BigInteger;
    move/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_9b

    .line 4488
    .end local v0    # "bigsum":Ljava/math/BigInteger;
    .end local v19    # "scaledY":J
    .restart local v4    # "scaledY":J
    .restart local v7    # "bigsum":Ljava/math/BigInteger;
    :cond_93
    move-wide/from16 v19, v4

    move-object v0, v7

    .end local v4    # "scaledY":J
    .end local v7    # "bigsum":Ljava/math/BigInteger;
    .restart local v0    # "bigsum":Ljava/math/BigInteger;
    .restart local v19    # "scaledY":J
    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 4486
    :goto_9b
    return-object v15
.end method

.method private static blacklist add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 21
    .param p0, "xs"    # J
    .param p2, "scale1"    # I
    .param p3, "snd"    # Ljava/math/BigInteger;
    .param p4, "scale2"    # I

    .line 4494
    move-wide/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v3, p2

    .line 4495
    .local v3, "rscale":I
    int-to-long v4, v3

    move/from16 v6, p4

    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 4496
    .local v4, "sdiff":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->signum(J)I

    move-result v7

    iget v8, v2, Ljava/math/BigInteger;->signum:I

    const/4 v9, 0x0

    if-ne v7, v8, :cond_16

    const/4 v7, 0x1

    goto :goto_17

    :cond_16
    move v7, v9

    .line 4498
    .local v7, "sameSigns":Z
    :goto_17
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gez v8, :cond_3d

    .line 4499
    neg-long v10, v4

    invoke-static {v0, v1, v10, v11}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v8

    .line 4500
    .local v8, "raise":I
    move/from16 v3, p4

    .line 4501
    invoke-static {v0, v1, v8}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v10

    .line 4502
    .local v10, "scaledX":J
    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v12, v10, v12

    if-nez v12, :cond_37

    .line 4503
    invoke-static {v0, v1, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .local v12, "sum":Ljava/math/BigInteger;
    goto :goto_3b

    .line 4505
    .end local v12    # "sum":Ljava/math/BigInteger;
    :cond_37
    invoke-virtual {v2, v10, v11}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v12

    .line 4507
    .end local v8    # "raise":I
    .end local v10    # "scaledX":J
    .restart local v12    # "sum":Ljava/math/BigInteger;
    :goto_3b
    move-object v8, v12

    goto :goto_4a

    .line 4508
    .end local v12    # "sum":Ljava/math/BigInteger;
    :cond_3d
    invoke-static {v2, v4, v5}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v8

    .line 4509
    .restart local v8    # "raise":I
    invoke-static {v2, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 4510
    .end local p3    # "snd":Ljava/math/BigInteger;
    .local v2, "snd":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, v1}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v12

    move-object v8, v12

    .line 4512
    .local v8, "sum":Ljava/math/BigInteger;
    :goto_4a
    if-eqz v7, :cond_58

    .line 4513
    new-instance v9, Ljava/math/BigDecimal;

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v15, 0x0

    move-object v10, v9

    move-object v11, v8

    move v14, v3

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_5c

    .line 4514
    :cond_58
    invoke-static {v8, v3, v9}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v9

    .line 4512
    :goto_5c
    return-object v9
.end method

.method private static blacklist add(JJI)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "xs"    # J
    .param p2, "ys"    # J
    .param p4, "scale"    # I

    .line 4458
    invoke-static {p0, p1, p2, p3}, Ljava/math/BigDecimal;->add(JJ)J

    move-result-wide v0

    .line 4459
    .local v0, "sum":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 4460
    invoke-static {v0, v1, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4461
    :cond_f
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/math/BigInteger;->add(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v2
.end method

.method private static blacklist add(Ljava/math/BigInteger;ILjava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 15
    .param p0, "fst"    # Ljava/math/BigInteger;
    .param p1, "scale1"    # I
    .param p2, "snd"    # Ljava/math/BigInteger;
    .param p3, "scale2"    # I

    .line 4518
    move v0, p1

    .line 4519
    .local v0, "rscale":I
    int-to-long v1, v0

    int-to-long v3, p3

    sub-long/2addr v1, v3

    .line 4520
    .local v1, "sdiff":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_21

    .line 4521
    cmp-long v3, v1, v3

    if-gez v3, :cond_19

    .line 4522
    neg-long v3, v1

    invoke-static {p0, v3, v4}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v3

    .line 4523
    .local v3, "raise":I
    move v0, p3

    .line 4524
    invoke-static {p0, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 4525
    .end local v3    # "raise":I
    goto :goto_21

    .line 4526
    :cond_19
    invoke-static {p2, v1, v2}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v3

    .line 4527
    .restart local v3    # "raise":I
    invoke-static {p2, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p2

    .line 4530
    .end local v3    # "raise":I
    :cond_21
    :goto_21
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 4531
    .local v9, "sum":Ljava/math/BigInteger;
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    iget v4, p2, Ljava/math/BigInteger;->signum:I

    if-ne v3, v4, :cond_37

    .line 4532
    new-instance v10, Ljava/math/BigDecimal;

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, v9

    move v7, v0

    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_3c

    .line 4533
    :cond_37
    const/4 v3, 0x0

    invoke-static {v9, v0, v3}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v10

    .line 4531
    :goto_3c
    return-object v10
.end method

.method private blacklist adjustScale(IJ)I
    .registers 8
    .param p1, "scl"    # I
    .param p2, "exp"    # J

    .line 610
    int-to-long v0, p1

    sub-long/2addr v0, p2

    .line 611
    .local v0, "adjustedScale":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    .line 613
    long-to-int p1, v0

    .line 614
    return p1

    .line 612
    :cond_12
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Scale out of range."

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist audit()Ljava/math/BigDecimal;
    .registers 8

    .line 3942
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    const-string v1, "precision mismatch"

    const-string v2, "audit"

    if-nez v0, :cond_2f

    .line 3943
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_24

    .line 3948
    iget v3, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v3, :cond_78

    invoke-static {v0}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v0

    if-ne v3, v0, :cond_1b

    goto :goto_78

    .line 3949
    :cond_1b
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 3950
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3944
    :cond_24
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 3945
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "null intVal"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3953
    :cond_2f
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_62

    .line 3954
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    .line 3955
    .local v3, "val":J
    iget-wide v5, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3e

    goto :goto_62

    .line 3956
    :cond_3e
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 3957
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state, intCompact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\t intVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3962
    .end local v3    # "val":J
    :cond_62
    :goto_62
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_78

    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v3

    if-ne v0, v3, :cond_6f

    goto :goto_78

    .line 3963
    :cond_6f
    invoke-static {v2, p0}, Ljava/math/BigDecimal;->print(Ljava/lang/String;Ljava/math/BigDecimal;)V

    .line 3964
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3967
    :cond_78
    :goto_78
    return-object p0
.end method

.method private static blacklist bigDigitLength(Ljava/math/BigInteger;)I
    .registers 5
    .param p0, "b"    # Ljava/math/BigInteger;

    .line 3848
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_6

    .line 3849
    const/4 v0, 0x1

    return v0

    .line 3850
    :cond_6
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x268826a1

    mul-long/2addr v0, v2

    const/16 v2, 0x1f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    .line 3851
    .local v0, "r":I
    invoke-static {v0}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_22

    move v1, v0

    goto :goto_24

    :cond_22
    add-int/lit8 v1, v0, 0x1

    :goto_24
    return v1
.end method

.method private blacklist bigMultiplyPowerTen(I)Ljava/math/BigInteger;
    .registers 6
    .param p1, "n"    # I

    .line 3703
    if-gtz p1, :cond_7

    .line 3704
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3706
    :cond_7
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    .line 3707
    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3709
    :cond_1a
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist bigMultiplyPowerTen(JI)Ljava/math/BigInteger;
    .registers 4
    .param p0, "value"    # J
    .param p2, "n"    # I

    .line 4537
    if-gtz p2, :cond_7

    .line 4538
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4539
    :cond_7
    invoke-static {p2}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "n"    # I

    .line 4543
    if-gtz p1, :cond_3

    .line 4544
    return-object p0

    .line 4545
    :cond_3
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v0

    if-ge p1, v1, :cond_f

    .line 4546
    aget-wide v0, v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 4548
    :cond_f
    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist bigTenToThe(I)Ljava/math/BigInteger;
    .registers 3
    .param p0, "n"    # I

    .line 3563
    if-gez p0, :cond_5

    .line 3564
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3566
    :cond_5
    sget v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE_MAX:I

    if-ge p0, v0, :cond_16

    .line 3567
    sget-object v0, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 3568
    .local v0, "pows":[Ljava/math/BigInteger;
    array-length v1, v0

    if-ge p0, v1, :cond_11

    .line 3569
    aget-object v1, v0, p0

    return-object v1

    .line 3571
    :cond_11
    invoke-static {p0}, Ljava/math/BigDecimal;->expandBigIntegerTenPowers(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 3574
    .end local v0    # "pows":[Ljava/math/BigInteger;
    :cond_16
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkScale(J)I
    .registers 8
    .param p1, "val"    # J

    .line 3866
    long-to-int v0, p1

    .line 3867
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_34

    .line 3868
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-lez v1, :cond_11

    const v1, 0x7fffffff

    goto :goto_13

    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    move v0, v1

    .line 3870
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_34

    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move-object v2, v1

    .local v2, "b":Ljava/math/BigInteger;
    if-eqz v1, :cond_27

    .line 3871
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_34

    .line 3872
    :cond_27
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_2e

    const-string v3, "Underflow"

    goto :goto_30

    :cond_2e
    const-string v3, "Overflow"

    :goto_30
    invoke-direct {v1, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3874
    .end local v2    # "b":Ljava/math/BigInteger;
    :cond_34
    return v0
.end method

.method private static blacklist checkScale(JJ)I
    .registers 7
    .param p0, "intCompact"    # J
    .param p2, "val"    # J

    .line 3980
    long-to-int v0, p2

    .line 3981
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-eqz v1, :cond_27

    .line 3982
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-lez v1, :cond_11

    const v1, 0x7fffffff

    goto :goto_13

    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    move v0, v1

    .line 3983
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_27

    .line 3984
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_21

    const-string v2, "Underflow"

    goto :goto_23

    :cond_21
    const-string v2, "Overflow"

    :goto_23
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3986
    :cond_27
    return v0
.end method

.method private static blacklist checkScale(Ljava/math/BigInteger;J)I
    .registers 6
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "val"    # J

    .line 3990
    long-to-int v0, p1

    .line 3991
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-eqz v1, :cond_27

    .line 3992
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-lez v1, :cond_11

    const v1, 0x7fffffff

    goto :goto_13

    :cond_11
    const/high16 v1, -0x80000000

    :goto_13
    move v0, v1

    .line 3993
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_27

    .line 3994
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_21

    const-string v2, "Underflow"

    goto :goto_23

    :cond_21
    const-string v2, "Overflow"

    :goto_23
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3996
    :cond_27
    return v0
.end method

.method private static blacklist checkScaleNonZero(J)I
    .registers 5
    .param p0, "val"    # J

    .line 3972
    long-to-int v0, p0

    .line 3973
    .local v0, "asInt":I
    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-eqz v1, :cond_13

    .line 3974
    new-instance v1, Ljava/lang/ArithmeticException;

    if-lez v0, :cond_d

    const-string v2, "Underflow"

    goto :goto_f

    :cond_d
    const-string v2, "Overflow"

    :goto_f
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3976
    :cond_13
    return v0
.end method

.method private static blacklist commonNeedIncrement(IIIZ)Z
    .registers 7
    .param p0, "roundingMode"    # I
    .param p1, "qsign"    # I
    .param p2, "cmpFracHalf"    # I
    .param p3, "oddQuot"    # Z

    .line 4177
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_3c

    .line 4194
    :pswitch_5
    goto :goto_18

    .line 4179
    :pswitch_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4191
    :pswitch_e
    if-gez p1, :cond_11

    move v0, v1

    :cond_11
    return v0

    .line 4188
    :pswitch_12
    if-lez p1, :cond_15

    move v0, v1

    :cond_15
    return v0

    .line 4185
    :pswitch_16
    return v0

    .line 4182
    :pswitch_17
    return v1

    .line 4197
    :goto_18
    if-gez p2, :cond_1b

    .line 4198
    return v0

    .line 4199
    :cond_1b
    if-lez p2, :cond_1e

    .line 4200
    return v1

    .line 4202
    :cond_1e
    nop

    .line 4204
    packed-switch p0, :pswitch_data_50

    .line 4215
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected rounding mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 4212
    :pswitch_39
    return p3

    .line 4206
    :pswitch_3a
    return v0

    .line 4209
    :pswitch_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_12
        :pswitch_e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x4
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method private static blacklist compactValFor(Ljava/math/BigInteger;)J
    .registers 9
    .param p0, "b"    # Ljava/math/BigInteger;

    .line 3883
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 3884
    .local v0, "m":[I
    array-length v1, v0

    .line 3885
    .local v1, "len":I
    if-nez v1, :cond_8

    .line 3886
    const-wide/16 v2, 0x0

    return-wide v2

    .line 3887
    :cond_8
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 3888
    .local v2, "d":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_32

    if-ne v1, v3, :cond_13

    if-gez v2, :cond_13

    goto :goto_32

    .line 3891
    :cond_13
    const-wide v4, 0xffffffffL

    if-ne v1, v3, :cond_26

    .line 3892
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v6, v3

    and-long v3, v6, v4

    int-to-long v5, v2

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    add-long/2addr v3, v5

    goto :goto_29

    .line 3893
    :cond_26
    int-to-long v6, v2

    and-long v3, v6, v4

    :goto_29
    nop

    .line 3894
    .local v3, "u":J
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_30

    neg-long v5, v3

    goto :goto_31

    :cond_30
    move-wide v5, v3

    :goto_31
    return-wide v5

    .line 3889
    .end local v3    # "u":J
    :cond_32
    :goto_32
    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3
.end method

.method private blacklist compareMagnitude(Ljava/math/BigDecimal;)I
    .registers 22
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 2649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Ljava/math/BigDecimal;->intCompact:J

    .line 2650
    .local v2, "ys":J
    iget-wide v4, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 2651
    .local v4, "xs":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v9, -0x1

    if-nez v8, :cond_15

    .line 2652
    cmp-long v6, v2, v6

    if-nez v6, :cond_14

    const/4 v9, 0x0

    :cond_14
    return v9

    .line 2653
    :cond_15
    cmp-long v8, v2, v6

    const/4 v10, 0x1

    if-nez v8, :cond_1b

    .line 2654
    return v10

    .line 2656
    :cond_1b
    iget v8, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v11, v8

    iget v8, v1, Ljava/math/BigDecimal;->scale:I

    int-to-long v13, v8

    sub-long/2addr v11, v13

    .line 2657
    .local v11, "sdiff":J
    cmp-long v8, v11, v6

    if-eqz v8, :cond_b1

    .line 2659
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    int-to-long v13, v8

    iget v8, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v6, v8

    sub-long/2addr v13, v6

    .line 2660
    .local v13, "xae":J
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v6

    int-to-long v6, v6

    iget v8, v1, Ljava/math/BigDecimal;->scale:I

    move-wide/from16 v18, v11

    .end local v11    # "sdiff":J
    .local v18, "sdiff":J
    int-to-long v10, v8

    sub-long/2addr v6, v10

    .line 2661
    .local v6, "yae":J
    cmp-long v8, v13, v6

    if-gez v8, :cond_3f

    .line 2662
    return v9

    .line 2663
    :cond_3f
    cmp-long v8, v13, v6

    if-lez v8, :cond_45

    .line 2664
    const/4 v8, 0x1

    return v8

    .line 2665
    :cond_45
    const/4 v8, 0x0

    .line 2666
    .local v8, "rb":Ljava/math/BigInteger;
    const-wide/16 v10, 0x0

    cmp-long v10, v18, v10

    if-gez v10, :cond_86

    .line 2668
    const-wide/32 v10, -0x80000000

    cmp-long v10, v18, v10

    if-lez v10, :cond_81

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v4, v10

    if-eqz v12, :cond_6b

    move-wide/from16 v16, v13

    move-wide/from16 v9, v18

    .end local v13    # "xae":J
    .end local v18    # "sdiff":J
    .local v9, "sdiff":J
    .local v16, "xae":J
    neg-long v12, v9

    long-to-int v12, v12

    .line 2670
    invoke-static {v4, v5, v12}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v12

    move-wide v4, v12

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v12, v12, v14

    if-nez v12, :cond_b2

    goto :goto_70

    .line 2668
    .end local v9    # "sdiff":J
    .end local v16    # "xae":J
    .restart local v13    # "xae":J
    .restart local v18    # "sdiff":J
    :cond_6b
    move-wide/from16 v16, v13

    move-wide v14, v10

    move-wide/from16 v9, v18

    .line 2670
    .end local v13    # "xae":J
    .end local v18    # "sdiff":J
    .restart local v9    # "sdiff":J
    .restart local v16    # "xae":J
    :goto_70
    cmp-long v12, v2, v14

    if-nez v12, :cond_b2

    .line 2672
    neg-long v11, v9

    long-to-int v11, v11

    invoke-direct {v0, v11}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 2673
    iget-object v11, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v11

    return v11

    .line 2668
    .end local v9    # "sdiff":J
    .end local v16    # "xae":J
    .restart local v13    # "xae":J
    .restart local v18    # "sdiff":J
    :cond_81
    move-wide/from16 v16, v13

    move-wide/from16 v9, v18

    .end local v13    # "xae":J
    .end local v18    # "sdiff":J
    .restart local v9    # "sdiff":J
    .restart local v16    # "xae":J
    goto :goto_b2

    .line 2677
    .end local v9    # "sdiff":J
    .end local v16    # "xae":J
    .restart local v13    # "xae":J
    .restart local v18    # "sdiff":J
    :cond_86
    move-wide/from16 v16, v13

    move-wide/from16 v9, v18

    .end local v13    # "xae":J
    .end local v18    # "sdiff":J
    .restart local v9    # "sdiff":J
    .restart local v16    # "xae":J
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v9, v12

    if-gtz v12, :cond_b2

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v14, v2, v12

    if-eqz v14, :cond_a1

    long-to-int v14, v9

    .line 2679
    invoke-static {v2, v3, v14}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v14

    move-wide v2, v14

    cmp-long v14, v14, v12

    if-nez v14, :cond_b2

    :cond_a1
    cmp-long v14, v4, v12

    if-nez v14, :cond_b2

    .line 2681
    long-to-int v11, v9

    invoke-direct {v1, v11}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 2682
    iget-object v11, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v11

    return v11

    .line 2657
    .end local v6    # "yae":J
    .end local v8    # "rb":Ljava/math/BigInteger;
    .end local v9    # "sdiff":J
    .end local v16    # "xae":J
    .restart local v11    # "sdiff":J
    :cond_b1
    move-wide v9, v11

    .line 2686
    .end local v11    # "sdiff":J
    .restart local v9    # "sdiff":J
    :cond_b2
    :goto_b2
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-eqz v8, :cond_c3

    .line 2687
    cmp-long v6, v2, v6

    if-eqz v6, :cond_c1

    invoke-static {v4, v5, v2, v3}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v6

    goto :goto_c2

    :cond_c1
    const/4 v6, -0x1

    :goto_c2
    return v6

    .line 2688
    :cond_c3
    cmp-long v6, v2, v6

    if-eqz v6, :cond_c9

    .line 2689
    const/4 v6, 0x1

    return v6

    .line 2691
    :cond_c9
    iget-object v6, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v7, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v6

    return v6
.end method

.method private static blacklist compareMagnitudeNormalized(JIJI)I
    .registers 10
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # J
    .param p5, "yscale"    # I

    .line 5013
    sub-int v0, p2, p5

    .line 5014
    .local v0, "sdiff":I
    if-eqz v0, :cond_10

    .line 5015
    if-gez v0, :cond_c

    .line 5016
    neg-int v1, v0

    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide p0

    goto :goto_10

    .line 5018
    :cond_c
    invoke-static {p3, p4, v0}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide p3

    .line 5021
    :cond_10
    :goto_10
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p0, v1

    if-eqz v3, :cond_21

    .line 5022
    cmp-long v1, p3, v1

    if-eqz v1, :cond_1f

    invoke-static {p0, p1, p3, p4}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, -0x1

    :goto_20
    return v1

    .line 5024
    :cond_21
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist compareMagnitudeNormalized(JILjava/math/BigInteger;I)I
    .registers 11
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # Ljava/math/BigInteger;
    .param p4, "yscale"    # I

    .line 5030
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 5031
    return v1

    .line 5032
    :cond_8
    sub-int v0, p2, p4

    .line 5033
    .local v0, "sdiff":I
    if-gez v0, :cond_21

    .line 5034
    neg-int v2, v0

    invoke-static {p0, p1, v2}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    .line 5035
    neg-int v1, v0

    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    return v1

    .line 5038
    :cond_21
    return v1
.end method

.method private static blacklist compareMagnitudeNormalized(Ljava/math/BigInteger;ILjava/math/BigInteger;I)I
    .registers 6
    .param p0, "xs"    # Ljava/math/BigInteger;
    .param p1, "xscale"    # I
    .param p2, "ys"    # Ljava/math/BigInteger;
    .param p3, "yscale"    # I

    .line 5043
    sub-int v0, p1, p3

    .line 5044
    .local v0, "sdiff":I
    if-gez v0, :cond_e

    .line 5045
    neg-int v1, v0

    invoke-static {p0, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    return v1

    .line 5047
    :cond_e
    invoke-static {p2, v0}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v1

    return v1
.end method

.method private static blacklist createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;
    .registers 13
    .param p0, "compactVal"    # J
    .param p2, "scale"    # I
    .param p3, "preferredScale"    # J

    .line 4423
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    int-to-long v0, p2

    cmp-long v0, v0, p3

    if-lez v0, :cond_29

    .line 4424
    const-wide/16 v0, 0x1

    and-long v4, p0, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1a

    .line 4425
    goto :goto_29

    .line 4426
    :cond_1a
    rem-long v4, p0, v2

    .line 4427
    .local v4, "r":J
    cmp-long v6, v4, v6

    if-eqz v6, :cond_21

    .line 4428
    goto :goto_29

    .line 4429
    :cond_21
    div-long/2addr p0, v2

    .line 4430
    int-to-long v2, p2

    sub-long/2addr v2, v0

    invoke-static {p0, p1, v2, v3}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result p2

    .line 4431
    .end local v4    # "r":J
    goto :goto_0

    .line 4432
    :cond_29
    :goto_29
    invoke-static {p0, p1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;
    .registers 9
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "preferredScale"    # J

    .line 4400
    :goto_0
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_30

    int-to-long v2, p1

    cmp-long v0, v2, p2

    if-lez v0, :cond_30

    .line 4402
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4403
    goto :goto_30

    .line 4404
    :cond_15
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 4405
    .local v0, "qr":[Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_25

    .line 4406
    goto :goto_30

    .line 4407
    :cond_25
    aget-object p0, v0, v1

    .line 4408
    int-to-long v1, p1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {p0, v1, v2}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result p1

    goto :goto_0

    .line 4410
    .end local v0    # "qr":[Ljava/math/BigInteger;
    :cond_30
    :goto_30
    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist divRemNegativeLong(JJ)[J
    .registers 12
    .param p0, "n"    # J
    .param p2, "d"    # J

    .line 4971
    nop

    .line 4972
    nop

    .line 4975
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    ushr-long v3, p2, v0

    div-long/2addr v1, v3

    .line 4976
    .local v1, "q":J
    mul-long v3, v1, p2

    sub-long v3, p0, v3

    .line 4979
    .local v3, "r":J
    :goto_c
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x1

    if-gez v5, :cond_17

    .line 4980
    add-long/2addr v3, p2

    .line 4981
    sub-long/2addr v1, v6

    goto :goto_c

    .line 4983
    :cond_17
    :goto_17
    cmp-long v5, v3, p2

    if-ltz v5, :cond_1e

    .line 4984
    sub-long/2addr v3, p2

    .line 4985
    add-long/2addr v1, v6

    goto :goto_17

    .line 4989
    :cond_1e
    const/4 v5, 0x2

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide v3, v5, v6

    aput-wide v1, v5, v0

    return-object v5
.end method

.method private static blacklist divide(JIJIII)Ljava/math/BigDecimal;
    .registers 28
    .param p0, "dividend"    # J
    .param p2, "dividendScale"    # I
    .param p3, "divisor"    # J
    .param p5, "divisorScale"    # I
    .param p6, "scale"    # I
    .param p7, "roundingMode"    # I

    .line 5208
    move-wide/from16 v9, p0

    move/from16 v11, p2

    move-wide/from16 v7, p3

    move/from16 v6, p5

    move/from16 v4, p6

    int-to-long v0, v4

    int-to-long v2, v6

    add-long/2addr v0, v2

    invoke-static {v9, v10, v0, v1}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v0

    const-wide/high16 v14, -0x8000000000000000L

    if-le v0, v11, :cond_60

    .line 5209
    add-int v19, v4, v6

    .line 5210
    .local v19, "newScale":I
    sub-int v5, v19, v11

    .line 5211
    .local v5, "raise":I
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v0

    if-ge v5, v1, :cond_4c

    .line 5212
    move-wide/from16 v1, p0

    .line 5213
    .local v1, "xs":J
    invoke-static {v1, v2, v5}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .end local v1    # "xs":J
    .local v12, "xs":J
    cmp-long v1, v16, v14

    if-eqz v1, :cond_37

    .line 5214
    move-wide/from16 v14, p3

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p6

    invoke-static/range {v12 .. v18}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5216
    :cond_37
    aget-wide v0, v0, v5

    move-wide/from16 v2, p0

    move v14, v4

    move v15, v5

    .end local v5    # "raise":I
    .local v15, "raise":I
    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Ljava/math/BigDecimal;->multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 5217
    .local v0, "q":Ljava/math/BigDecimal;
    if-eqz v0, :cond_4e

    .line 5218
    return-object v0

    .line 5211
    .end local v0    # "q":Ljava/math/BigDecimal;
    .end local v12    # "xs":J
    .end local v15    # "raise":I
    .restart local v5    # "raise":I
    :cond_4c
    move v14, v4

    move v15, v5

    .line 5221
    .end local v5    # "raise":I
    .restart local v15    # "raise":I
    :cond_4e
    invoke-static {v9, v10, v15}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v6

    .line 5222
    .local v6, "scaledDividend":Ljava/math/BigInteger;
    move-object v0, v6

    move-wide/from16 v1, p3

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5224
    .end local v6    # "scaledDividend":Ljava/math/BigInteger;
    .end local v15    # "raise":I
    .end local v19    # "newScale":I
    :cond_60
    move v7, v4

    int-to-long v0, v11

    int-to-long v2, v7

    sub-long/2addr v0, v2

    move-wide/from16 v12, p3

    invoke-static {v12, v13, v0, v1}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v8

    .line 5225
    .local v8, "newScale":I
    sub-int v6, v8, p5

    .line 5226
    .local v6, "raise":I
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v0, v0

    if-ge v6, v0, :cond_8c

    .line 5227
    move-wide/from16 v0, p3

    .line 5228
    .local v0, "ys":J
    invoke-static {v0, v1, v6}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v4

    move-wide v2, v4

    .end local v0    # "ys":J
    .local v2, "ys":J
    cmp-long v0, v4, v14

    if-eqz v0, :cond_8a

    .line 5229
    move-wide/from16 v0, p0

    move/from16 v4, p6

    move/from16 v5, p7

    move v14, v6

    .end local v6    # "raise":I
    .local v14, "raise":I
    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5228
    .end local v14    # "raise":I
    .restart local v6    # "raise":I
    :cond_8a
    move v14, v6

    .end local v6    # "raise":I
    .restart local v14    # "raise":I
    goto :goto_8d

    .line 5226
    .end local v2    # "ys":J
    .end local v14    # "raise":I
    .restart local v6    # "raise":I
    :cond_8c
    move v14, v6

    .line 5232
    .end local v6    # "raise":I
    .restart local v14    # "raise":I
    :goto_8d
    invoke-static {v12, v13, v14}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 5233
    .local v0, "scaledDivisor":Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    move/from16 v2, p7

    invoke-static {v1, v0, v7, v2, v7}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist divide(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 29
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # J
    .param p5, "yscale"    # I
    .param p6, "preferredScale"    # J
    .param p8, "mc"    # Ljava/math/MathContext;

    .line 4642
    move-wide/from16 v7, p0

    move/from16 v9, p2

    move-wide/from16 v14, p3

    move/from16 v0, p5

    move-object/from16 v6, p8

    iget v12, v6, Ljava/math/MathContext;->precision:I

    .line 4643
    .local v12, "mcp":I
    if-gt v9, v0, :cond_19

    const/16 v1, 0x12

    if-ge v0, v1, :cond_19

    if-ge v12, v1, :cond_19

    .line 4644
    invoke-static/range {p0 .. p8}, Ljava/math/BigDecimal;->divideSmallFastPath(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4646
    :cond_19
    invoke-static/range {p0 .. p5}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(JIJI)I

    move-result v1

    if-lez v1, :cond_23

    .line 4647
    add-int/lit8 v0, v0, -0x1

    move v13, v0

    .end local p5    # "yscale":I
    .local v0, "yscale":I
    goto :goto_24

    .line 4646
    .end local v0    # "yscale":I
    .restart local p5    # "yscale":I
    :cond_23
    move v13, v0

    .line 4649
    .end local p5    # "yscale":I
    .local v13, "yscale":I
    :goto_24
    iget-object v0, v6, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v0, Ljava/math/RoundingMode;->oldMode:I

    .line 4653
    .local v5, "roundingMode":I
    int-to-long v0, v13

    add-long v0, p6, v0

    int-to-long v2, v9

    sub-long/2addr v0, v2

    int-to-long v2, v12

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 4655
    .local v4, "scl":I
    int-to-long v0, v12

    int-to-long v2, v13

    add-long/2addr v0, v2

    int-to-long v2, v9

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v0

    const-wide/high16 v16, -0x8000000000000000L

    if-lez v0, :cond_91

    .line 4656
    int-to-long v0, v12

    int-to-long v2, v13

    add-long/2addr v0, v2

    int-to-long v2, v9

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 4658
    .local v3, "raise":I
    invoke-static {v7, v8, v3}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v0

    move-wide v10, v0

    .local v10, "scaledXs":J
    cmp-long v0, v0, v16

    if-nez v0, :cond_70

    .line 4659
    invoke-static {v7, v8, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v16

    .line 4660
    .local v16, "rb":Ljava/math/BigInteger;
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v17

    move-object/from16 v0, v16

    move-wide/from16 v1, p3

    move/from16 v18, v3

    .end local v3    # "raise":I
    .local v18, "raise":I
    move v3, v4

    move/from16 p5, v4

    .end local v4    # "scl":I
    .local p5, "scl":I
    move v4, v5

    move/from16 v19, v5

    .end local v5    # "roundingMode":I
    .local v19, "roundingMode":I
    move/from16 v5, v17

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4661
    .end local v16    # "rb":Ljava/math/BigInteger;
    .local v0, "quotient":Ljava/math/BigDecimal;
    move v5, v12

    move v4, v13

    move-wide v2, v14

    goto :goto_87

    .line 4662
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v18    # "raise":I
    .end local v19    # "roundingMode":I
    .end local p5    # "scl":I
    .restart local v3    # "raise":I
    .restart local v4    # "scl":I
    .restart local v5    # "roundingMode":I
    :cond_70
    move/from16 v18, v3

    move/from16 p5, v4

    move/from16 v19, v5

    .end local v3    # "raise":I
    .end local v4    # "scl":I
    .end local v5    # "roundingMode":I
    .restart local v18    # "raise":I
    .restart local v19    # "roundingMode":I
    .restart local p5    # "scl":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    move v5, v12

    move v4, v13

    .end local v12    # "mcp":I
    .end local v13    # "yscale":I
    .local v4, "yscale":I
    .local v5, "mcp":I
    move-wide/from16 v12, p3

    move-wide v2, v14

    move/from16 v14, p5

    move/from16 v15, v19

    invoke-static/range {v10 .. v16}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4664
    .end local v10    # "scaledXs":J
    .end local v18    # "raise":I
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    :goto_87
    move/from16 v17, p5

    move-wide v12, v2

    move v14, v4

    move v15, v5

    move-object v7, v6

    move/from16 v11, v19

    goto/16 :goto_fa

    .line 4665
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v19    # "roundingMode":I
    .end local p5    # "scl":I
    .local v4, "scl":I
    .local v5, "roundingMode":I
    .restart local v12    # "mcp":I
    .restart local v13    # "yscale":I
    :cond_91
    move/from16 p5, v4

    move/from16 v19, v5

    move v5, v12

    move v4, v13

    move-wide v2, v14

    .end local v12    # "mcp":I
    .end local v13    # "yscale":I
    .local v4, "yscale":I
    .local v5, "mcp":I
    .restart local v19    # "roundingMode":I
    .restart local p5    # "scl":I
    int-to-long v0, v9

    int-to-long v10, v5

    sub-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v10

    .line 4667
    .local v10, "newScale":I
    if-ne v10, v4, :cond_bb

    .line 4668
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v11

    move-wide/from16 v0, p0

    move-wide v12, v2

    move-wide/from16 v2, p3

    move v14, v4

    .end local v4    # "yscale":I
    .local v14, "yscale":I
    move/from16 v4, p5

    move v15, v5

    .end local v5    # "mcp":I
    .local v15, "mcp":I
    move/from16 v5, v19

    move-object v7, v6

    move v6, v11

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    move/from16 v17, p5

    move/from16 v11, v19

    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    goto :goto_fa

    .line 4670
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v14    # "yscale":I
    .end local v15    # "mcp":I
    .restart local v4    # "yscale":I
    .restart local v5    # "mcp":I
    :cond_bb
    move-wide v12, v2

    move v14, v4

    move v15, v5

    move-object v7, v6

    .end local v4    # "yscale":I
    .end local v5    # "mcp":I
    .restart local v14    # "yscale":I
    .restart local v15    # "mcp":I
    int-to-long v0, v10

    int-to-long v2, v14

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v8

    .line 4672
    .local v8, "raise":I
    invoke-static {v12, v13, v8}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v0

    move-wide v2, v0

    .local v2, "scaledYs":J
    cmp-long v0, v0, v16

    if-nez v0, :cond_e6

    .line 4673
    invoke-static {v12, v13, v8}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 4674
    .local v0, "rb":Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 4675
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 4674
    move/from16 v6, p5

    move/from16 v11, v19

    .end local v19    # "roundingMode":I
    .end local p5    # "scl":I
    .local v6, "scl":I
    .local v11, "roundingMode":I
    invoke-static {v1, v0, v6, v11, v4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4676
    .local v0, "quotient":Ljava/math/BigDecimal;
    move/from16 v17, v6

    goto :goto_fa

    .line 4677
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v6    # "scl":I
    .end local v11    # "roundingMode":I
    .restart local v19    # "roundingMode":I
    .restart local p5    # "scl":I
    :cond_e6
    move/from16 v6, p5

    move/from16 v11, v19

    .end local v19    # "roundingMode":I
    .end local p5    # "scl":I
    .restart local v6    # "scl":I
    .restart local v11    # "roundingMode":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    move-wide/from16 v0, p0

    move v4, v6

    move v5, v11

    move/from16 v17, v6

    .end local v6    # "scl":I
    .local v17, "scl":I
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4682
    .end local v2    # "scaledYs":J
    .end local v8    # "raise":I
    .end local v10    # "newScale":I
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    :goto_fa
    invoke-static {v0, v7}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist divide(JILjava/math/BigInteger;III)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "dividend"    # J
    .param p2, "dividendScale"    # I
    .param p3, "divisor"    # Ljava/math/BigInteger;
    .param p4, "divisorScale"    # I
    .param p5, "scale"    # I
    .param p6, "roundingMode"    # I

    .line 5258
    int-to-long v0, p5

    int-to-long v2, p4

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v0

    if-le v0, p2, :cond_16

    .line 5259
    add-int v0, p5, p4

    .line 5260
    .local v0, "newScale":I
    sub-int v1, v0, p2

    .line 5261
    .local v1, "raise":I
    invoke-static {p0, p1, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v2

    .line 5262
    .local v2, "scaledDividend":Ljava/math/BigInteger;
    invoke-static {v2, p3, p5, p6, p5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5264
    .end local v0    # "newScale":I
    .end local v1    # "raise":I
    .end local v2    # "scaledDividend":Ljava/math/BigInteger;
    :cond_16
    int-to-long v0, p2

    int-to-long v2, p5

    sub-long/2addr v0, v2

    invoke-static {p3, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    .line 5265
    .restart local v0    # "newScale":I
    sub-int v1, v0, p4

    .line 5266
    .restart local v1    # "raise":I
    invoke-static {p3, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5267
    .local v2, "scaledDivisor":Ljava/math/BigInteger;
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3, v2, p5, p6, p5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist divide(JILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # Ljava/math/BigInteger;
    .param p4, "yscale"    # I
    .param p5, "preferredScale"    # J
    .param p7, "mc"    # Ljava/math/MathContext;

    .line 4732
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(JILjava/math/BigInteger;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 4733
    add-int/lit8 p4, p4, -0x1

    .line 4735
    :cond_8
    iget v0, p7, Ljava/math/MathContext;->precision:I

    .line 4736
    .local v0, "mcp":I
    iget-object v1, p7, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v1, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 4742
    .local v1, "roundingMode":I
    int-to-long v2, p4

    add-long/2addr v2, p5

    int-to-long v4, p2

    sub-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v2

    .line 4743
    .local v2, "scl":I
    int-to-long v3, v0

    int-to-long v5, p4

    add-long/2addr v3, v5

    int-to-long v5, p2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    if-lez v3, :cond_39

    .line 4744
    int-to-long v3, v0

    int-to-long v5, p4

    add-long/2addr v3, v5

    int-to-long v5, p2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 4745
    .local v3, "raise":I
    invoke-static {p0, p1, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v4

    .line 4746
    .local v4, "rb":Ljava/math/BigInteger;
    invoke-static {p5, p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    invoke-static {v4, p3, v2, v1, v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    .line 4747
    .end local v4    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    goto :goto_58

    .line 4748
    .end local v3    # "quotient":Ljava/math/BigDecimal;
    :cond_39
    int-to-long v3, p2

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 4749
    .local v3, "newScale":I
    int-to-long v4, v3

    int-to-long v6, p4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 4750
    .local v4, "raise":I
    invoke-static {p3, v4}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 4751
    .local v5, "rb":Ljava/math/BigInteger;
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {p5, p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    invoke-static {v6, v5, v2, v1, v7}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v3, v6

    .line 4754
    .end local v4    # "raise":I
    .end local v5    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    :goto_58
    invoke-static {v3, p7}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist divide(Ljava/math/BigInteger;IJIII)Ljava/math/BigDecimal;
    .registers 23
    .param p0, "dividend"    # Ljava/math/BigInteger;
    .param p1, "dividendScale"    # I
    .param p2, "divisor"    # J
    .param p4, "divisorScale"    # I
    .param p5, "scale"    # I
    .param p6, "roundingMode"    # I

    .line 5238
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move/from16 v11, p5

    int-to-long v0, v11

    int-to-long v2, v10

    add-long/2addr v0, v2

    invoke-static {v6, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    if-le v0, v7, :cond_29

    .line 5239
    add-int v12, v11, v10

    .line 5240
    .local v12, "newScale":I
    sub-int v13, v12, v7

    .line 5241
    .local v13, "raise":I
    invoke-static {v6, v13}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v14

    .line 5242
    .local v14, "scaledDividend":Ljava/math/BigInteger;
    move-object v0, v14

    move-wide/from16 v1, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5244
    .end local v12    # "newScale":I
    .end local v13    # "raise":I
    .end local v14    # "scaledDividend":Ljava/math/BigInteger;
    :cond_29
    int-to-long v0, v7

    int-to-long v2, v11

    sub-long/2addr v0, v2

    invoke-static {v8, v9, v0, v1}, Ljava/math/BigDecimal;->checkScale(JJ)I

    move-result v12

    .line 5245
    .restart local v12    # "newScale":I
    sub-int v13, v12, v10

    .line 5246
    .restart local v13    # "raise":I
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v0, v0

    if-ge v13, v0, :cond_51

    .line 5247
    move-wide/from16 v0, p2

    .line 5248
    .local v0, "ys":J
    invoke-static {v0, v1, v13}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v3

    move-wide v1, v3

    .end local v0    # "ys":J
    .local v1, "ys":J
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v0, v3, v14

    if-eqz v0, :cond_51

    .line 5249
    move-object/from16 v0, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5252
    .end local v1    # "ys":J
    :cond_51
    invoke-static {v8, v9, v13}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 5253
    .local v0, "scaledDivisor":Ljava/math/BigInteger;
    move/from16 v1, p6

    invoke-static {v6, v0, v11, v1, v11}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist divide(Ljava/math/BigInteger;IJIJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 26
    .param p0, "xs"    # Ljava/math/BigInteger;
    .param p1, "xscale"    # I
    .param p2, "ys"    # J
    .param p4, "yscale"    # I
    .param p5, "preferredScale"    # J
    .param p7, "mc"    # Ljava/math/MathContext;

    .line 4691
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v0, p4

    move-object/from16 v10, p7

    invoke-static {v8, v9, v0, v6, v7}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(JILjava/math/BigInteger;I)I

    move-result v1

    neg-int v1, v1

    if-lez v1, :cond_15

    .line 4692
    add-int/lit8 v0, v0, -0x1

    move v11, v0

    .end local p4    # "yscale":I
    .local v0, "yscale":I
    goto :goto_16

    .line 4691
    .end local v0    # "yscale":I
    .restart local p4    # "yscale":I
    :cond_15
    move v11, v0

    .line 4694
    .end local p4    # "yscale":I
    .local v11, "yscale":I
    :goto_16
    iget v12, v10, Ljava/math/MathContext;->precision:I

    .line 4695
    .local v12, "mcp":I
    iget-object v0, v10, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v13, v0, Ljava/math/RoundingMode;->oldMode:I

    .line 4701
    .local v13, "roundingMode":I
    int-to-long v0, v11

    add-long v0, p5, v0

    int-to-long v2, v7

    sub-long/2addr v0, v2

    int-to-long v2, v12

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v14

    .line 4702
    .local v14, "scl":I
    int-to-long v0, v12

    int-to-long v2, v11

    add-long/2addr v0, v2

    int-to-long v2, v7

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v0

    if-lez v0, :cond_4e

    .line 4703
    int-to-long v0, v12

    int-to-long v2, v11

    add-long/2addr v0, v2

    int-to-long v2, v7

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v15

    .line 4704
    .local v15, "raise":I
    invoke-static {v6, v15}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v16

    .line 4705
    .local v16, "rb":Ljava/math/BigInteger;
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    move-object/from16 v0, v16

    move-wide/from16 v1, p2

    move v3, v14

    move v4, v13

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4706
    .end local v15    # "raise":I
    .end local v16    # "rb":Ljava/math/BigInteger;
    .local v0, "quotient":Ljava/math/BigDecimal;
    goto :goto_95

    .line 4707
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    :cond_4e
    int-to-long v0, v7

    int-to-long v2, v12

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v15

    .line 4709
    .local v15, "newScale":I
    if-ne v15, v11, :cond_66

    .line 4710
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move v3, v14

    move v4, v13

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    goto :goto_95

    .line 4712
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    :cond_66
    int-to-long v0, v15

    int-to-long v2, v11

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 4714
    .local v5, "raise":I
    invoke-static {v8, v9, v5}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v3

    move-wide v1, v3

    .local v1, "scaledYs":J
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v0, v3, v16

    if-nez v0, :cond_85

    .line 4715
    invoke-static {v8, v9, v5}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 4716
    .local v0, "rb":Ljava/math/BigInteger;
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    invoke-static {v6, v0, v14, v13, v3}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4717
    .local v0, "quotient":Ljava/math/BigDecimal;
    goto :goto_95

    .line 4718
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    :cond_85
    invoke-static/range {p5 .. p6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    move-object/from16 v0, p0

    move v3, v14

    move v4, v13

    move/from16 v17, v5

    .end local v5    # "raise":I
    .local v17, "raise":I
    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4723
    .end local v1    # "scaledYs":J
    .end local v15    # "newScale":I
    .end local v17    # "raise":I
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    :goto_95
    invoke-static {v0, v10}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist divide(Ljava/math/BigInteger;ILjava/math/BigInteger;III)Ljava/math/BigDecimal;
    .registers 10
    .param p0, "dividend"    # Ljava/math/BigInteger;
    .param p1, "dividendScale"    # I
    .param p2, "divisor"    # Ljava/math/BigInteger;
    .param p3, "divisorScale"    # I
    .param p4, "scale"    # I
    .param p5, "roundingMode"    # I

    .line 5272
    int-to-long v0, p4

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    if-le v0, p1, :cond_16

    .line 5273
    add-int v0, p4, p3

    .line 5274
    .local v0, "newScale":I
    sub-int v1, v0, p1

    .line 5275
    .local v1, "raise":I
    invoke-static {p0, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5276
    .local v2, "scaledDividend":Ljava/math/BigInteger;
    invoke-static {v2, p2, p4, p5, p4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5278
    .end local v0    # "newScale":I
    .end local v1    # "raise":I
    .end local v2    # "scaledDividend":Ljava/math/BigInteger;
    :cond_16
    int-to-long v0, p1

    int-to-long v2, p4

    sub-long/2addr v0, v2

    invoke-static {p2, v0, v1}, Ljava/math/BigDecimal;->checkScale(Ljava/math/BigInteger;J)I

    move-result v0

    .line 5279
    .restart local v0    # "newScale":I
    sub-int v1, v0, p3

    .line 5280
    .restart local v1    # "raise":I
    invoke-static {p2, v1}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 5281
    .local v2, "scaledDivisor":Ljava/math/BigInteger;
    invoke-static {p0, v2, p4, p5, p4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist divide(Ljava/math/BigInteger;ILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 15
    .param p0, "xs"    # Ljava/math/BigInteger;
    .param p1, "xscale"    # I
    .param p2, "ys"    # Ljava/math/BigInteger;
    .param p3, "yscale"    # I
    .param p4, "preferredScale"    # J
    .param p6, "mc"    # Ljava/math/MathContext;

    .line 4763
    invoke-static {p0, p1, p2, p3}, Ljava/math/BigDecimal;->compareMagnitudeNormalized(Ljava/math/BigInteger;ILjava/math/BigInteger;I)I

    move-result v0

    if-lez v0, :cond_8

    .line 4764
    add-int/lit8 p3, p3, -0x1

    .line 4766
    :cond_8
    iget v0, p6, Ljava/math/MathContext;->precision:I

    .line 4767
    .local v0, "mcp":I
    iget-object v1, p6, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v1, v1, Ljava/math/RoundingMode;->oldMode:I

    .line 4773
    .local v1, "roundingMode":I
    int-to-long v2, p3

    add-long/2addr v2, p4

    int-to-long v4, p1

    sub-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v2

    .line 4774
    .local v2, "scl":I
    int-to-long v3, v0

    int-to-long v5, p3

    add-long/2addr v3, v5

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    if-lez v3, :cond_39

    .line 4775
    int-to-long v3, v0

    int-to-long v5, p3

    add-long/2addr v3, v5

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 4776
    .local v3, "raise":I
    invoke-static {p0, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 4777
    .local v4, "rb":Ljava/math/BigInteger;
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    invoke-static {v4, p2, v2, v1, v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v3

    .line 4778
    .end local v4    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    goto :goto_54

    .line 4779
    .end local v3    # "quotient":Ljava/math/BigDecimal;
    :cond_39
    int-to-long v3, p1

    int-to-long v5, v0

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v3

    .line 4780
    .local v3, "newScale":I
    int-to-long v4, v3

    int-to-long v6, p3

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 4781
    .local v4, "raise":I
    invoke-static {p2, v4}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    .line 4782
    .local v5, "rb":Ljava/math/BigInteger;
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    invoke-static {p0, v5, v2, v1, v6}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v3, v6

    .line 4785
    .end local v4    # "raise":I
    .end local v5    # "rb":Ljava/math/BigInteger;
    .local v3, "quotient":Ljava/math/BigDecimal;
    :goto_54
    invoke-static {v3, p6}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist divideAndRound(JJI)J
    .registers 19
    .param p0, "ldividend"    # J
    .param p2, "ldivisor"    # J
    .param p4, "roundingMode"    # I

    .line 4159
    div-long v8, p0, p2

    .line 4160
    .local v8, "q":J
    const/4 v0, 0x1

    move/from16 v10, p4

    if-ne v10, v0, :cond_8

    .line 4161
    return-wide v8

    .line 4162
    :cond_8
    rem-long v11, p0, p2

    .line 4163
    .local v11, "r":J
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/4 v4, 0x0

    if-gez v3, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v4

    :goto_14
    cmp-long v5, p2, v1

    if-gez v5, :cond_19

    move v4, v0

    :cond_19
    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    move v13, v0

    .line 4164
    .local v13, "qsign":I
    cmp-long v0, v11, v1

    if-eqz v0, :cond_34

    .line 4165
    move-wide/from16 v0, p2

    move/from16 v2, p4

    move v3, v13

    move-wide v4, v8

    move-wide v6, v11

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIIJJ)Z

    move-result v0

    .line 4166
    .local v0, "increment":Z
    if-eqz v0, :cond_32

    int-to-long v1, v13

    add-long/2addr v1, v8

    goto :goto_33

    :cond_32
    move-wide v1, v8

    :goto_33
    return-wide v1

    .line 4168
    .end local v0    # "increment":Z
    :cond_34
    return-wide v8
.end method

.method private static blacklist divideAndRound(JJIII)Ljava/math/BigDecimal;
    .registers 23
    .param p0, "ldividend"    # J
    .param p2, "ldivisor"    # J
    .param p4, "scale"    # I
    .param p5, "roundingMode"    # I
    .param p6, "preferredScale"    # I

    .line 4137
    move/from16 v8, p4

    move/from16 v9, p6

    div-long v10, p0, p2

    .line 4138
    .local v10, "q":J
    const/4 v0, 0x1

    move/from16 v12, p5

    if-ne v12, v0, :cond_12

    if-ne v8, v9, :cond_12

    .line 4139
    invoke-static {v10, v11, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4140
    :cond_12
    rem-long v13, p0, p2

    .line 4141
    .local v13, "r":J
    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/4 v4, 0x0

    if-gez v3, :cond_1d

    move v3, v0

    goto :goto_1e

    :cond_1d
    move v3, v4

    :goto_1e
    cmp-long v5, p2, v1

    if-gez v5, :cond_23

    move v4, v0

    :cond_23
    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, -0x1

    :goto_27
    move v15, v0

    .line 4142
    .local v15, "qsign":I
    cmp-long v0, v13, v1

    if-eqz v0, :cond_42

    .line 4143
    move-wide/from16 v0, p2

    move/from16 v2, p5

    move v3, v15

    move-wide v4, v10

    move-wide v6, v13

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIIJJ)Z

    move-result v0

    .line 4144
    .local v0, "increment":Z
    if-eqz v0, :cond_3c

    int-to-long v1, v15

    add-long/2addr v1, v10

    goto :goto_3d

    :cond_3c
    move-wide v1, v10

    :goto_3d
    invoke-static {v1, v2, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4146
    .end local v0    # "increment":Z
    :cond_42
    if-eq v9, v8, :cond_4a

    .line 4147
    int-to-long v0, v9

    invoke-static {v10, v11, v8, v0, v1}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4149
    :cond_4a
    invoke-static {v10, v11, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;
    .registers 23
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "ldivisor"    # J
    .param p3, "scale"    # I
    .param p4, "roundingMode"    # I
    .param p5, "preferredScale"    # I

    .line 4274
    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move/from16 v11, p5

    const-wide/16 v1, 0x0

    .line 4275
    .local v1, "r":J
    const/4 v3, 0x0

    .line 4277
    .local v3, "mq":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    iget-object v5, v0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v4, v5}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v12, v4

    .line 4278
    .local v12, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    move-object v13, v4

    .line 4279
    .end local v3    # "mq":Ljava/math/MutableBigInteger;
    .local v13, "mq":Ljava/math/MutableBigInteger;
    invoke-virtual {v12, v8, v9, v13}, Ljava/math/MutableBigInteger;->divide(JLjava/math/MutableBigInteger;)J

    move-result-wide v14

    .line 4280
    .end local v1    # "r":J
    .local v14, "r":J
    const-wide/16 v1, 0x0

    cmp-long v3, v14, v1

    if-nez v3, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    move/from16 v16, v3

    .line 4281
    .local v16, "isRemainderZero":Z
    cmp-long v1, v8, v1

    if-gez v1, :cond_30

    iget v1, v0, Ljava/math/BigInteger;->signum:I

    neg-int v1, v1

    goto :goto_32

    :cond_30
    iget v1, v0, Ljava/math/BigInteger;->signum:I

    :goto_32
    move v6, v1

    .line 4282
    .local v6, "qsign":I
    if-nez v16, :cond_4d

    .line 4283
    move-wide/from16 v1, p1

    move/from16 v3, p4

    move v4, v6

    move-object v5, v13

    move v0, v6

    .end local v6    # "qsign":I
    .local v0, "qsign":I
    move-wide v6, v14

    invoke-static/range {v1 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIILjava/math/MutableBigInteger;J)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 4284
    sget-object v1, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v13, v1}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4286
    :cond_48
    invoke-virtual {v13, v0, v10}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4288
    .end local v0    # "qsign":I
    .restart local v6    # "qsign":I
    :cond_4d
    move v0, v6

    .end local v6    # "qsign":I
    .restart local v0    # "qsign":I
    if-eq v11, v10, :cond_6a

    .line 4289
    invoke-virtual {v13, v0}, Ljava/math/MutableBigInteger;->toCompactValue(I)J

    move-result-wide v1

    .line 4290
    .local v1, "compactVal":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_60

    .line 4291
    int-to-long v3, v11

    invoke-static {v1, v2, v10, v3, v4}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 4293
    :cond_60
    invoke-virtual {v13, v0}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 4294
    .local v3, "intVal":Ljava/math/BigInteger;
    int-to-long v4, v11

    invoke-static {v3, v10, v4, v5}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 4296
    .end local v1    # "compactVal":J
    .end local v3    # "intVal":Ljava/math/BigInteger;
    :cond_6a
    invoke-virtual {v13, v0, v10}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "bdivisor"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I
    .param p4, "preferredScale"    # I

    .line 4354
    new-instance v0, Ljava/math/MutableBigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4355
    .local v0, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 4356
    .local v1, "mq":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4357
    .local v2, "mdivisor":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v2, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 4358
    .local v3, "mr":Ljava/math/MutableBigInteger;
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v4

    .line 4359
    .local v4, "isRemainderZero":Z
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    iget v6, p1, Ljava/math/BigInteger;->signum:I

    if-eq v5, v6, :cond_23

    const/4 v5, -0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x1

    .line 4360
    .local v5, "qsign":I
    :goto_24
    if-nez v4, :cond_36

    .line 4361
    invoke-static {v2, p3, v5, v1, v3}, Ljava/math/BigDecimal;->needIncrement(Ljava/math/MutableBigInteger;IILjava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 4362
    sget-object v6, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v1, v6}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4364
    :cond_31
    invoke-virtual {v1, v5, p2}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6

    .line 4366
    :cond_36
    if-eq p4, p2, :cond_52

    .line 4367
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toCompactValue(I)J

    move-result-wide v6

    .line 4368
    .local v6, "compactVal":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-eqz v8, :cond_48

    .line 4369
    int-to-long v8, p4

    invoke-static {v6, v7, p2, v8, v9}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v8

    return-object v8

    .line 4371
    :cond_48
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 4372
    .local v8, "intVal":Ljava/math/BigInteger;
    int-to-long v9, p4

    invoke-static {v8, p2, v9, v10}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v9

    return-object v9

    .line 4374
    .end local v6    # "compactVal":J
    .end local v8    # "intVal":Ljava/math/BigInteger;
    :cond_52
    invoke-virtual {v1, v5, p2}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;JI)Ljava/math/BigInteger;
    .registers 20
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "ldivisor"    # J
    .param p3, "roundingMode"    # I

    .line 4245
    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    const-wide/16 v1, 0x0

    .line 4246
    .local v1, "r":J
    const/4 v3, 0x0

    .line 4248
    .local v3, "mq":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    iget-object v5, v0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v4, v5}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v10, v4

    .line 4249
    .local v10, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    move-object v11, v4

    .line 4250
    .end local v3    # "mq":Ljava/math/MutableBigInteger;
    .local v11, "mq":Ljava/math/MutableBigInteger;
    invoke-virtual {v10, v8, v9, v11}, Ljava/math/MutableBigInteger;->divide(JLjava/math/MutableBigInteger;)J

    move-result-wide v12

    .line 4251
    .end local v1    # "r":J
    .local v12, "r":J
    const-wide/16 v1, 0x0

    cmp-long v3, v12, v1

    if-nez v3, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    move v14, v3

    .line 4252
    .local v14, "isRemainderZero":Z
    cmp-long v1, v8, v1

    if-gez v1, :cond_2b

    iget v1, v0, Ljava/math/BigInteger;->signum:I

    neg-int v1, v1

    goto :goto_2d

    :cond_2b
    iget v1, v0, Ljava/math/BigInteger;->signum:I

    :goto_2d
    move v15, v1

    .line 4253
    .local v15, "qsign":I
    if-nez v14, :cond_42

    .line 4254
    move-wide/from16 v1, p1

    move/from16 v3, p3

    move v4, v15

    move-object v5, v11

    move-wide v6, v12

    invoke-static/range {v1 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIILjava/math/MutableBigInteger;J)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 4255
    sget-object v1, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v11, v1}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4258
    :cond_42
    invoke-virtual {v11, v15}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 10
    .param p0, "bdividend"    # Ljava/math/BigInteger;
    .param p1, "bdivisor"    # Ljava/math/BigInteger;
    .param p2, "roundingMode"    # I

    .line 4326
    new-instance v0, Ljava/math/MutableBigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4327
    .local v0, "mdividend":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 4328
    .local v1, "mq":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 4329
    .local v2, "mdivisor":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v2, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 4330
    .local v3, "mr":Ljava/math/MutableBigInteger;
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v4

    .line 4331
    .local v4, "isRemainderZero":Z
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    iget v6, p1, Ljava/math/BigInteger;->signum:I

    if-eq v5, v6, :cond_23

    const/4 v5, -0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x1

    .line 4332
    .local v5, "qsign":I
    :goto_24
    if-nez v4, :cond_31

    .line 4333
    invoke-static {v2, p2, v5, v1, v3}, Ljava/math/BigDecimal;->needIncrement(Ljava/math/MutableBigInteger;IILjava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 4334
    sget-object v6, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {v1, v6}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 4337
    :cond_31
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist divideAndRound128(JJJIIII)Ljava/math/BigDecimal;
    .registers 59
    .param p0, "dividendHi"    # J
    .param p2, "dividendLo"    # J
    .param p4, "divisor"    # J
    .param p6, "sign"    # I
    .param p7, "scale"    # I
    .param p8, "roundingMode"    # I
    .param p9, "preferredScale"    # I

    .line 4832
    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    cmp-long v0, p0, p4

    if-ltz v0, :cond_e

    .line 4833
    const/4 v0, 0x0

    return-object v0

    .line 4836
    :cond_e
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v12

    .line 4837
    .local v12, "shift":I
    shl-long v13, p4, v12

    .line 4839
    .end local p4    # "divisor":J
    .local v13, "divisor":J
    const/16 v0, 0x20

    ushr-long v5, v13, v0

    .line 4840
    .local v5, "v1":J
    const-wide v1, 0xffffffffL

    and-long v25, v13, v1

    .line 4842
    .local v25, "v0":J
    shl-long v3, p2, v12

    .line 4843
    .local v3, "tmp":J
    move-wide/from16 p4, v13

    .end local v13    # "divisor":J
    .restart local p4    # "divisor":J
    ushr-long v13, v3, v0

    .line 4844
    .local v13, "u1":J
    and-long v7, v3, v1

    .line 4846
    .local v7, "u0":J
    shl-long v15, p0, v12

    rsub-int/lit8 v0, v12, 0x40

    ushr-long v17, p2, v0

    or-long v3, v15, v17

    .line 4847
    and-long v27, v3, v1

    .line 4849
    .local v27, "u2":J
    const-wide/16 v29, 0x1

    cmp-long v0, v5, v29

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/4 v15, 0x1

    if-nez v0, :cond_43

    .line 4850
    move-wide/from16 v16, v3

    .line 4851
    .local v16, "q1":J
    const-wide/16 v18, 0x0

    move-wide/from16 v1, v18

    .local v18, "r_tmp":J
    goto :goto_5a

    .line 4852
    .end local v16    # "q1":J
    .end local v18    # "r_tmp":J
    :cond_43
    cmp-long v0, v3, v32

    if-ltz v0, :cond_50

    .line 4853
    div-long v16, v3, v5

    .line 4854
    .restart local v16    # "q1":J
    mul-long v18, v16, v5

    sub-long v18, v3, v18

    move-wide/from16 v1, v18

    .restart local v18    # "r_tmp":J
    goto :goto_5a

    .line 4856
    .end local v16    # "q1":J
    .end local v18    # "r_tmp":J
    :cond_50
    invoke-static {v3, v4, v5, v6}, Ljava/math/BigDecimal;->divRemNegativeLong(JJ)[J

    move-result-object v0

    .line 4857
    .local v0, "rq":[J
    aget-wide v16, v0, v15

    .line 4858
    .restart local v16    # "q1":J
    aget-wide v18, v0, v31

    move-wide/from16 v1, v18

    .line 4861
    .end local v0    # "rq":[J
    .local v1, "r_tmp":J
    :goto_5a
    const-wide v36, 0x100000000L

    cmp-long v0, v16, v36

    if-gez v0, :cond_77

    move-wide/from16 v38, v3

    .end local v3    # "tmp":J
    .local v38, "tmp":J
    mul-long v3, v16, v25

    move/from16 v40, v12

    .end local v12    # "shift":I
    .local v40, "shift":I
    invoke-static {v1, v2, v13, v14}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/math/BigDecimal;->unsignedLongCompare(JJ)Z

    move-result v0

    if-eqz v0, :cond_74

    goto :goto_7b

    :cond_74
    move-wide/from16 v11, v16

    goto :goto_84

    .end local v38    # "tmp":J
    .end local v40    # "shift":I
    .restart local v3    # "tmp":J
    .restart local v12    # "shift":I
    :cond_77
    move-wide/from16 v38, v3

    move/from16 v40, v12

    .line 4862
    .end local v3    # "tmp":J
    .end local v12    # "shift":I
    .restart local v38    # "tmp":J
    .restart local v40    # "shift":I
    :goto_7b
    sub-long v16, v16, v29

    .line 4863
    add-long/2addr v1, v5

    .line 4864
    cmp-long v0, v1, v36

    if-ltz v0, :cond_1d6

    .line 4865
    move-wide/from16 v11, v16

    .line 4868
    .end local v16    # "q1":J
    .local v11, "q1":J
    :goto_84
    move v0, v15

    move-wide/from16 v15, v27

    move-wide/from16 v17, v13

    move-wide/from16 v19, v5

    move-wide/from16 v21, v25

    move-wide/from16 v23, v11

    invoke-static/range {v15 .. v24}, Ljava/math/BigDecimal;->mulsub(JJJJJ)J

    move-result-wide v3

    .line 4869
    .end local v38    # "tmp":J
    .restart local v3    # "tmp":J
    const-wide v18, 0xffffffffL

    and-long v34, v3, v18

    .line 4871
    .end local v13    # "u1":J
    .local v34, "u1":J
    cmp-long v13, v5, v29

    if-nez v13, :cond_a2

    .line 4872
    move-wide v13, v3

    .line 4873
    .local v13, "q0":J
    const-wide/16 v1, 0x0

    goto :goto_b6

    .line 4874
    .end local v13    # "q0":J
    :cond_a2
    cmp-long v13, v3, v32

    if-ltz v13, :cond_ad

    .line 4875
    div-long v13, v3, v5

    .line 4876
    .restart local v13    # "q0":J
    mul-long v15, v13, v5

    sub-long v1, v3, v15

    goto :goto_b6

    .line 4878
    .end local v13    # "q0":J
    :cond_ad
    invoke-static {v3, v4, v5, v6}, Ljava/math/BigDecimal;->divRemNegativeLong(JJ)[J

    move-result-object v13

    .line 4879
    .local v13, "rq":[J
    aget-wide v14, v13, v0

    .line 4880
    .local v14, "q0":J
    aget-wide v1, v13, v31

    move-wide v13, v14

    .line 4883
    .end local v14    # "q0":J
    .local v13, "q0":J
    :goto_b6
    cmp-long v15, v13, v36

    if-gez v15, :cond_cb

    move-wide/from16 v38, v3

    .end local v3    # "tmp":J
    .restart local v38    # "tmp":J
    mul-long v3, v13, v25

    invoke-static {v1, v2, v7, v8}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/math/BigDecimal;->unsignedLongCompare(JJ)Z

    move-result v3

    if-eqz v3, :cond_c9

    goto :goto_cd

    :cond_c9
    move-wide v9, v1

    goto :goto_d5

    .end local v38    # "tmp":J
    .restart local v3    # "tmp":J
    :cond_cb
    move-wide/from16 v38, v3

    .line 4884
    .end local v3    # "tmp":J
    .restart local v38    # "tmp":J
    :goto_cd
    sub-long v13, v13, v29

    .line 4885
    add-long/2addr v1, v5

    .line 4886
    cmp-long v3, v1, v36

    if-ltz v3, :cond_1c0

    .line 4887
    move-wide v9, v1

    .line 4890
    .end local v1    # "r_tmp":J
    .local v9, "r_tmp":J
    :goto_d5
    long-to-int v1, v11

    if-gez v1, :cond_15e

    .line 4893
    new-instance v1, Ljava/math/MutableBigInteger;

    const/4 v2, 0x2

    new-array v2, v2, [I

    long-to-int v3, v11

    aput v3, v2, v31

    long-to-int v3, v13

    aput v3, v2, v0

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v4, v1

    .line 4894
    .local v4, "mq":Ljava/math/MutableBigInteger;
    move/from16 v3, p8

    if-ne v3, v0, :cond_fa

    move/from16 v2, p7

    move/from16 v0, p9

    if-ne v2, v0, :cond_fe

    .line 4895
    move-wide/from16 v41, v7

    move/from16 v8, p6

    .end local v7    # "u0":J
    .local v41, "u0":J
    invoke-virtual {v4, v8, v2}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4894
    .end local v41    # "u0":J
    .restart local v7    # "u0":J
    :cond_fa
    move/from16 v2, p7

    move/from16 v0, p9

    :cond_fe
    move-wide/from16 v41, v7

    move/from16 v8, p6

    .line 4897
    .end local v7    # "u0":J
    .restart local v41    # "u0":J
    move-wide/from16 v15, v34

    move-wide/from16 v17, v41

    move-wide/from16 v19, v5

    move-wide/from16 v21, v25

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v24}, Ljava/math/BigDecimal;->mulsub(JJJJJ)J

    move-result-wide v15

    ushr-long v15, v15, v40

    .line 4898
    .local v15, "r":J
    cmp-long v1, v15, v32

    if-eqz v1, :cond_141

    .line 4899
    move-wide/from16 v43, p4

    .end local p4    # "divisor":J
    .local v43, "divisor":J
    ushr-long v17, v43, v40

    move v7, v0

    move-wide/from16 v0, v17

    move-wide/from16 p4, v9

    move v9, v2

    .end local v9    # "r_tmp":J
    .local p4, "r_tmp":J
    move/from16 v2, p8

    move v10, v3

    move-wide/from16 v45, v38

    .end local v38    # "tmp":J
    .local v45, "tmp":J
    move/from16 v3, p6

    move-object/from16 v17, v4

    .end local v4    # "mq":Ljava/math/MutableBigInteger;
    .local v17, "mq":Ljava/math/MutableBigInteger;
    move-wide/from16 v47, v5

    .end local v5    # "v1":J
    .local v47, "v1":J
    move-wide v5, v15

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->needIncrement(JIILjava/math/MutableBigInteger;J)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 4900
    sget-object v0, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    move-object/from16 v1, v17

    .end local v17    # "mq":Ljava/math/MutableBigInteger;
    .local v1, "mq":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    goto :goto_13c

    .line 4899
    .end local v1    # "mq":Ljava/math/MutableBigInteger;
    .restart local v17    # "mq":Ljava/math/MutableBigInteger;
    :cond_13a
    move-object/from16 v1, v17

    .line 4902
    .end local v17    # "mq":Ljava/math/MutableBigInteger;
    .restart local v1    # "mq":Ljava/math/MutableBigInteger;
    :goto_13c
    invoke-virtual {v1, v8, v9}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4904
    .end local v1    # "mq":Ljava/math/MutableBigInteger;
    .end local v43    # "divisor":J
    .end local v45    # "tmp":J
    .end local v47    # "v1":J
    .restart local v4    # "mq":Ljava/math/MutableBigInteger;
    .restart local v5    # "v1":J
    .restart local v9    # "r_tmp":J
    .restart local v38    # "tmp":J
    .local p4, "divisor":J
    :cond_141
    move-wide/from16 v43, p4

    move v7, v0

    move-object v1, v4

    move-wide/from16 v47, v5

    move-wide/from16 p4, v9

    move-wide/from16 v45, v38

    move v9, v2

    move v10, v3

    .end local v4    # "mq":Ljava/math/MutableBigInteger;
    .end local v5    # "v1":J
    .end local v9    # "r_tmp":J
    .end local v38    # "tmp":J
    .restart local v1    # "mq":Ljava/math/MutableBigInteger;
    .restart local v43    # "divisor":J
    .restart local v45    # "tmp":J
    .restart local v47    # "v1":J
    .local p4, "r_tmp":J
    if-eq v7, v9, :cond_159

    .line 4905
    invoke-virtual {v1, v8}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 4906
    .local v0, "intVal":Ljava/math/BigInteger;
    int-to-long v2, v7

    invoke-static {v0, v9, v2, v3}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 4908
    .end local v0    # "intVal":Ljava/math/BigInteger;
    :cond_159
    invoke-virtual {v1, v8, v9}, Ljava/math/MutableBigInteger;->toBigDecimal(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4913
    .end local v1    # "mq":Ljava/math/MutableBigInteger;
    .end local v15    # "r":J
    .end local v41    # "u0":J
    .end local v43    # "divisor":J
    .end local v45    # "tmp":J
    .end local v47    # "v1":J
    .restart local v5    # "v1":J
    .restart local v7    # "u0":J
    .restart local v9    # "r_tmp":J
    .restart local v38    # "tmp":J
    .local p4, "divisor":J
    :cond_15e
    move-wide/from16 v43, p4

    move-wide/from16 v47, v5

    move-wide/from16 v41, v7

    move-wide/from16 p4, v9

    move-wide/from16 v45, v38

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v7, p9

    .end local v5    # "v1":J
    .end local v7    # "u0":J
    .end local v9    # "r_tmp":J
    .end local v38    # "tmp":J
    .restart local v41    # "u0":J
    .restart local v43    # "divisor":J
    .restart local v45    # "tmp":J
    .restart local v47    # "v1":J
    .local p4, "r_tmp":J
    invoke-static {v11, v12, v13, v14}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v1

    .line 4914
    .local v1, "q":J
    int-to-long v3, v8

    mul-long v4, v1, v3

    .line 4916
    .end local v1    # "q":J
    .local v4, "q":J
    if-ne v10, v0, :cond_180

    if-ne v9, v7, :cond_180

    .line 4917
    invoke-static {v4, v5, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4919
    :cond_180
    move-wide/from16 v15, v34

    move-wide/from16 v17, v41

    move-wide/from16 v19, v47

    move-wide/from16 v21, v25

    move-wide/from16 v23, v13

    invoke-static/range {v15 .. v24}, Ljava/math/BigDecimal;->mulsub(JJJJJ)J

    move-result-wide v0

    ushr-long v15, v0, v40

    .line 4920
    .restart local v15    # "r":J
    cmp-long v0, v15, v32

    if-eqz v0, :cond_1b1

    .line 4921
    ushr-long v0, v43, v40

    move/from16 v2, p8

    move/from16 v3, p6

    move-wide/from16 v17, v4

    .end local v4    # "q":J
    .local v17, "q":J
    move v10, v7

    move-wide v6, v15

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->needIncrement(JIIJJ)Z

    move-result v0

    .line 4922
    .local v0, "increment":Z
    if-eqz v0, :cond_1a9

    int-to-long v1, v8

    move-wide/from16 v3, v17

    .end local v17    # "q":J
    .local v3, "q":J
    add-long/2addr v1, v3

    goto :goto_1ac

    .end local v3    # "q":J
    .restart local v17    # "q":J
    :cond_1a9
    move-wide/from16 v3, v17

    .end local v17    # "q":J
    .restart local v3    # "q":J
    move-wide v1, v3

    :goto_1ac
    invoke-static {v1, v2, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4924
    .end local v0    # "increment":Z
    .end local v3    # "q":J
    .restart local v4    # "q":J
    :cond_1b1
    move-wide v3, v4

    move v10, v7

    .end local v4    # "q":J
    .restart local v3    # "q":J
    if-eq v10, v9, :cond_1bb

    .line 4925
    int-to-long v0, v10

    invoke-static {v3, v4, v9, v0, v1}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4927
    :cond_1bb
    invoke-static {v3, v4, v9}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4886
    .end local v3    # "q":J
    .end local v15    # "r":J
    .end local v41    # "u0":J
    .end local v43    # "divisor":J
    .end local v45    # "tmp":J
    .end local v47    # "v1":J
    .local v1, "r_tmp":J
    .restart local v5    # "v1":J
    .restart local v7    # "u0":J
    .restart local v38    # "tmp":J
    .local p4, "divisor":J
    :cond_1c0
    move-wide/from16 v43, p4

    move/from16 v9, p7

    move/from16 v10, p9

    move-wide/from16 v47, v5

    move-wide/from16 v41, v7

    move-wide/from16 v45, v38

    move/from16 v8, p6

    .end local v5    # "v1":J
    .end local v7    # "u0":J
    .end local v38    # "tmp":J
    .end local p4    # "divisor":J
    .restart local v41    # "u0":J
    .restart local v43    # "divisor":J
    .restart local v45    # "tmp":J
    .restart local v47    # "v1":J
    move/from16 v10, p8

    move-wide/from16 v7, v41

    move-wide/from16 v3, v45

    goto/16 :goto_b6

    .line 4864
    .end local v11    # "q1":J
    .end local v34    # "u1":J
    .end local v41    # "u0":J
    .end local v43    # "divisor":J
    .end local v45    # "tmp":J
    .end local v47    # "v1":J
    .restart local v5    # "v1":J
    .restart local v7    # "u0":J
    .local v13, "u1":J
    .restart local v16    # "q1":J
    .restart local v38    # "tmp":J
    .restart local p4    # "divisor":J
    :cond_1d6
    move-wide/from16 v43, p4

    move/from16 v10, p9

    move-wide/from16 v47, v5

    move-wide/from16 v41, v7

    move v0, v15

    const-wide v18, 0xffffffffL

    move/from16 v8, p6

    .end local v5    # "v1":J
    .end local v7    # "u0":J
    .end local p4    # "divisor":J
    .restart local v41    # "u0":J
    .restart local v43    # "divisor":J
    .restart local v47    # "v1":J
    move v11, v10

    move-wide/from16 v3, v38

    move/from16 v12, v40

    move-wide/from16 v7, v41

    move/from16 v10, p8

    goto/16 :goto_5a
.end method

.method private static blacklist divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;
    .registers 5
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "tenPow"    # I
    .param p2, "roundingMode"    # I

    .line 4117
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 4118
    aget-wide v0, v0, p1

    invoke-static {p0, v0, v1, p2}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JI)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_14

    .line 4120
    :cond_c
    invoke-static {p1}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0, p2}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 4121
    :goto_14
    return-object p0
.end method

.method private static blacklist divideSmallFastPath(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 38
    .param p0, "xs"    # J
    .param p2, "xscale"    # I
    .param p3, "ys"    # J
    .param p5, "yscale"    # I
    .param p6, "preferredScale"    # J
    .param p8, "mc"    # Ljava/math/MathContext;

    .line 4561
    move-wide/from16 v7, p0

    move/from16 v9, p2

    move-wide/from16 v5, p3

    move/from16 v4, p5

    move-object/from16 v3, p8

    iget v1, v3, Ljava/math/MathContext;->precision:I

    .line 4562
    .local v1, "mcp":I
    iget-object v0, v3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v2, v0, Ljava/math/RoundingMode;->oldMode:I

    .line 4564
    .local v2, "roundingMode":I
    nop

    .line 4565
    sub-int v0, v4, v9

    .line 4566
    .local v0, "xraise":I
    if-nez v0, :cond_17

    move-wide v10, v7

    goto :goto_1b

    .line 4567
    :cond_17
    invoke-static {v7, v8, v0}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v10

    :goto_1b
    move-wide v14, v10

    .line 4570
    .local v14, "scaledX":J
    invoke-static {v14, v15, v5, v6}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v26

    .line 4571
    .local v26, "cmp":I
    if-lez v26, :cond_12c

    .line 4572
    add-int/lit8 v4, v4, -0x1

    .line 4573
    .end local p5    # "yscale":I
    .local v4, "yscale":I
    int-to-long v12, v4

    add-long v12, p6, v12

    int-to-long v10, v9

    sub-long/2addr v12, v10

    int-to-long v10, v1

    add-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v12

    .line 4574
    .local v12, "scl":I
    int-to-long v10, v1

    int-to-long v5, v4

    add-long/2addr v10, v5

    int-to-long v5, v9

    sub-long/2addr v10, v5

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    if-lez v5, :cond_c3

    .line 4576
    int-to-long v5, v1

    int-to-long v10, v4

    add-long/2addr v5, v10

    int-to-long v10, v9

    sub-long/2addr v5, v10

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    .line 4578
    .local v6, "raise":I
    invoke-static {v7, v8, v6}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v10

    move-wide/from16 v19, v10

    const-wide/high16 v16, -0x8000000000000000L

    .local v19, "scaledXs":J
    cmp-long v5, v10, v16

    if-nez v5, :cond_a8

    .line 4579
    const/4 v5, 0x0

    .line 4580
    .local v5, "quotient":Ljava/math/BigDecimal;
    add-int/lit8 v10, v1, -0x1

    if-ltz v10, :cond_73

    add-int/lit8 v10, v1, -0x1

    sget-object v11, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v13, v11

    if-ge v10, v13, :cond_73

    .line 4581
    add-int/lit8 v10, v1, -0x1

    aget-wide v10, v11, v10

    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v18

    move/from16 p5, v12

    .end local v12    # "scl":I
    .local p5, "scl":I
    move-wide v12, v14

    move-wide v7, v14

    .end local v14    # "scaledX":J
    .local v7, "scaledX":J
    move-wide/from16 v14, p3

    move/from16 v16, p5

    move/from16 v17, v2

    invoke-static/range {v10 .. v18}, Ljava/math/BigDecimal;->multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v10, v5

    goto :goto_77

    .line 4580
    .end local v7    # "scaledX":J
    .end local p5    # "scl":I
    .restart local v12    # "scl":I
    .restart local v14    # "scaledX":J
    :cond_73
    move/from16 p5, v12

    move-wide v7, v14

    .line 4583
    .end local v12    # "scl":I
    .end local v14    # "scaledX":J
    .restart local v7    # "scaledX":J
    .restart local p5    # "scl":I
    move-object v10, v5

    .end local v5    # "quotient":Ljava/math/BigDecimal;
    .local v10, "quotient":Ljava/math/BigDecimal;
    :goto_77
    if-nez v10, :cond_9b

    .line 4584
    add-int/lit8 v5, v1, -0x1

    invoke-static {v7, v8, v5}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v11

    .line 4585
    .local v11, "rb":Ljava/math/BigInteger;
    nop

    .line 4586
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 4585
    move/from16 v27, v0

    .end local v0    # "xraise":I
    .local v27, "xraise":I
    move-object v0, v11

    move v14, v1

    move v15, v2

    .end local v1    # "mcp":I
    .end local v2    # "roundingMode":I
    .local v14, "mcp":I
    .local v15, "roundingMode":I
    move-wide/from16 v1, p3

    move-object v12, v3

    move/from16 v3, p5

    move v13, v4

    .end local v4    # "yscale":I
    .local v13, "yscale":I
    move v4, v15

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-wide/from16 v10, p3

    .end local v10    # "quotient":Ljava/math/BigDecimal;
    .end local v11    # "rb":Ljava/math/BigInteger;
    .local v16, "quotient":Ljava/math/BigDecimal;
    .local v17, "rb":Ljava/math/BigInteger;
    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4587
    .end local v16    # "quotient":Ljava/math/BigDecimal;
    .end local v17    # "rb":Ljava/math/BigInteger;
    .local v0, "quotient":Ljava/math/BigDecimal;
    goto :goto_c1

    .line 4583
    .end local v13    # "yscale":I
    .end local v14    # "mcp":I
    .end local v15    # "roundingMode":I
    .end local v27    # "xraise":I
    .local v0, "xraise":I
    .restart local v1    # "mcp":I
    .restart local v2    # "roundingMode":I
    .restart local v4    # "yscale":I
    .restart local v10    # "quotient":Ljava/math/BigDecimal;
    :cond_9b
    move/from16 v27, v0

    move v14, v1

    move v15, v2

    move-object v12, v3

    move v13, v4

    move-object/from16 v16, v10

    move-wide/from16 v10, p3

    .end local v0    # "xraise":I
    .end local v1    # "mcp":I
    .end local v2    # "roundingMode":I
    .end local v4    # "yscale":I
    .end local v10    # "quotient":Ljava/math/BigDecimal;
    .restart local v13    # "yscale":I
    .restart local v14    # "mcp":I
    .restart local v15    # "roundingMode":I
    .restart local v16    # "quotient":Ljava/math/BigDecimal;
    .restart local v27    # "xraise":I
    move-object/from16 v0, v16

    goto :goto_c1

    .line 4589
    .end local v7    # "scaledX":J
    .end local v13    # "yscale":I
    .end local v15    # "roundingMode":I
    .end local v16    # "quotient":Ljava/math/BigDecimal;
    .end local v27    # "xraise":I
    .end local p5    # "scl":I
    .restart local v0    # "xraise":I
    .restart local v1    # "mcp":I
    .restart local v2    # "roundingMode":I
    .restart local v4    # "yscale":I
    .restart local v12    # "scl":I
    .local v14, "scaledX":J
    :cond_a8
    move-wide/from16 v10, p3

    move/from16 v27, v0

    move v13, v4

    move/from16 p5, v12

    move-wide v7, v14

    move v14, v1

    move v15, v2

    move-object v12, v3

    .end local v0    # "xraise":I
    .end local v1    # "mcp":I
    .end local v2    # "roundingMode":I
    .end local v4    # "yscale":I
    .end local v12    # "scl":I
    .restart local v7    # "scaledX":J
    .restart local v13    # "yscale":I
    .local v14, "mcp":I
    .restart local v15    # "roundingMode":I
    .restart local v27    # "xraise":I
    .restart local p5    # "scl":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v25

    move-wide/from16 v21, p3

    move/from16 v23, p5

    move/from16 v24, v15

    invoke-static/range {v19 .. v25}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4591
    .end local v6    # "raise":I
    .end local v19    # "scaledXs":J
    .local v0, "quotient":Ljava/math/BigDecimal;
    :goto_c1
    goto/16 :goto_124

    .line 4592
    .end local v7    # "scaledX":J
    .end local v13    # "yscale":I
    .end local v15    # "roundingMode":I
    .end local v27    # "xraise":I
    .end local p5    # "scl":I
    .local v0, "xraise":I
    .restart local v1    # "mcp":I
    .restart local v2    # "roundingMode":I
    .restart local v4    # "yscale":I
    .restart local v12    # "scl":I
    .local v14, "scaledX":J
    :cond_c3
    move-wide/from16 v10, p3

    move/from16 v27, v0

    move v13, v4

    move/from16 p5, v12

    move-wide v7, v14

    move v14, v1

    move v15, v2

    move-object v12, v3

    .end local v0    # "xraise":I
    .end local v1    # "mcp":I
    .end local v2    # "roundingMode":I
    .end local v4    # "yscale":I
    .end local v12    # "scl":I
    .restart local v7    # "scaledX":J
    .restart local v13    # "yscale":I
    .local v14, "mcp":I
    .restart local v15    # "roundingMode":I
    .restart local v27    # "xraise":I
    .restart local p5    # "scl":I
    int-to-long v0, v9

    int-to-long v2, v14

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    .line 4594
    .local v6, "newScale":I
    if-ne v6, v13, :cond_ea

    .line 4595
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    move-wide/from16 v0, p0

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move v5, v15

    move v12, v6

    .end local v6    # "newScale":I
    .local v12, "newScale":I
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .local v0, "quotient":Ljava/math/BigDecimal;
    goto :goto_124

    .line 4597
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v12    # "newScale":I
    .restart local v6    # "newScale":I
    :cond_ea
    move v12, v6

    .end local v6    # "newScale":I
    .restart local v12    # "newScale":I
    int-to-long v0, v12

    int-to-long v2, v13

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    .line 4599
    .local v6, "raise":I
    invoke-static {v10, v11, v6}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v0

    move-wide v2, v0

    const-wide/high16 v4, -0x8000000000000000L

    .local v2, "scaledYs":J
    cmp-long v0, v0, v4

    if-nez v0, :cond_110

    .line 4600
    invoke-static {v10, v11, v6}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v0

    .line 4601
    .local v0, "rb":Ljava/math/BigInteger;
    invoke-static/range {p0 .. p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 4602
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v4

    .line 4601
    move/from16 v5, p5

    .end local p5    # "scl":I
    .local v5, "scl":I
    invoke-static {v1, v0, v5, v15, v4}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4603
    .local v0, "quotient":Ljava/math/BigDecimal;
    goto :goto_124

    .line 4604
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v5    # "scl":I
    .restart local p5    # "scl":I
    :cond_110
    move/from16 v5, p5

    .end local p5    # "scl":I
    .restart local v5    # "scl":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v16

    move-wide/from16 v0, p0

    move v4, v5

    move/from16 v17, v5

    .end local v5    # "scl":I
    .local v17, "scl":I
    move v5, v15

    move/from16 v18, v6

    .end local v6    # "raise":I
    .local v18, "raise":I
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4608
    .end local v2    # "scaledYs":J
    .end local v12    # "newScale":I
    .end local v17    # "scl":I
    .end local v18    # "raise":I
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    :goto_124
    move v4, v13

    move v13, v14

    move/from16 v28, v15

    move-object/from16 v14, p8

    goto/16 :goto_1c9

    .line 4611
    .end local v7    # "scaledX":J
    .end local v13    # "yscale":I
    .end local v15    # "roundingMode":I
    .end local v27    # "xraise":I
    .local v0, "xraise":I
    .restart local v1    # "mcp":I
    .local v2, "roundingMode":I
    .local v14, "scaledX":J
    .local p5, "yscale":I
    :cond_12c
    move/from16 v27, v0

    move-wide v10, v5

    move-wide v7, v14

    move v14, v1

    move v15, v2

    .end local v0    # "xraise":I
    .end local v1    # "mcp":I
    .end local v2    # "roundingMode":I
    .restart local v7    # "scaledX":J
    .local v14, "mcp":I
    .restart local v15    # "roundingMode":I
    .restart local v27    # "xraise":I
    int-to-long v0, v4

    add-long v0, p6, v0

    int-to-long v2, v9

    sub-long/2addr v0, v2

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v6

    .line 4612
    .local v6, "scl":I
    if-nez v26, :cond_162

    .line 4614
    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_149

    move v2, v5

    goto :goto_14a

    :cond_149
    move v2, v3

    :goto_14a
    cmp-long v0, v10, v0

    if-gez v0, :cond_14f

    move v3, v5

    :cond_14f
    if-ne v2, v3, :cond_152

    goto :goto_153

    :cond_152
    const/4 v5, -0x1

    :goto_153
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v0

    invoke-static {v5, v14, v6, v0}, Ljava/math/BigDecimal;->roundedTenPower(IIII)Ljava/math/BigDecimal;

    move-result-object v0

    move v13, v14

    move/from16 v28, v15

    move-object/from16 v14, p8

    .local v0, "quotient":Ljava/math/BigDecimal;
    goto/16 :goto_1c9

    .line 4618
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    :cond_162
    invoke-static {v7, v8, v14}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v0

    move-wide/from16 v19, v0

    const-wide/high16 v2, -0x8000000000000000L

    .restart local v19    # "scaledXs":J
    cmp-long v0, v0, v2

    if-nez v0, :cond_1b4

    .line 4619
    const/4 v0, 0x0

    .line 4620
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v2, v1

    if-ge v14, v2, :cond_18d

    .line 4621
    aget-wide v1, v1, v14

    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v18

    move-wide v10, v1

    move-object/from16 v5, p8

    move-wide v12, v7

    move v3, v14

    move/from16 v28, v15

    .end local v14    # "mcp":I
    .end local v15    # "roundingMode":I
    .local v3, "mcp":I
    .local v28, "roundingMode":I
    move-wide/from16 v14, p3

    move/from16 v16, v6

    move/from16 v17, v28

    invoke-static/range {v10 .. v18}, Ljava/math/BigDecimal;->multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;

    move-result-object v0

    move-object v10, v0

    goto :goto_193

    .line 4620
    .end local v3    # "mcp":I
    .end local v28    # "roundingMode":I
    .restart local v14    # "mcp":I
    .restart local v15    # "roundingMode":I
    :cond_18d
    move-object/from16 v5, p8

    move v3, v14

    move/from16 v28, v15

    .end local v14    # "mcp":I
    .end local v15    # "roundingMode":I
    .restart local v3    # "mcp":I
    .restart local v28    # "roundingMode":I
    move-object v10, v0

    .line 4623
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .restart local v10    # "quotient":Ljava/math/BigDecimal;
    :goto_193
    if-nez v10, :cond_1ae

    .line 4624
    invoke-static {v7, v8, v3}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(JI)Ljava/math/BigInteger;

    move-result-object v11

    .line 4625
    .restart local v11    # "rb":Ljava/math/BigInteger;
    nop

    .line 4626
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v12

    .line 4625
    move-object v0, v11

    move-wide/from16 v1, p3

    move v13, v3

    .end local v3    # "mcp":I
    .local v13, "mcp":I
    move v3, v6

    move/from16 v4, v28

    move-object v14, v5

    move v5, v12

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4627
    .end local v10    # "quotient":Ljava/math/BigDecimal;
    .end local v11    # "rb":Ljava/math/BigInteger;
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    move/from16 v4, p5

    goto :goto_1c9

    .line 4623
    .end local v0    # "quotient":Ljava/math/BigDecimal;
    .end local v13    # "mcp":I
    .restart local v3    # "mcp":I
    .restart local v10    # "quotient":Ljava/math/BigDecimal;
    :cond_1ae
    move v13, v3

    move-object v14, v5

    .end local v3    # "mcp":I
    .restart local v13    # "mcp":I
    move/from16 v4, p5

    move-object v0, v10

    goto :goto_1c9

    .line 4629
    .end local v10    # "quotient":Ljava/math/BigDecimal;
    .end local v13    # "mcp":I
    .end local v28    # "roundingMode":I
    .restart local v14    # "mcp":I
    .restart local v15    # "roundingMode":I
    :cond_1b4
    move v13, v14

    move/from16 v28, v15

    move-object/from16 v14, p8

    .end local v14    # "mcp":I
    .end local v15    # "roundingMode":I
    .restart local v13    # "mcp":I
    .restart local v28    # "roundingMode":I
    invoke-static/range {p6 .. p7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v25

    move-wide/from16 v21, p3

    move/from16 v23, v6

    move/from16 v24, v28

    invoke-static/range {v19 .. v25}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v0

    move/from16 v4, p5

    .line 4634
    .end local v6    # "scl":I
    .end local v19    # "scaledXs":J
    .end local p5    # "yscale":I
    .restart local v0    # "quotient":Ljava/math/BigDecimal;
    .restart local v4    # "yscale":I
    :goto_1c9
    invoke-static {v0, v14}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist doRound(JILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "compactVal"    # J
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 4058
    iget v0, p3, Ljava/math/MathContext;->precision:I

    .line 4059
    .local v0, "mcp":I
    if-lez v0, :cond_2f

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2f

    .line 4060
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4061
    .local v1, "prec":I
    sub-int v2, v1, v0

    .line 4062
    .local v2, "drop":I
    :goto_e
    if-lez v2, :cond_2a

    .line 4063
    int-to-long v3, p2

    int-to-long v5, v2

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p2

    .line 4064
    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v3, v3, v2

    iget-object v5, p3, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v5, v5, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {p0, p1, v3, v4, v5}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide p0

    .line 4065
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4066
    sub-int v2, v1, v0

    goto :goto_e

    .line 4068
    :cond_2a
    invoke-static {p0, p1, p2, v1}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 4070
    .end local v1    # "prec":I
    .end local v2    # "drop":I
    :cond_2f
    invoke-static {p0, p1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 19
    .param p0, "val"    # Ljava/math/BigDecimal;
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 4013
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Ljava/math/MathContext;->precision:I

    .line 4014
    .local v2, "mcp":I
    const/4 v3, 0x0

    .line 4015
    .local v3, "wasDivided":Z
    if-lez v2, :cond_7c

    .line 4016
    iget-object v4, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 4017
    .local v4, "intVal":Ljava/math/BigInteger;
    iget-wide v5, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 4018
    .local v5, "compactVal":J
    iget v7, v0, Ljava/math/BigDecimal;->scale:I

    .line 4019
    .local v7, "scale":I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    .line 4020
    .local v8, "prec":I
    iget-object v9, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v9, v9, Ljava/math/RoundingMode;->oldMode:I

    .line 4022
    .local v9, "mode":I
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v5, v10

    if-nez v12, :cond_45

    .line 4023
    sub-int v12, v8, v2

    .line 4024
    .local v12, "drop":I
    :goto_1f
    if-lez v12, :cond_45

    .line 4025
    int-to-long v13, v7

    int-to-long v10, v12

    sub-long/2addr v13, v10

    invoke-static {v13, v14}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    .line 4026
    invoke-static {v4, v12, v9}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object v4

    .line 4027
    const/4 v3, 0x1

    .line 4028
    invoke-static {v4}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v5

    .line 4029
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v13, v5, v10

    if-eqz v13, :cond_3c

    .line 4030
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v8

    .line 4031
    goto :goto_45

    .line 4033
    :cond_3c
    invoke-static {v4}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v8

    .line 4034
    sub-int v12, v8, v2

    const-wide/high16 v10, -0x8000000000000000L

    goto :goto_1f

    .line 4037
    .end local v12    # "drop":I
    :cond_45
    :goto_45
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v10, v5, v10

    if-eqz v10, :cond_6b

    .line 4038
    sub-int v10, v8, v2

    .line 4039
    .local v10, "drop":I
    :goto_4d
    if-lez v10, :cond_6b

    .line 4040
    int-to-long v11, v7

    int-to-long v13, v10

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v7

    .line 4041
    sget-object v11, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v11, v11, v10

    iget-object v13, v1, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v13, v13, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v5, v6, v11, v12, v13}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v5

    .line 4042
    const/4 v3, 0x1

    .line 4043
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v8

    .line 4044
    sub-int v10, v8, v2

    .line 4045
    const/4 v4, 0x0

    goto :goto_4d

    .line 4048
    .end local v10    # "drop":I
    :cond_6b
    if-eqz v3, :cond_79

    new-instance v16, Ljava/math/BigDecimal;

    move-object/from16 v10, v16

    move-object v11, v4

    move-wide v12, v5

    move v14, v7

    move v15, v8

    invoke-direct/range {v10 .. v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    goto :goto_7b

    :cond_79
    move-object/from16 v16, v0

    :goto_7b
    return-object v16

    .line 4050
    .end local v4    # "intVal":Ljava/math/BigInteger;
    .end local v5    # "compactVal":J
    .end local v7    # "scale":I
    .end local v8    # "prec":I
    .end local v9    # "mode":I
    :cond_7c
    return-object v0
.end method

.method private static blacklist doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 4078
    iget v0, p2, Ljava/math/MathContext;->precision:I

    .line 4079
    .local v0, "mcp":I
    const/4 v1, 0x0

    .line 4080
    .local v1, "prec":I
    if-lez v0, :cond_61

    .line 4081
    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v2

    .line 4082
    .local v2, "compactVal":J
    iget-object v4, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v4, v4, Ljava/math/RoundingMode;->oldMode:I

    .line 4084
    .local v4, "mode":I
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v2, v5

    if-nez v7, :cond_36

    .line 4085
    invoke-static {p0}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 4086
    sub-int v7, v1, v0

    .line 4087
    .local v7, "drop":I
    :goto_19
    if-lez v7, :cond_36

    .line 4088
    int-to-long v8, p1

    int-to-long v10, v7

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p1

    .line 4089
    invoke-static {p0, v7, v4}, Ljava/math/BigDecimal;->divideAndRoundByTenPow(Ljava/math/BigInteger;II)Ljava/math/BigInteger;

    move-result-object p0

    .line 4090
    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v2

    .line 4091
    cmp-long v8, v2, v5

    if-eqz v8, :cond_2f

    .line 4092
    goto :goto_36

    .line 4094
    :cond_2f
    invoke-static {p0}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 4095
    sub-int v7, v1, v0

    goto :goto_19

    .line 4098
    .end local v7    # "drop":I
    :cond_36
    :goto_36
    cmp-long v5, v2, v5

    if-eqz v5, :cond_61

    .line 4099
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4100
    sub-int v5, v1, v0

    .line 4101
    .local v5, "drop":I
    :goto_40
    if-lez v5, :cond_5c

    .line 4102
    int-to-long v6, p1

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result p1

    .line 4103
    sget-object v6, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    aget-wide v6, v6, v5

    iget-object v8, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v8, v8, Ljava/math/RoundingMode;->oldMode:I

    invoke-static {v2, v3, v6, v7, v8}, Ljava/math/BigDecimal;->divideAndRound(JJI)J

    move-result-wide v2

    .line 4104
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v1

    .line 4105
    sub-int v5, v1, v0

    goto :goto_40

    .line 4107
    :cond_5c
    invoke-static {v2, v3, p1, v1}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6

    .line 4110
    .end local v2    # "compactVal":J
    .end local v4    # "mode":I
    .end local v5    # "drop":I
    :cond_61
    new-instance v2, Ljava/math/BigDecimal;

    const-wide/high16 v9, -0x8000000000000000L

    move-object v7, v2

    move-object v8, p0

    move v11, p1

    move v12, v1

    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v2
.end method

.method private static blacklist doRound128(JJIILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 25
    .param p0, "hi"    # J
    .param p2, "lo"    # J
    .param p4, "sign"    # I
    .param p5, "scale"    # I
    .param p6, "mc"    # Ljava/math/MathContext;

    .line 5143
    move-object/from16 v0, p6

    iget v1, v0, Ljava/math/MathContext;->precision:I

    .line 5145
    .local v1, "mcp":I
    const/4 v2, 0x0

    .line 5146
    .local v2, "res":Ljava/math/BigDecimal;
    invoke-static/range {p0 .. p3}, Ljava/math/BigDecimal;->precision(JJ)I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v3

    .local v4, "drop":I
    if-lez v3, :cond_31

    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v5, v3

    if-ge v4, v5, :cond_31

    .line 5147
    move/from16 v5, p5

    int-to-long v6, v5

    int-to-long v8, v4

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v5

    .line 5148
    .end local p5    # "scale":I
    .local v5, "scale":I
    aget-wide v12, v3, v4

    iget-object v3, v0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    iget v3, v3, Ljava/math/RoundingMode;->oldMode:I

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    move/from16 v14, p4

    move v15, v5

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-static/range {v8 .. v17}, Ljava/math/BigDecimal;->divideAndRound128(JJJIIII)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_33

    .line 5146
    .end local v5    # "scale":I
    .restart local p5    # "scale":I
    :cond_31
    move/from16 v5, p5

    .line 5150
    .end local p5    # "scale":I
    .restart local v5    # "scale":I
    :goto_33
    if-eqz v2, :cond_3a

    .line 5151
    invoke-static {v2, v0}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    .line 5153
    :cond_3a
    const/4 v3, 0x0

    return-object v3
.end method

.method private static blacklist expandBigIntegerTenPowers(I)Ljava/math/BigInteger;
    .registers 8
    .param p0, "n"    # I

    .line 3586
    const-class v0, Ljava/math/BigDecimal;

    monitor-enter v0

    .line 3587
    :try_start_3
    sget-object v1, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 3588
    .local v1, "pows":[Ljava/math/BigInteger;
    array-length v2, v1

    .line 3591
    .local v2, "curLen":I
    if-gt v2, p0, :cond_2a

    .line 3592
    shl-int/lit8 v3, v2, 0x1

    .line 3593
    .local v3, "newLen":I
    :goto_a
    if-gt v3, p0, :cond_f

    .line 3594
    shl-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3595
    :cond_f
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/math/BigInteger;

    move-object v1, v4

    .line 3596
    move v4, v2

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_28

    .line 3597
    add-int/lit8 v5, v4, -0x1

    aget-object v5, v1, v5

    sget-object v6, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v1, v4

    .line 3596
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 3602
    .end local v4    # "i":I
    :cond_28
    sput-object v1, Ljava/math/BigDecimal;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    .line 3604
    .end local v3    # "newLen":I
    :cond_2a
    aget-object v3, v1, p0

    monitor-exit v0

    return-object v3

    .line 3605
    .end local v1    # "pows":[Ljava/math/BigInteger;
    .end local v2    # "curLen":I
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private blacklist fractionOnly()Z
    .registers 3

    .line 3087
    nop

    .line 3088
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist getValueString(ILjava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "signum"    # I
    .param p2, "intString"    # Ljava/lang/String;
    .param p3, "scale"    # I

    .line 2991
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 2992
    .local v0, "insertionPoint":I
    const-string v1, "-0."

    const-string v2, "0."

    if-nez v0, :cond_1f

    .line 2993
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p1, :cond_13

    goto :goto_14

    :cond_13
    move-object v1, v2

    :goto_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2994
    :cond_1f
    if-lez v0, :cond_34

    .line 2995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2996
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/16 v2, 0x2e

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2997
    if-gez p1, :cond_57

    .line 2998
    const/4 v2, 0x0

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 3000
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    rsub-int/lit8 v4, v0, 0x3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3001
    .local v3, "buf":Ljava/lang/StringBuilder;
    if-gez p1, :cond_43

    goto :goto_44

    :cond_43
    move-object v1, v2

    :goto_44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    neg-int v2, v0

    if-ge v1, v2, :cond_53

    .line 3003
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3002
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 3004
    .end local v1    # "i":I
    :cond_53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v3

    .line 3006
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .local v1, "buf":Ljava/lang/StringBuilder;
    :cond_57
    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist inflated()Ljava/math/BigInteger;
    .registers 3

    .line 3717
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_b

    .line 3718
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3720
    :cond_b
    return-object v0
.end method

.method private blacklist layoutChars(Z)Ljava/lang/String;
    .registers 17
    .param p1, "sci"    # Z

    .line 3457
    move-object v0, p0

    iget v1, v0, Ljava/math/BigDecimal;->scale:I

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_19

    .line 3458
    iget-wide v4, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_12

    .line 3459
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 3460
    :cond_12
    iget-object v1, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3458
    :goto_18
    return-object v1

    .line 3461
    :cond_19
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/16 v7, 0x2e

    if-ne v1, v4, :cond_55

    iget-wide v8, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v8, v5

    if-ltz v1, :cond_55

    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-gez v1, :cond_55

    .line 3464
    long-to-int v1, v8

    rem-int/lit8 v1, v1, 0x64

    .line 3465
    .local v1, "lowInt":I
    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x64

    .line 3466
    .local v2, "highInt":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_TENS:[C

    aget-char v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/math/BigDecimal$StringBuilderHelper;->DIGIT_ONES:[C

    aget-char v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3471
    .end local v1    # "lowInt":I
    .end local v2    # "highInt":I
    :cond_55
    sget-object v1, Ljava/math/BigDecimal;->threadLocalStringBuilderHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal$StringBuilderHelper;

    .line 3475
    .local v1, "sbHelper":Ljava/math/BigDecimal$StringBuilderHelper;
    iget-wide v8, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v8, v2

    if-eqz v2, :cond_70

    .line 3476
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal$StringBuilderHelper;->putIntCompact(J)I

    move-result v2

    .line 3477
    .local v2, "offset":I
    invoke-virtual {v1}, Ljava/math/BigDecimal$StringBuilderHelper;->getCompactCharArray()[C

    move-result-object v3

    .local v3, "coeff":[C
    goto :goto_7f

    .line 3479
    .end local v2    # "offset":I
    .end local v3    # "coeff":[C
    :cond_70
    const/4 v2, 0x0

    .line 3480
    .restart local v2    # "offset":I
    iget-object v3, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 3487
    .restart local v3    # "coeff":[C
    :goto_7f
    invoke-virtual {v1}, Ljava/math/BigDecimal$StringBuilderHelper;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3488
    .local v4, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v8

    if-gez v8, :cond_8e

    .line 3489
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3490
    :cond_8e
    array-length v8, v3

    sub-int/2addr v8, v2

    .line 3491
    .local v8, "coeffLen":I
    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v9

    neg-long v10, v10

    add-int/lit8 v12, v8, -0x1

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 3492
    .local v10, "adjusted":J
    const/16 v12, 0x30

    if-ltz v9, :cond_c8

    const-wide/16 v13, -0x6

    cmp-long v13, v10, v13

    if-ltz v13, :cond_c8

    .line 3493
    sub-int/2addr v9, v8

    .line 3494
    .local v9, "pad":I
    if-ltz v9, :cond_b7

    .line 3495
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3496
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3497
    :goto_ab
    if-lez v9, :cond_b3

    .line 3498
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3497
    add-int/lit8 v9, v9, -0x1

    goto :goto_ab

    .line 3500
    :cond_b3
    invoke-virtual {v4, v3, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 3502
    :cond_b7
    neg-int v5, v9

    invoke-virtual {v4, v3, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3503
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3504
    neg-int v5, v9

    add-int/2addr v5, v2

    iget v6, v0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v4, v3, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3506
    .end local v9    # "pad":I
    :goto_c5
    move v6, v8

    goto/16 :goto_153

    .line 3507
    :cond_c8
    const/4 v9, 0x1

    if-eqz p1, :cond_de

    .line 3508
    aget-char v12, v3, v2

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3509
    if-le v8, v9, :cond_dc

    .line 3510
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3511
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v4, v3, v7, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3546
    :cond_dc
    move v6, v8

    goto :goto_13c

    .line 3514
    :cond_de
    const-wide/16 v13, 0x3

    rem-long v5, v10, v13

    long-to-int v5, v5

    .line 3515
    .local v5, "sig":I
    if-gez v5, :cond_e7

    .line 3516
    add-int/lit8 v5, v5, 0x3

    .line 3517
    :cond_e7
    move v6, v8

    .end local v8    # "coeffLen":I
    .local v6, "coeffLen":I
    int-to-long v7, v5

    sub-long/2addr v10, v7

    .line 3518
    add-int/2addr v5, v9

    .line 3519
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-nez v7, :cond_11d

    .line 3520
    packed-switch v5, :pswitch_data_158

    .line 3533
    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected sig value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 3529
    :pswitch_10b
    const-string v7, "0.0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3530
    add-long/2addr v10, v13

    .line 3531
    goto :goto_13c

    .line 3525
    :pswitch_112
    const-string v7, "0.00"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    add-long/2addr v10, v13

    .line 3527
    goto :goto_13c

    .line 3522
    :pswitch_119
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3523
    goto :goto_13c

    .line 3535
    :cond_11d
    if-lt v5, v6, :cond_12d

    .line 3536
    invoke-virtual {v4, v3, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3538
    sub-int v7, v5, v6

    .local v7, "i":I
    :goto_124
    if-lez v7, :cond_12c

    .line 3539
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3538
    add-int/lit8 v7, v7, -0x1

    goto :goto_124

    .end local v7    # "i":I
    :cond_12c
    goto :goto_13c

    .line 3541
    :cond_12d
    invoke-virtual {v4, v3, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3542
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3543
    add-int v7, v2, v5

    sub-int v8, v6, v5

    invoke-virtual {v4, v3, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 3546
    .end local v5    # "sig":I
    :goto_13c
    const-wide/16 v7, 0x0

    cmp-long v5, v10, v7

    if-eqz v5, :cond_153

    .line 3547
    const/16 v5, 0x45

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3548
    cmp-long v5, v10, v7

    if-lez v5, :cond_150

    .line 3549
    const/16 v5, 0x2b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3550
    :cond_150
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3553
    :cond_153
    :goto_153
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_119
        :pswitch_112
        :pswitch_10b
    .end packed-switch
.end method

.method private static blacklist longCompareMagnitude(JJ)I
    .registers 7
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 3898
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_7

    .line 3899
    neg-long p0, p0

    .line 3900
    :cond_7
    cmp-long v0, p2, v0

    if-gez v0, :cond_c

    .line 3901
    neg-long p2, p2

    .line 3902
    :cond_c
    cmp-long v0, p0, p2

    if-gez v0, :cond_12

    const/4 v0, -0x1

    goto :goto_19

    :cond_12
    cmp-long v0, p0, p2

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method static blacklist longDigitLength(J)I
    .registers 6
    .param p0, "x"    # J

    .line 3824
    nop

    .line 3825
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    .line 3826
    neg-long p0, p0

    .line 3827
    :cond_8
    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    if-gez v0, :cond_10

    .line 3828
    return v1

    .line 3829
    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x4d1

    ushr-int/lit8 v0, v0, 0xc

    .line 3830
    .local v0, "r":I
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    .line 3832
    .local v1, "tab":[J
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    aget-wide v2, v1, v0

    cmp-long v2, p0, v2

    if-gez v2, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v2, v0, 0x1

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v0

    :goto_2b
    return v2
.end method

.method private static blacklist longLongCompareMagnitude(JJJJ)Z
    .registers 15
    .param p0, "hi0"    # J
    .param p2, "lo0"    # J
    .param p4, "hi1"    # J
    .param p6, "lo1"    # J

    .line 5201
    cmp-long v0, p0, p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 5202
    cmp-long v0, p0, p4

    if-gez v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 5204
    :cond_d
    const-wide/high16 v3, -0x8000000000000000L

    add-long v5, p2, v3

    add-long/2addr v3, p6

    cmp-long v0, v5, v3

    if-gez v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method private static blacklist longMultiplyPowerTen(JI)J
    .registers 11
    .param p0, "val"    # J
    .param p2, "n"    # I

    .line 3684
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2c

    if-gtz p2, :cond_9

    goto :goto_2c

    .line 3686
    :cond_9
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    .line 3687
    .local v0, "tab":[J
    sget-object v1, Ljava/math/BigDecimal;->THRESHOLDS_TABLE:[J

    .line 3688
    .local v1, "bounds":[J
    array-length v2, v0

    if-ge p2, v2, :cond_29

    array-length v2, v1

    if-ge p2, v2, :cond_29

    .line 3689
    aget-wide v2, v0, p2

    .line 3690
    .local v2, "tenpower":J
    const-wide/16 v4, 0x1

    cmp-long v4, p0, v4

    if-nez v4, :cond_1c

    .line 3691
    return-wide v2

    .line 3692
    :cond_1c
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    aget-wide v6, v1, p2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_29

    .line 3693
    mul-long v4, p0, v2

    return-wide v4

    .line 3695
    .end local v2    # "tenpower":J
    :cond_29
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 3685
    .end local v0    # "tab":[J
    .end local v1    # "bounds":[J
    :cond_2c
    :goto_2c
    return-wide p0
.end method

.method private static blacklist make64(JJ)J
    .registers 6
    .param p0, "hi"    # J
    .param p2, "lo"    # J

    .line 4993
    const/16 v0, 0x20

    shl-long v0, p0, v0

    or-long/2addr v0, p2

    return-wide v0
.end method

.method private static blacklist matchScale([Ljava/math/BigDecimal;)V
    .registers 6
    .param p0, "val"    # [Ljava/math/BigDecimal;

    .line 3737
    const/4 v0, 0x0

    aget-object v1, p0, v0

    iget v1, v1, Ljava/math/BigDecimal;->scale:I

    const/4 v2, 0x1

    aget-object v3, p0, v2

    iget v3, v3, Ljava/math/BigDecimal;->scale:I

    if-ne v1, v3, :cond_d

    .line 3738
    return-void

    .line 3739
    :cond_d
    aget-object v1, p0, v0

    iget v1, v1, Ljava/math/BigDecimal;->scale:I

    aget-object v3, p0, v2

    iget v3, v3, Ljava/math/BigDecimal;->scale:I

    const/4 v4, 0x7

    if-ge v1, v3, :cond_25

    .line 3740
    aget-object v1, p0, v0

    aget-object v2, p0, v2

    iget v2, v2, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v1, v2, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, p0, v0

    goto :goto_3b

    .line 3741
    :cond_25
    aget-object v1, p0, v2

    iget v1, v1, Ljava/math/BigDecimal;->scale:I

    aget-object v3, p0, v0

    iget v3, v3, Ljava/math/BigDecimal;->scale:I

    if-ge v1, v3, :cond_3b

    .line 3742
    aget-object v1, p0, v2

    aget-object v0, p0, v0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {v1, v0, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, p0, v2

    .line 3744
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static blacklist mulsub(JJJJJ)J
    .registers 16
    .param p0, "u1"    # J
    .param p2, "u0"    # J
    .param p4, "v1"    # J
    .param p6, "v0"    # J
    .param p8, "q0"    # J

    .line 4997
    mul-long v0, p8, p6

    sub-long v0, p2, v0

    .line 4998
    .local v0, "tmp":J
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    add-long/2addr v2, p0

    mul-long v4, p8, p4

    sub-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist multiply(JJ)J
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 5052
    mul-long v0, p0, p2

    .line 5053
    .local v0, "product":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 5054
    .local v2, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 5055
    .local v4, "ay":J
    or-long v6, v2, v4

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_23

    cmp-long v6, p2, v8

    if-eqz v6, :cond_23

    div-long v6, v0, p2

    cmp-long v6, v6, p0

    if-nez v6, :cond_20

    goto :goto_23

    .line 5058
    :cond_20
    const-wide/high16 v6, -0x8000000000000000L

    return-wide v6

    .line 5056
    :cond_23
    :goto_23
    return-wide v0
.end method

.method private static blacklist multiply(JJI)Ljava/math/BigDecimal;
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "scale"    # I

    .line 5062
    invoke-static {p0, p1, p2, p3}, Ljava/math/BigDecimal;->multiply(JJ)J

    move-result-wide v0

    .line 5063
    .local v0, "product":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 5064
    invoke-static {v0, v1, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 5066
    :cond_f
    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v8, 0x0

    move-object v3, v2

    move v7, p4

    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v2
.end method

.method private static blacklist multiply(JLjava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "x"    # J
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I

    .line 5070
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 5071
    invoke-static {p3}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5073
    :cond_b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p2, p0, p1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0
.end method

.method private static blacklist multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .registers 10
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .line 5077
    new-instance v6, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v5, 0x0

    move-object v0, v6

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v6
.end method

.method private static blacklist multiplyAndRound(JJILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 47
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "scale"    # I
    .param p5, "mc"    # Ljava/math/MathContext;

    .line 5084
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v7, p5

    invoke-static/range {p0 .. p3}, Ljava/math/BigDecimal;->multiply(JJ)J

    move-result-wide v4

    .line 5085
    .local v4, "product":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v4, v8

    if-eqz v6, :cond_17

    .line 5086
    move/from16 v14, p4

    invoke-static {v4, v5, v14, v7}, Ljava/math/BigDecimal;->doRound(JILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6

    .line 5089
    :cond_17
    move/from16 v14, p4

    const/4 v6, 0x1

    .line 5090
    .local v6, "rsign":I
    const-wide/16 v8, 0x0

    cmp-long v10, v0, v8

    if-gez v10, :cond_24

    .line 5091
    neg-long v0, v0

    .line 5092
    .end local p0    # "x":J
    .local v0, "x":J
    const/4 v6, -0x1

    move-wide v15, v0

    goto :goto_25

    .line 5090
    .end local v0    # "x":J
    .restart local p0    # "x":J
    :cond_24
    move-wide v15, v0

    .line 5094
    .end local p0    # "x":J
    .local v15, "x":J
    :goto_25
    cmp-long v0, v2, v8

    if-gez v0, :cond_30

    .line 5095
    neg-long v0, v2

    .line 5096
    .end local p2    # "y":J
    .local v0, "y":J
    mul-int/lit8 v6, v6, -0x1

    move-wide/from16 v17, v0

    move v13, v6

    goto :goto_33

    .line 5094
    .end local v0    # "y":J
    .restart local p2    # "y":J
    :cond_30
    move-wide/from16 v17, v2

    move v13, v6

    .line 5099
    .end local v6    # "rsign":I
    .end local p2    # "y":J
    .local v13, "rsign":I
    .local v17, "y":J
    :goto_33
    const/16 v0, 0x20

    ushr-long v19, v15, v0

    .line 5100
    .local v19, "m0_hi":J
    const-wide v1, 0xffffffffL

    and-long v21, v15, v1

    .line 5101
    .local v21, "m0_lo":J
    ushr-long v23, v17, v0

    .line 5102
    .local v23, "m1_hi":J
    and-long v25, v17, v1

    .line 5103
    .local v25, "m1_lo":J
    mul-long v3, v21, v25

    .line 5104
    .end local v4    # "product":J
    .local v3, "product":J
    and-long v10, v3, v1

    .line 5105
    .local v10, "m0":J
    ushr-long v5, v3, v0

    .line 5106
    .local v5, "m1":J
    mul-long v8, v19, v25

    add-long/2addr v8, v5

    .line 5107
    .end local v3    # "product":J
    .local v8, "product":J
    and-long v3, v8, v1

    .line 5108
    .end local v5    # "m1":J
    .local v3, "m1":J
    ushr-long v5, v8, v0

    .line 5109
    .local v5, "m2":J
    mul-long v27, v21, v23

    add-long v27, v27, v3

    .line 5110
    .end local v8    # "product":J
    .local v27, "product":J
    and-long v8, v27, v1

    .line 5111
    .end local v3    # "m1":J
    .local v8, "m1":J
    ushr-long v3, v27, v0

    add-long/2addr v5, v3

    .line 5112
    ushr-long v3, v5, v0

    .line 5113
    .local v3, "m3":J
    and-long/2addr v5, v1

    .line 5114
    mul-long v29, v19, v23

    add-long v29, v29, v5

    .line 5115
    .end local v27    # "product":J
    .local v29, "product":J
    and-long v5, v29, v1

    .line 5116
    ushr-long v27, v29, v0

    add-long v27, v27, v3

    and-long v2, v27, v1

    .line 5117
    .end local v3    # "m3":J
    .local v2, "m3":J
    invoke-static {v2, v3, v5, v6}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v27

    .line 5118
    .local v27, "mHi":J
    invoke-static {v8, v9, v10, v11}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v31

    .line 5119
    .local v31, "mLo":J
    move-wide/from16 v0, v27

    move-wide/from16 v33, v2

    .end local v2    # "m3":J
    .local v33, "m3":J
    move-wide/from16 v2, v31

    move v4, v13

    move-wide/from16 v35, v5

    .end local v5    # "m2":J
    .local v35, "m2":J
    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Ljava/math/BigDecimal;->doRound128(JJIILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 5120
    .local v0, "res":Ljava/math/BigDecimal;
    if-eqz v0, :cond_83

    .line 5121
    return-object v0

    .line 5123
    :cond_83
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v13

    mul-long v3, v3, v17

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v2

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x0

    move-wide/from16 v37, v8

    .end local v8    # "m1":J
    .local v37, "m1":J
    move-object v8, v1

    move-object v9, v2

    move-wide/from16 v39, v10

    .end local v10    # "m0":J
    .local v39, "m0":J
    move-wide v10, v3

    move/from16 v12, p4

    move v6, v13

    .end local v13    # "rsign":I
    .restart local v6    # "rsign":I
    move v13, v5

    invoke-direct/range {v8 .. v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    move-object v0, v1

    .line 5124
    invoke-static {v0, v7}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist multiplyAndRound(JLjava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 7
    .param p0, "x"    # J
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "scale"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    .line 5128
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 5129
    invoke-static {p3}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 5131
    :cond_b
    invoke-virtual {p2, p0, p1}, Ljava/math/BigInteger;->multiply(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p3, p4}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist multiplyAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 5135
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist multiplyDivideAndRound(JJJIII)Ljava/math/BigDecimal;
    .registers 49
    .param p0, "dividend0"    # J
    .param p2, "dividend1"    # J
    .param p4, "divisor"    # J
    .param p6, "scale"    # I
    .param p7, "roundingMode"    # I
    .param p8, "preferredScale"    # I

    .line 4794
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->signum(J)I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->signum(J)I

    move-result v1

    mul-int/2addr v0, v1

    .line 4795
    .local v0, "qsign":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 4796
    .end local p0    # "dividend0":J
    .local v12, "dividend0":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 4797
    .end local p2    # "dividend1":J
    .local v14, "dividend1":J
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 4799
    .end local p4    # "divisor":J
    .local v16, "divisor":J
    const/16 v1, 0x20

    ushr-long v18, v12, v1

    .line 4800
    .local v18, "d0_hi":J
    const-wide v2, 0xffffffffL

    and-long v20, v12, v2

    .line 4801
    .local v20, "d0_lo":J
    ushr-long v22, v14, v1

    .line 4802
    .local v22, "d1_hi":J
    and-long v24, v14, v2

    .line 4803
    .local v24, "d1_lo":J
    mul-long v4, v20, v24

    .line 4804
    .local v4, "product":J
    and-long v10, v4, v2

    .line 4805
    .local v10, "d0":J
    ushr-long v6, v4, v1

    .line 4806
    .local v6, "d1":J
    mul-long v8, v18, v24

    add-long/2addr v8, v6

    .line 4807
    .end local v4    # "product":J
    .local v8, "product":J
    and-long v4, v8, v2

    .line 4808
    .end local v6    # "d1":J
    .local v4, "d1":J
    ushr-long v6, v8, v1

    .line 4809
    .local v6, "d2":J
    mul-long v26, v20, v22

    add-long v26, v26, v4

    .line 4810
    .end local v8    # "product":J
    .local v26, "product":J
    and-long v8, v26, v2

    .line 4811
    .end local v4    # "d1":J
    .local v8, "d1":J
    ushr-long v4, v26, v1

    add-long/2addr v6, v4

    .line 4812
    ushr-long v4, v6, v1

    .line 4813
    .local v4, "d3":J
    and-long/2addr v6, v2

    .line 4814
    mul-long v28, v18, v22

    add-long v28, v28, v6

    .line 4815
    .end local v26    # "product":J
    .local v28, "product":J
    and-long v6, v28, v2

    .line 4816
    ushr-long v26, v28, v1

    add-long v26, v26, v4

    and-long v4, v26, v2

    .line 4817
    invoke-static {v4, v5, v6, v7}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v26

    .line 4818
    .local v26, "dividendHi":J
    invoke-static {v8, v9, v10, v11}, Ljava/math/BigDecimal;->make64(JJ)J

    move-result-wide v30

    .line 4820
    .local v30, "dividendLo":J
    move-wide/from16 v2, v26

    move-wide/from16 v32, v4

    .end local v4    # "d3":J
    .local v32, "d3":J
    move-wide/from16 v4, v30

    move-wide/from16 v34, v6

    .end local v6    # "d2":J
    .local v34, "d2":J
    move-wide/from16 v6, v16

    move-wide/from16 v36, v8

    .end local v8    # "d1":J
    .local v36, "d1":J
    move v8, v0

    move/from16 v9, p6

    move-wide/from16 v38, v10

    .end local v10    # "d0":J
    .local v38, "d0":J
    move/from16 v10, p7

    move/from16 v11, p8

    invoke-static/range {v2 .. v11}, Ljava/math/BigDecimal;->divideAndRound128(JJJIIII)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist needIncrement(JIIJJ)Z
    .registers 13
    .param p0, "ldivisor"    # J
    .param p2, "roundingMode"    # I
    .param p3, "qsign"    # I
    .param p4, "q"    # J
    .param p6, "r"    # J

    .line 4226
    nop

    .line 4229
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmp-long v0, p6, v0

    if-lez v0, :cond_19

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p6, v0

    if-lez v0, :cond_11

    goto :goto_19

    .line 4232
    :cond_11
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p6

    invoke-static {v0, v1, p0, p1}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v0

    .local v0, "cmpFracHalf":I
    goto :goto_1a

    .line 4230
    .end local v0    # "cmpFracHalf":I
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 4235
    .restart local v0    # "cmpFracHalf":I
    :goto_1a
    const-wide/16 v1, 0x1

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    invoke-static {p2, p3, v0, v1}, Ljava/math/BigDecimal;->commonNeedIncrement(IIIZ)Z

    move-result v1

    return v1
.end method

.method private static blacklist needIncrement(JIILjava/math/MutableBigInteger;J)Z
    .registers 9
    .param p0, "ldivisor"    # J
    .param p2, "roundingMode"    # I
    .param p3, "qsign"    # I
    .param p4, "mq"    # Ljava/math/MutableBigInteger;
    .param p5, "r"    # J

    .line 4306
    nop

    .line 4309
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmp-long v0, p5, v0

    if-lez v0, :cond_19

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p5, v0

    if-lez v0, :cond_11

    goto :goto_19

    .line 4312
    :cond_11
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-static {v0, v1, p0, p1}, Ljava/math/BigDecimal;->longCompareMagnitude(JJ)I

    move-result v0

    .local v0, "cmpFracHalf":I
    goto :goto_1a

    .line 4310
    .end local v0    # "cmpFracHalf":I
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 4315
    .restart local v0    # "cmpFracHalf":I
    :goto_1a
    invoke-virtual {p4}, Ljava/math/MutableBigInteger;->isOdd()Z

    move-result v1

    invoke-static {p2, p3, v0, v1}, Ljava/math/BigDecimal;->commonNeedIncrement(IIIZ)Z

    move-result v1

    return v1
.end method

.method private static blacklist needIncrement(Ljava/math/MutableBigInteger;IILjava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Z
    .registers 7
    .param p0, "mdivisor"    # Ljava/math/MutableBigInteger;
    .param p1, "roundingMode"    # I
    .param p2, "qsign"    # I
    .param p3, "mq"    # Ljava/math/MutableBigInteger;
    .param p4, "mr"    # Ljava/math/MutableBigInteger;

    .line 4384
    nop

    .line 4385
    invoke-virtual {p4, p0}, Ljava/math/MutableBigInteger;->compareHalf(Ljava/math/MutableBigInteger;)I

    move-result v0

    .line 4386
    .local v0, "cmpFracHalf":I
    invoke-virtual {p3}, Ljava/math/MutableBigInteger;->isOdd()Z

    move-result v1

    invoke-static {p1, p2, v0, v1}, Ljava/math/BigDecimal;->commonNeedIncrement(IIIZ)Z

    move-result v1

    return v1
.end method

.method private static blacklist parseExp([CII)J
    .registers 15
    .param p0, "in"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .line 621
    const-wide/16 v0, 0x0

    .line 622
    .local v0, "exp":J
    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 623
    aget-char v3, p0, p1

    .line 624
    .local v3, "c":C
    add-int/lit8 p2, p2, -0x1

    .line 625
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    .line 627
    .local v4, "negexp":Z
    :goto_f
    if-nez v4, :cond_15

    const/16 v5, 0x2b

    if-ne v3, v5, :cond_1b

    .line 628
    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 629
    aget-char v3, p0, p1

    .line 630
    add-int/lit8 p2, p2, -0x1

    .line 632
    :cond_1b
    if-lez p2, :cond_63

    .line 635
    :goto_1d
    const/16 v5, 0x30

    const/16 v6, 0xa

    if-le p2, v6, :cond_32

    if-eq v3, v5, :cond_2b

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-nez v7, :cond_32

    .line 636
    :cond_2b
    add-int/lit8 p1, p1, 0x1

    .line 637
    aget-char v3, p0, p1

    .line 638
    add-int/lit8 p2, p2, -0x1

    goto :goto_1d

    .line 640
    :cond_32
    if-gt p2, v6, :cond_5d

    .line 645
    :goto_34
    if-lt v3, v5, :cond_3d

    const/16 v7, 0x39

    if-gt v3, v7, :cond_3d

    .line 646
    add-int/lit8 v7, v3, -0x30

    .local v7, "v":I
    goto :goto_43

    .line 648
    .end local v7    # "v":I
    :cond_3d
    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 649
    .restart local v7    # "v":I
    if-ltz v7, :cond_57

    .line 652
    :goto_43
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v0

    int-to-long v10, v7

    add-long v0, v8, v10

    .line 653
    if-ne p2, v2, :cond_50

    .line 654
    nop

    .line 658
    .end local v7    # "v":I
    if-eqz v4, :cond_4f

    .line 659
    neg-long v0, v0

    .line 660
    :cond_4f
    return-wide v0

    .line 655
    .restart local v7    # "v":I
    :cond_50
    add-int/lit8 p1, p1, 0x1

    .line 656
    aget-char v3, p0, p1

    .line 643
    .end local v7    # "v":I
    add-int/lit8 p2, p2, -0x1

    goto :goto_34

    .line 650
    .restart local v7    # "v":I
    :cond_57
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 641
    .end local v7    # "v":I
    :cond_5d
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 633
    :cond_63
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2
.end method

.method private blacklist preAlign(Ljava/math/BigDecimal;Ljava/math/BigDecimal;JLjava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 21
    .param p1, "lhs"    # Ljava/math/BigDecimal;
    .param p2, "augend"    # Ljava/math/BigDecimal;
    .param p3, "padding"    # J
    .param p5, "mc"    # Ljava/math/MathContext;

    .line 1387
    nop

    .line 1391
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_c

    .line 1392
    move-object/from16 v0, p1

    .line 1393
    .local v0, "big":Ljava/math/BigDecimal;
    move-object/from16 v1, p2

    .local v1, "small":Ljava/math/BigDecimal;
    goto :goto_10

    .line 1395
    .end local v0    # "big":Ljava/math/BigDecimal;
    .end local v1    # "small":Ljava/math/BigDecimal;
    :cond_c
    move-object/from16 v0, p2

    .line 1396
    .restart local v0    # "big":Ljava/math/BigDecimal;
    move-object/from16 v1, p1

    .line 1405
    .restart local v1    # "small":Ljava/math/BigDecimal;
    :goto_10
    iget v2, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    move-object/from16 v4, p5

    iget v5, v4, Ljava/math/MathContext;->precision:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1416
    .local v2, "estResultUlpScale":J
    iget v5, v1, Ljava/math/BigDecimal;->scale:I

    int-to-long v5, v5

    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 1417
    .local v5, "smallHighDigitPos":J
    iget v7, v0, Ljava/math/BigDecimal;->scale:I

    const/4 v8, 0x2

    add-int/2addr v7, v8

    int-to-long v9, v7

    cmp-long v7, v5, v9

    if-lez v7, :cond_54

    const-wide/16 v9, 0x2

    add-long/2addr v9, v2

    cmp-long v7, v5, v9

    if-lez v7, :cond_54

    .line 1419
    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    int-to-long v9, v7

    iget v7, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v11, v7

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x3

    add-long/2addr v11, v13

    move-object v7, p0

    invoke-direct {p0, v11, v12}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v11

    invoke-static {v9, v10, v11}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_55

    .line 1417
    :cond_54
    move-object v7, p0

    .line 1424
    :goto_55
    new-array v8, v8, [Ljava/math/BigDecimal;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    .line 1425
    .local v8, "result":[Ljava/math/BigDecimal;
    return-object v8
.end method

.method private static blacklist precision(JJ)I
    .registers 18
    .param p0, "hi"    # J
    .param p2, "lo"    # J

    .line 5183
    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_25

    .line 5184
    cmp-long v0, v8, v0

    if-ltz v0, :cond_13

    .line 5185
    invoke-static/range {p2 .. p3}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v0

    return v0

    .line 5187
    :cond_13
    sget-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    aget-object v0, v0, v3

    aget-wide v0, v0, v4

    invoke-static {v8, v9, v0, v1}, Ljava/math/BigDecimal;->unsignedLongCompareEq(JJ)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x14

    goto :goto_24

    :cond_22
    const/16 v0, 0x13

    :goto_24
    return v0

    .line 5190
    :cond_25
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int v0, v0, 0x80

    add-int/2addr v0, v4

    mul-int/lit16 v0, v0, 0x4d1

    ushr-int/lit8 v10, v0, 0xc

    .line 5191
    .local v10, "r":I
    add-int/lit8 v11, v10, -0x13

    .line 5192
    .local v11, "idx":I
    sget-object v0, Ljava/math/BigDecimal;->LONGLONG_TEN_POWERS_TABLE:[[J

    array-length v1, v0

    if-ge v11, v1, :cond_4e

    aget-object v1, v0, v11

    aget-wide v5, v1, v3

    aget-object v0, v0, v11

    aget-wide v12, v0, v4

    move-wide v0, p0

    move-wide/from16 v2, p2

    move-wide v4, v5

    move-wide v6, v12

    invoke-static/range {v0 .. v7}, Ljava/math/BigDecimal;->longLongCompareMagnitude(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_4e

    .line 5193
    :cond_4b
    add-int/lit8 v0, v10, 0x1

    goto :goto_4f

    :cond_4e
    :goto_4e
    move v0, v10

    .line 5192
    :goto_4f
    return v0
.end method

.method private static blacklist print(Ljava/lang/String;Ljava/math/BigDecimal;)V
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .line 3914
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-wide v2, p1, Ljava/math/BigDecimal;->intCompact:J

    .line 3916
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    .line 3918
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p1, Ljava/math/BigDecimal;->precision:I

    .line 3919
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 3914
    const-string v2, "%s:\tintCompact %d\tintVal %d\tscale %d\tprecision %d%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 3920
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3779
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3781
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_f

    .line 3786
    invoke-static {v0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/math/BigDecimal$UnsafeHolder;->setIntCompactVolatile(Ljava/math/BigDecimal;J)V

    .line 3787
    return-void

    .line 3782
    :cond_f
    const-string v0, "BigDecimal: null intVal in stream"

    .line 3783
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist roundedTenPower(IIII)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "qsign"    # I
    .param p1, "raise"    # I
    .param p2, "scale"    # I
    .param p3, "preferredScale"    # I

    .line 4937
    if-le p2, p3, :cond_15

    .line 4938
    sub-int v0, p2, p3

    .line 4939
    .local v0, "diff":I
    if-ge v0, p1, :cond_d

    .line 4940
    sub-int v1, p1, v0

    invoke-static {v1, p0, p3}, Ljava/math/BigDecimal;->scaledTenPow(III)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4942
    :cond_d
    int-to-long v1, p0

    sub-int v3, p2, p1

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 4945
    .end local v0    # "diff":I
    :cond_15
    invoke-static {p1, p0, p2}, Ljava/math/BigDecimal;->scaledTenPow(III)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist saturateLong(J)I
    .registers 5
    .param p0, "s"    # J

    .line 3906
    long-to-int v0, p0

    .line 3907
    .local v0, "i":I
    int-to-long v1, v0

    cmp-long v1, p0, v1

    if-nez v1, :cond_8

    move v1, v0

    goto :goto_14

    :cond_8
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_11

    const/high16 v1, -0x80000000

    goto :goto_14

    :cond_11
    const v1, 0x7fffffff

    :goto_14
    return v1
.end method

.method static blacklist scaledTenPow(III)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "n"    # I
    .param p1, "sign"    # I
    .param p2, "scale"    # I

    .line 4950
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v1, v0

    if-ge p0, v1, :cond_e

    .line 4951
    int-to-long v1, p1

    aget-wide v3, v0, p0

    mul-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4953
    :cond_e
    invoke-static {p0}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 4954
    .local v0, "unscaledVal":Ljava/math/BigInteger;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_19

    .line 4955
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 4957
    :cond_19
    new-instance v7, Ljava/math/BigDecimal;

    const-wide/high16 v3, -0x8000000000000000L

    add-int/lit8 v6, p0, 0x1

    move-object v1, v7

    move-object v2, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v7
.end method

.method private static blacklist stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "intCompact"    # J
    .param p3, "scale"    # I
    .param p4, "preferredScale"    # I

    .line 4436
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 4437
    int-to-long v0, p4

    invoke-static {p1, p2, p3, v0, v1}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 4439
    :cond_c
    if-nez p0, :cond_11

    sget-object v0, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_12

    :cond_11
    move-object v0, p0

    :goto_12
    int-to-long v1, p4

    invoke-static {v0, p3, v1, v2}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist unsignedLongCompare(JJ)Z
    .registers 8
    .param p0, "one"    # J
    .param p2, "two"    # J

    .line 5002
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    cmp-long v0, v2, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static blacklist unsignedLongCompareEq(JJ)Z
    .registers 8
    .param p0, "one"    # J
    .param p2, "two"    # J

    .line 5006
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static whitelist test-api valueOf(D)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "val"    # D

    .line 1277
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(J)Ljava/math/BigDecimal;
    .registers 15
    .param p0, "val"    # J

    .line 1221
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_12

    sget-object v0, Ljava/math/BigDecimal;->zeroThroughTen:[Ljava/math/BigDecimal;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p0, v1

    if-gez v1, :cond_12

    .line 1222
    long-to-int v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 1223
    :cond_12
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_23

    .line 1224
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0

    .line 1225
    :cond_23
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v8, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    move-wide v9, p0

    invoke-direct/range {v7 .. v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0
.end method

.method public static whitelist test-api valueOf(JI)Ljava/math/BigDecimal;
    .registers 10
    .param p0, "unscaledVal"    # J
    .param p2, "scale"    # I

    .line 1200
    if-nez p2, :cond_7

    .line 1201
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1202
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    .line 1203
    invoke-static {p2}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1205
    :cond_12
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p0, v1

    if-nez v1, :cond_1d

    .line 1206
    sget-object v1, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    move-object v2, v1

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v3, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 1205
    return-object v0
.end method

.method static blacklist valueOf(JII)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "unscaledVal"    # J
    .param p2, "scale"    # I
    .param p3, "prec"    # I

    .line 1229
    const-wide/16 v0, 0x0

    if-nez p2, :cond_14

    cmp-long v2, p0, v0

    if-ltz v2, :cond_14

    sget-object v2, Ljava/math/BigDecimal;->zeroThroughTen:[Ljava/math/BigDecimal;

    array-length v3, v2

    int-to-long v3, v3

    cmp-long v3, p0, v3

    if-gez v3, :cond_14

    .line 1230
    long-to-int v0, p0

    aget-object v0, v2, v0

    return-object v0

    .line 1231
    :cond_14
    cmp-long v0, p0, v0

    if-nez v0, :cond_1d

    .line 1232
    invoke-static {p2}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1234
    :cond_1d
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p0, v1

    if-nez v1, :cond_28

    sget-object v1, Ljava/math/BigDecimal;->INFLATED_BIGINT:Ljava/math/BigInteger;

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    move-object v2, v1

    move-object v1, v0

    move-wide v3, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0
.end method

.method static blacklist valueOf(Ljava/math/BigInteger;II)Ljava/math/BigDecimal;
    .registers 12
    .param p0, "intVal"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I
    .param p2, "prec"    # I

    .line 1239
    invoke-static {p0}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 1240
    .local v6, "val":J
    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_f

    .line 1241
    invoke-static {p1}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_f
    if-nez p1, :cond_21

    cmp-long v0, v6, v0

    if-ltz v0, :cond_21

    sget-object v0, Ljava/math/BigDecimal;->zeroThroughTen:[Ljava/math/BigDecimal;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, v6, v1

    if-gez v1, :cond_21

    .line 1243
    long-to-int v1, v6

    aget-object v0, v0, v1

    return-object v0

    .line 1245
    :cond_21
    new-instance v8, Ljava/math/BigDecimal;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v8
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3797
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_d

    .line 3798
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/math/BigDecimal$UnsafeHolder;->setIntValVolatile(Ljava/math/BigDecimal;Ljava/math/BigInteger;)V

    .line 3800
    :cond_d
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3801
    return-void
.end method

.method static blacklist zeroValueOf(I)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "scale"    # I

    .line 1249
    if-ltz p0, :cond_a

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    .line 1250
    aget-object v0, v0, p0

    return-object v0

    .line 1252
    :cond_a
    new-instance v0, Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move v5, p0

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api abs()Ljava/math/BigDecimal;
    .registers 2

    .line 2118
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p0

    :goto_c
    return-object v0
.end method

.method public whitelist test-api abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2133
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "augend"    # Ljava/math/BigDecimal;

    .line 1290
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_24

    .line 1291
    iget-wide v4, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_19

    .line 1292
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget v6, p1, Ljava/math/BigDecimal;->scale:I

    move-wide v3, v4

    move v5, v6

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->add(JIJI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1294
    :cond_19
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1297
    :cond_24
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_35

    .line 1298
    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1300
    :cond_35
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigInteger;ILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 14
    .param p1, "augend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1320
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1321
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1322
    :cond_9
    move-object v0, p0

    .line 1327
    .local v0, "lhs":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_14

    move v1, v7

    goto :goto_15

    :cond_14
    move v1, v8

    .line 1328
    .local v1, "lhsIsZero":Z
    :goto_15
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    if-nez v2, :cond_1d

    move v2, v7

    goto :goto_1e

    :cond_1d
    move v2, v8

    .line 1330
    .local v2, "augendIsZero":Z
    :goto_1e
    if-nez v1, :cond_54

    if-eqz v2, :cond_23

    goto :goto_54

    .line 1354
    .end local v1    # "lhsIsZero":Z
    .end local v2    # "augendIsZero":Z
    :cond_23
    iget v1, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v3, v3

    sub-long v9, v1, v3

    .line 1355
    .local v9, "padding":J
    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-eqz v1, :cond_41

    .line 1356
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-wide v4, v9

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;->preAlign(Ljava/math/BigDecimal;Ljava/math/BigDecimal;JLjava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v1

    .line 1357
    .local v1, "arg":[Ljava/math/BigDecimal;
    invoke-static {v1}, Ljava/math/BigDecimal;->matchScale([Ljava/math/BigDecimal;)V

    .line 1358
    aget-object v0, v1, v8

    .line 1359
    aget-object p1, v1, v7

    .line 1361
    .end local v1    # "arg":[Ljava/math/BigDecimal;
    :cond_41
    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p1}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, v0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, p2}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1331
    .end local v9    # "padding":J
    .local v1, "lhsIsZero":Z
    .restart local v2    # "augendIsZero":Z
    :cond_54
    :goto_54
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1334
    .local v3, "preferredScale":I
    if-eqz v1, :cond_69

    if-eqz v2, :cond_69

    .line 1335
    invoke-static {v3}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 1336
    :cond_69
    if-eqz v1, :cond_70

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    goto :goto_74

    :cond_70
    invoke-static {v0, p2}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 1338
    .local v4, "result":Ljava/math/BigDecimal;
    :goto_74
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    if-ne v5, v3, :cond_7b

    .line 1339
    return-object v4

    .line 1340
    :cond_7b
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    if-le v5, v3, :cond_8c

    .line 1341
    iget-object v5, v4, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v6, v4, Ljava/math/BigDecimal;->intCompact:J

    iget v8, v4, Ljava/math/BigDecimal;->scale:I

    invoke-static {v5, v6, v7, v8, v3}, Ljava/math/BigDecimal;->stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 1343
    :cond_8c
    iget v5, p2, Ljava/math/MathContext;->precision:I

    invoke-virtual {v4}, Ljava/math/BigDecimal;->precision()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1344
    .local v5, "precisionDiff":I
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    sub-int v6, v3, v6

    .line 1346
    .local v6, "scaleDiff":I
    if-lt v5, v6, :cond_a0

    .line 1347
    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v7

    return-object v7

    .line 1349
    :cond_a0
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v4, v7}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v7

    return-object v7
.end method

.method public whitelist test-api byteValueExact()B
    .registers 5

    .line 3218
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    .line 3219
    .local v0, "num":J
    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_e

    .line 3221
    long-to-int v2, v0

    int-to-byte v2, v2

    return v2

    .line 3220
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 220
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/math/BigDecimal;)I
    .registers 12
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 2628
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    iget v1, p1, Ljava/math/BigDecimal;->scale:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_24

    .line 2629
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 2630
    .local v0, "xs":J
    iget-wide v5, p1, Ljava/math/BigDecimal;->intCompact:J

    .line 2631
    .local v5, "ys":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v0, v7

    if-eqz v9, :cond_24

    cmp-long v7, v5, v7

    if-eqz v7, :cond_24

    .line 2632
    cmp-long v7, v0, v5

    if-eqz v7, :cond_22

    cmp-long v4, v0, v5

    if-lez v4, :cond_20

    goto :goto_23

    :cond_20
    move v2, v3

    goto :goto_23

    :cond_22
    move v2, v4

    :goto_23
    return v2

    .line 2634
    .end local v0    # "xs":J
    .end local v5    # "ys":J
    :cond_24
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    .line 2635
    .local v0, "xsign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    .line 2636
    .local v1, "ysign":I
    if-eq v0, v1, :cond_33

    .line 2637
    if-le v0, v1, :cond_31

    goto :goto_32

    :cond_31
    move v2, v3

    :goto_32
    return v2

    .line 2638
    :cond_33
    if-nez v0, :cond_36

    .line 2639
    return v4

    .line 2640
    :cond_36
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v2

    .line 2641
    .local v2, "cmp":I
    if-lez v0, :cond_3e

    move v3, v2

    goto :goto_3f

    :cond_3e
    neg-int v3, v2

    :goto_3f
    return v3
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1665
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_1c

    .line 1666
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_14

    .line 1667
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division undefined"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_14
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1672
    :cond_1c
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    .line 1674
    .local v0, "preferredScale":I
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_32

    .line 1675
    invoke-static {v0}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1685
    :cond_32
    new-instance v1, Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    int-to-long v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 1686
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x7fffffff

    .line 1685
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    sget-object v3, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1691
    .local v1, "mc":Ljava/math/MathContext;
    :try_start_57
    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2
    :try_end_5b
    .catch Ljava/lang/ArithmeticException; {:try_start_57 .. :try_end_5b} :catch_69

    .line 1695
    .local v2, "quotient":Ljava/math/BigDecimal;
    nop

    .line 1697
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    .line 1703
    .local v3, "quotientScale":I
    if-le v0, v3, :cond_68

    .line 1704
    const/4 v4, 0x7

    invoke-virtual {v2, v0, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4

    .line 1706
    :cond_68
    return-object v2

    .line 1692
    .end local v2    # "quotient":Ljava/math/BigDecimal;
    .end local v3    # "quotientScale":I
    :catch_69
    move-exception v2

    .line 1693
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Non-terminating decimal expansion; no exact representable decimal result."

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # I

    .line 1625
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .registers 13
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    .line 1560
    if-ltz p3, :cond_51

    const/4 v0, 0x7

    if-gt p3, v0, :cond_51

    .line 1562
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2d

    .line 1563
    iget-wide v5, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_20

    .line 1564
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget v0, p1, Ljava/math/BigDecimal;->scale:I

    move-wide v4, v5

    move v6, v0

    move v7, p2

    move v8, p3

    invoke-static/range {v1 .. v8}, Ljava/math/BigDecimal;->divide(JIJIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1566
    :cond_20
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v4, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Ljava/math/BigDecimal;->divide(JILjava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1569
    :cond_2d
    iget-wide v5, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_42

    .line 1570
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget v0, p1, Ljava/math/BigDecimal;->scale:I

    move-wide v3, v5

    move v5, v0

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;IJIII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1572
    :cond_42
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;ILjava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1561
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rounding mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1594
    iget v0, p3, Ljava/math/RoundingMode;->oldMode:I

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 20
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1724
    move-object/from16 v0, p1

    move-object/from16 v10, p2

    iget v11, v10, Ljava/math/MathContext;->precision:I

    .line 1725
    .local v11, "mcp":I
    if-nez v11, :cond_d

    .line 1726
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1728
    :cond_d
    move-object/from16 v12, p0

    .line 1729
    .local v12, "dividend":Ljava/math/BigDecimal;
    iget v1, v12, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v3, v3

    sub-long v13, v1, v3

    .line 1742
    .local v13, "preferredScale":J
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_33

    .line 1743
    invoke-virtual {v12}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_2b

    .line 1744
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Division undefined"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1745
    :cond_2b
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Division by zero"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1747
    :cond_33
    invoke-virtual {v12}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_42

    .line 1748
    invoke-static {v13, v14}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v1

    invoke-static {v1}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1749
    :cond_42
    invoke-virtual {v12}, Ljava/math/BigDecimal;->precision()I

    move-result v15

    .line 1750
    .local v15, "xscale":I
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v16

    .line 1751
    .local v16, "yscale":I
    iget-wide v1, v12, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-eqz v5, :cond_71

    .line 1752
    iget-wide v5, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_64

    .line 1753
    move v3, v15

    move-wide v4, v5

    move/from16 v6, v16

    move-wide v7, v13

    move-object/from16 v9, p2

    invoke-static/range {v1 .. v9}, Ljava/math/BigDecimal;->divide(JIJIJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1755
    :cond_64
    iget-object v4, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move v3, v15

    move/from16 v5, v16

    move-wide v6, v13

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v8}, Ljava/math/BigDecimal;->divide(JILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1758
    :cond_71
    iget-wide v5, v0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_85

    .line 1759
    iget-object v1, v12, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move v2, v15

    move-wide v3, v5

    move/from16 v5, v16

    move-wide v6, v13

    move-object/from16 v8, p2

    invoke-static/range {v1 .. v8}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;IJIJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1761
    :cond_85
    iget-object v1, v12, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v3, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    move v2, v15

    move/from16 v4, v16

    move-wide v5, v13

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigInteger;ILjava/math/BigInteger;IJLjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1644
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    iget v1, p2, Ljava/math/RoundingMode;->oldMode:I

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1949
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 1951
    .local v0, "result":[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1952
    aget-object v1, v0, v2

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1953
    return-object v0
.end method

.method public whitelist test-api divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 7
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1983
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1984
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1986
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 1987
    .local v0, "result":[Ljava/math/BigDecimal;
    move-object v1, p0

    .line 1989
    .local v1, "lhs":Ljava/math/BigDecimal;
    invoke-virtual {v1, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1990
    const/4 v2, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1991
    return-object v0
.end method

.method public whitelist test-api divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 11
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1779
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    .line 1780
    .local v0, "preferredScale":I
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_16

    .line 1782
    invoke-static {v0}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1785
    :cond_16
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    const/4 v2, 0x7

    if-nez v1, :cond_28

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-eqz v1, :cond_28

    .line 1786
    invoke-virtual {p0, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1791
    :cond_28
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    int-to-long v3, v1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 1792
    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    int-to-double v7, v1

    mul-double/2addr v7, v5

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-long v5, v5

    add-long/2addr v3, v5

    .line 1793
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    int-to-long v7, v1

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    .line 1791
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 1795
    .local v1, "maxDigits":I
    new-instance v3, Ljava/math/MathContext;

    sget-object v4, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-direct {v3, v1, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-virtual {p0, p1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1797
    .local v3, "quotient":Ljava/math/BigDecimal;
    iget v4, v3, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_79

    .line 1798
    const/4 v4, 0x0

    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1799
    iget-object v4, v3, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v5, v3, Ljava/math/BigDecimal;->intCompact:J

    iget v7, v3, Ljava/math/BigDecimal;->scale:I

    invoke-static {v4, v5, v6, v7, v0}, Ljava/math/BigDecimal;->stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1802
    :cond_79
    iget v4, v3, Ljava/math/BigDecimal;->scale:I

    if-ge v4, v0, :cond_81

    .line 1804
    invoke-virtual {v3, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    .line 1807
    :cond_81
    return-object v3
.end method

.method public whitelist test-api divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1831
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-eqz v0, :cond_7c

    .line 1832
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_b

    goto :goto_7c

    .line 1836
    :cond_b
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->saturateLong(J)I

    move-result v0

    .line 1845
    .local v0, "preferredScale":I
    new-instance v1, Ljava/math/MathContext;

    iget v2, p2, Ljava/math/MathContext;->precision:I

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-direct {v1, v2, v3}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1847
    .local v1, "result":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-gez v2, :cond_40

    .line 1853
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1856
    .local v2, "product":Ljava/math/BigDecimal;
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;->compareMagnitude(Ljava/math/BigDecimal;)I

    move-result v3

    if-gez v3, :cond_38

    .end local v2    # "product":Ljava/math/BigDecimal;
    goto :goto_4e

    .line 1857
    .restart local v2    # "product":Ljava/math/BigDecimal;
    :cond_38
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Division impossible"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1859
    .end local v2    # "product":Ljava/math/BigDecimal;
    :cond_40
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-lez v2, :cond_4e

    .line 1865
    const/4 v2, 0x0

    sget-object v3, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_4f

    .line 1859
    :cond_4e
    :goto_4e
    nop

    .line 1870
    :goto_4f
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-le v0, v2, :cond_71

    iget v2, p2, Ljava/math/MathContext;->precision:I

    .line 1871
    invoke-virtual {v1}, Ljava/math/BigDecimal;->precision()I

    move-result v3

    sub-int/2addr v2, v3

    move v3, v2

    .local v3, "precisionDiff":I
    if-lez v2, :cond_71

    .line 1872
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    iget v4, v1, Ljava/math/BigDecimal;->scale:I

    sub-int v4, v0, v4

    .line 1873
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1872
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 1875
    .end local v3    # "precisionDiff":I
    :cond_71
    iget-object v2, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v3, v1, Ljava/math/BigDecimal;->intCompact:J

    iget v5, v1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v4, v5, v0}, Ljava/math/BigDecimal;->stripZerosToMatchScale(Ljava/math/BigInteger;JII)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2

    .line 1833
    .end local v0    # "preferredScale":I
    .end local v1    # "result":Ljava/math/BigDecimal;
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 5

    .line 3284
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    .line 3285
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v2, :cond_e

    .line 3286
    long-to-double v0, v0

    return-wide v0

    .line 3294
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/high16 v2, 0x10000000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_38

    .line 3298
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v0, :cond_28

    sget-object v1, Ljava/math/BigDecimal;->double10pow:[D

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 3299
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-double v2, v2

    aget-wide v0, v1, v0

    div-double/2addr v2, v0

    return-wide v2

    .line 3300
    :cond_28
    if-gez v0, :cond_38

    sget-object v1, Ljava/math/BigDecimal;->double10pow:[D

    array-length v2, v1

    neg-int v2, v2

    if-le v0, v2, :cond_38

    .line 3301
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-double v2, v2

    neg-int v0, v0

    aget-wide v0, v1, v0

    mul-double/2addr v2, v0

    return-wide v2

    .line 3307
    :cond_38
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "x"    # Ljava/lang/Object;

    .line 2712
    instance-of v0, p1, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2713
    return v1

    .line 2714
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    .line 2715
    .local v0, "xDec":Ljava/math/BigDecimal;
    const/4 v2, 0x1

    if-ne p1, p0, :cond_d

    .line 2716
    return v2

    .line 2717
    :cond_d
    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    iget v4, v0, Ljava/math/BigDecimal;->scale:I

    if-eq v3, v4, :cond_14

    .line 2718
    return v1

    .line 2719
    :cond_14
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 2720
    .local v3, "s":J
    iget-wide v5, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 2721
    .local v5, "xs":J
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v3, v7

    if-eqz v9, :cond_2e

    .line 2722
    cmp-long v7, v5, v7

    if-nez v7, :cond_28

    .line 2723
    iget-object v7, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v5

    .line 2724
    :cond_28
    cmp-long v7, v5, v3

    if-nez v7, :cond_2d

    move v1, v2

    :cond_2d
    return v1

    .line 2725
    :cond_2e
    cmp-long v7, v5, v7

    if-eqz v7, :cond_3e

    .line 2726
    iget-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/math/BigDecimal;->compactValFor(Ljava/math/BigInteger;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-nez v7, :cond_3d

    move v1, v2

    :cond_3d
    return v1

    .line 2728
    :cond_3e
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api floatValue()F
    .registers 5

    .line 3241
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_39

    .line 3242
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v2, :cond_e

    .line 3243
    long-to-float v0, v0

    return v0

    .line 3251
    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_39

    .line 3255
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v0, :cond_29

    sget-object v1, Ljava/math/BigDecimal;->float10pow:[F

    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 3256
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-float v2, v2

    aget v0, v1, v0

    div-float/2addr v2, v0

    return v2

    .line 3257
    :cond_29
    if-gez v0, :cond_39

    sget-object v1, Ljava/math/BigDecimal;->float10pow:[F

    array-length v2, v1

    neg-int v2, v2

    if-le v0, v2, :cond_39

    .line 3258
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    long-to-float v2, v2

    neg-int v0, v0

    aget v0, v1, v0

    mul-float/2addr v2, v0

    return v2

    .line 3264
    :cond_39
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 2773
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2e

    .line 2774
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    neg-long v4, v0

    goto :goto_11

    :cond_10
    move-wide v4, v0

    .line 2775
    .local v4, "val2":J
    :goto_11
    const/16 v6, 0x20

    ushr-long v6, v4, v6

    long-to-int v6, v6

    mul-int/lit8 v6, v6, 0x1f

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    long-to-int v6, v6

    .line 2777
    .local v6, "temp":I
    cmp-long v0, v0, v2

    if-gez v0, :cond_27

    neg-int v0, v6

    goto :goto_28

    :cond_27
    move v0, v6

    :goto_28
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    return v0

    .line 2779
    .end local v4    # "val2":J
    .end local v6    # "temp":I
    :cond_2e
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 5

    .line 3159
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v2, :cond_e

    .line 3160
    long-to-int v0, v0

    goto :goto_13

    .line 3161
    :cond_e
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 3159
    :goto_13
    return v0
.end method

.method public whitelist test-api intValueExact()I
    .registers 5

    .line 3178
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    .line 3179
    .local v0, "num":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    .line 3181
    long-to-int v2, v0

    return v2

    .line 3180
    :cond_c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api longValue()J
    .registers 5

    .line 3063
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v2, :cond_d

    .line 3064
    return-wide v0

    .line 3067
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Ljava/math/BigDecimal;->fractionOnly()Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-gt v0, v1, :cond_20

    goto :goto_29

    .line 3077
    :cond_20
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 3075
    :cond_29
    :goto_29
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist test-api longValueExact()J
    .registers 5

    .line 3104
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v2, :cond_d

    .line 3105
    return-wide v0

    .line 3108
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_16

    .line 3109
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3113
    :cond_16
    invoke-direct {p0}, Ljava/math/BigDecimal;->fractionOnly()Z

    move-result v0

    if-nez v0, :cond_47

    .line 3117
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v0, v1

    const/16 v1, 0x13

    if-gt v0, v1, :cond_3f

    .line 3121
    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3122
    .local v0, "num":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    if-lt v2, v1, :cond_36

    .line 3123
    invoke-static {v0}, Ljava/math/BigDecimal$LongOverflow;->check(Ljava/math/BigDecimal;)V

    .line 3124
    :cond_36
    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 3118
    .end local v0    # "num":Ljava/math/BigDecimal;
    :cond_3f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3114
    :cond_47
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 2757
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "val"    # Ljava/math/BigDecimal;

    .line 2743
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api movePointLeft(I)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I

    .line 2537
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 2538
    .local v0, "newScale":I
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v4, p0, Ljava/math/BigDecimal;->intCompact:J

    const/4 v7, 0x0

    move-object v2, v1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 2539
    .local v1, "num":Ljava/math/BigDecimal;
    iget v2, v1, Ljava/math/BigDecimal;->scale:I

    if-gez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    return-object v2
.end method

.method public whitelist test-api movePointRight(I)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I

    .line 2559
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 2560
    .local v0, "newScale":I
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v4, p0, Ljava/math/BigDecimal;->intCompact:J

    const/4 v7, 0x0

    move-object v2, v1

    move v6, v0

    invoke-direct/range {v2 .. v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 2561
    .local v1, "num":Ljava/math/BigDecimal;
    iget v2, v1, Ljava/math/BigDecimal;->scale:I

    if-gez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, v1

    :goto_21
    return-object v2
.end method

.method public whitelist test-api multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;

    .line 1485
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 1486
    .local v0, "productScale":I
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-eqz v5, :cond_25

    .line 1487
    iget-wide v5, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1e

    .line 1488
    invoke-static {v1, v2, v5, v6, v0}, Ljava/math/BigDecimal;->multiply(JJI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1490
    :cond_1e
    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigDecimal;->multiply(JLjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1493
    :cond_25
    iget-wide v1, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_32

    .line 1494
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigDecimal;->multiply(JLjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1496
    :cond_32
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1513
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1514
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1515
    :cond_9
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 1516
    .local v0, "productScale":I
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    .line 1517
    iget-wide v6, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2a

    .line 1518
    move-wide v4, v6

    move v6, v0

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Ljava/math/BigDecimal;->multiplyAndRound(JJILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1520
    :cond_2a
    iget-object v1, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v2, v3, v1, v0, p2}, Ljava/math/BigDecimal;->multiplyAndRound(JLjava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1523
    :cond_31
    iget-wide v1, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_3e

    .line 1524
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v3, v0, p2}, Ljava/math/BigDecimal;->multiplyAndRound(JLjava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 1526
    :cond_3e
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v2, v0, p2}, Ljava/math/BigDecimal;->multiplyAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api negate()Ljava/math/BigDecimal;
    .registers 10

    .line 2143
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1b

    .line 2144
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    const-wide/high16 v5, -0x8000000000000000L

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v8, p0, Ljava/math/BigDecimal;->precision:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v0

    .line 2146
    :cond_1b
    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget v3, p0, Ljava/math/BigDecimal;->precision:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2161
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api plus()Ljava/math/BigDecimal;
    .registers 1

    .line 2177
    return-object p0
.end method

.method public whitelist test-api plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2196
    iget v0, p1, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_5

    .line 2197
    return-object p0

    .line 2198
    :cond_5
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pow(I)Ljava/math/BigDecimal;
    .registers 6
    .param p1, "n"    # I

    .line 2012
    if-ltz p1, :cond_1e

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_1e

    .line 2016
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v0

    .line 2017
    .local v0, "newScale":I
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1

    .line 2013
    .end local v0    # "newScale":I
    :cond_1e
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "n"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 2072
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 2073
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2074
    :cond_9
    const v0, -0x3b9ac9ff

    const-string v1, "Invalid operation"

    if-lt p1, v0, :cond_68

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_68

    .line 2076
    if-nez p1, :cond_1a

    .line 2077
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object v0

    .line 2078
    :cond_1a
    move-object v0, p0

    .line 2079
    .local v0, "lhs":Ljava/math/BigDecimal;
    move-object v2, p2

    .line 2080
    .local v2, "workmc":Ljava/math/MathContext;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2081
    .local v3, "mag":I
    iget v4, p2, Ljava/math/MathContext;->precision:I

    if-lez v4, :cond_41

    .line 2082
    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v4

    .line 2083
    .local v4, "elength":I
    iget v5, p2, Ljava/math/MathContext;->precision:I

    if-gt v4, v5, :cond_3b

    .line 2085
    new-instance v1, Ljava/math/MathContext;

    iget v5, p2, Ljava/math/MathContext;->precision:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p2, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {v1, v5, v6}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    move-object v2, v1

    goto :goto_41

    .line 2084
    :cond_3b
    new-instance v5, Ljava/lang/ArithmeticException;

    invoke-direct {v5, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2089
    .end local v4    # "elength":I
    :cond_41
    :goto_41
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 2090
    .local v1, "acc":Ljava/math/BigDecimal;
    const/4 v4, 0x0

    .line 2091
    .local v4, "seenbit":Z
    const/4 v5, 0x1

    .line 2092
    .local v5, "i":I
    :goto_45
    add-int/2addr v3, v3

    .line 2093
    if-gez v3, :cond_4d

    .line 2094
    const/4 v4, 0x1

    .line 2095
    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2097
    :cond_4d
    const/16 v6, 0x1f

    if-ne v5, v6, :cond_5f

    .line 2098
    nop

    .line 2104
    .end local v5    # "i":I
    if-gez p1, :cond_5a

    .line 2105
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v5, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2107
    :cond_5a
    invoke-static {v1, p2}, Ljava/math/BigDecimal;->doRound(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 2099
    .restart local v5    # "i":I
    :cond_5f
    if-eqz v4, :cond_65

    .line 2100
    invoke-virtual {v1, v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2091
    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 2075
    .end local v0    # "lhs":Ljava/math/BigDecimal;
    .end local v1    # "acc":Ljava/math/BigDecimal;
    .end local v2    # "workmc":Ljava/math/MathContext;
    .end local v3    # "mag":I
    .end local v4    # "seenbit":Z
    .end local v5    # "i":I
    :cond_68
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api precision()I
    .registers 6

    .line 2237
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    .line 2238
    .local v0, "result":I
    if-nez v0, :cond_19

    .line 2239
    iget-wide v1, p0, Ljava/math/BigDecimal;->intCompact:J

    .line 2240
    .local v1, "s":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_11

    .line 2241
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->longDigitLength(J)I

    move-result v0

    goto :goto_17

    .line 2243
    :cond_11
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v3}, Ljava/math/BigDecimal;->bigDigitLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 2244
    :goto_17
    iput v0, p0, Ljava/math/BigDecimal;->precision:I

    .line 2246
    .end local v1    # "s":J
    :cond_19
    return v0
.end method

.method public whitelist test-api remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .line 1893
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    .line 1894
    .local v0, "divrem":[Ljava/math/BigDecimal;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public whitelist test-api remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1923
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    .line 1924
    .local v0, "divrem":[Ljava/math/BigDecimal;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public whitelist test-api round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .line 2356
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api scale()I
    .registers 2

    .line 2224
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public whitelist test-api scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .registers 11
    .param p1, "n"    # I

    .line 2578
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v0

    int-to-long v7, p1

    sub-long/2addr v4, v7

    .line 2579
    invoke-direct {p0, v4, v5}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v4

    iget v5, p0, Ljava/math/BigDecimal;->precision:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    .line 2578
    return-object v6
.end method

.method public whitelist test-api setScale(I)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "newScale"    # I

    .line 2515
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setScale(II)Ljava/math/BigDecimal;
    .registers 18
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # I

    .line 2433
    move-object v0, p0

    move/from16 v8, p1

    move/from16 v9, p2

    if-ltz v9, :cond_c6

    const/4 v1, 0x7

    if-gt v9, v1, :cond_c6

    .line 2436
    iget v10, v0, Ljava/math/BigDecimal;->scale:I

    .line 2437
    .local v10, "oldScale":I
    if-ne v8, v10, :cond_f

    .line 2438
    return-object v0

    .line 2439
    :cond_f
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_1a

    .line 2440
    invoke-static/range {p1 .. p1}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2441
    :cond_1a
    iget-wide v1, v0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_7b

    .line 2442
    iget-wide v11, v0, Ljava/math/BigDecimal;->intCompact:J

    .line 2443
    .local v11, "rs":J
    if-le v8, v10, :cond_54

    .line 2444
    int-to-long v5, v8

    int-to-long v13, v10

    sub-long/2addr v5, v13

    invoke-direct {p0, v5, v6}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v7

    .line 2445
    .local v7, "raise":I
    invoke-static {v11, v12, v7}, Ljava/math/BigDecimal;->longMultiplyPowerTen(JI)J

    move-result-wide v5

    move-wide v11, v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3c

    .line 2446
    invoke-static {v11, v12, v8}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2448
    :cond_3c
    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 2449
    .local v13, "rb":Ljava/math/BigInteger;
    new-instance v14, Ljava/math/BigDecimal;

    const-wide/high16 v3, -0x8000000000000000L

    iget v1, v0, Ljava/math/BigDecimal;->precision:I

    if-lez v1, :cond_4b

    add-int/2addr v1, v7

    move v6, v1

    goto :goto_4c

    :cond_4b
    move v6, v2

    :goto_4c
    move-object v1, v14

    move-object v2, v13

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v14

    .line 2453
    .end local v7    # "raise":I
    .end local v13    # "rb":Ljava/math/BigInteger;
    :cond_54
    int-to-long v1, v10

    int-to-long v3, v8

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v13

    .line 2454
    .local v13, "drop":I
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v2, v1

    if-ge v13, v2, :cond_6e

    .line 2455
    aget-wide v3, v1, v13

    move-wide v1, v11

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p1

    invoke-static/range {v1 .. v7}, Ljava/math/BigDecimal;->divideAndRound(JJIII)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2457
    :cond_6e
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v13}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, v8, v9, v8}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2461
    .end local v11    # "rs":J
    .end local v13    # "drop":I
    :cond_7b
    if-le v8, v10, :cond_9e

    .line 2462
    int-to-long v3, v8

    int-to-long v5, v10

    sub-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v7

    .line 2463
    .restart local v7    # "raise":I
    iget-object v1, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v1, v7}, Ljava/math/BigDecimal;->bigMultiplyPowerTen(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v11

    .line 2464
    .local v11, "rb":Ljava/math/BigInteger;
    new-instance v12, Ljava/math/BigDecimal;

    const-wide/high16 v3, -0x8000000000000000L

    iget v1, v0, Ljava/math/BigDecimal;->precision:I

    if-lez v1, :cond_95

    add-int/2addr v1, v7

    move v6, v1

    goto :goto_96

    :cond_95
    move v6, v2

    :goto_96
    move-object v1, v12

    move-object v2, v11

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v12

    .line 2468
    .end local v7    # "raise":I
    .end local v11    # "rb":Ljava/math/BigInteger;
    :cond_9e
    int-to-long v1, v10

    int-to-long v3, v8

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Ljava/math/BigDecimal;->checkScale(J)I

    move-result v7

    .line 2469
    .local v7, "drop":I
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POWERS_TABLE:[J

    array-length v2, v1

    if-ge v7, v2, :cond_bb

    .line 2470
    iget-object v2, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    aget-wide v3, v1, v7

    move-object v1, v2

    move-wide v2, v3

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p1

    invoke-static/range {v1 .. v6}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;JIII)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2473
    :cond_bb
    iget-object v1, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/math/BigDecimal;->bigTenToThe(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, v8, v9, v8}, Ljava/math/BigDecimal;->divideAndRound(Ljava/math/BigInteger;Ljava/math/BigInteger;III)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 2434
    .end local v7    # "drop":I
    .end local v10    # "oldScale":I
    :cond_c6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid rounding mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 2389
    iget v0, p2, Ljava/math/RoundingMode;->oldMode:I

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api shortValueExact()S
    .registers 5

    .line 3198
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    .line 3199
    .local v0, "num":J
    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_e

    .line 3201
    long-to-int v2, v0

    int-to-short v2, v2

    return v2

    .line 3200
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api signum()I
    .registers 5

    .line 2208
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    .line 2209
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    goto :goto_13

    .line 2210
    :cond_d
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 2208
    :goto_13
    return v0
.end method

.method public whitelist test-api stripTrailingZeros()Ljava/math/BigDecimal;
    .registers 6

    .line 2598
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2b

    .line 2600
    :cond_13
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_22

    .line 2601
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v4, v2, v3}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(JIJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2603
    :cond_22
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->createAndStripZerosToMatchScale(Ljava/math/BigInteger;IJ)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2599
    :cond_2b
    :goto_2b
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public whitelist test-api subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 8
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;

    .line 1437
    iget-wide v0, p0, Ljava/math/BigDecimal;->intCompact:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_27

    .line 1438
    iget-wide v4, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_18

    .line 1439
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    neg-long v3, v4

    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->add(JIJI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1441
    :cond_18
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1444
    :cond_27
    iget-wide v0, p1, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_39

    .line 1448
    neg-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/math/BigDecimal;->add(JILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1450
    :cond_39
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget-object v2, p1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigInteger;ILjava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .line 1470
    iget v0, p2, Ljava/math/MathContext;->precision:I

    if-nez v0, :cond_9

    .line 1471
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1473
    :cond_9
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 3028
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toBigIntegerExact()Ljava/math/BigInteger;
    .registers 3

    .line 3043
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toEngineeringString()Ljava/lang/String;
    .registers 2

    .line 2916
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->layoutChars(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toPlainString()Ljava/lang/String;
    .registers 6

    .line 2953
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_18

    .line 2954
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_11

    .line 2955
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2957
    :cond_11
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2960
    :cond_18
    if-gez v0, :cond_62

    .line 2961
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_23

    .line 2962
    const-string v0, "0"

    return-object v0

    .line 2964
    :cond_23
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v3, v0

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->checkScaleNonZero(J)I

    move-result v0

    .line 2966
    .local v0, "tailingZeros":I
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_3e

    .line 2967
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2968
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Ljava/math/BigDecimal;->intCompact:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 2970
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_3e
    iget-object v1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2971
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2972
    .local v2, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v2

    .line 2974
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-ge v2, v0, :cond_5d

    .line 2975
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2974
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 2976
    .end local v2    # "i":I
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2979
    .end local v0    # "tailingZeros":I
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :cond_62
    iget-wide v3, p0, Ljava/math/BigDecimal;->intCompact:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_71

    .line 2980
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_7b

    .line 2982
    .end local v0    # "str":Ljava/lang/String;
    :cond_71
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2984
    .restart local v0    # "str":Ljava/lang/String;
    :goto_7b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0, v1, v0, v2}, Ljava/math/BigDecimal;->getValueString(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2885
    iget-object v0, p0, Ljava/math/BigDecimal;->stringCache:Ljava/lang/String;

    .line 2886
    .local v0, "sc":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 2887
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;->layoutChars(Z)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Ljava/math/BigDecimal;->stringCache:Ljava/lang/String;

    .line 2888
    :cond_c
    return-object v0
.end method

.method public whitelist test-api ulp()Ljava/math/BigDecimal;
    .registers 5

    .line 3345
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Ljava/math/BigDecimal;->valueOf(JII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api unscaledValue()Ljava/math/BigInteger;
    .registers 2

    .line 2259
    invoke-direct {p0}, Ljava/math/BigDecimal;->inflated()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
