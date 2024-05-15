.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigInteger$UnsafeHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BORINGSSL_DIV_OFFSET:I = 0x14

.field private static final blacklist BORINGSSL_DIV_THRESHOLD:I = 0x28

.field static final blacklist BURNIKEL_ZIEGLER_OFFSET:I = 0x28

.field static final blacklist BURNIKEL_ZIEGLER_THRESHOLD:I = 0x50

.field private static final blacklist DEFAULT_PRIME_CERTAINTY:I = 0x64

.field private static final blacklist KARATSUBA_SQUARE_THRESHOLD:I = 0x80

.field private static final blacklist KARATSUBA_THRESHOLD:I = 0x50

.field private static final blacklist LOG_TWO:D

.field static final blacklist LONG_MASK:J = 0xffffffffL

.field private static final blacklist MAX_CONSTANT:I = 0x10

.field private static final blacklist MAX_MAG_LENGTH:I = 0x4000000

.field private static final blacklist MONTGOMERY_INTRINSIC_THRESHOLD:I = 0x200

.field private static final blacklist MULTIPLY_SQUARE_THRESHOLD:I = 0x14

.field private static final blacklist NEGATIVE_ONE:Ljava/math/BigInteger;

.field public static final whitelist test-api ONE:Ljava/math/BigInteger;

.field private static final blacklist PRIME_SEARCH_BIT_LENGTH_LIMIT:I = 0x1dcd6500

.field private static final blacklist SCHOENHAGE_BASE_CONVERSION_THRESHOLD:I = 0x14

.field private static final blacklist SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIME_THRESHOLD:I = 0x5f

.field public static final whitelist test-api TEN:Ljava/math/BigInteger;

.field private static final blacklist TOOM_COOK_SQUARE_THRESHOLD:I = 0xd8

.field private static final blacklist TOOM_COOK_THRESHOLD:I = 0xf0

.field private static final blacklist TWO:Ljava/math/BigInteger;

.field public static final whitelist test-api ZERO:Ljava/math/BigInteger;

.field private static blacklist bitsPerDigit:[J = null

.field static blacklist bnExpModThreshTable:[I = null

.field private static blacklist digitsPerInt:[I = null

.field private static blacklist digitsPerLong:[I = null

.field private static blacklist intRadix:[I = null

.field private static final blacklist logCache:[D

.field private static blacklist longRadix:[Ljava/math/BigInteger; = null

.field private static blacklist negConst:[Ljava/math/BigInteger; = null

.field private static blacklist posConst:[Ljava/math/BigInteger; = null

.field private static volatile blacklist powerCache:[[Ljava/math/BigInteger; = null

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x730360e056c404e3L

.field private static blacklist zeros:[Ljava/lang/String;


# instance fields
.field private blacklist bitCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist bitLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist firstNonzeroIntNum:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist lowestSetBit:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final blacklist mag:[I

.field final greylist-max-o signum:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 21

    .line 125
    nop

    .line 564
    const/16 v0, 0x25

    new-array v1, v0, [J

    fill-array-data v1, :array_2bc

    sput-object v1, Ljava/math/BigInteger;->bitsPerDigit:[J

    .line 748
    const-wide v1, 0x8a5b6470af95L

    .line 749
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Ljava/math/BigInteger;->SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

    .line 1151
    const/16 v1, 0x11

    new-array v2, v1, [Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigInteger;->posConst:[Ljava/math/BigInteger;

    .line 1152
    new-array v2, v1, [Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    .line 1165
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sput-wide v2, Ljava/math/BigInteger;->LOG_TWO:D

    .line 1176
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_28
    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v3, :cond_48

    .line 1177
    new-array v3, v5, [I

    .line 1178
    .local v3, "magnitude":[I
    aput v2, v3, v4

    .line 1179
    sget-object v4, Ljava/math/BigInteger;->posConst:[Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v5}, Ljava/math/BigInteger;-><init>([II)V

    aput-object v6, v4, v2

    .line 1180
    sget-object v4, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, -0x1

    invoke-direct {v5, v3, v6}, Ljava/math/BigInteger;-><init>([II)V

    aput-object v5, v4, v2

    .line 1176
    .end local v3    # "magnitude":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1188
    .end local v2    # "i":I
    :cond_48
    new-array v2, v0, [[Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    .line 1189
    new-array v2, v0, [D

    sput-object v2, Ljava/math/BigInteger;->logCache:[D

    .line 1191
    const/4 v2, 0x2

    .restart local v2    # "i":I
    :goto_51
    const/16 v6, 0x24

    if-gt v2, v6, :cond_6e

    .line 1192
    sget-object v6, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    new-array v7, v5, [Ljava/math/BigInteger;

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v4

    aput-object v7, v6, v2

    .line 1193
    sget-object v6, Ljava/math/BigInteger;->logCache:[D

    int-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 1191
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1202
    .end local v2    # "i":I
    :cond_6e
    new-instance v2, Ljava/math/BigInteger;

    new-array v7, v4, [I

    invoke-direct {v2, v7, v4}, Ljava/math/BigInteger;-><init>([II)V

    sput-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1209
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 1214
    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    .line 1219
    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Ljava/math/BigInteger;->NEGATIVE_ONE:Ljava/math/BigInteger;

    .line 1226
    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 2832
    const/4 v2, 0x7

    new-array v7, v2, [I

    fill-array-data v7, :array_354

    sput-object v7, Ljava/math/BigInteger;->bnExpModThreshTable:[I

    .line 4053
    const/16 v7, 0x40

    new-array v7, v7, [Ljava/lang/String;

    sput-object v7, Ljava/math/BigInteger;->zeros:[Ljava/lang/String;

    .line 4055
    const-string v8, "000000000000000000000000000000000000000000000000000000000000000"

    const/16 v9, 0x3f

    aput-object v8, v7, v9

    .line 4057
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ac
    if-ge v7, v9, :cond_bb

    .line 4058
    sget-object v8, Ljava/math/BigInteger;->zeros:[Ljava/lang/String;

    aget-object v10, v8, v9

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v7

    .line 4057
    add-int/lit8 v7, v7, 0x1

    goto :goto_ac

    .line 4469
    .end local v7    # "i":I
    :cond_bb
    new-array v7, v0, [I

    fill-array-data v7, :array_366

    sput-object v7, Ljava/math/BigInteger;->digitsPerLong:[I

    .line 4473
    new-array v7, v0, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    aput-object v8, v7, v4

    aput-object v8, v7, v5

    .line 4474
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v7, v11

    const-wide v12, 0x383d9170b85ff80bL    # 8.689291335170485E-38

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    const/4 v14, 0x3

    aput-object v10, v7, v14

    .line 4475
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const-wide v15, 0x6765c793fa10079dL    # 1.2129899831238297E190

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v10, 0x5

    aput-object v8, v7, v10

    .line 4476
    const-wide v15, 0x41c21cb8e1000000L    # 6.0774445E8

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    const/4 v10, 0x6

    aput-object v8, v7, v10

    const-wide v17, 0x3642798750226111L    # 2.5281834095840464E-47

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x8

    .line 4477
    const-wide/high16 v17, 0x1000000000000000L

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0x9

    const-wide v19, 0x12bf307ae81ffd59L    # 2.2088683600033102E-218

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xa

    const-wide v19, 0xde0b6b3a7640000L

    .line 4478
    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xb

    const-wide v19, 0x4d28cb56c33fa539L    # 5.09989019257158E63

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xc

    const-wide v19, 0x1eca170c00000000L

    .line 4479
    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xd

    const-wide v19, 0x780c7372621bd74dL    # 1.8788110924254583E270

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xe

    const-wide v19, 0x1e39a5057d810000L

    .line 4480
    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    const/16 v2, 0xf

    const-wide v19, 0x5b27ac993df97701L    # 1.3128154743542247E131

    invoke-static/range {v19 .. v20}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v2

    .line 4481
    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v3

    const-wide v2, 0x27b95e997e21d9f1L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x12

    const-wide v2, 0x5da0e1e53c5c8000L    # 1.0293480577702333E143

    .line 4482
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x13

    const-wide v2, 0xb16a458ef403f19L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x14

    const-wide v2, 0x16bcc41e90000000L

    .line 4483
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x15

    const-wide v2, 0x2d04b7fdd9c0ef49L    # 7.946103064799199E-92

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x16

    const-wide v2, 0x5658597bcaa24000L    # 8.935303699533562E107

    .line 4484
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x17

    const-wide v2, 0x6feb266931a75b7L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x18

    const-wide v2, 0xc29e98000000000L

    .line 4485
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x19

    const-wide v2, 0x14adf4b7320334b9L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1a

    const-wide v2, 0x226ed36478bfa000L    # 7.899611728294907E-143

    .line 4486
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1b

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1c

    const-wide v2, 0x5a3c23e39c000000L    # 4.762173887477006E126

    .line 4487
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1d

    const-wide v2, 0x4e900abb53e6b71L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1e

    const-wide v2, 0x7600ec618141000L

    .line 4488
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x1f

    const-wide v2, 0xaee5720ee830681L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x20

    .line 4489
    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x21

    const-wide v2, 0x172588ad4f5f0981L    # 3.600936225031602E-197

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x22

    const-wide v2, 0x211e44f7d02c1000L

    .line 4490
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    const/16 v1, 0x23

    const-wide v2, 0x2ee56725f06e5c71L    # 8.813822156377469E-83

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v7, v1

    .line 4491
    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v7, v6

    sput-object v7, Ljava/math/BigInteger;->longRadix:[Ljava/math/BigInteger;

    .line 4496
    new-array v1, v0, [I

    fill-array-data v1, :array_3b4

    sput-object v1, Ljava/math/BigInteger;->digitsPerInt:[I

    .line 4500
    new-array v0, v0, [I

    fill-array-data v0, :array_402

    sput-object v0, Ljava/math/BigInteger;->intRadix:[I

    .line 4590
    new-array v0, v10, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "signum"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, [B

    const-string v3, "magnitude"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "bitCount"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v11

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "bitLength"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v14

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "firstNonzeroByteNum"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v9

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "lowestSetBit"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Ljava/math/BigInteger;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    :array_2bc
    .array-data 8
        0x0
        0x0
        0x400
        0x658
        0x800
        0x94a
        0xa58
        0xb3b
        0xc00
        0xcaf
        0xd4a
        0xdd7
        0xe58
        0xece
        0xf3b
        0xfa1
        0x1000
        0x105a
        0x10af
        0x10fe
        0x114a
        0x1192
        0x11d7
        0x1219
        0x1258
        0x1294
        0x12ce
        0x1306
        0x133b
        0x136f
        0x13a1
        0x13d2
        0x1400
        0x142e
        0x145a
        0x1485
        0x14af
    .end array-data

    :array_354
    .array-data 4
        0x7
        0x19
        0x51
        0xf1
        0x2a1
        0x701
        0x7fffffff
    .end array-data

    :array_366
    .array-data 4
        0x0
        0x0
        0x3e
        0x27
        0x1f
        0x1b
        0x18
        0x16
        0x14
        0x13
        0x12
        0x12
        0x11
        0x11
        0x10
        0x10
        0xf
        0xf
        0xf
        0xe
        0xe
        0xe
        0xe
        0xd
        0xd
        0xd
        0xd
        0xd
        0xd
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data

    :array_3b4
    .array-data 4
        0x0
        0x0
        0x1e
        0x13
        0xf
        0xd
        0xb
        0xb
        0xa
        0x9
        0x9
        0x8
        0x8
        0x8
        0x8
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x5
    .end array-data

    :array_402
    .array-data 4
        0x0
        0x0
        0x40000000    # 2.0f
        0x4546b3db
        0x40000000    # 2.0f
        0x48c27395
        0x159fd800
        0x75db9c97
        0x40000000    # 2.0f
        0x17179149
        0x3b9aca00
        0xcc6db61
        0x19a10000
        0x309f1021
        0x57f6c100
        0xa2f1b6f
        0x10000000
        0x18754571
        0x247dbc80
        0x3547667b
        0x4c4b4000
        0x6b5a6e1d
        0x6c20a40
        0x8d2d931
        0xb640000
        0xe8d4a51
        0x1269ae40
        0x17179149
        0x1cb91000
        0x23744899
        0x2b73a840
        0x34e63b41
        0x40000000    # 2.0f
        0x4cfa3cc1    # 1.31196424E8f
        0x5c13d840
        0x6d91b519
        0x39aa400
    .end array-data
.end method

.method public constructor whitelist test-api <init>(IILjava/util/Random;)V
    .registers 6
    .param p1, "bitLength"    # I
    .param p2, "certainty"    # I
    .param p3, "rnd"    # Ljava/util/Random;

    .line 664
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 667
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1c

    .line 669
    const/16 v0, 0x5f

    if-ge p1, v0, :cond_f

    .line 670
    invoke-static {p1, p2, p3}, Ljava/math/BigInteger;->smallPrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_13

    .line 671
    :cond_f
    invoke-static {p1, p2, p3}, Ljava/math/BigInteger;->largePrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_13
    nop

    .line 672
    .local v0, "prime":Ljava/math/BigInteger;
    const/4 v1, 0x1

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 673
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 674
    return-void

    .line 668
    .end local v0    # "prime":Ljava/math/BigInteger;
    :cond_1c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(ILjava/util/Random;)V
    .registers 5
    .param p1, "numBits"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 627
    invoke-static {p1, p2}, Ljava/math/BigInteger;->randomBits(ILjava/util/Random;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 628
    return-void
.end method

.method public constructor whitelist test-api <init>(I[B)V
    .registers 5
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [B

    .line 358
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 359
    invoke-static {p2}, Ljava/math/BigInteger;->stripLeadingZeroBytes([B)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 361
    const/4 v1, -0x1

    if-lt p1, v1, :cond_2b

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2b

    .line 364
    array-length v1, v0

    if-nez v1, :cond_16

    .line 365
    const/4 v1, 0x0

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_1a

    .line 367
    :cond_16
    if-eqz p1, :cond_23

    .line 369
    iput p1, p0, Ljava/math/BigInteger;->signum:I

    .line 371
    :goto_1a
    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_22

    .line 372
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 374
    :cond_22
    return-void

    .line 368
    :cond_23
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "signum-magnitude mismatch"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_2b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid signum value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(I[I)V
    .registers 5
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [I

    .line 382
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 383
    invoke-static {p2}, Ljava/math/BigInteger;->stripLeadingZeroInts([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 385
    const/4 v1, -0x1

    if-lt p1, v1, :cond_2b

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2b

    .line 388
    array-length v1, v0

    if-nez v1, :cond_16

    .line 389
    const/4 v1, 0x0

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_1a

    .line 391
    :cond_16
    if-eqz p1, :cond_23

    .line 393
    iput p1, p0, Ljava/math/BigInteger;->signum:I

    .line 395
    :goto_1a
    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_22

    .line 396
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 398
    :cond_22
    return-void

    .line 392
    :cond_23
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "signum-magnitude mismatch"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_2b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid signum value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(J)V
    .registers 7
    .param p1, "val"    # J

    .line 1117
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1118
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_f

    .line 1119
    neg-long p1, p1

    .line 1120
    const/4 v0, -0x1

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_11

    .line 1122
    :cond_f
    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 1125
    :goto_11
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    .line 1126
    .local v0, "highWord":I
    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 1127
    new-array v1, v1, [I

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 1128
    long-to-int v3, p1

    aput v3, v1, v2

    goto :goto_2b

    .line 1130
    :cond_21
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Ljava/math/BigInteger;->mag:[I

    .line 1131
    aput v0, v3, v2

    .line 1132
    long-to-int v2, p1

    aput v2, v3, v1

    .line 1134
    :goto_2b
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 610
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 611
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 23
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 418
    const/4 v3, 0x0

    .line 419
    .local v3, "cursor":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 421
    .local v4, "len":I
    const/4 v5, 0x2

    if-lt v2, v5, :cond_fa

    const/16 v5, 0x24

    if-gt v2, v5, :cond_fa

    .line 423
    const-string v5, "Zero length BigInteger"

    if-eqz v4, :cond_f4

    .line 427
    const/4 v6, 0x1

    .line 428
    .local v6, "sign":I
    const/16 v7, 0x2d

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 429
    .local v7, "index1":I
    const/16 v8, 0x2b

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 430
    .local v8, "index2":I
    const-string v9, "Illegal embedded sign character"

    if-ltz v7, :cond_37

    .line 431
    if-nez v7, :cond_31

    if-gez v8, :cond_31

    .line 434
    const/4 v6, -0x1

    .line 435
    const/4 v3, 0x1

    goto :goto_43

    .line 432
    :cond_31
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 436
    :cond_37
    if-ltz v8, :cond_43

    .line 437
    if-nez v8, :cond_3d

    .line 440
    const/4 v3, 0x1

    goto :goto_43

    .line 438
    :cond_3d
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 442
    :cond_43
    :goto_43
    if-eq v3, v4, :cond_ee

    .line 446
    :goto_45
    if-ge v3, v4, :cond_54

    .line 447
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-nez v5, :cond_54

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 451
    :cond_54
    if-ne v3, v4, :cond_60

    .line 452
    const/4 v5, 0x0

    iput v5, v0, Ljava/math/BigInteger;->signum:I

    .line 453
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v5, v5, Ljava/math/BigInteger;->mag:[I

    iput-object v5, v0, Ljava/math/BigInteger;->mag:[I

    .line 454
    return-void

    .line 457
    :cond_60
    sub-int v5, v4, v3

    .line 458
    .local v5, "numDigits":I
    iput v6, v0, Ljava/math/BigInteger;->signum:I

    .line 462
    int-to-long v9, v5

    sget-object v11, Ljava/math/BigInteger;->bitsPerDigit:[J

    aget-wide v11, v11, v2

    mul-long/2addr v9, v11

    const/16 v11, 0xa

    ushr-long/2addr v9, v11

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 463
    .local v9, "numBits":J
    const-wide/16 v11, 0x1f

    add-long v13, v9, v11

    const-wide v15, 0x100000000L

    cmp-long v13, v13, v15

    if-ltz v13, :cond_80

    .line 464
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 466
    :cond_80
    add-long/2addr v11, v9

    long-to-int v11, v11

    ushr-int/lit8 v11, v11, 0x5

    .line 467
    .local v11, "numWords":I
    new-array v12, v11, [I

    .line 470
    .local v12, "magnitude":[I
    sget-object v13, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v14, v13, v2

    rem-int v14, v5, v14

    .line 471
    .local v14, "firstGroupLen":I
    if-nez v14, :cond_90

    .line 472
    aget v14, v13, v2

    .line 473
    :cond_90
    add-int v13, v3, v14

    move v15, v13

    .end local v3    # "cursor":I
    .local v15, "cursor":I
    invoke-virtual {v1, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "group":Ljava/lang/String;
    add-int/lit8 v13, v11, -0x1

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    aput v16, v12, v13

    .line 475
    add-int/lit8 v13, v11, -0x1

    aget v13, v12, v13

    move-object/from16 v16, v3

    .end local v3    # "group":Ljava/lang/String;
    .local v16, "group":Ljava/lang/String;
    const-string v3, "Illegal digit"

    if-ltz v13, :cond_e8

    .line 479
    sget-object v13, Ljava/math/BigInteger;->intRadix:[I

    aget v13, v13, v2

    .line 480
    .local v13, "superRadix":I
    const/16 v17, 0x0

    .line 481
    .local v17, "groupVal":I
    :goto_af
    if-ge v15, v4, :cond_d7

    .line 482
    sget-object v18, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v18, v18, v2

    move/from16 v19, v4

    .end local v4    # "len":I
    .local v19, "len":I
    add-int v4, v15, v18

    move/from16 v18, v4

    .end local v15    # "cursor":I
    .local v18, "cursor":I
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 483
    .end local v16    # "group":Ljava/lang/String;
    .local v4, "group":Ljava/lang/String;
    invoke-static {v4, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 484
    .end local v17    # "groupVal":I
    .local v15, "groupVal":I
    if-ltz v15, :cond_d1

    .line 486
    invoke-static {v12, v13, v15}, Ljava/math/BigInteger;->destructiveMulAdd([III)V

    move-object/from16 v16, v4

    move/from16 v17, v15

    move/from16 v15, v18

    move/from16 v4, v19

    goto :goto_af

    .line 485
    :cond_d1
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    .end local v18    # "cursor":I
    .end local v19    # "len":I
    .local v4, "len":I
    .local v15, "cursor":I
    .restart local v16    # "group":Ljava/lang/String;
    .restart local v17    # "groupVal":I
    :cond_d7
    move/from16 v19, v4

    .end local v4    # "len":I
    .restart local v19    # "len":I
    invoke-static {v12}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    iput-object v1, v0, Ljava/math/BigInteger;->mag:[I

    .line 490
    array-length v1, v1

    const/high16 v3, 0x4000000

    if-lt v1, v3, :cond_e7

    .line 491
    invoke-direct/range {p0 .. p0}, Ljava/math/BigInteger;->checkRange()V

    .line 493
    :cond_e7
    return-void

    .line 476
    .end local v13    # "superRadix":I
    .end local v17    # "groupVal":I
    .end local v19    # "len":I
    .restart local v4    # "len":I
    :cond_e8
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    .end local v5    # "numDigits":I
    .end local v9    # "numBits":J
    .end local v11    # "numWords":I
    .end local v12    # "magnitude":[I
    .end local v14    # "firstGroupLen":I
    .end local v15    # "cursor":I
    .end local v16    # "group":Ljava/lang/String;
    .local v3, "cursor":I
    :cond_ee
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    .end local v6    # "sign":I
    .end local v7    # "index1":I
    .end local v8    # "index2":I
    :cond_f4
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_fa
    move/from16 v19, v4

    .line 422
    .end local v4    # "len":I
    .restart local v19    # "len":I
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v4, "Radix out of range"

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>([B)V
    .registers 4
    .param p1, "val"    # [B

    .line 304
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 305
    array-length v0, p1

    if-eqz v0, :cond_2d

    .line 308
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-gez v1, :cond_15

    .line 309
    invoke-static {p1}, Ljava/math/BigInteger;->makePositive([B)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_22

    .line 312
    :cond_15
    invoke-static {p1}, Ljava/math/BigInteger;->stripLeadingZeroBytes([B)[I

    move-result-object v1

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 313
    array-length v1, v1

    if-nez v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 315
    :goto_22
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_2c

    .line 316
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 318
    :cond_2c
    return-void

    .line 306
    :cond_2d
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Zero length BigInteger"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>([BI)V
    .registers 5
    .param p1, "magnitude"    # [B
    .param p2, "signum"    # I

    .line 1067
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1068
    array-length v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move v0, p2

    :goto_9
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 1069
    invoke-static {p1}, Ljava/math/BigInteger;->stripLeadingZeroBytes([B)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 1070
    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_19

    .line 1071
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 1073
    :cond_19
    return-void
.end method

.method constructor blacklist <init>([CII)V
    .registers 15
    .param p1, "val"    # [C
    .param p2, "sign"    # I
    .param p3, "len"    # I

    .line 499
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 500
    const/4 v0, 0x0

    .line 503
    .local v0, "cursor":I
    :goto_4
    const/16 v1, 0xa

    if-ge v0, p3, :cond_13

    aget-char v2, p1, v0

    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-nez v2, :cond_13

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 506
    :cond_13
    if-ne v0, p3, :cond_1f

    .line 507
    const/4 v1, 0x0

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 508
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object v1, v1, Ljava/math/BigInteger;->mag:[I

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 509
    return-void

    .line 512
    :cond_1f
    sub-int v2, p3, v0

    .line 513
    .local v2, "numDigits":I
    iput p2, p0, Ljava/math/BigInteger;->signum:I

    .line 516
    if-ge p3, v1, :cond_27

    .line 517
    const/4 v3, 0x1

    .local v3, "numWords":I
    goto :goto_46

    .line 519
    .end local v3    # "numWords":I
    :cond_27
    int-to-long v3, v2

    sget-object v5, Ljava/math/BigInteger;->bitsPerDigit:[J

    aget-wide v5, v5, v1

    mul-long/2addr v3, v5

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 520
    .local v3, "numBits":J
    const-wide/16 v5, 0x1f

    add-long v7, v3, v5

    const-wide v9, 0x100000000L

    cmp-long v7, v7, v9

    if-ltz v7, :cond_41

    .line 521
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 523
    :cond_41
    add-long/2addr v5, v3

    long-to-int v5, v5

    ushr-int/lit8 v5, v5, 0x5

    move v3, v5

    .line 525
    .local v3, "numWords":I
    :goto_46
    new-array v4, v3, [I

    .line 528
    .local v4, "magnitude":[I
    sget-object v5, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v6, v5, v1

    rem-int v6, v2, v6

    .line 529
    .local v6, "firstGroupLen":I
    if-nez v6, :cond_52

    .line 530
    aget v6, v5, v1

    .line 531
    :cond_52
    add-int/lit8 v5, v3, -0x1

    add-int v7, v0, v6

    move v8, v7

    .end local v0    # "cursor":I
    .local v8, "cursor":I
    invoke-direct {p0, p1, v0, v7}, Ljava/math/BigInteger;->parseInt([CII)I

    move-result v0

    aput v0, v4, v5

    .line 534
    :goto_5d
    if-ge v8, p3, :cond_72

    .line 535
    sget-object v0, Ljava/math/BigInteger;->digitsPerInt:[I

    aget v0, v0, v1

    add-int/2addr v0, v8

    move v5, v0

    .end local v8    # "cursor":I
    .local v5, "cursor":I
    invoke-direct {p0, p1, v8, v0}, Ljava/math/BigInteger;->parseInt([CII)I

    move-result v0

    .line 536
    .local v0, "groupVal":I
    sget-object v7, Ljava/math/BigInteger;->intRadix:[I

    aget v7, v7, v1

    invoke-static {v4, v7, v0}, Ljava/math/BigInteger;->destructiveMulAdd([III)V

    .line 537
    .end local v0    # "groupVal":I
    move v8, v5

    goto :goto_5d

    .line 538
    .end local v5    # "cursor":I
    .restart local v8    # "cursor":I
    :cond_72
    invoke-static {v4}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 539
    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_80

    .line 540
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 542
    :cond_80
    return-void
.end method

.method private constructor blacklist <init>([I)V
    .registers 4
    .param p1, "val"    # [I

    .line 326
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 327
    array-length v0, p1

    if-eqz v0, :cond_2d

    .line 330
    const/4 v0, 0x0

    aget v1, p1, v0

    if-gez v1, :cond_15

    .line 331
    invoke-static {p1}, Ljava/math/BigInteger;->makePositive([I)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigInteger;->mag:[I

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Ljava/math/BigInteger;->signum:I

    goto :goto_22

    .line 334
    :cond_15
    invoke-static {p1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    iput-object v1, p0, Ljava/math/BigInteger;->mag:[I

    .line 335
    array-length v1, v1

    if-nez v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 337
    :goto_22
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_2c

    .line 338
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 340
    :cond_2c
    return-void

    .line 328
    :cond_2d
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Zero length BigInteger"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([II)V
    .registers 5
    .param p1, "magnitude"    # [I
    .param p2, "signum"    # I

    .line 1055
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 1056
    array-length v0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move v0, p2

    :goto_9
    iput v0, p0, Ljava/math/BigInteger;->signum:I

    .line 1057
    iput-object p1, p0, Ljava/math/BigInteger;->mag:[I

    .line 1058
    array-length v0, p1

    const/high16 v1, 0x4000000

    if-lt v0, v1, :cond_15

    .line 1059
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V

    .line 1061
    :cond_15
    return-void
.end method

.method private static blacklist add([IJ)[I
    .registers 18
    .param p0, "x"    # [I
    .param p1, "val"    # J

    .line 1281
    move-object v0, p0

    const-wide/16 v1, 0x0

    .line 1282
    .local v1, "sum":J
    array-length v3, v0

    .line 1284
    .local v3, "xIndex":I
    const/16 v4, 0x20

    ushr-long v5, p1, v4

    long-to-int v5, v5

    .line 1285
    .local v5, "highWord":I
    const/4 v6, 0x0

    const-wide v7, 0xffffffffL

    const/4 v9, 0x1

    if-nez v5, :cond_20

    .line 1286
    new-array v10, v3, [I

    .line 1287
    .local v10, "result":[I
    add-int/lit8 v3, v3, -0x1

    aget v11, v0, v3

    int-to-long v11, v11

    and-long/2addr v7, v11

    add-long v7, v7, p1

    .line 1288
    .end local v1    # "sum":J
    .local v7, "sum":J
    long-to-int v1, v7

    aput v1, v10, v3

    goto :goto_51

    .line 1290
    .end local v7    # "sum":J
    .end local v10    # "result":[I
    .restart local v1    # "sum":J
    :cond_20
    if-ne v3, v9, :cond_34

    .line 1291
    const/4 v10, 0x2

    new-array v10, v10, [I

    .line 1292
    .restart local v10    # "result":[I
    aget v11, v0, v6

    int-to-long v11, v11

    and-long/2addr v7, v11

    add-long v1, p1, v7

    .line 1293
    long-to-int v7, v1

    aput v7, v10, v9

    .line 1294
    ushr-long v7, v1, v4

    long-to-int v4, v7

    aput v4, v10, v6

    .line 1295
    return-object v10

    .line 1297
    .end local v10    # "result":[I
    :cond_34
    new-array v10, v3, [I

    .line 1298
    .restart local v10    # "result":[I
    add-int/lit8 v3, v3, -0x1

    aget v11, v0, v3

    int-to-long v11, v11

    and-long/2addr v11, v7

    and-long v13, p1, v7

    add-long/2addr v11, v13

    .line 1299
    .end local v1    # "sum":J
    .local v11, "sum":J
    long-to-int v1, v11

    aput v1, v10, v3

    .line 1300
    add-int/lit8 v3, v3, -0x1

    aget v1, v0, v3

    int-to-long v1, v1

    and-long/2addr v1, v7

    int-to-long v13, v5

    and-long/2addr v7, v13

    add-long/2addr v1, v7

    ushr-long v7, v11, v4

    add-long/2addr v7, v1

    .line 1301
    .end local v11    # "sum":J
    .restart local v7    # "sum":J
    long-to-int v1, v7

    aput v1, v10, v3

    .line 1305
    :goto_51
    ushr-long v1, v7, v4

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-eqz v1, :cond_5b

    move v1, v9

    goto :goto_5c

    :cond_5b
    move v1, v6

    .line 1306
    .local v1, "carry":Z
    :goto_5c
    if-lez v3, :cond_6e

    if-eqz v1, :cond_6e

    .line 1307
    add-int/lit8 v3, v3, -0x1

    aget v2, v0, v3

    add-int/2addr v2, v9

    aput v2, v10, v3

    if-nez v2, :cond_6b

    move v2, v9

    goto :goto_6c

    :cond_6b
    move v2, v6

    :goto_6c
    move v1, v2

    goto :goto_5c

    .line 1309
    :cond_6e
    :goto_6e
    if-lez v3, :cond_77

    .line 1310
    add-int/lit8 v3, v3, -0x1

    aget v2, v0, v3

    aput v2, v10, v3

    goto :goto_6e

    .line 1312
    :cond_77
    if-eqz v1, :cond_84

    .line 1313
    array-length v2, v10

    add-int/2addr v2, v9

    new-array v2, v2, [I

    .line 1314
    .local v2, "bigger":[I
    array-length v4, v10

    invoke-static {v10, v6, v2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1315
    aput v9, v2, v6

    .line 1316
    return-object v2

    .line 1318
    .end local v2    # "bigger":[I
    :cond_84
    return-object v10
.end method

.method private static blacklist add([I[I)[I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 1328
    array-length v0, p0

    array-length v1, p1

    if-ge v0, v1, :cond_7

    .line 1329
    move-object v0, p0

    .line 1330
    .local v0, "tmp":[I
    move-object p0, p1

    .line 1331
    move-object p1, v0

    .line 1334
    .end local v0    # "tmp":[I
    :cond_7
    array-length v0, p0

    .line 1335
    .local v0, "xIndex":I
    array-length v1, p1

    .line 1336
    .local v1, "yIndex":I
    new-array v2, v0, [I

    .line 1337
    .local v2, "result":[I
    const-wide/16 v3, 0x0

    .line 1338
    .local v3, "sum":J
    const/16 v5, 0x20

    const-wide v6, 0xffffffffL

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v9, :cond_27

    .line 1339
    add-int/lit8 v0, v0, -0x1

    aget v10, p0, v0

    int-to-long v10, v10

    and-long/2addr v10, v6

    aget v12, p1, v8

    int-to-long v12, v12

    and-long/2addr v6, v12

    add-long/2addr v10, v6

    .line 1340
    .end local v3    # "sum":J
    .local v10, "sum":J
    long-to-int v3, v10

    aput v3, v2, v0

    goto :goto_3f

    .line 1343
    .end local v10    # "sum":J
    .restart local v3    # "sum":J
    :cond_27
    :goto_27
    if-lez v1, :cond_3e

    .line 1344
    add-int/lit8 v0, v0, -0x1

    aget v10, p0, v0

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-int/lit8 v1, v1, -0x1

    aget v12, p1, v1

    int-to-long v12, v12

    and-long/2addr v12, v6

    add-long/2addr v10, v12

    ushr-long v12, v3, v5

    add-long v3, v10, v12

    .line 1346
    long-to-int v10, v3

    aput v10, v2, v0

    goto :goto_27

    .line 1343
    :cond_3e
    move-wide v10, v3

    .line 1350
    .end local v3    # "sum":J
    .restart local v10    # "sum":J
    :goto_3f
    ushr-long v3, v10, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_49

    move v3, v9

    goto :goto_4a

    :cond_49
    move v3, v8

    .line 1351
    .local v3, "carry":Z
    :goto_4a
    if-lez v0, :cond_5c

    if-eqz v3, :cond_5c

    .line 1352
    add-int/lit8 v0, v0, -0x1

    aget v4, p0, v0

    add-int/2addr v4, v9

    aput v4, v2, v0

    if-nez v4, :cond_59

    move v4, v9

    goto :goto_5a

    :cond_59
    move v4, v8

    :goto_5a
    move v3, v4

    goto :goto_4a

    .line 1355
    :cond_5c
    :goto_5c
    if-lez v0, :cond_65

    .line 1356
    add-int/lit8 v0, v0, -0x1

    aget v4, p0, v0

    aput v4, v2, v0

    goto :goto_5c

    .line 1359
    :cond_65
    if-eqz v3, :cond_72

    .line 1360
    array-length v4, v2

    add-int/2addr v4, v9

    new-array v4, v4, [I

    .line 1361
    .local v4, "bigger":[I
    array-length v5, v2

    invoke-static {v2, v8, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1362
    aput v9, v4, v8

    .line 1363
    return-object v4

    .line 1365
    .end local v4    # "bigger":[I
    :cond_72
    return-object v2
.end method

.method static blacklist addOne([IIII)I
    .registers 12
    .param p0, "a"    # [I
    .param p1, "offset"    # I
    .param p2, "mlen"    # I
    .param p3, "carry"    # I

    .line 3176
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 3177
    .end local p1    # "offset":I
    .local v0, "offset":I
    aget p1, p0, v0

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v6, p3

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 3179
    .local v2, "t":J
    long-to-int p1, v2

    aput p1, p0, v0

    .line 3180
    const/16 p1, 0x20

    ushr-long v4, v2, p1

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v4, 0x0

    if-nez p1, :cond_20

    .line 3181
    return v4

    .line 3182
    :cond_20
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_33

    .line 3183
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_29

    .line 3184
    return v1

    .line 3186
    :cond_29
    aget p1, p0, v0

    add-int/2addr p1, v1

    aput p1, p0, v0

    .line 3187
    aget p1, p0, v0

    if-eqz p1, :cond_20

    .line 3188
    return v4

    .line 3191
    :cond_33
    return v1
.end method

.method private static blacklist bigEndInts2NewBN([IZ)J
    .registers 6
    .param p0, "beArray"    # [I
    .param p1, "neg"    # Z

    .line 2645
    invoke-static {p0}, Ljava/math/BigInteger;->reverse([I)[I

    move-result-object v0

    .line 2646
    .local v0, "leArray":[I
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v1

    .line 2647
    .local v1, "resultBN":J
    array-length v3, v0

    invoke-static {v0, v3, p1, v1, v2}, Llibcore/math/NativeBN;->litEndInts2bn([IIZJ)V

    .line 2648
    return-wide v1
.end method

.method private static blacklist bitLength([II)I
    .registers 4
    .param p0, "val"    # [I
    .param p1, "len"    # I

    .line 2575
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2576
    return v0

    .line 2577
    :cond_4
    add-int/lit8 v1, p1, -0x1

    shl-int/lit8 v1, v1, 0x5

    aget v0, p0, v0

    invoke-static {v0}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method static blacklist bitLengthForInt(I)I
    .registers 2
    .param p0, "n"    # I

    .line 2514
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private blacklist bn2BigEndInts(J)[I
    .registers 4
    .param p1, "bn"    # J

    .line 2652
    invoke-static {p1, p2}, Llibcore/math/NativeBN;->bn2litEndInts(J)[I

    move-result-object v0

    invoke-static {v0}, Ljava/math/BigInteger;->reverse([I)[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkRange()V
    .registers 4

    .line 1082
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    const/high16 v2, 0x4000000

    if-gt v1, v2, :cond_f

    array-length v1, v0

    if-ne v1, v2, :cond_12

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gez v0, :cond_12

    .line 1083
    :cond_f
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 1085
    :cond_12
    return-void
.end method

.method private static blacklist destructiveMulAdd([III)V
    .registers 23
    .param p0, "x"    # [I
    .param p1, "y"    # I
    .param p2, "z"    # I

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 574
    .local v2, "ylong":J
    move/from16 v6, p2

    int-to-long v7, v6

    and-long/2addr v7, v4

    .line 575
    .local v7, "zlong":J
    array-length v9, v0

    .line 577
    .local v9, "len":I
    const-wide/16 v10, 0x0

    .line 578
    .local v10, "product":J
    const-wide/16 v12, 0x0

    .line 579
    .local v12, "carry":J
    add-int/lit8 v14, v9, -0x1

    .local v14, "i":I
    :goto_16
    if-ltz v14, :cond_2a

    .line 580
    aget v15, v0, v14

    move-wide/from16 v16, v10

    .end local v10    # "product":J
    .local v16, "product":J
    int-to-long v10, v15

    and-long/2addr v10, v4

    mul-long/2addr v10, v2

    add-long/2addr v10, v12

    .line 581
    .end local v16    # "product":J
    .restart local v10    # "product":J
    long-to-int v15, v10

    aput v15, v0, v14

    .line 582
    const/16 v15, 0x20

    ushr-long v12, v10, v15

    .line 579
    add-int/lit8 v14, v14, -0x1

    goto :goto_16

    :cond_2a
    move-wide/from16 v16, v10

    .line 586
    .end local v10    # "product":J
    .end local v14    # "i":I
    .restart local v16    # "product":J
    add-int/lit8 v10, v9, -0x1

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v10, v7

    .line 587
    .local v10, "sum":J
    add-int/lit8 v14, v9, -0x1

    long-to-int v15, v10

    aput v15, v0, v14

    .line 588
    const/16 v14, 0x20

    ushr-long v12, v10, v14

    .line 589
    add-int/lit8 v14, v9, -0x2

    .restart local v14    # "i":I
    :goto_3e
    if-ltz v14, :cond_56

    .line 590
    aget v15, v0, v14

    move-wide/from16 v18, v2

    .end local v2    # "ylong":J
    .local v18, "ylong":J
    int-to-long v1, v15

    and-long/2addr v1, v4

    add-long v10, v1, v12

    .line 591
    long-to-int v1, v10

    aput v1, v0, v14

    .line 592
    const/16 v1, 0x20

    ushr-long v12, v10, v1

    .line 589
    add-int/lit8 v14, v14, -0x1

    move/from16 v1, p1

    move-wide/from16 v2, v18

    goto :goto_3e

    .line 594
    .end local v14    # "i":I
    .end local v18    # "ylong":J
    .restart local v2    # "ylong":J
    :cond_56
    return-void
.end method

.method private blacklist divideAndRemainderBurnikelZiegler(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 8
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2356
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2357
    .local v0, "q":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2, v0}, Ljava/math/MutableBigInteger;->divideAndRemainderBurnikelZiegler(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    .line 2358
    .local v1, "r":Ljava/math/MutableBigInteger;
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_25

    :cond_1c
    iget v2, p0, Ljava/math/BigInteger;->signum:I

    iget v3, p1, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 2359
    .local v2, "qBigInt":Ljava/math/BigInteger;
    :goto_25
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v3

    if-eqz v3, :cond_2e

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_34

    :cond_2e
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v1, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 2360
    .local v3, "rBigInt":Ljava/math/BigInteger;
    :goto_34
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/math/BigInteger;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    return-object v4
.end method

.method private blacklist divideAndRemainderKnuth(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 10
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2290
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 2291
    .local v0, "result":[Ljava/math/BigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2292
    .local v1, "q":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2293
    .local v2, "a":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    iget-object v4, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v3, v4}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2294
    .local v3, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v3, v1}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 2295
    .local v4, "r":Ljava/math/MutableBigInteger;
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    iget v6, p1, Ljava/math/BigInteger;->signum:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_23

    move v5, v7

    goto :goto_24

    :cond_23
    const/4 v5, -0x1

    :goto_24
    invoke-virtual {v1, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 2296
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v4, v5}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v5

    aput-object v5, v0, v7

    .line 2297
    return-object v0
.end method

.method private blacklist divideBurnikelZiegler(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2337
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->divideAndRemainderBurnikelZiegler(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist divideKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2235
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2236
    .local v0, "q":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2237
    .local v1, "a":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2239
    .local v2, "b":Ljava/math/MutableBigInteger;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    .line 2240
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    iget v4, p1, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private blacklist exactDivideBy3()Ljava/math/BigInteger;
    .registers 16

    .line 1913
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 1914
    .local v0, "len":I
    new-array v1, v0, [I

    .line 1916
    .local v1, "result":[I
    const-wide/16 v2, 0x0

    .line 1917
    .local v2, "borrow":J
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_9
    if-ltz v4, :cond_3e

    .line 1918
    iget-object v5, p0, Ljava/math/BigInteger;->mag:[I

    aget v5, v5, v4

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 1919
    .local v5, "x":J
    sub-long v9, v5, v2

    .line 1920
    .local v9, "w":J
    cmp-long v11, v2, v5

    if-lez v11, :cond_1f

    .line 1921
    const-wide/16 v2, 0x1

    goto :goto_21

    .line 1923
    :cond_1f
    const-wide/16 v2, 0x0

    .line 1929
    :goto_21
    const-wide v11, 0xaaaaaaabL

    mul-long v13, v9, v11

    and-long/2addr v7, v13

    .line 1930
    .local v7, "q":J
    long-to-int v13, v7

    aput v13, v1, v4

    .line 1934
    const-wide/32 v13, 0x55555556

    cmp-long v13, v7, v13

    if-ltz v13, :cond_3b

    .line 1935
    const-wide/16 v13, 0x1

    add-long/2addr v2, v13

    .line 1936
    cmp-long v11, v7, v11

    if-ltz v11, :cond_3b

    .line 1937
    add-long/2addr v2, v13

    .line 1917
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 1940
    .end local v4    # "i":I
    .end local v5    # "x":J
    .end local v7    # "q":J
    .end local v9    # "w":J
    :cond_3e
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1941
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v4
.end method

.method private blacklist firstNonzeroIntNum()I
    .registers 5

    .line 4557
    iget v0, p0, Ljava/math/BigInteger;->firstNonzeroIntNum:I

    add-int/lit8 v0, v0, -0x2

    .line 4558
    .local v0, "fn":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_20

    .line 4559
    const/4 v0, 0x0

    .line 4563
    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    .line 4564
    .local v1, "mlen":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_18

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aget v3, v3, v2

    if-nez v3, :cond_18

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 4566
    :cond_18
    sub-int v3, v1, v2

    add-int/lit8 v0, v3, -0x1

    .line 4567
    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Ljava/math/BigInteger;->firstNonzeroIntNum:I

    .line 4569
    .end local v1    # "mlen":I
    .end local v2    # "i":I
    :cond_20
    return v0
.end method

.method private blacklist getInt(I)I
    .registers 4
    .param p1, "n"    # I

    .line 4540
    if-gez p1, :cond_4

    .line 4541
    const/4 v0, 0x0

    return v0

    .line 4542
    :cond_4
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    if-lt p1, v1, :cond_e

    .line 4543
    invoke-direct {p0}, Ljava/math/BigInteger;->signInt()I

    move-result v0

    return v0

    .line 4545
    :cond_e
    array-length v1, v0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 4547
    .local v0, "magInt":I
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v1, :cond_1a

    move v1, v0

    goto :goto_23

    .line 4548
    :cond_1a
    invoke-direct {p0}, Ljava/math/BigInteger;->firstNonzeroIntNum()I

    move-result v1

    if-gt p1, v1, :cond_22

    neg-int v1, v0

    goto :goto_23

    :cond_22
    not-int v1, v0

    .line 4547
    :goto_23
    return v1
.end method

.method private blacklist getLower(I)Ljava/math/BigInteger;
    .registers 7
    .param p1, "n"    # I

    .line 1949
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    .line 1951
    .local v1, "len":I
    if-gt v1, p1, :cond_a

    .line 1952
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1955
    :cond_a
    new-array v2, p1, [I

    .line 1956
    .local v2, "lowerInts":[I
    sub-int v3, v1, p1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1958
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v2}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method private static blacklist getPrimeSearchLen(I)I
    .registers 3
    .param p0, "bitLength"    # I

    .line 849
    const v0, 0x1dcd6501

    if-gt p0, v0, :cond_a

    .line 852
    div-int/lit8 v0, p0, 0x14

    mul-int/lit8 v0, v0, 0x40

    return v0

    .line 850
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Prime search implementation restriction on bitLength"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getRadixConversionCache(II)Ljava/math/BigInteger;
    .registers 7
    .param p0, "radix"    # I
    .param p1, "exponent"    # I

    .line 4032
    sget-object v0, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    aget-object v0, v0, p0

    .line 4033
    .local v0, "cacheLine":[Ljava/math/BigInteger;
    array-length v1, v0

    if-ge p1, v1, :cond_a

    .line 4034
    aget-object v1, v0, p1

    return-object v1

    .line 4037
    :cond_a
    array-length v1, v0

    .line 4038
    .local v1, "oldLength":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Ljava/math/BigInteger;

    .line 4039
    move v2, v1

    .local v2, "i":I
    :goto_15
    if-gt v2, p1, :cond_25

    .line 4040
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4039
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4043
    .end local v2    # "i":I
    :cond_25
    sget-object v2, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    .line 4044
    .local v2, "pc":[[Ljava/math/BigInteger;
    aget-object v3, v2, p0

    array-length v3, v3

    if-lt p1, v3, :cond_37

    .line 4045
    invoke-virtual {v2}, [[Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [[Ljava/math/BigInteger;

    .line 4046
    aput-object v0, v2, p0

    .line 4047
    sput-object v2, Ljava/math/BigInteger;->powerCache:[[Ljava/math/BigInteger;

    .line 4049
    :cond_37
    aget-object v3, v0, p1

    return-object v3
.end method

.method private blacklist getToomSlice(IIII)Ljava/math/BigInteger;
    .registers 14
    .param p1, "lowerSize"    # I
    .param p2, "upperSize"    # I
    .param p3, "slice"    # I
    .param p4, "fullsize"    # I

    .line 1868
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    .line 1869
    .local v1, "len":I
    sub-int v2, p4, v1

    .line 1871
    .local v2, "offset":I
    const/4 v3, 0x1

    if-nez p3, :cond_e

    .line 1872
    rsub-int/lit8 v4, v2, 0x0

    .line 1873
    .local v4, "start":I
    add-int/lit8 v5, p2, -0x1

    sub-int/2addr v5, v2

    .local v5, "end":I
    goto :goto_16

    .line 1875
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_e
    add-int/lit8 v4, p3, -0x1

    mul-int/2addr v4, p1

    add-int/2addr v4, p2

    sub-int/2addr v4, v2

    .line 1876
    .restart local v4    # "start":I
    add-int v5, v4, p1

    sub-int/2addr v5, v3

    .line 1879
    .restart local v5    # "end":I
    :goto_16
    if-gez v4, :cond_19

    .line 1880
    const/4 v4, 0x0

    .line 1882
    :cond_19
    if-gez v5, :cond_1e

    .line 1883
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 1886
    :cond_1e
    sub-int v6, v5, v4

    add-int/2addr v6, v3

    .line 1888
    .local v6, "sliceSize":I
    if-gtz v6, :cond_26

    .line 1889
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 1894
    :cond_26
    if-nez v4, :cond_2f

    if-lt v6, v1, :cond_2f

    .line 1895
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1898
    :cond_2f
    new-array v7, v6, [I

    .line 1899
    .local v7, "intSlice":[I
    const/4 v8, 0x0

    invoke-static {v0, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1901
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v7}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v8

    invoke-direct {v0, v8, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method private blacklist getUpper(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 1967
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    .line 1969
    .local v1, "len":I
    if-gt v1, p1, :cond_8

    .line 1970
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 1973
    :cond_8
    sub-int v2, v1, p1

    .line 1974
    .local v2, "upperLen":I
    new-array v3, v2, [I

    .line 1975
    .local v3, "upperInts":[I
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1977
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {v3}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method private static blacklist implMontgomeryMultiply([I[I[IIJ[I)[I
    .registers 8
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "n"    # [I
    .param p3, "len"    # I
    .param p4, "inv"    # J
    .param p6, "product"    # [I

    .line 2823
    invoke-static {p0, p3, p1, p3, p6}, Ljava/math/BigInteger;->multiplyToLen([II[II[I)[I

    move-result-object p6

    .line 2824
    long-to-int v0, p4

    invoke-static {p6, p2, p3, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist implMontgomeryMultiplyChecks([I[I[II[I)V
    .registers 8
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "n"    # [I
    .param p3, "len"    # I
    .param p4, "product"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 2794
    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_44

    .line 2798
    const/4 v0, 0x1

    if-lt p3, v0, :cond_2d

    .line 2802
    array-length v0, p0

    if-gt p3, v0, :cond_16

    array-length v0, p1

    if-gt p3, v0, :cond_16

    array-length v0, p2

    if-gt p3, v0, :cond_16

    if-eqz p4, :cond_15

    array-length v0, p4

    if-gt p3, v0, :cond_16

    .line 2808
    :cond_15
    return-void

    .line 2806
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input array length out of bound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2799
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid input length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2795
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input array length must be even: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist implMontgomerySquare([I[IIJ[I)[I
    .registers 7
    .param p0, "a"    # [I
    .param p1, "n"    # [I
    .param p2, "len"    # I
    .param p3, "inv"    # J
    .param p5, "product"    # [I

    .line 2828
    invoke-static {p0, p2, p5}, Ljava/math/BigInteger;->squareToLen([II[I)[I

    move-result-object p5

    .line 2829
    long-to-int v0, p3

    invoke-static {p5, p1, p2, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist implMulAdd([I[IIII)I
    .registers 16
    .param p0, "out"    # [I
    .param p1, "in"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # I

    .line 3158
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 3159
    .local v0, "kLong":J
    const-wide/16 v4, 0x0

    .line 3161
    .local v4, "carry":J
    array-length v6, p0

    sub-int/2addr v6, p2

    add-int/lit8 v6, v6, -0x1

    .line 3162
    .end local p2    # "offset":I
    .local v6, "offset":I
    add-int/lit8 p2, p3, -0x1

    .local p2, "j":I
    :goto_f
    if-ltz p2, :cond_29

    .line 3163
    aget v7, p1, p2

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p0, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    .line 3165
    .local v7, "product":J
    add-int/lit8 v9, v6, -0x1

    .end local v6    # "offset":I
    .local v9, "offset":I
    long-to-int v10, v7

    aput v10, p0, v6

    .line 3166
    const/16 v6, 0x20

    ushr-long v4, v7, v6

    .line 3162
    .end local v7    # "product":J
    add-int/lit8 p2, p2, -0x1

    move v6, v9

    goto :goto_f

    .line 3168
    .end local v9    # "offset":I
    .end local p2    # "j":I
    .restart local v6    # "offset":I
    :cond_29
    long-to-int p2, v4

    return p2
.end method

.method private static blacklist implMulAddCheck([I[IIII)V
    .registers 9
    .param p0, "out"    # [I
    .param p1, "in"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # I

    .line 3140
    array-length v0, p1

    const-string v1, " > "

    if-gt p3, v0, :cond_67

    .line 3143
    if-ltz p2, :cond_50

    .line 3146
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_30

    .line 3149
    array-length v0, p0

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_11

    .line 3152
    return-void

    .line 3150
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input len is out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3147
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input offset is out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3144
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input offset is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3141
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input length is out of bound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final blacklist implSquareToLen([II[II)[I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "z"    # [I
    .param p3, "zlen"    # I

    .line 2103
    const/4 v0, 0x0

    .line 2104
    .local v0, "lastProductLowWord":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    const/4 v3, 0x1

    if-ge v1, p1, :cond_28

    .line 2105
    aget v4, p0, v1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 2106
    .local v4, "piece":J
    mul-long v6, v4, v4

    .line 2107
    .local v6, "product":J
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    shl-int/lit8 v9, v0, 0x1f

    const/16 v10, 0x21

    ushr-long v10, v6, v10

    long-to-int v10, v10

    or-int/2addr v9, v10

    aput v9, p2, v2

    .line 2108
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "i":I
    .restart local v2    # "i":I
    ushr-long v9, v6, v3

    long-to-int v3, v9

    aput v3, p2, v8

    .line 2109
    long-to-int v0, v6

    .line 2104
    .end local v4    # "piece":J
    .end local v6    # "product":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2113
    .end local v1    # "j":I
    .end local v2    # "i":I
    :cond_28
    move v1, p1

    .local v1, "i":I
    const/4 v2, 0x1

    .local v2, "offset":I
    :goto_2a
    if-lez v1, :cond_40

    .line 2114
    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    .line 2115
    .local v4, "t":I
    add-int/lit8 v5, v1, -0x1

    invoke-static {p2, p0, v2, v5, v4}, Ljava/math/BigInteger;->mulAdd([I[IIII)I

    move-result v4

    .line 2116
    add-int/lit8 v5, v2, -0x1

    invoke-static {p2, v5, v1, v4}, Ljava/math/BigInteger;->addOne([IIII)I

    .line 2113
    .end local v4    # "t":I
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2a

    .line 2120
    .end local v1    # "i":I
    .end local v2    # "offset":I
    :cond_40
    invoke-static {p2, p3, v3}, Ljava/math/BigInteger;->primitiveLeftShift([III)V

    .line 2121
    add-int/lit8 v1, p3, -0x1

    aget v2, p2, v1

    add-int/lit8 v4, p1, -0x1

    aget v4, p0, v4

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, p2, v1

    .line 2123
    return-object p2
.end method

.method private static blacklist implSquareToLenChecks([II[II)V
    .registers 10
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "z"    # [I
    .param p3, "zlen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 2043
    const-string v0, "invalid input length: "

    const/4 v1, 0x1

    if-lt p1, v1, :cond_82

    .line 2046
    array-length v2, p0

    const-string v3, " > "

    const-string v4, "input length out of bound: "

    if-gt p1, v2, :cond_66

    .line 2050
    mul-int/lit8 v2, p1, 0x2

    array-length v5, p2

    if-gt v2, v5, :cond_48

    .line 2054
    if-lt p3, v1, :cond_33

    .line 2057
    array-length v0, p2

    if-gt p3, v0, :cond_17

    .line 2061
    return-void

    .line 2058
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2055
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2051
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2047
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2044
    :cond_82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist intArrayCmpToLen([I[II)I
    .registers 10
    .param p0, "arg1"    # [I
    .param p1, "arg2"    # [I
    .param p2, "len"    # I

    .line 3102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1f

    .line 3103
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 3104
    .local v1, "b1":J
    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    .line 3105
    .local v3, "b2":J
    cmp-long v5, v1, v3

    if-gez v5, :cond_16

    .line 3106
    const/4 v5, -0x1

    return v5

    .line 3107
    :cond_16
    cmp-long v5, v1, v3

    if-lez v5, :cond_1c

    .line 3108
    const/4 v5, 0x1

    return v5

    .line 3102
    .end local v1    # "b1":J
    .end local v3    # "b2":J
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3110
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist intLength()I
    .registers 2

    .line 4520
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static blacklist jacobiSymbol(ILjava/math/BigInteger;)I
    .registers 9
    .param p0, "p"    # I
    .param p1, "n"    # Ljava/math/BigInteger;

    .line 927
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 928
    return v0

    .line 931
    :cond_4
    const/4 v1, 0x1

    .line 932
    .local v1, "j":I
    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    .line 935
    .local v2, "u":I
    if-gez p0, :cond_18

    .line 936
    neg-int p0, p0

    .line 937
    and-int/lit8 v3, v2, 0x7

    .line 938
    .local v3, "n8":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_17

    const/4 v5, 0x7

    if-ne v3, v5, :cond_18

    .line 939
    :cond_17
    neg-int v1, v1

    .line 943
    .end local v3    # "n8":I
    :cond_18
    :goto_18
    and-int/lit8 v3, p0, 0x3

    if-nez v3, :cond_1f

    .line 944
    shr-int/lit8 p0, p0, 0x2

    goto :goto_18

    .line 945
    :cond_1f
    and-int/lit8 v3, p0, 0x1

    if-nez v3, :cond_2d

    .line 946
    shr-int/lit8 p0, p0, 0x1

    .line 947
    shr-int/lit8 v3, v2, 0x1

    xor-int/2addr v3, v2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2d

    .line 948
    neg-int v1, v1

    .line 950
    :cond_2d
    if-ne p0, v4, :cond_30

    .line 951
    return v1

    .line 953
    :cond_30
    and-int v3, p0, v2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_37

    .line 954
    neg-int v1, v1

    .line 956
    :cond_37
    int-to-long v5, p0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 959
    :goto_44
    if-eqz v2, :cond_6b

    .line 960
    :goto_46
    and-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_4d

    .line 961
    shr-int/lit8 v2, v2, 0x2

    goto :goto_46

    .line 962
    :cond_4d
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_5b

    .line 963
    shr-int/lit8 v2, v2, 0x1

    .line 964
    shr-int/lit8 v3, p0, 0x1

    xor-int/2addr v3, p0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5b

    .line 965
    neg-int v1, v1

    .line 967
    :cond_5b
    if-ne v2, v4, :cond_5e

    .line 968
    return v1

    .line 970
    :cond_5e
    nop

    .line 971
    move v3, v2

    .local v3, "t":I
    move v2, p0

    move p0, v3

    .line 972
    and-int v5, v2, p0

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_69

    .line 973
    neg-int v1, v1

    .line 975
    :cond_69
    rem-int/2addr v2, p0

    .line 976
    .end local v3    # "t":I
    goto :goto_44

    .line 977
    :cond_6b
    return v0
.end method

.method private static blacklist largePrime(IILjava/util/Random;)Ljava/math/BigInteger;
    .registers 10
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 759
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 760
    .local v0, "p":Ljava/math/BigInteger;
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    and-int/lit8 v3, v3, -0x2

    aput v3, v1, v2

    .line 763
    invoke-static {p0}, Ljava/math/BigInteger;->getPrimeSearchLen(I)I

    move-result v1

    .line 764
    .local v1, "searchLen":I
    new-instance v2, Ljava/math/BitSieve;

    invoke-direct {v2, v0, v1}, Ljava/math/BitSieve;-><init>(Ljava/math/BigInteger;I)V

    .line 765
    .local v2, "searchSieve":Ljava/math/BitSieve;
    invoke-virtual {v2, v0, p1, p2}, Ljava/math/BitSieve;->retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v3

    .line 767
    .local v3, "candidate":Ljava/math/BigInteger;
    :goto_23
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-eq v4, p0, :cond_2c

    goto :goto_2d

    .line 775
    :cond_2c
    return-object v3

    .line 768
    :cond_2d
    :goto_2d
    mul-int/lit8 v4, v1, 0x2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-eq v4, p0, :cond_49

    .line 770
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v5, p0, -0x1

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 771
    :cond_49
    iget-object v4, v0, Ljava/math/BigInteger;->mag:[I

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    and-int/lit8 v6, v6, -0x2

    aput v6, v4, v5

    .line 772
    new-instance v4, Ljava/math/BitSieve;

    invoke-direct {v4, v0, v1}, Ljava/math/BitSieve;-><init>(Ljava/math/BigInteger;I)V

    move-object v2, v4

    .line 773
    invoke-virtual {v2, v0, p1, p2}, Ljava/math/BitSieve;->retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_23
.end method

.method private static blacklist leftShift([III)[I
    .registers 9
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "n"    # I

    .line 2522
    ushr-int/lit8 v0, p2, 0x5

    .line 2523
    .local v0, "nInts":I
    and-int/lit8 v1, p2, 0x1f

    .line 2524
    .local v1, "nBits":I
    const/4 v2, 0x0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v3

    .line 2527
    .local v3, "bitsInHighWord":I
    rsub-int/lit8 v4, v3, 0x20

    if-gt p2, v4, :cond_13

    .line 2528
    invoke-static {p0, p1, v1}, Ljava/math/BigInteger;->primitiveLeftShift([III)V

    .line 2529
    return-object p0

    .line 2531
    :cond_13
    rsub-int/lit8 v4, v3, 0x20

    if-gt v1, v4, :cond_23

    .line 2532
    add-int v4, v0, p1

    new-array v4, v4, [I

    .line 2533
    .local v4, "result":[I
    invoke-static {p0, v2, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2534
    array-length v2, v4

    invoke-static {v4, v2, v1}, Ljava/math/BigInteger;->primitiveLeftShift([III)V

    .line 2535
    return-object v4

    .line 2537
    .end local v4    # "result":[I
    :cond_23
    add-int v4, v0, p1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    .line 2538
    .restart local v4    # "result":[I
    invoke-static {p0, v2, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2539
    array-length v2, v4

    rsub-int/lit8 v5, v1, 0x20

    invoke-static {v4, v2, v5}, Ljava/math/BigInteger;->primitiveRightShift([III)V

    .line 2540
    return-object v4
.end method

.method private static blacklist lucasLehmerSequence(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .param p0, "z"    # I
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "n"    # Ljava/math/BigInteger;

    .line 981
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 982
    .local v0, "d":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 983
    .local v1, "u":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 985
    .local v2, "v":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .local v3, "i":I
    :goto_f
    if-ltz v3, :cond_7a

    .line 986
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 988
    .local v4, "u2":Ljava/math/BigInteger;
    invoke-direct {v2}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 989
    .local v5, "v2":Ljava/math/BigInteger;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 990
    invoke-virtual {v5, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 992
    :cond_38
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 994
    move-object v1, v4

    move-object v2, v5

    .line 995
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 996
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 997
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 998
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1000
    :cond_57
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1001
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1002
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1003
    invoke-virtual {v5, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1004
    :cond_71
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 1006
    move-object v1, v4

    move-object v2, v5

    .line 985
    :cond_77
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 1009
    .end local v3    # "i":I
    .end local v4    # "u2":Ljava/math/BigInteger;
    .end local v5    # "v2":Ljava/math/BigInteger;
    :cond_7a
    return-object v1
.end method

.method private blacklist magSerializedForm()[B
    .registers 11

    .line 4713
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    .line 4715
    .local v1, "len":I
    const/4 v2, 0x0

    if-nez v1, :cond_7

    goto :goto_13

    :cond_7
    add-int/lit8 v3, v1, -0x1

    shl-int/lit8 v3, v3, 0x5

    aget v0, v0, v2

    invoke-static {v0}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v0

    add-int v2, v3, v0

    :goto_13
    move v0, v2

    .line 4716
    .local v0, "bitLen":I
    add-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v2, v2, 0x3

    .line 4717
    .local v2, "byteLen":I
    new-array v3, v2, [B

    .line 4719
    .local v3, "result":[B
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    const/4 v5, 0x4

    .local v5, "bytesCopied":I
    add-int/lit8 v6, v1, -0x1

    .local v6, "intIndex":I
    const/4 v7, 0x0

    .line 4720
    .local v7, "nextInt":I
    :goto_20
    if-ltz v4, :cond_39

    .line 4721
    const/4 v8, 0x4

    if-ne v5, v8, :cond_2f

    .line 4722
    iget-object v8, p0, Ljava/math/BigInteger;->mag:[I

    add-int/lit8 v9, v6, -0x1

    .end local v6    # "intIndex":I
    .local v9, "intIndex":I
    aget v6, v8, v6

    .line 4723
    .end local v7    # "nextInt":I
    .local v6, "nextInt":I
    const/4 v5, 0x1

    move v7, v6

    move v6, v9

    goto :goto_33

    .line 4725
    .end local v9    # "intIndex":I
    .local v6, "intIndex":I
    .restart local v7    # "nextInt":I
    :cond_2f
    ushr-int/lit8 v7, v7, 0x8

    .line 4726
    add-int/lit8 v5, v5, 0x1

    .line 4728
    :goto_33
    int-to-byte v8, v7

    aput-byte v8, v3, v4

    .line 4720
    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    .line 4730
    .end local v4    # "i":I
    .end local v5    # "bytesCopied":I
    .end local v6    # "intIndex":I
    .end local v7    # "nextInt":I
    :cond_39
    return-object v3
.end method

.method private static blacklist makePositive([B)[I
    .registers 16
    .param p0, "a"    # [B

    .line 4386
    array-length v0, p0

    .line 4389
    .local v0, "byteLength":I
    const/4 v1, 0x0

    .local v1, "keep":I
    :goto_2
    const/4 v2, -0x1

    if-ge v1, v0, :cond_c

    aget-byte v3, p0, v1

    if-ne v3, v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4395
    :cond_c
    move v3, v1

    .local v3, "k":I
    :goto_d
    if-ge v3, v0, :cond_16

    aget-byte v4, p0, v3

    if-nez v4, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 4398
    :cond_16
    const/4 v4, 0x1

    if-ne v3, v0, :cond_1b

    move v5, v4

    goto :goto_1c

    :cond_1b
    const/4 v5, 0x0

    .line 4399
    .local v5, "extraByte":I
    :goto_1c
    sub-int v6, v0, v1

    add-int/2addr v6, v5

    const/4 v7, 0x3

    add-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x2

    .line 4400
    .local v6, "intLength":I
    new-array v8, v6, [I

    .line 4404
    .local v8, "result":[I
    add-int/lit8 v9, v0, -0x1

    .line 4405
    .local v9, "b":I
    add-int/lit8 v10, v6, -0x1

    .local v10, "i":I
    :goto_29
    if-ltz v10, :cond_63

    .line 4406
    add-int/lit8 v11, v9, -0x1

    .end local v9    # "b":I
    .local v11, "b":I
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aput v9, v8, v10

    .line 4407
    sub-int v9, v11, v1

    add-int/2addr v9, v4

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 4408
    .local v9, "numBytesToTransfer":I
    if-gez v9, :cond_3d

    .line 4409
    const/4 v9, 0x0

    .line 4410
    :cond_3d
    const/16 v12, 0x8

    .local v12, "j":I
    :goto_3f
    mul-int/lit8 v13, v9, 0x8

    if-gt v12, v13, :cond_53

    .line 4411
    aget v13, v8, v10

    add-int/lit8 v14, v11, -0x1

    .end local v11    # "b":I
    .local v14, "b":I
    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v12

    or-int/2addr v11, v13

    aput v11, v8, v10

    .line 4410
    add-int/lit8 v12, v12, 0x8

    move v11, v14

    goto :goto_3f

    .line 4414
    .end local v12    # "j":I
    .end local v14    # "b":I
    .restart local v11    # "b":I
    :cond_53
    rsub-int/lit8 v12, v9, 0x3

    mul-int/lit8 v12, v12, 0x8

    ushr-int v12, v2, v12

    .line 4415
    .local v12, "mask":I
    aget v13, v8, v10

    not-int v13, v13

    and-int/2addr v13, v12

    aput v13, v8, v10

    .line 4405
    .end local v9    # "numBytesToTransfer":I
    .end local v12    # "mask":I
    add-int/lit8 v10, v10, -0x1

    move v9, v11

    goto :goto_29

    .line 4419
    .end local v10    # "i":I
    .end local v11    # "b":I
    .local v9, "b":I
    :cond_63
    array-length v2, v8

    sub-int/2addr v2, v4

    .local v2, "i":I
    :goto_65
    if-ltz v2, :cond_7e

    .line 4420
    aget v4, v8, v2

    int-to-long v10, v4

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    long-to-int v4, v10

    aput v4, v8, v2

    .line 4421
    aget v4, v8, v2

    if-eqz v4, :cond_7b

    .line 4422
    goto :goto_7e

    .line 4419
    :cond_7b
    add-int/lit8 v2, v2, -0x1

    goto :goto_65

    .line 4425
    .end local v2    # "i":I
    :cond_7e
    :goto_7e
    return-object v8
.end method

.method private static blacklist makePositive([I)[I
    .registers 9
    .param p0, "a"    # [I

    .line 4436
    const/4 v0, 0x0

    .local v0, "keep":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4441
    :cond_c
    move v1, v0

    .local v1, "j":I
    :goto_d
    array-length v2, p0

    if-ge v1, v2, :cond_17

    aget v2, p0, v1

    if-nez v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 4443
    :cond_17
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 4444
    .local v2, "extraInt":I
    :goto_1e
    array-length v4, p0

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    new-array v4, v4, [I

    .line 4448
    .local v4, "result":[I
    move v5, v0

    .local v5, "i":I
    :goto_24
    array-length v6, p0

    if-ge v5, v6, :cond_32

    .line 4449
    sub-int v6, v5, v0

    add-int/2addr v6, v2

    aget v7, p0, v5

    not-int v7, v7

    aput v7, v4, v6

    .line 4448
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 4452
    .end local v5    # "i":I
    :cond_32
    array-length v5, v4

    sub-int/2addr v5, v3

    .restart local v5    # "i":I
    :goto_34
    aget v6, v4, v5

    add-int/2addr v6, v3

    aput v6, v4, v5

    if-nez v6, :cond_3e

    add-int/lit8 v5, v5, -0x1

    goto :goto_34

    .line 4455
    .end local v5    # "i":I
    :cond_3e
    return-object v4
.end method

.method private static blacklist materialize([II)[I
    .registers 3
    .param p0, "z"    # [I
    .param p1, "len"    # I

    .line 2814
    if-eqz p0, :cond_5

    array-length v0, p0

    if-ge v0, p1, :cond_7

    .line 2815
    :cond_5
    new-array p0, p1, [I

    .line 2816
    :cond_7
    return-object p0
.end method

.method private blacklist mod2(I)Ljava/math/BigInteger;
    .registers 13
    .param p1, "p"    # I

    .line 3227
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_7

    .line 3228
    return-object p0

    .line 3231
    :cond_7
    add-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    .line 3232
    .local v0, "numInts":I
    new-array v1, v0, [I

    .line 3233
    .local v1, "mag":[I
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v3, v2

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3236
    shl-int/lit8 v2, v0, 0x5

    sub-int/2addr v2, p1

    .line 3237
    .local v2, "excessBits":I
    aget v3, v1, v4

    int-to-long v5, v3

    rsub-int/lit8 v3, v2, 0x20

    const-wide/16 v7, 0x1

    shl-long v9, v7, v3

    sub-long/2addr v9, v7

    and-long/2addr v5, v9

    long-to-int v3, v5

    aput v3, v1, v4

    .line 3239
    aget v3, v1, v4

    const/4 v4, 0x1

    if-nez v3, :cond_31

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[I)V

    goto :goto_36

    :cond_31
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4}, Ljava/math/BigInteger;-><init>([II)V

    :goto_36
    return-object v3
.end method

.method private blacklist modPow2(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "exponent"    # Ljava/math/BigInteger;
    .param p2, "p"    # I

    .line 3202
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 3203
    .local v0, "result":Ljava/math/BigInteger;
    invoke-direct {p0, p2}, Ljava/math/BigInteger;->mod2(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 3204
    .local v1, "baseToPow2":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 3206
    .local v2, "expOffset":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 3208
    .local v3, "limit":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3209
    add-int/lit8 v4, p2, -0x1

    if-ge v4, v3, :cond_19

    add-int/lit8 v4, p2, -0x1

    goto :goto_1a

    :cond_19
    move v4, v3

    :goto_1a
    move v3, v4

    .line 3211
    :cond_1b
    :goto_1b
    if-ge v2, v3, :cond_38

    .line 3212
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3213
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v4, p2}, Ljava/math/BigInteger;->mod2(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 3214
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    .line 3215
    if-ge v2, v3, :cond_1b

    .line 3216
    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v4, p2}, Ljava/math/BigInteger;->mod2(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1b

    .line 3219
    :cond_38
    return-object v0
.end method

.method private static blacklist montReduce([I[III)[I
    .registers 10
    .param p0, "n"    # [I
    .param p1, "mod"    # [I
    .param p2, "mlen"    # I
    .param p3, "inv"    # I

    .line 3076
    const/4 v0, 0x0

    .line 3077
    .local v0, "c":I
    move v1, p2

    .line 3078
    .local v1, "len":I
    const/4 v2, 0x0

    .line 3081
    .local v2, "offset":I
    :cond_3
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v2

    aget v3, p0, v3

    .line 3082
    .local v3, "nEnd":I
    mul-int v4, p3, v3

    invoke-static {p0, p1, v2, p2, v4}, Ljava/math/BigInteger;->mulAdd([I[IIII)I

    move-result v4

    .line 3083
    .local v4, "carry":I
    invoke-static {p0, v2, p2, v4}, Ljava/math/BigInteger;->addOne([IIII)I

    move-result v5

    add-int/2addr v0, v5

    .line 3084
    nop

    .end local v3    # "nEnd":I
    .end local v4    # "carry":I
    add-int/lit8 v2, v2, 0x1

    .line 3085
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_3

    .line 3087
    :goto_1b
    if-lez v0, :cond_23

    .line 3088
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->subN([I[II)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1b

    .line 3090
    :cond_23
    :goto_23
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->intArrayCmpToLen([I[II)I

    move-result v3

    if-ltz v3, :cond_2d

    .line 3091
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->subN([I[II)I

    goto :goto_23

    .line 3093
    :cond_2d
    return-object p0
.end method

.method private static blacklist montgomeryMultiply([I[I[IIJ[I)[I
    .registers 15
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "n"    # [I
    .param p3, "len"    # I
    .param p4, "inv"    # J
    .param p6, "product"    # [I

    .line 2770
    invoke-static {p0, p1, p2, p3, p6}, Ljava/math/BigInteger;->implMontgomeryMultiplyChecks([I[I[II[I)V

    .line 2771
    const/16 v0, 0x200

    if-le p3, v0, :cond_11

    .line 2773
    invoke-static {p0, p3, p1, p3, p6}, Ljava/math/BigInteger;->multiplyToLen([II[II[I)[I

    move-result-object p6

    .line 2774
    long-to-int v0, p4

    invoke-static {p6, p2, p3, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0

    .line 2776
    :cond_11
    invoke-static {p6, p3}, Ljava/math/BigInteger;->materialize([II)[I

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Ljava/math/BigInteger;->implMontgomeryMultiply([I[I[IIJ[I)[I

    move-result-object v0

    return-object v0
.end method

.method private static blacklist montgomerySquare([I[IIJ[I)[I
    .registers 13
    .param p0, "a"    # [I
    .param p1, "n"    # [I
    .param p2, "len"    # I
    .param p3, "inv"    # J
    .param p5, "product"    # [I

    .line 2781
    invoke-static {p0, p0, p1, p2, p5}, Ljava/math/BigInteger;->implMontgomeryMultiplyChecks([I[I[II[I)V

    .line 2782
    const/16 v0, 0x200

    if-le p2, v0, :cond_11

    .line 2784
    invoke-static {p0, p2, p5}, Ljava/math/BigInteger;->squareToLen([II[I)[I

    move-result-object p5

    .line 2785
    long-to-int v0, p3

    invoke-static {p5, p1, p2, v0}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v0

    return-object v0

    .line 2787
    :cond_11
    invoke-static {p5, p2}, Ljava/math/BigInteger;->materialize([II)[I

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Ljava/math/BigInteger;->implMontgomerySquare([I[IIJ[I)[I

    move-result-object v0

    return-object v0
.end method

.method static blacklist mulAdd([I[IIII)I
    .registers 6
    .param p0, "out"    # [I
    .param p1, "in"    # [I
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "k"    # I

    .line 3132
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigInteger;->implMulAddCheck([I[IIII)V

    .line 3133
    invoke-static {p0, p1, p2, p3, p4}, Ljava/math/BigInteger;->implMulAdd([I[IIII)I

    move-result v0

    return v0
.end method

.method private blacklist multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;
    .registers 26
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "isRecursion"    # Z

    .line 1509
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Ljava/math/BigInteger;->signum:I

    if-eqz v0, :cond_9b

    iget v3, v1, Ljava/math/BigInteger;->signum:I

    if-nez v3, :cond_e

    goto/16 :goto_9b

    .line 1512
    :cond_e
    iget-object v4, v1, Ljava/math/BigInteger;->mag:[I

    array-length v5, v4

    .line 1516
    .local v5, "xlen":I
    iget-object v6, v2, Ljava/math/BigInteger;->mag:[I

    array-length v7, v6

    .line 1518
    .local v7, "ylen":I
    const/16 v8, 0x32

    .line 1520
    .local v8, "BORINGSSL_MUL_THRESHOLD":I
    const/4 v9, 0x1

    if-ne v3, v0, :cond_1b

    move v0, v9

    goto :goto_1c

    :cond_1b
    const/4 v0, -0x1

    :goto_1c
    move v3, v0

    .line 1521
    .local v3, "resultSign":I
    const/16 v0, 0x32

    const/4 v10, 0x0

    if-lt v5, v0, :cond_6d

    if-ge v7, v0, :cond_25

    goto :goto_6d

    .line 1538
    :cond_25
    const-wide/16 v11, 0x0

    .local v11, "xBN":J
    const-wide/16 v13, 0x0

    .local v13, "yBN":J
    const-wide/16 v15, 0x0

    .line 1540
    .local v15, "resultBN":J
    :try_start_2b
    invoke-static {v4, v10}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v19
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_62

    .line 1541
    .end local v11    # "xBN":J
    .local v19, "xBN":J
    :try_start_2f
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v10}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v21
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_5e

    .line 1542
    .end local v13    # "yBN":J
    .local v21, "yBN":J
    :try_start_35
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v9
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_58

    .line 1543
    .end local v15    # "resultBN":J
    .local v9, "resultBN":J
    move-wide/from16 v17, v9

    :try_start_3b
    invoke-static/range {v17 .. v22}, Llibcore/math/NativeBN;->BN_mul(JJJ)V

    .line 1544
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v1, v9, v10}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/math/BigInteger;-><init>(I[I)V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_51

    .line 1546
    invoke-static/range {v19 .. v20}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1547
    invoke-static/range {v21 .. v22}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1548
    invoke-static {v9, v10}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1544
    return-object v0

    .line 1546
    :catchall_51
    move-exception v0

    move-wide v15, v9

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    goto :goto_63

    .end local v9    # "resultBN":J
    .restart local v15    # "resultBN":J
    :catchall_58
    move-exception v0

    move-wide/from16 v11, v19

    move-wide/from16 v13, v21

    goto :goto_63

    .end local v21    # "yBN":J
    .restart local v13    # "yBN":J
    :catchall_5e
    move-exception v0

    move-wide/from16 v11, v19

    goto :goto_63

    .end local v19    # "xBN":J
    .restart local v11    # "xBN":J
    :catchall_62
    move-exception v0

    :goto_63
    invoke-static {v11, v12}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1547
    invoke-static {v13, v14}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1548
    invoke-static/range {v15 .. v16}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 1549
    throw v0

    .line 1522
    .end local v11    # "xBN":J
    .end local v13    # "yBN":J
    .end local v15    # "resultBN":J
    :cond_6d
    :goto_6d
    if-ne v2, v1, :cond_78

    const/16 v0, 0x14

    if-le v5, v0, :cond_78

    .line 1524
    invoke-direct/range {p0 .. p0}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1527
    :cond_78
    array-length v0, v6

    if-ne v0, v9, :cond_82

    .line 1528
    aget v0, v6, v10

    invoke-static {v4, v0, v3}, Ljava/math/BigInteger;->multiplyByInt([III)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1530
    :cond_82
    array-length v0, v4

    if-ne v0, v9, :cond_8c

    .line 1531
    aget v0, v4, v10

    invoke-static {v6, v0, v3}, Ljava/math/BigInteger;->multiplyByInt([III)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1533
    :cond_8c
    const/4 v0, 0x0

    invoke-static {v4, v5, v6, v7, v0}, Ljava/math/BigInteger;->multiplyToLen([II[II[I)[I

    move-result-object v0

    .line 1535
    .local v0, "result":[I
    invoke-static {v0}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v0

    .line 1536
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v0, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v4

    .line 1510
    .end local v0    # "result":[I
    .end local v3    # "resultSign":I
    .end local v5    # "xlen":I
    .end local v7    # "ylen":I
    .end local v8    # "BORINGSSL_MUL_THRESHOLD":I
    :cond_9b
    :goto_9b
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method private static blacklist multiplyByInt([III)Ljava/math/BigInteger;
    .registers 20
    .param p0, "x"    # [I
    .param p1, "y"    # I
    .param p2, "sign"    # I

    .line 1619
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 1620
    new-instance v2, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/math/BigInteger;->shiftLeft([II)[I

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2

    .line 1622
    :cond_19
    array-length v2, v0

    .line 1623
    .local v2, "xlen":I
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [I

    .line 1624
    .local v4, "rmag":[I
    const-wide/16 v5, 0x0

    .line 1625
    .local v5, "carry":J
    move/from16 v7, p1

    int-to-long v8, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 1626
    .local v8, "yl":J
    array-length v12, v4

    sub-int/2addr v12, v3

    .line 1627
    .local v12, "rstart":I
    add-int/lit8 v13, v2, -0x1

    .local v13, "i":I
    :goto_2d
    if-ltz v13, :cond_48

    .line 1628
    aget v14, v0, v13

    int-to-long v14, v14

    and-long/2addr v14, v10

    mul-long/2addr v14, v8

    add-long/2addr v14, v5

    .line 1629
    .local v14, "product":J
    add-int/lit8 v16, v12, -0x1

    .end local v12    # "rstart":I
    .local v16, "rstart":I
    long-to-int v10, v14

    aput v10, v4, v12

    .line 1630
    const/16 v10, 0x20

    ushr-long v5, v14, v10

    .line 1627
    .end local v14    # "product":J
    add-int/lit8 v13, v13, -0x1

    move/from16 v12, v16

    const-wide v10, 0xffffffffL

    goto :goto_2d

    .line 1632
    .end local v13    # "i":I
    .end local v16    # "rstart":I
    .restart local v12    # "rstart":I
    :cond_48
    const-wide/16 v10, 0x0

    cmp-long v10, v5, v10

    if-nez v10, :cond_54

    .line 1633
    array-length v10, v4

    invoke-static {v4, v3, v10}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    goto :goto_57

    .line 1635
    :cond_54
    long-to-int v3, v5

    aput v3, v4, v12

    .line 1637
    :goto_57
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v3
.end method

.method private static blacklist multiplyKaratsuba(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 15
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;

    .line 1732
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    .line 1733
    .local v0, "xlen":I
    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    .line 1736
    .local v1, "ylen":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 1740
    .local v2, "half":I
    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getLower(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 1741
    .local v3, "xl":Ljava/math/BigInteger;
    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getUpper(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1742
    .local v4, "xh":Ljava/math/BigInteger;
    invoke-direct {p1, v2}, Ljava/math/BigInteger;->getLower(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 1743
    .local v5, "yl":Ljava/math/BigInteger;
    invoke-direct {p1, v2}, Ljava/math/BigInteger;->getUpper(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 1745
    .local v6, "yh":Ljava/math/BigInteger;
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 1746
    .local v7, "p1":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 1749
    .local v8, "p2":Ljava/math/BigInteger;
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 1752
    .local v9, "p3":Ljava/math/BigInteger;
    mul-int/lit8 v10, v2, 0x20

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    mul-int/lit8 v11, v2, 0x20

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1754
    .local v10, "result":Ljava/math/BigInteger;
    iget v11, p0, Ljava/math/BigInteger;->signum:I

    iget v12, p1, Ljava/math/BigInteger;->signum:I

    if-eq v11, v12, :cond_59

    .line 1755
    invoke-virtual {v10}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v11

    return-object v11

    .line 1757
    :cond_59
    return-object v10
.end method

.method private static blacklist multiplyToLen([II[II[I)[I
    .registers 20
    .param p0, "x"    # [I
    .param p1, "xlen"    # I
    .param p2, "y"    # [I
    .param p3, "ylen"    # I
    .param p4, "z"    # [I

    .line 1687
    move-object/from16 v0, p4

    add-int/lit8 v1, p1, -0x1

    .line 1688
    .local v1, "xstart":I
    add-int/lit8 v2, p3, -0x1

    .line 1690
    .local v2, "ystart":I
    if-eqz v0, :cond_d

    array-length v3, v0

    add-int v4, p1, p3

    if-ge v3, v4, :cond_11

    .line 1691
    :cond_d
    add-int v3, p1, p3

    new-array v0, v3, [I

    .line 1693
    .end local p4    # "z":[I
    .local v0, "z":[I
    :cond_11
    const-wide/16 v3, 0x0

    .line 1694
    .local v3, "carry":J
    move v5, v2

    .local v5, "j":I
    add-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v1

    .local v6, "k":I
    :goto_17
    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    if-ltz v5, :cond_34

    .line 1695
    aget v10, p2, v5

    int-to-long v10, v10

    and-long/2addr v10, v8

    aget v12, p0, v1

    int-to-long v12, v12

    and-long/2addr v8, v12

    mul-long/2addr v10, v8

    add-long/2addr v10, v3

    .line 1697
    .local v10, "product":J
    long-to-int v8, v10

    aput v8, v0, v6

    .line 1698
    ushr-long v3, v10, v7

    .line 1694
    .end local v10    # "product":J
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 1700
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_34
    long-to-int v5, v3

    aput v5, v0, v1

    .line 1702
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_39
    if-ltz v5, :cond_62

    .line 1703
    const-wide/16 v3, 0x0

    .line 1704
    move v6, v2

    .local v6, "j":I
    add-int/lit8 v10, v2, 0x1

    add-int/2addr v10, v5

    .local v10, "k":I
    :goto_41
    if-ltz v6, :cond_5c

    .line 1705
    aget v11, p2, v6

    int-to-long v11, v11

    and-long/2addr v11, v8

    aget v13, p0, v5

    int-to-long v13, v13

    and-long/2addr v13, v8

    mul-long/2addr v11, v13

    aget v13, v0, v10

    int-to-long v13, v13

    and-long/2addr v13, v8

    add-long/2addr v11, v13

    add-long/2addr v11, v3

    .line 1708
    .local v11, "product":J
    long-to-int v13, v11

    aput v13, v0, v10

    .line 1709
    ushr-long v3, v11, v7

    .line 1704
    .end local v11    # "product":J
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_41

    .line 1711
    .end local v6    # "j":I
    .end local v10    # "k":I
    :cond_5c
    long-to-int v6, v3

    aput v6, v0, v5

    .line 1702
    add-int/lit8 v5, v5, -0x1

    goto :goto_39

    .line 1713
    .end local v5    # "i":I
    :cond_62
    return-object v0
.end method

.method private static blacklist multiplyToomCook3(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 28
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .line 1790
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v2

    .line 1791
    .local v2, "alen":I
    iget-object v3, v1, Ljava/math/BigInteger;->mag:[I

    array-length v3, v3

    .line 1793
    .local v3, "blen":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1796
    .local v4, "largest":I
    add-int/lit8 v5, v4, 0x2

    div-int/lit8 v5, v5, 0x3

    .line 1799
    .local v5, "k":I
    mul-int/lit8 v6, v5, 0x2

    sub-int v6, v4, v6

    .line 1804
    .local v6, "r":I
    const/4 v7, 0x0

    invoke-direct {v0, v5, v6, v7, v4}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v8

    .line 1805
    .local v8, "a2":Ljava/math/BigInteger;
    const/4 v9, 0x1

    invoke-direct {v0, v5, v6, v9, v4}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v10

    .line 1806
    .local v10, "a1":Ljava/math/BigInteger;
    const/4 v11, 0x2

    invoke-direct {v0, v5, v6, v11, v4}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v12

    .line 1807
    .local v12, "a0":Ljava/math/BigInteger;
    invoke-direct {v1, v5, v6, v7, v4}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v7

    .line 1808
    .local v7, "b2":Ljava/math/BigInteger;
    invoke-direct {v1, v5, v6, v9, v4}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v13

    .line 1809
    .local v13, "b1":Ljava/math/BigInteger;
    invoke-direct {v1, v5, v6, v11, v4}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v11

    .line 1813
    .local v11, "b0":Ljava/math/BigInteger;
    invoke-direct {v12, v11, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v14

    .line 1814
    .local v14, "v0":Ljava/math/BigInteger;
    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 1815
    .local v15, "da1":Ljava/math/BigInteger;
    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 1816
    .local v9, "db1":Ljava/math/BigInteger;
    move/from16 v17, v2

    .end local v2    # "alen":I
    .local v17, "alen":I
    invoke-virtual {v15, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v18, v3

    .end local v3    # "blen":I
    .local v18, "blen":I
    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "largest":I
    .local v19, "largest":I
    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v2

    .line 1817
    .local v2, "vm1":Ljava/math/BigInteger;
    invoke-virtual {v15, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1818
    .end local v15    # "da1":Ljava/math/BigInteger;
    .local v3, "da1":Ljava/math/BigInteger;
    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 1819
    invoke-direct {v3, v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v15

    .line 1820
    .local v15, "v1":Ljava/math/BigInteger;
    move/from16 v16, v6

    .end local v6    # "r":I
    .local v16, "r":I
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1821
    move-object/from16 v20, v3

    .end local v3    # "da1":Ljava/math/BigInteger;
    .local v20, "da1":Ljava/math/BigInteger;
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1820
    invoke-direct {v6, v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v3

    .line 1822
    .local v3, "v2":Ljava/math/BigInteger;
    invoke-direct {v8, v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v6

    .line 1830
    .local v6, "vinf":Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-direct/range {v21 .. v21}, Ljava/math/BigInteger;->exactDivideBy3()Ljava/math/BigInteger;

    move-result-object v4

    .line 1831
    .local v4, "t2":Ljava/math/BigInteger;
    move-object/from16 v21, v3

    .end local v3    # "v2":Ljava/math/BigInteger;
    .local v21, "v2":Ljava/math/BigInteger;
    invoke-virtual {v15, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "vm1":Ljava/math/BigInteger;
    .local v23, "vm1":Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 1832
    .local v3, "tm1":Ljava/math/BigInteger;
    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1833
    .local v2, "t1":Ljava/math/BigInteger;
    move-object/from16 v24, v7

    .end local v7    # "b2":Ljava/math/BigInteger;
    .local v24, "b2":Ljava/math/BigInteger;
    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v25, v4

    const/4 v4, 0x1

    .end local v4    # "t2":Ljava/math/BigInteger;
    .local v25, "t2":Ljava/math/BigInteger;
    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 1834
    .end local v25    # "t2":Ljava/math/BigInteger;
    .local v7, "t2":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1835
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1836
    .end local v7    # "t2":Ljava/math/BigInteger;
    .restart local v4    # "t2":Ljava/math/BigInteger;
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1839
    mul-int/lit8 v7, v5, 0x20

    .line 1841
    .local v7, "ss":I
    move/from16 v22, v5

    .end local v5    # "k":I
    .local v22, "k":I
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1843
    .local v5, "result":Ljava/math/BigInteger;
    move-object/from16 v25, v2

    .end local v2    # "t1":Ljava/math/BigInteger;
    .local v25, "t1":Ljava/math/BigInteger;
    iget v2, v0, Ljava/math/BigInteger;->signum:I

    iget v0, v1, Ljava/math/BigInteger;->signum:I

    if-eq v2, v0, :cond_ec

    .line 1844
    invoke-virtual {v5}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1846
    :cond_ec
    return-object v5
.end method

.method private blacklist oddModPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 40
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "z"    # Ljava/math/BigInteger;

    .line 2898
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2899
    return-object v0

    .line 2902
    :cond_d
    iget v2, v0, Ljava/math/BigInteger;->signum:I

    if-nez v2, :cond_14

    .line 2903
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v2

    .line 2905
    :cond_14
    iget-object v2, v0, Ljava/math/BigInteger;->mag:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 2906
    .local v2, "base":[I
    iget-object v3, v1, Ljava/math/BigInteger;->mag:[I

    .line 2907
    .local v3, "exp":[I
    move-object/from16 v4, p2

    iget-object v5, v4, Ljava/math/BigInteger;->mag:[I

    .line 2908
    .local v5, "mod":[I
    array-length v6, v5

    .line 2914
    .local v6, "modLen":I
    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_33

    .line 2915
    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [I

    .line 2916
    .local v7, "x":[I
    invoke-static {v5, v8, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2917
    move-object v5, v7

    .line 2918
    add-int/lit8 v6, v6, 0x1

    .line 2922
    .end local v7    # "x":[I
    :cond_33
    const/4 v7, 0x0

    .line 2923
    .local v7, "wbits":I
    array-length v10, v3

    invoke-static {v3, v10}, Ljava/math/BigInteger;->bitLength([II)I

    move-result v15

    .line 2925
    .local v15, "ebits":I
    const/16 v10, 0x11

    if-ne v15, v10, :cond_44

    aget v10, v3, v8

    const v11, 0x10001

    if-eq v10, v11, :cond_4d

    .line 2926
    :cond_44
    :goto_44
    sget-object v10, Ljava/math/BigInteger;->bnExpModThreshTable:[I

    aget v10, v10, v7

    if-le v15, v10, :cond_4d

    .line 2927
    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    .line 2932
    :cond_4d
    shl-int v13, v9, v7

    .line 2935
    .local v13, "tblmask":I
    new-array v14, v13, [[I

    .line 2936
    .local v14, "table":[[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_52
    if-ge v10, v13, :cond_5b

    .line 2937
    new-array v11, v6, [I

    aput-object v11, v14, v10

    .line 2936
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 2941
    .end local v10    # "i":I
    :cond_5b
    add-int/lit8 v10, v6, -0x1

    aget v10, v5, v10

    int-to-long v10, v10

    const-wide v16, 0xffffffffL

    and-long v10, v10, v16

    add-int/lit8 v12, v6, -0x2

    aget v12, v5, v12

    int-to-long v8, v12

    and-long v8, v8, v16

    const/16 v12, 0x20

    shl-long/2addr v8, v12

    add-long/2addr v8, v10

    .line 2942
    .local v8, "n0":J
    invoke-static {v8, v9}, Ljava/math/MutableBigInteger;->inverseMod64(J)J

    move-result-wide v10

    neg-long v11, v10

    .line 2945
    .local v11, "inv":J
    array-length v10, v2

    shl-int/lit8 v0, v6, 0x5

    invoke-static {v2, v10, v0}, Ljava/math/BigInteger;->leftShift([III)[I

    move-result-object v0

    .line 2947
    .local v0, "a":[I
    new-instance v10, Ljava/math/MutableBigInteger;

    invoke-direct {v10}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2948
    .local v10, "q":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v0}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2949
    .local v1, "a2":Ljava/math/MutableBigInteger;
    move-object/from16 v17, v0

    .end local v0    # "a":[I
    .local v17, "a":[I
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, v5}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2950
    .local v0, "b2":Ljava/math/MutableBigInteger;
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 2953
    invoke-virtual {v1, v0, v10}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v20

    .line 2954
    .local v20, "r":Ljava/math/MutableBigInteger;
    invoke-virtual/range {v20 .. v20}, Ljava/math/MutableBigInteger;->toIntArray()[I

    move-result-object v16

    move-object/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "b2":Ljava/math/MutableBigInteger;
    .local v21, "b2":Ljava/math/MutableBigInteger;
    aput-object v16, v14, v0

    .line 2957
    move-object/from16 v22, v1

    .end local v1    # "a2":Ljava/math/MutableBigInteger;
    .local v22, "a2":Ljava/math/MutableBigInteger;
    aget-object v1, v14, v0

    array-length v1, v1

    if-ge v1, v6, :cond_bc

    .line 2958
    aget-object v1, v14, v0

    array-length v1, v1

    sub-int v1, v6, v1

    .line 2959
    .local v1, "offset":I
    move-object/from16 v23, v2

    .end local v2    # "base":[I
    .local v23, "base":[I
    new-array v2, v6, [I

    .line 2960
    .local v2, "t2":[I
    aget-object v4, v14, v0

    move-wide/from16 v24, v8

    .end local v8    # "n0":J
    .local v24, "n0":J
    aget-object v8, v14, v0

    array-length v8, v8

    invoke-static {v4, v0, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2961
    aput-object v2, v14, v0

    goto :goto_c0

    .line 2957
    .end local v1    # "offset":I
    .end local v23    # "base":[I
    .end local v24    # "n0":J
    .local v2, "base":[I
    .restart local v8    # "n0":J
    :cond_bc
    move-object/from16 v23, v2

    move-wide/from16 v24, v8

    .line 2965
    .end local v2    # "base":[I
    .end local v8    # "n0":J
    .restart local v23    # "base":[I
    .restart local v24    # "n0":J
    :goto_c0
    aget-object v1, v14, v0

    const/4 v0, 0x0

    move-object v2, v10

    .end local v10    # "q":Ljava/math/MutableBigInteger;
    .local v2, "q":Ljava/math/MutableBigInteger;
    move-object v10, v1

    move-wide v8, v11

    .end local v11    # "inv":J
    .local v8, "inv":J
    move-object v11, v5

    move v12, v6

    move v1, v13

    move-object v4, v14

    .end local v13    # "tblmask":I
    .end local v14    # "table":[[I
    .local v1, "tblmask":I
    .local v4, "table":[[I
    move-wide v13, v8

    move/from16 v26, v15

    .end local v15    # "ebits":I
    .local v26, "ebits":I
    move-object v15, v0

    invoke-static/range {v10 .. v15}, Ljava/math/BigInteger;->montgomerySquare([I[IIJ[I)[I

    move-result-object v0

    .line 2968
    .local v0, "b":[I
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v27

    .line 2971
    .local v27, "t":[I
    const/4 v10, 0x1

    move v14, v10

    .local v14, "i":I
    :goto_d8
    if-ge v14, v1, :cond_f0

    .line 2972
    add-int/lit8 v10, v14, -0x1

    aget-object v11, v4, v10

    const/16 v16, 0x0

    move-object/from16 v10, v27

    move-object v12, v5

    move v13, v6

    move/from16 v28, v14

    .end local v14    # "i":I
    .local v28, "i":I
    move-wide v14, v8

    invoke-static/range {v10 .. v16}, Ljava/math/BigInteger;->montgomeryMultiply([I[I[IIJ[I)[I

    move-result-object v10

    aput-object v10, v4, v28

    .line 2971
    add-int/lit8 v14, v28, 0x1

    .end local v28    # "i":I
    .restart local v14    # "i":I
    goto :goto_d8

    :cond_f0
    move/from16 v28, v14

    .line 2976
    .end local v14    # "i":I
    add-int/lit8 v15, v26, -0x1

    and-int/lit8 v10, v15, 0x1f

    const/4 v11, 0x1

    shl-int v10, v11, v10

    .line 2978
    .local v10, "bitpos":I
    const/4 v11, 0x0

    .line 2979
    .local v11, "buf":I
    array-length v12, v3

    .line 2980
    .local v12, "elen":I
    const/4 v13, 0x0

    .line 2981
    .local v13, "eIndex":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_fd
    if-gt v14, v7, :cond_11b

    .line 2982
    shl-int/lit8 v15, v11, 0x1

    aget v16, v3, v13

    and-int v16, v16, v10

    if-eqz v16, :cond_10a

    const/16 v16, 0x1

    goto :goto_10c

    :cond_10a
    const/16 v16, 0x0

    :goto_10c
    or-int v11, v15, v16

    .line 2983
    ushr-int/lit8 v10, v10, 0x1

    .line 2984
    if-nez v10, :cond_118

    .line 2985
    add-int/lit8 v13, v13, 0x1

    .line 2986
    const/high16 v10, -0x80000000

    .line 2987
    add-int/lit8 v12, v12, -0x1

    .line 2981
    :cond_118
    add-int/lit8 v14, v14, 0x1

    goto :goto_fd

    .line 2991
    .end local v14    # "i":I
    :cond_11b
    move/from16 v14, v26

    .line 2994
    .local v14, "multpos":I
    add-int/lit8 v15, v26, -0x1

    .line 2995
    .end local v26    # "ebits":I
    .restart local v15    # "ebits":I
    const/16 v16, 0x1

    .line 2997
    .local v16, "isone":Z
    sub-int v14, v15, v7

    .line 2998
    :goto_123
    and-int/lit8 v26, v11, 0x1

    if-nez v26, :cond_12c

    .line 2999
    ushr-int/lit8 v11, v11, 0x1

    .line 3000
    add-int/lit8 v14, v14, 0x1

    goto :goto_123

    .line 3003
    :cond_12c
    ushr-int/lit8 v26, v11, 0x1

    aget-object v26, v4, v26

    .line 3005
    .local v26, "mult":[I
    const/4 v11, 0x0

    .line 3006
    if-ne v14, v15, :cond_142

    .line 3007
    const/16 v16, 0x0

    move-object/from16 v35, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v35

    move-object/from16 v36, v26

    move/from16 v26, v16

    move-object/from16 v16, v36

    goto :goto_14e

    .line 3006
    :cond_142
    move-object/from16 v35, v17

    move-object/from16 v17, v0

    move-object/from16 v0, v35

    move-object/from16 v36, v26

    move/from16 v26, v16

    move-object/from16 v16, v36

    .line 3011
    .local v0, "a":[I
    .local v16, "mult":[I
    .local v17, "b":[I
    .local v26, "isone":Z
    :goto_14e
    add-int/lit8 v15, v15, -0x1

    .line 3013
    const/16 v19, 0x1

    shl-int/lit8 v11, v11, 0x1

    .line 3015
    if-eqz v12, :cond_17b

    .line 3016
    aget v28, v3, v13

    and-int v28, v28, v10

    if-eqz v28, :cond_15f

    const/16 v28, 0x1

    goto :goto_161

    :cond_15f
    const/16 v28, 0x0

    :goto_161
    or-int v11, v11, v28

    .line 3017
    ushr-int/lit8 v10, v10, 0x1

    .line 3018
    if-nez v10, :cond_174

    .line 3019
    add-int/lit8 v13, v13, 0x1

    .line 3020
    const/high16 v10, -0x80000000

    .line 3021
    add-int/lit8 v12, v12, -0x1

    move/from16 v28, v10

    move/from16 v29, v12

    move/from16 v30, v13

    goto :goto_181

    .line 3018
    :cond_174
    move/from16 v28, v10

    move/from16 v29, v12

    move/from16 v30, v13

    goto :goto_181

    .line 3015
    :cond_17b
    move/from16 v28, v10

    move/from16 v29, v12

    move/from16 v30, v13

    .line 3026
    .end local v10    # "bitpos":I
    .end local v12    # "elen":I
    .end local v13    # "eIndex":I
    .local v28, "bitpos":I
    .local v29, "elen":I
    .local v30, "eIndex":I
    :goto_181
    and-int v10, v11, v1

    if-eqz v10, :cond_19b

    .line 3027
    sub-int v10, v15, v7

    .line 3028
    .end local v14    # "multpos":I
    .local v10, "multpos":I
    :goto_187
    and-int/lit8 v12, v11, 0x1

    if-nez v12, :cond_190

    .line 3029
    ushr-int/lit8 v11, v11, 0x1

    .line 3030
    add-int/lit8 v10, v10, 0x1

    goto :goto_187

    .line 3032
    :cond_190
    ushr-int/lit8 v12, v11, 0x1

    aget-object v12, v4, v12

    .line 3033
    .end local v16    # "mult":[I
    .local v12, "mult":[I
    const/4 v11, 0x0

    move v14, v10

    move/from16 v31, v11

    move-object/from16 v32, v12

    goto :goto_19f

    .line 3026
    .end local v10    # "multpos":I
    .end local v12    # "mult":[I
    .restart local v14    # "multpos":I
    .restart local v16    # "mult":[I
    :cond_19b
    move/from16 v31, v11

    move-object/from16 v32, v16

    .line 3037
    .end local v11    # "buf":I
    .end local v16    # "mult":[I
    .local v31, "buf":I
    .local v32, "mult":[I
    :goto_19f
    if-ne v15, v14, :cond_1cb

    .line 3038
    if-eqz v26, :cond_1b2

    .line 3039
    invoke-virtual/range {v32 .. v32}, [I->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 3040
    .end local v17    # "b":[I
    .local v10, "b":[I
    const/4 v11, 0x0

    move/from16 v26, v11

    move/from16 v34, v14

    move/from16 v33, v15

    move-object v15, v10

    .end local v26    # "isone":Z
    .local v11, "isone":Z
    goto :goto_1d1

    .line 3042
    .end local v10    # "b":[I
    .end local v11    # "isone":Z
    .restart local v17    # "b":[I
    .restart local v26    # "isone":Z
    :cond_1b2
    move-object/from16 v10, v17

    .line 3043
    .end local v27    # "t":[I
    .local v10, "t":[I
    move-object/from16 v11, v32

    move-object v12, v5

    move v13, v6

    move/from16 v34, v14

    move/from16 v33, v15

    .end local v14    # "multpos":I
    .end local v15    # "ebits":I
    .local v33, "ebits":I
    .local v34, "multpos":I
    move-wide v14, v8

    move-object/from16 v16, v0

    invoke-static/range {v10 .. v16}, Ljava/math/BigInteger;->montgomeryMultiply([I[I[IIJ[I)[I

    move-result-object v0

    .line 3044
    move-object v10, v0

    move-object/from16 v0, v17

    move-object v11, v10

    move-object/from16 v27, v10

    move-object v15, v11

    .end local v17    # "b":[I
    .local v11, "b":[I
    goto :goto_1d1

    .line 3037
    .end local v10    # "t":[I
    .end local v11    # "b":[I
    .end local v33    # "ebits":I
    .end local v34    # "multpos":I
    .restart local v14    # "multpos":I
    .restart local v15    # "ebits":I
    .restart local v17    # "b":[I
    .restart local v27    # "t":[I
    :cond_1cb
    move/from16 v34, v14

    move/from16 v33, v15

    .end local v14    # "multpos":I
    .end local v15    # "ebits":I
    .restart local v33    # "ebits":I
    .restart local v34    # "multpos":I
    move-object/from16 v15, v17

    .line 3049
    .end local v17    # "b":[I
    .local v15, "b":[I
    :goto_1d1
    if-nez v33, :cond_1ec

    .line 3050
    nop

    .line 3061
    mul-int/lit8 v10, v6, 0x2

    new-array v10, v10, [I

    .line 3062
    .local v10, "t2":[I
    const/4 v13, 0x0

    invoke-static {v15, v13, v10, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3064
    long-to-int v11, v8

    invoke-static {v10, v5, v6, v11}, Ljava/math/BigInteger;->montReduce([I[III)[I

    move-result-object v11

    .line 3066
    .end local v15    # "b":[I
    .restart local v11    # "b":[I
    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    .line 3068
    new-instance v12, Ljava/math/BigInteger;

    const/4 v14, 0x1

    invoke-direct {v12, v14, v10}, Ljava/math/BigInteger;-><init>(I[I)V

    return-object v12

    .line 3053
    .end local v10    # "t2":[I
    .end local v11    # "b":[I
    .restart local v15    # "b":[I
    :cond_1ec
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v26, :cond_217

    .line 3054
    move-object v10, v15

    .line 3055
    .end local v27    # "t":[I
    .local v10, "t":[I
    move-object v11, v5

    move v12, v6

    move/from16 v16, v13

    move/from16 v17, v14

    move-wide v13, v8

    move-object/from16 v18, v15

    .end local v15    # "b":[I
    .local v18, "b":[I
    move-object v15, v0

    invoke-static/range {v10 .. v15}, Ljava/math/BigInteger;->montgomerySquare([I[IIJ[I)[I

    move-result-object v0

    .line 3056
    move-object/from16 v27, v0

    .end local v10    # "t":[I
    .restart local v27    # "t":[I
    move-object/from16 v0, v18

    move-object/from16 v10, v27

    move-object/from16 v17, v10

    move/from16 v10, v28

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v11, v31

    move-object/from16 v16, v32

    move/from16 v15, v33

    move/from16 v14, v34

    .end local v18    # "b":[I
    .local v10, "b":[I
    goto/16 :goto_14e

    .line 3053
    .end local v10    # "b":[I
    .restart local v15    # "b":[I
    :cond_217
    move/from16 v16, v13

    move/from16 v17, v14

    move-object/from16 v18, v15

    .end local v15    # "b":[I
    .restart local v18    # "b":[I
    move-object/from16 v17, v18

    move/from16 v10, v28

    move/from16 v12, v29

    move/from16 v13, v30

    move/from16 v11, v31

    move-object/from16 v16, v32

    move/from16 v15, v33

    move/from16 v14, v34

    goto/16 :goto_14e
.end method

.method private blacklist parseInt([CII)I
    .registers 10
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 548
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "start":I
    .local v0, "start":I
    aget-char p2, p1, p2

    const/16 v1, 0xa

    invoke-static {p2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result p2

    .line 549
    .local p2, "result":I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_2b

    .line 552
    move v3, v0

    .local v3, "index":I
    :goto_e
    if-ge v3, p3, :cond_2a

    .line 553
    aget-char v4, p1, v3

    invoke-static {v4, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 554
    .local v4, "nextVal":I
    if-eq v4, v2, :cond_1f

    .line 556
    mul-int/lit8 v5, p2, 0xa

    add-int p2, v5, v4

    .line 552
    .end local v4    # "nextVal":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 555
    .restart local v4    # "nextVal":I
    :cond_1f
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    .end local v3    # "index":I
    .end local v4    # "nextVal":I
    :cond_2a
    return p2

    .line 550
    :cond_2b
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist passesLucasLehmer()Z
    .registers 6

    .line 906
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 909
    .local v0, "thisPlusOne":Ljava/math/BigInteger;
    const/4 v1, 0x5

    .line 910
    .local v1, "d":I
    :goto_7
    invoke-static {v1, p0}, Ljava/math/BigInteger;->jacobiSymbol(ILjava/math/BigInteger;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 912
    if-gez v1, :cond_17

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1a

    :cond_17
    add-int/lit8 v2, v1, 0x2

    neg-int v2, v2

    :goto_1a
    move v1, v2

    goto :goto_7

    .line 916
    :cond_1c
    invoke-static {v1, v0, p0}, Ljava/math/BigInteger;->lucasLehmerSequence(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 919
    .local v2, "u":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private blacklist passesMillerRabin(ILjava/util/Random;)Z
    .registers 11
    .param p1, "iterations"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 1023
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1024
    .local v0, "thisMinusOne":Ljava/math/BigInteger;
    move-object v1, v0

    .line 1025
    .local v1, "m":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    .line 1026
    .local v2, "a":I
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 1029
    if-nez p2, :cond_15

    .line 1030
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    .line 1032
    :cond_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, p1, :cond_5e

    .line 1036
    :cond_18
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-direct {v4, v5, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 1037
    .local v4, "b":Ljava/math/BigInteger;
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_18

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_18

    .line 1039
    const/4 v5, 0x0

    .line 1040
    .local v5, "j":I
    invoke-virtual {v4, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1041
    .local v6, "z":Ljava/math/BigInteger;
    :goto_34
    if-nez v5, :cond_3e

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    :cond_3e
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5b

    .line 1042
    if-lez v5, :cond_4e

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_52

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_54

    .line 1043
    :cond_52
    const/4 v7, 0x0

    return v7

    .line 1044
    :cond_54
    sget-object v7, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_34

    .line 1032
    .end local v4    # "b":Ljava/math/BigInteger;
    .end local v5    # "j":I
    .end local v6    # "z":Ljava/math/BigInteger;
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1047
    .end local v3    # "i":I
    :cond_5e
    const/4 v3, 0x1

    return v3
.end method

.method static blacklist primitiveLeftShift([III)V
    .registers 10
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "n"    # I

    .line 2558
    if-eqz p1, :cond_27

    if-nez p2, :cond_5

    goto :goto_27

    .line 2561
    :cond_5
    rsub-int/lit8 v0, p2, 0x20

    .line 2562
    .local v0, "n2":I
    const/4 v1, 0x0

    .local v1, "i":I
    aget v2, p0, v1

    .local v2, "c":I
    add-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    .local v3, "m":I
    :goto_e
    if-ge v1, v3, :cond_1f

    .line 2563
    move v4, v2

    .line 2564
    .local v4, "b":I
    add-int/lit8 v5, v1, 0x1

    aget v2, p0, v5

    .line 2565
    shl-int v5, v4, p2

    ushr-int v6, v2, v0

    or-int/2addr v5, v6

    aput v5, p0, v1

    .line 2562
    .end local v4    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2567
    .end local v1    # "i":I
    .end local v2    # "c":I
    .end local v3    # "m":I
    :cond_1f
    add-int/lit8 v1, p1, -0x1

    aget v2, p0, v1

    shl-int/2addr v2, p2

    aput v2, p0, v1

    .line 2568
    return-void

    .line 2559
    .end local v0    # "n2":I
    :cond_27
    :goto_27
    return-void
.end method

.method static blacklist primitiveRightShift([III)V
    .registers 9
    .param p0, "a"    # [I
    .param p1, "len"    # I
    .param p2, "n"    # I

    .line 2547
    rsub-int/lit8 v0, p2, 0x20

    .line 2548
    .local v0, "n2":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    aget v2, p0, v1

    .local v2, "c":I
    :goto_6
    if-lez v1, :cond_17

    .line 2549
    move v3, v2

    .line 2550
    .local v3, "b":I
    add-int/lit8 v4, v1, -0x1

    aget v2, p0, v4

    .line 2551
    shl-int v4, v2, v0

    ushr-int v5, v3, p2

    or-int/2addr v4, v5

    aput v4, p0, v1

    .line 2548
    .end local v3    # "b":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2553
    .end local v1    # "i":I
    .end local v2    # "c":I
    :cond_17
    const/4 v1, 0x0

    aget v2, p0, v1

    ushr-int/2addr v2, p2

    aput v2, p0, v1

    .line 2554
    return-void
.end method

.method public static whitelist test-api probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "bitLength"    # I
    .param p1, "rnd"    # Ljava/util/Random;

    .line 698
    const/4 v0, 0x2

    if-lt p0, v0, :cond_13

    .line 701
    const/16 v0, 0x5f

    const/16 v1, 0x64

    if-ge p0, v0, :cond_e

    .line 702
    invoke-static {p0, v1, p1}, Ljava/math/BigInteger;->smallPrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_12

    .line 703
    :cond_e
    invoke-static {p0, v1, p1}, Ljava/math/BigInteger;->largePrime(IILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    .line 701
    :goto_12
    return-object v0

    .line 699
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "bitLength < 2"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist randomBits(ILjava/util/Random;)[B
    .registers 9
    .param p0, "numBits"    # I
    .param p1, "rnd"    # Ljava/util/Random;

    .line 631
    if-ltz p0, :cond_22

    .line 633
    int-to-long v0, p0

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 634
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 637
    .local v1, "randomBits":[B
    if-lez v0, :cond_21

    .line 638
    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 639
    mul-int/lit8 v2, v0, 0x8

    sub-int/2addr v2, p0

    .line 640
    .local v2, "excessBits":I
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    rsub-int/lit8 v5, v2, 0x8

    const/4 v6, 0x1

    shl-int v5, v6, v5

    sub-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 642
    .end local v2    # "excessBits":I
    :cond_21
    return-object v1

    .line 632
    .end local v0    # "numBytes":I
    .end local v1    # "randomBits":[B
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numBits must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4622
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 4625
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "signum"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 4626
    .local v2, "sign":I
    const-string v3, "magnitude"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 4629
    .local v4, "magnitude":[B
    const/4 v5, -0x1

    if-lt v2, v5, :cond_55

    const/4 v5, 0x1

    if-le v2, v5, :cond_1b

    goto :goto_55

    .line 4635
    :cond_1b
    invoke-static {v4}, Ljava/math/BigInteger;->stripLeadingZeroBytes([B)[I

    move-result-object v1

    .line 4636
    .local v1, "mag":[I
    array-length v6, v1

    const/4 v7, 0x0

    if-nez v6, :cond_25

    move v6, v5

    goto :goto_26

    :cond_25
    move v6, v7

    :goto_26
    if-nez v2, :cond_29

    goto :goto_2a

    :cond_29
    move v5, v7

    :goto_2a
    if-eq v6, v5, :cond_3c

    .line 4637
    const-string v5, "BigInteger: signum-magnitude mismatch"

    .line 4638
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 4639
    const-string v5, "BigInteger: Magnitude not present in stream"

    .line 4640
    :cond_36
    new-instance v3, Ljava/io/StreamCorruptedException;

    invoke-direct {v3, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4644
    .end local v5    # "message":Ljava/lang/String;
    :cond_3c
    invoke-static {p0, v2}, Ljava/math/BigInteger$UnsafeHolder;->putSign(Ljava/math/BigInteger;I)V

    .line 4647
    invoke-static {p0, v1}, Ljava/math/BigInteger$UnsafeHolder;->putMag(Ljava/math/BigInteger;[I)V

    .line 4648
    array-length v3, v1

    const/high16 v5, 0x4000000

    if-lt v3, v5, :cond_54

    .line 4650
    :try_start_47
    invoke-direct {p0}, Ljava/math/BigInteger;->checkRange()V
    :try_end_4a
    .catch Ljava/lang/ArithmeticException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 4653
    goto :goto_54

    .line 4651
    :catch_4b
    move-exception v3

    .line 4652
    .local v3, "e":Ljava/lang/ArithmeticException;
    new-instance v5, Ljava/io/StreamCorruptedException;

    const-string v6, "BigInteger: Out of the supported range"

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4655
    .end local v3    # "e":Ljava/lang/ArithmeticException;
    :cond_54
    :goto_54
    return-void

    .line 4630
    .end local v1    # "mag":[I
    :cond_55
    :goto_55
    const-string v3, "BigInteger: Invalid signum value"

    .line 4631
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 4632
    const-string v3, "BigInteger: Signum not present in stream"

    .line 4633
    :cond_5f
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-direct {v1, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist remainderBurnikelZiegler(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2346
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->divideAndRemainderBurnikelZiegler(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist remainderKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2324
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2325
    .local v0, "q":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2326
    .local v1, "a":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    iget-object v3, p1, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v2, v3}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2328
    .local v2, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v2, v0}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    iget v4, p0, Ljava/math/BigInteger;->signum:I

    invoke-virtual {v3, v4}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist reportOverflow()V
    .registers 2

    .line 1088
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger would overflow supported range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist reverse([I)[I
    .registers 5
    .param p0, "arg"    # [I

    .line 2634
    array-length v0, p0

    .line 2635
    .local v0, "len":I
    new-array v1, v0, [I

    .line 2636
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_11

    .line 2637
    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, v1, v2

    .line 2636
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2639
    .end local v2    # "i":I
    :cond_11
    return-object v1
.end method

.method private static blacklist shiftLeft([II)[I
    .registers 13
    .param p0, "mag"    # [I
    .param p1, "n"    # I

    .line 3309
    ushr-int/lit8 v0, p1, 0x5

    .line 3310
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 3311
    .local v1, "nBits":I
    array-length v2, p0

    .line 3312
    .local v2, "magLen":I
    const/4 v3, 0x0

    .line 3314
    .local v3, "newMag":[I
    const/4 v4, 0x0

    if-nez v1, :cond_11

    .line 3315
    add-int v5, v2, v0

    new-array v3, v5, [I

    .line 3316
    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43

    .line 3318
    :cond_11
    const/4 v5, 0x0

    .line 3319
    .local v5, "i":I
    rsub-int/lit8 v6, v1, 0x20

    .line 3320
    .local v6, "nBits2":I
    aget v4, p0, v4

    ushr-int/2addr v4, v6

    .line 3321
    .local v4, "highBits":I
    if-eqz v4, :cond_25

    .line 3322
    add-int v7, v2, v0

    add-int/lit8 v7, v7, 0x1

    new-array v3, v7, [I

    .line 3323
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    aput v4, v3, v5

    move v5, v7

    goto :goto_29

    .line 3325
    .end local v7    # "i":I
    .restart local v5    # "i":I
    :cond_25
    add-int v7, v2, v0

    new-array v3, v7, [I

    .line 3327
    :goto_29
    const/4 v7, 0x0

    .line 3328
    .local v7, "j":I
    :goto_2a
    add-int/lit8 v8, v2, -0x1

    if-ge v7, v8, :cond_3e

    .line 3329
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    add-int/lit8 v9, v7, 0x1

    .end local v7    # "j":I
    .local v9, "j":I
    aget v7, p0, v7

    shl-int/2addr v7, v1

    aget v10, p0, v9

    ushr-int/2addr v10, v6

    or-int/2addr v7, v10

    aput v7, v3, v5

    move v5, v8

    move v7, v9

    goto :goto_2a

    .line 3330
    .end local v8    # "i":I
    .end local v9    # "j":I
    .restart local v5    # "i":I
    .restart local v7    # "j":I
    :cond_3e
    aget v8, p0, v7

    shl-int/2addr v8, v1

    aput v8, v3, v5

    .line 3332
    .end local v4    # "highBits":I
    .end local v5    # "i":I
    .end local v6    # "nBits2":I
    .end local v7    # "j":I
    :goto_43
    return-object v3
.end method

.method private blacklist shiftRightImpl(I)Ljava/math/BigInteger;
    .registers 15
    .param p1, "n"    # I

    .line 3368
    ushr-int/lit8 v0, p1, 0x5

    .line 3369
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 3370
    .local v1, "nBits":I
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v3, v2

    .line 3371
    .local v3, "magLen":I
    const/4 v4, 0x0

    .line 3374
    .local v4, "newMag":[I
    const/4 v5, 0x1

    if-lt v0, v3, :cond_17

    .line 3375
    iget v2, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v2, :cond_12

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_16

    :cond_12
    sget-object v2, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    aget-object v2, v2, v5

    :goto_16
    return-object v2

    .line 3377
    :cond_17
    const/4 v6, 0x0

    if-nez v1, :cond_21

    .line 3378
    sub-int v7, v3, v0

    .line 3379
    .local v7, "newMagLen":I
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 3380
    .end local v4    # "newMag":[I
    .end local v7    # "newMagLen":I
    .local v2, "newMag":[I
    goto :goto_51

    .line 3381
    .end local v2    # "newMag":[I
    .restart local v4    # "newMag":[I
    :cond_21
    const/4 v7, 0x0

    .line 3382
    .local v7, "i":I
    aget v2, v2, v6

    ushr-int/2addr v2, v1

    .line 3383
    .local v2, "highBits":I
    if-eqz v2, :cond_31

    .line 3384
    sub-int v8, v3, v0

    new-array v4, v8, [I

    .line 3385
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aput v2, v4, v7

    move v7, v8

    goto :goto_36

    .line 3387
    .end local v8    # "i":I
    .restart local v7    # "i":I
    :cond_31
    sub-int v8, v3, v0

    sub-int/2addr v8, v5

    new-array v4, v8, [I

    .line 3390
    :goto_36
    rsub-int/lit8 v8, v1, 0x20

    .line 3391
    .local v8, "nBits2":I
    const/4 v9, 0x0

    .line 3392
    .local v9, "j":I
    :goto_39
    sub-int v10, v3, v0

    sub-int/2addr v10, v5

    if-ge v9, v10, :cond_50

    .line 3393
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "i":I
    .local v10, "i":I
    iget-object v11, p0, Ljava/math/BigInteger;->mag:[I

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "j":I
    .local v12, "j":I
    aget v9, v11, v9

    shl-int/2addr v9, v8

    aget v11, v11, v12

    ushr-int/2addr v11, v1

    or-int/2addr v9, v11

    aput v9, v4, v7

    move v7, v10

    move v9, v12

    goto :goto_39

    .line 3392
    .end local v10    # "i":I
    .end local v12    # "j":I
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    :cond_50
    move-object v2, v4

    .line 3396
    .end local v4    # "newMag":[I
    .end local v7    # "i":I
    .end local v8    # "nBits2":I
    .end local v9    # "j":I
    .local v2, "newMag":[I
    :goto_51
    iget v4, p0, Ljava/math/BigInteger;->signum:I

    if-gez v4, :cond_84

    .line 3398
    const/4 v4, 0x0

    .line 3399
    .local v4, "onesLost":Z
    add-int/lit8 v7, v3, -0x1

    .restart local v7    # "i":I
    sub-int v8, v3, v0

    .local v8, "j":I
    :goto_5a
    if-lt v7, v8, :cond_6b

    if-nez v4, :cond_6b

    .line 3400
    iget-object v9, p0, Ljava/math/BigInteger;->mag:[I

    aget v9, v9, v7

    if-eqz v9, :cond_66

    move v9, v5

    goto :goto_67

    :cond_66
    move v9, v6

    :goto_67
    move v4, v9

    .line 3399
    add-int/lit8 v7, v7, -0x1

    goto :goto_5a

    .line 3401
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_6b
    if-nez v4, :cond_7e

    if-eqz v1, :cond_7e

    .line 3402
    iget-object v7, p0, Ljava/math/BigInteger;->mag:[I

    sub-int v8, v3, v0

    sub-int/2addr v8, v5

    aget v7, v7, v8

    rsub-int/lit8 v8, v1, 0x20

    shl-int/2addr v7, v8

    if-eqz v7, :cond_7c

    goto :goto_7d

    :cond_7c
    move v5, v6

    :goto_7d
    move v4, v5

    .line 3404
    :cond_7e
    if-eqz v4, :cond_84

    .line 3405
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->javaIncrement([I)[I

    move-result-object v2

    .line 3408
    .end local v4    # "onesLost":Z
    :cond_84
    new-instance v4, Ljava/math/BigInteger;

    iget v5, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v4, v2, v5}, Ljava/math/BigInteger;-><init>([II)V

    return-object v4
.end method

.method private blacklist signBit()I
    .registers 2

    .line 4525
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist signInt()I
    .registers 2

    .line 4530
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-gez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static blacklist smallPrime(IILjava/util/Random;)Ljava/math/BigInteger;
    .registers 15
    .param p0, "bitLength"    # I
    .param p1, "certainty"    # I
    .param p2, "rnd"    # Ljava/util/Random;

    .line 714
    add-int/lit8 v0, p0, 0x1f

    ushr-int/lit8 v0, v0, 0x5

    .line 715
    .local v0, "magLen":I
    new-array v1, v0, [I

    .line 716
    .local v1, "temp":[I
    add-int/lit8 v2, p0, 0x1f

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    .line 717
    .local v2, "highBit":I
    shl-int/lit8 v4, v2, 0x1

    sub-int/2addr v4, v3

    .line 721
    .local v4, "highMask":I
    :cond_10
    :goto_10
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v0, :cond_1c

    .line 722
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v6

    aput v6, v1, v5

    .line 721
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 723
    .end local v5    # "i":I
    :cond_1c
    const/4 v5, 0x0

    aget v6, v1, v5

    and-int/2addr v6, v4

    or-int/2addr v6, v2

    aput v6, v1, v5

    .line 724
    const/4 v5, 0x2

    if-le p0, v5, :cond_2d

    .line 725
    add-int/lit8 v5, v0, -0x1

    aget v6, v1, v5

    or-int/2addr v6, v3

    aput v6, v1, v5

    .line 727
    :cond_2d
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    .line 730
    .local v5, "p":Ljava/math/BigInteger;
    const/4 v6, 0x6

    if-le p0, v6, :cond_a3

    .line 731
    sget-object v6, Ljava/math/BigInteger;->SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 732
    .local v6, "r":J
    const-wide/16 v8, 0x3

    rem-long v8, v6, v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x5

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x7

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0xb

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0xd

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x11

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x13

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x17

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x1d

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x1f

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x25

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_10

    const-wide/16 v8, 0x29

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_a3

    .line 735
    goto/16 :goto_10

    .line 739
    .end local v6    # "r":J
    :cond_a3
    const/4 v6, 0x4

    if-ge p0, v6, :cond_a7

    .line 740
    return-object v5

    .line 743
    :cond_a7
    invoke-virtual {v5, p1, p2}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 744
    return-object v5

    .line 745
    .end local v5    # "p":Ljava/math/BigInteger;
    :cond_ae
    goto/16 :goto_10
.end method

.method private blacklist smallToString(I)Ljava/lang/String;
    .registers 16
    .param p1, "radix"    # I

    .line 3930
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 3931
    const-string v0, "0"

    return-object v0

    .line 3935
    :cond_7
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    .line 3936
    .local v0, "maxNumDigitGroups":I
    new-array v1, v0, [Ljava/lang/String;

    .line 3939
    .local v1, "digitGroup":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 3940
    .local v2, "tmp":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .line 3941
    .local v3, "numGroups":I
    :goto_17
    iget v4, v2, Ljava/math/BigInteger;->signum:I

    if-eqz v4, :cond_57

    .line 3942
    sget-object v4, Ljava/math/BigInteger;->longRadix:[Ljava/math/BigInteger;

    aget-object v4, v4, p1

    .line 3944
    .local v4, "d":Ljava/math/BigInteger;
    new-instance v5, Ljava/math/MutableBigInteger;

    invoke-direct {v5}, Ljava/math/MutableBigInteger;-><init>()V

    .line 3945
    .local v5, "q":Ljava/math/MutableBigInteger;
    new-instance v6, Ljava/math/MutableBigInteger;

    iget-object v7, v2, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v6, v7}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 3946
    .local v6, "a":Ljava/math/MutableBigInteger;
    new-instance v7, Ljava/math/MutableBigInteger;

    iget-object v8, v4, Ljava/math/BigInteger;->mag:[I

    invoke-direct {v7, v8}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 3947
    .local v7, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v6, v7, v5}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v8

    .line 3948
    .local v8, "r":Ljava/math/MutableBigInteger;
    iget v9, v2, Ljava/math/BigInteger;->signum:I

    iget v10, v4, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v9, v10

    invoke-virtual {v5, v9}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 3949
    .local v9, "q2":Ljava/math/BigInteger;
    iget v10, v2, Ljava/math/BigInteger;->signum:I

    iget v11, v4, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v10, v11

    invoke-virtual {v8, v10}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 3951
    .local v10, "r2":Ljava/math/BigInteger;
    add-int/lit8 v11, v3, 0x1

    .end local v3    # "numGroups":I
    .local v11, "numGroups":I
    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v3

    .line 3952
    move-object v2, v9

    .line 3953
    .end local v4    # "d":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/MutableBigInteger;
    .end local v6    # "a":Ljava/math/MutableBigInteger;
    .end local v7    # "b":Ljava/math/MutableBigInteger;
    .end local v8    # "r":Ljava/math/MutableBigInteger;
    .end local v9    # "q2":Ljava/math/BigInteger;
    .end local v10    # "r2":Ljava/math/BigInteger;
    move v3, v11

    goto :goto_17

    .line 3956
    .end local v11    # "numGroups":I
    .restart local v3    # "numGroups":I
    :cond_57
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Ljava/math/BigInteger;->digitsPerLong:[I

    aget v5, v5, p1

    mul-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3957
    .local v4, "buf":Ljava/lang/StringBuilder;
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_6c

    .line 3958
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3960
    :cond_6c
    add-int/lit8 v5, v3, -0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    add-int/lit8 v5, v3, -0x2

    .local v5, "i":I
    :goto_75
    if-ltz v5, :cond_93

    .line 3965
    sget-object v6, Ljava/math/BigInteger;->digitsPerLong:[I

    aget v6, v6, p1

    aget-object v7, v1, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    .line 3966
    .local v6, "numLeadingZeros":I
    if-eqz v6, :cond_8b

    .line 3967
    sget-object v7, Ljava/math/BigInteger;->zeros:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3969
    :cond_8b
    aget-object v7, v1, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    .end local v6    # "numLeadingZeros":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_75

    .line 3971
    .end local v5    # "i":I
    :cond_93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist square()Ljava/math/BigInteger;
    .registers 2

    .line 1988
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist square(Z)Ljava/math/BigInteger;
    .registers 8
    .param p1, "isRecursion"    # Z

    .line 1999
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 2000
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 2002
    :cond_7
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    .line 2004
    .local v1, "len":I
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1e

    .line 2005
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/math/BigInteger;->squareToLen([II[I)[I

    move-result-object v0

    .line 2006
    .local v0, "z":[I
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2

    .line 2008
    .end local v0    # "z":[I
    :cond_1e
    const/16 v2, 0xd8

    if-ge v1, v2, :cond_27

    .line 2009
    invoke-direct {p0}, Ljava/math/BigInteger;->squareKaratsuba()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2014
    :cond_27
    if-nez p1, :cond_39

    .line 2015
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/math/BigInteger;->bitLength([II)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x40000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_39

    .line 2016
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 2020
    :cond_39
    invoke-direct {p0}, Ljava/math/BigInteger;->squareToomCook3()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist squareKaratsuba()Ljava/math/BigInteger;
    .registers 9

    .line 2134
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 2136
    .local v0, "half":I
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->getLower(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 2137
    .local v1, "xl":Ljava/math/BigInteger;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->getUpper(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 2139
    .local v2, "xh":Ljava/math/BigInteger;
    invoke-direct {v2}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v3

    .line 2140
    .local v3, "xhs":Ljava/math/BigInteger;
    invoke-direct {v1}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v4

    .line 2143
    .local v4, "xls":Ljava/math/BigInteger;
    mul-int/lit8 v5, v0, 0x20

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v6}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v0, 0x20

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5
.end method

.method private static final blacklist squareToLen([II[I)[I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "z"    # [I

    .line 2030
    shl-int/lit8 v0, p1, 0x1

    .line 2031
    .local v0, "zlen":I
    if-eqz p2, :cond_7

    array-length v1, p2

    if-ge v1, v0, :cond_9

    .line 2032
    :cond_7
    new-array p2, v0, [I

    .line 2035
    :cond_9
    invoke-static {p0, p1, p2, v0}, Ljava/math/BigInteger;->implSquareToLenChecks([II[II)V

    .line 2036
    invoke-static {p0, p1, p2, v0}, Ljava/math/BigInteger;->implSquareToLen([II[II)[I

    move-result-object v1

    return-object v1
.end method

.method private blacklist squareToomCook3()Ljava/math/BigInteger;
    .registers 18

    .line 2154
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    .line 2157
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 2160
    .local v2, "k":I
    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    .line 2165
    .local v3, "r":I
    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v4

    .line 2166
    .local v4, "a2":Ljava/math/BigInteger;
    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v5, v1}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v6

    .line 2167
    .local v6, "a1":Ljava/math/BigInteger;
    const/4 v7, 0x2

    invoke-direct {v0, v2, v3, v7, v1}, Ljava/math/BigInteger;->getToomSlice(IIII)Ljava/math/BigInteger;

    move-result-object v7

    .line 2170
    .local v7, "a0":Ljava/math/BigInteger;
    invoke-direct {v7, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v8

    .line 2171
    .local v8, "v0":Ljava/math/BigInteger;
    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2172
    .local v9, "da1":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v10, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v10

    .line 2173
    .local v10, "vm1":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2174
    invoke-direct {v9, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v11

    .line 2175
    .local v11, "v1":Ljava/math/BigInteger;
    invoke-direct {v4, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v12

    .line 2176
    .local v12, "vinf":Ljava/math/BigInteger;
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v13, v5}, Ljava/math/BigInteger;->square(Z)Ljava/math/BigInteger;

    move-result-object v13

    .line 2184
    .local v13, "v2":Ljava/math/BigInteger;
    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-direct {v14}, Ljava/math/BigInteger;->exactDivideBy3()Ljava/math/BigInteger;

    move-result-object v14

    .line 2185
    .local v14, "t2":Ljava/math/BigInteger;
    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v15

    .line 2186
    .local v15, "tm1":Ljava/math/BigInteger;
    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 2187
    .local v5, "t1":Ljava/math/BigInteger;
    invoke-virtual {v14, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "len":I
    .local v16, "len":I
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 2188
    .end local v14    # "t2":Ljava/math/BigInteger;
    .local v0, "t2":Ljava/math/BigInteger;
    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 2189
    invoke-virtual {v12, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 2190
    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 2193
    .end local v15    # "tm1":Ljava/math/BigInteger;
    .local v1, "tm1":Ljava/math/BigInteger;
    mul-int/lit8 v14, v2, 0x20

    .line 2195
    .local v14, "ss":I
    invoke-virtual {v12, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    return-object v15
.end method

.method private static blacklist stripLeadingZeroBytes([B)[I
    .registers 13
    .param p0, "a"    # [B

    .line 4359
    array-length v0, p0

    .line 4363
    .local v0, "byteLength":I
    const/4 v1, 0x0

    .local v1, "keep":I
    :goto_2
    if-ge v1, v0, :cond_b

    aget-byte v2, p0, v1

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4367
    :cond_b
    sub-int v2, v0, v1

    const/4 v3, 0x3

    add-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x2

    .line 4368
    .local v2, "intLength":I
    new-array v4, v2, [I

    .line 4369
    .local v4, "result":[I
    add-int/lit8 v5, v0, -0x1

    .line 4370
    .local v5, "b":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_17
    if-ltz v6, :cond_43

    .line 4371
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "b":I
    .local v7, "b":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v6

    .line 4372
    sub-int v5, v7, v1

    add-int/lit8 v5, v5, 0x1

    .line 4373
    .local v5, "bytesRemaining":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4374
    .local v8, "bytesToTransfer":I
    const/16 v9, 0x8

    .local v9, "j":I
    :goto_2b
    shl-int/lit8 v10, v8, 0x3

    if-gt v9, v10, :cond_3f

    .line 4375
    aget v10, v4, v6

    add-int/lit8 v11, v7, -0x1

    .end local v7    # "b":I
    .local v11, "b":I
    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v9

    or-int/2addr v7, v10

    aput v7, v4, v6

    .line 4374
    add-int/lit8 v9, v9, 0x8

    move v7, v11

    goto :goto_2b

    .line 4370
    .end local v5    # "bytesRemaining":I
    .end local v8    # "bytesToTransfer":I
    .end local v9    # "j":I
    .end local v11    # "b":I
    .restart local v7    # "b":I
    :cond_3f
    add-int/lit8 v6, v6, -0x1

    move v5, v7

    goto :goto_17

    .line 4377
    .end local v6    # "i":I
    .end local v7    # "b":I
    .local v5, "b":I
    :cond_43
    return-object v4
.end method

.method private static blacklist stripLeadingZeroInts([I)[I
    .registers 4
    .param p0, "val"    # [I

    .line 4332
    array-length v0, p0

    .line 4336
    .local v0, "vlen":I
    const/4 v1, 0x0

    .local v1, "keep":I
    :goto_2
    if-ge v1, v0, :cond_b

    aget v2, p0, v1

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4338
    :cond_b
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    return-object v2
.end method

.method private static blacklist subN([I[II)I
    .registers 12
    .param p0, "a"    # [I
    .param p1, "b"    # [I
    .param p2, "len"    # I

    .line 3117
    const-wide/16 v0, 0x0

    .line 3119
    .local v0, "sum":J
    :goto_2
    add-int/lit8 p2, p2, -0x1

    const/16 v2, 0x20

    if-ltz p2, :cond_1e

    .line 3120
    aget v3, p0, p2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, p2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    shr-long v5, v0, v2

    add-long v0, v3, v5

    .line 3122
    long-to-int v2, v0

    aput v2, p0, p2

    goto :goto_2

    .line 3125
    :cond_1e
    shr-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method private static blacklist subtract(J[I)[I
    .registers 16
    .param p0, "val"    # J
    .param p2, "little"    # [I

    .line 1369
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 1370
    .local v1, "highWord":I
    const-wide v2, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1a

    .line 1371
    new-array v0, v4, [I

    .line 1372
    .local v0, "result":[I
    aget v4, p2, v5

    int-to-long v6, v4

    and-long/2addr v2, v6

    sub-long v2, p0, v2

    long-to-int v2, v2

    aput v2, v0, v5

    .line 1373
    return-object v0

    .line 1375
    .end local v0    # "result":[I
    :cond_1a
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 1376
    .local v6, "result":[I
    array-length v7, p2

    if-ne v7, v4, :cond_40

    .line 1377
    long-to-int v7, p0

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p2, v5

    int-to-long v9, v9

    and-long/2addr v2, v9

    sub-long/2addr v7, v2

    .line 1378
    .local v7, "difference":J
    long-to-int v2, v7

    aput v2, v6, v4

    .line 1380
    shr-long v2, v7, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v4, v5

    :goto_35
    move v0, v4

    .line 1381
    .local v0, "borrow":Z
    if-eqz v0, :cond_3d

    .line 1382
    add-int/lit8 v2, v1, -0x1

    aput v2, v6, v5

    goto :goto_3f

    .line 1384
    :cond_3d
    aput v1, v6, v5

    .line 1386
    :goto_3f
    return-object v6

    .line 1388
    .end local v0    # "borrow":Z
    .end local v7    # "difference":J
    :cond_40
    long-to-int v7, p0

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p2, v4

    int-to-long v9, v9

    and-long/2addr v9, v2

    sub-long/2addr v7, v9

    .line 1389
    .restart local v7    # "difference":J
    long-to-int v9, v7

    aput v9, v6, v4

    .line 1390
    int-to-long v9, v1

    and-long/2addr v9, v2

    aget v4, p2, v5

    int-to-long v11, v4

    and-long/2addr v2, v11

    sub-long/2addr v9, v2

    shr-long v2, v7, v0

    add-long/2addr v9, v2

    .line 1391
    .end local v7    # "difference":J
    .local v9, "difference":J
    long-to-int v0, v9

    aput v0, v6, v5

    .line 1392
    return-object v6
.end method

.method private static blacklist subtract([IJ)[I
    .registers 16
    .param p0, "big"    # [I
    .param p1, "val"    # J

    .line 1405
    const/16 v0, 0x20

    ushr-long v1, p1, v0

    long-to-int v1, v1

    .line 1406
    .local v1, "highWord":I
    array-length v2, p0

    .line 1407
    .local v2, "bigIndex":I
    new-array v3, v2, [I

    .line 1408
    .local v3, "result":[I
    const-wide/16 v4, 0x0

    .line 1410
    .local v4, "difference":J
    const-wide v6, 0xffffffffL

    const/4 v8, -0x1

    if-nez v1, :cond_1c

    .line 1411
    add-int/2addr v2, v8

    aget v9, p0, v2

    int-to-long v9, v9

    and-long/2addr v6, v9

    sub-long/2addr v6, p1

    .line 1412
    .end local v4    # "difference":J
    .local v6, "difference":J
    long-to-int v4, v6

    aput v4, v3, v2

    goto :goto_35

    .line 1414
    .end local v6    # "difference":J
    .restart local v4    # "difference":J
    :cond_1c
    add-int/2addr v2, v8

    aget v9, p0, v2

    int-to-long v9, v9

    and-long/2addr v9, v6

    and-long v11, p1, v6

    sub-long/2addr v9, v11

    .line 1415
    .end local v4    # "difference":J
    .local v9, "difference":J
    long-to-int v4, v9

    aput v4, v3, v2

    .line 1416
    add-int/2addr v2, v8

    aget v4, p0, v2

    int-to-long v4, v4

    and-long/2addr v4, v6

    int-to-long v11, v1

    and-long/2addr v6, v11

    sub-long/2addr v4, v6

    shr-long v6, v9, v0

    add-long/2addr v6, v4

    .line 1417
    .end local v9    # "difference":J
    .restart local v6    # "difference":J
    long-to-int v4, v6

    aput v4, v3, v2

    .line 1421
    :goto_35
    shr-long v4, v6, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_41

    move v0, v5

    goto :goto_42

    :cond_41
    move v0, v4

    .line 1422
    .local v0, "borrow":Z
    :goto_42
    if-lez v2, :cond_54

    if-eqz v0, :cond_54

    .line 1423
    add-int/lit8 v2, v2, -0x1

    aget v9, p0, v2

    sub-int/2addr v9, v5

    aput v9, v3, v2

    if-ne v9, v8, :cond_51

    move v9, v5

    goto :goto_52

    :cond_51
    move v9, v4

    :goto_52
    move v0, v9

    goto :goto_42

    .line 1426
    :cond_54
    :goto_54
    if-lez v2, :cond_5d

    .line 1427
    add-int/lit8 v2, v2, -0x1

    aget v4, p0, v2

    aput v4, v3, v2

    goto :goto_54

    .line 1429
    :cond_5d
    return-object v3
.end method

.method private static blacklist subtract([I[I)[I
    .registers 14
    .param p0, "big"    # [I
    .param p1, "little"    # [I

    .line 1462
    array-length v0, p0

    .line 1463
    .local v0, "bigIndex":I
    new-array v1, v0, [I

    .line 1464
    .local v1, "result":[I
    array-length v2, p1

    .line 1465
    .local v2, "littleIndex":I
    const-wide/16 v3, 0x0

    .line 1468
    .local v3, "difference":J
    :goto_6
    const/16 v5, 0x20

    if-lez v2, :cond_24

    .line 1469
    add-int/lit8 v0, v0, -0x1

    aget v6, p0, v0

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-int/lit8 v2, v2, -0x1

    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    shr-long v8, v3, v5

    add-long v3, v6, v8

    .line 1472
    long-to-int v5, v3

    aput v5, v1, v0

    goto :goto_6

    .line 1476
    :cond_24
    shr-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_30

    move v5, v7

    goto :goto_31

    :cond_30
    move v5, v6

    .line 1477
    .local v5, "borrow":Z
    :goto_31
    if-lez v0, :cond_44

    if-eqz v5, :cond_44

    .line 1478
    add-int/lit8 v0, v0, -0x1

    aget v8, p0, v0

    sub-int/2addr v8, v7

    aput v8, v1, v0

    const/4 v9, -0x1

    if-ne v8, v9, :cond_41

    move v8, v7

    goto :goto_42

    :cond_41
    move v8, v6

    :goto_42
    move v5, v8

    goto :goto_31

    .line 1481
    :cond_44
    :goto_44
    if-lez v0, :cond_4d

    .line 1482
    add-int/lit8 v0, v0, -0x1

    aget v6, p0, v0

    aput v6, v1, v0

    goto :goto_44

    .line 1484
    :cond_4d
    return-object v1
.end method

.method private static blacklist toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V
    .registers 12
    .param p0, "u"    # Ljava/math/BigInteger;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "radix"    # I
    .param p3, "digits"    # I

    .line 3991
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_29

    .line 3992
    invoke-direct {p0, p2}, Ljava/math/BigInteger;->smallToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3996
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, p3, :cond_25

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 3997
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_1b
    if-ge v1, p3, :cond_25

    .line 3998
    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3997
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 4002
    .end local v1    # "i":I
    :cond_25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    return-void

    .line 4007
    .end local v0    # "s":Ljava/lang/String;
    :cond_29
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 4012
    .local v0, "b":I
    int-to-double v1, v0

    sget-wide v3, Ljava/math/BigInteger;->LOG_TWO:D

    mul-double/2addr v1, v3

    sget-object v5, Ljava/math/BigInteger;->logCache:[D

    aget-wide v5, v5, p2

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 4013
    .local v1, "n":I
    invoke-static {p2, v1}, Ljava/math/BigInteger;->getRadixConversionCache(II)Ljava/math/BigInteger;

    move-result-object v2

    .line 4015
    .local v2, "v":Ljava/math/BigInteger;
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 4017
    .local v3, "results":[Ljava/math/BigInteger;
    const/4 v4, 0x1

    shl-int v5, v4, v1

    .line 4020
    .local v5, "expectedDigits":I
    const/4 v6, 0x0

    aget-object v6, v3, v6

    sub-int v7, p3, v5

    invoke-static {v6, p1, p2, v7}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 4021
    aget-object v4, v3, v4

    invoke-static {v4, p1, p2, v5}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 4022
    return-void
.end method

.method private static blacklist trustedStripLeadingZeroInts([I)[I
    .registers 4
    .param p0, "val"    # [I

    .line 4346
    array-length v0, p0

    .line 4350
    .local v0, "vlen":I
    const/4 v1, 0x0

    .local v1, "keep":I
    :goto_2
    if-ge v1, v0, :cond_b

    aget v2, p0, v1

    if-nez v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4352
    :cond_b
    if-nez v1, :cond_f

    move-object v2, p0

    goto :goto_13

    :cond_f
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    :goto_13
    return-object v2
.end method

.method public static whitelist test-api valueOf(J)Ljava/math/BigInteger;
    .registers 6
    .param p0, "val"    # J

    .line 1104
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    .line 1105
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 1106
    :cond_9
    cmp-long v2, p0, v0

    if-lez v2, :cond_19

    const-wide/16 v2, 0x10

    cmp-long v2, p0, v2

    if-gtz v2, :cond_19

    .line 1107
    sget-object v0, Ljava/math/BigInteger;->posConst:[Ljava/math/BigInteger;

    long-to-int v1, p0

    aget-object v0, v0, v1

    return-object v0

    .line 1108
    :cond_19
    cmp-long v0, p0, v0

    if-gez v0, :cond_2a

    const-wide/16 v0, -0x10

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2a

    .line 1109
    sget-object v0, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    neg-long v1, p0

    long-to-int v1, v1

    aget-object v0, v0, v1

    return-object v0

    .line 1111
    :cond_2a
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(J)V

    return-object v0
.end method

.method private static blacklist valueOf([I)Ljava/math/BigInteger;
    .registers 3
    .param p0, "val"    # [I

    .line 1142
    const/4 v0, 0x0

    aget v0, p0, v0

    if-lez v0, :cond_c

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>([II)V

    goto :goto_11

    :cond_c
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([I)V

    :goto_11
    return-object v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4693
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 4694
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    const-string v2, "signum"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 4695
    invoke-direct {p0}, Ljava/math/BigInteger;->magSerializedForm()[B

    move-result-object v1

    const-string v2, "magnitude"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4706
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 4707
    return-void
.end method


# virtual methods
.method public whitelist test-api abs()Ljava/math/BigInteger;
    .registers 2

    .line 2587
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method blacklist add(J)Ljava/math/BigInteger;
    .registers 7
    .param p1, "val"    # J

    .line 1259
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 1260
    return-object p0

    .line 1261
    :cond_7
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_10

    .line 1262
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1263
    :cond_10
    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v0

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v1, :cond_2a

    .line 1264
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/math/BigInteger;->add([IJ)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1265
    :cond_2a
    invoke-virtual {p0, p1, p2}, Ljava/math/BigInteger;->compareMagnitude(J)I

    move-result v0

    .line 1266
    .local v0, "cmp":I
    if-nez v0, :cond_33

    .line 1267
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 1268
    :cond_33
    if-lez v0, :cond_40

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/math/BigInteger;->subtract([IJ)[I

    move-result-object v1

    goto :goto_4a

    :cond_40
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2, v3}, Ljava/math/BigInteger;->subtract(J[I)[I

    move-result-object v1

    .line 1269
    .local v1, "resultMag":[I
    :goto_4a
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1270
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_56

    const/4 v3, 0x1

    goto :goto_57

    :cond_56
    const/4 v3, -0x1

    :goto_57
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method public whitelist test-api add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1237
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_5

    .line 1238
    return-object p0

    .line 1239
    :cond_5
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-nez v1, :cond_a

    .line 1240
    return-object p1

    .line 1241
    :cond_a
    if-ne v0, v1, :cond_1c

    .line 1242
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->add([I[I)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1244
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    .line 1245
    .local v0, "cmp":I
    if-nez v0, :cond_25

    .line 1246
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 1247
    :cond_25
    if-lez v0, :cond_30

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    goto :goto_38

    .line 1248
    :cond_30
    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    :goto_38
    nop

    .line 1249
    .local v1, "resultMag":[I
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1251
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_45

    const/4 v3, 0x1

    goto :goto_46

    :cond_45
    const/4 v3, -0x1

    :goto_46
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method public whitelist test-api and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3433
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3434
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 3435
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3436
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 3434
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3438
    .end local v1    # "i":I
    :cond_28
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3501
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3502
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 3503
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3504
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 3502
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3506
    .end local v1    # "i":I
    :cond_29
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api bitCount()I
    .registers 6

    .line 3672
    iget v0, p0, Ljava/math/BigInteger;->bitCount:I

    add-int/lit8 v0, v0, -0x1

    .line 3673
    .local v0, "bc":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 3674
    const/4 v0, 0x0

    .line 3676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 3677
    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3676
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3678
    .end local v1    # "i":I
    :cond_18
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-gez v1, :cond_35

    .line 3680
    const/4 v1, 0x0

    .line 3681
    .local v1, "magTrailingZeroCount":I
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_20
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    aget v4, v3, v2

    if-nez v4, :cond_2b

    .line 3682
    add-int/lit8 v1, v1, 0x20

    .line 3681
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 3683
    :cond_2b
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 3684
    add-int/lit8 v3, v1, -0x1

    add-int/2addr v0, v3

    .line 3686
    .end local v1    # "magTrailingZeroCount":I
    .end local v2    # "j":I
    :cond_35
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/math/BigInteger;->bitCount:I

    .line 3688
    :cond_39
    return v0
.end method

.method public whitelist test-api bitLength()I
    .registers 10

    .line 3638
    iget v0, p0, Ljava/math/BigInteger;->bitLength:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3639
    .local v0, "n":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4c

    .line 3640
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    .line 3641
    .local v2, "m":[I
    array-length v3, v2

    .line 3642
    .local v3, "len":I
    if-nez v3, :cond_e

    .line 3643
    const/4 v0, 0x0

    goto :goto_48

    .line 3646
    :cond_e
    add-int/lit8 v4, v3, -0x1

    shl-int/lit8 v4, v4, 0x5

    iget-object v5, p0, Ljava/math/BigInteger;->mag:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 3647
    .local v4, "magBitLength":I
    iget v5, p0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_47

    .line 3649
    iget-object v5, p0, Ljava/math/BigInteger;->mag:[I

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    if-ne v5, v1, :cond_2c

    move v5, v1

    goto :goto_2d

    :cond_2c
    move v5, v6

    .line 3650
    .local v5, "pow2":Z
    :goto_2d
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2e
    if-ge v7, v3, :cond_3f

    if-eqz v5, :cond_3f

    .line 3651
    iget-object v8, p0, Ljava/math/BigInteger;->mag:[I

    aget v8, v8, v7

    if-nez v8, :cond_3a

    move v8, v1

    goto :goto_3b

    :cond_3a
    move v8, v6

    :goto_3b
    move v5, v8

    .line 3650
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 3653
    .end local v7    # "i":I
    :cond_3f
    if-eqz v5, :cond_44

    add-int/lit8 v1, v4, -0x1

    goto :goto_45

    :cond_44
    move v1, v4

    :goto_45
    move v0, v1

    .line 3654
    .end local v5    # "pow2":Z
    goto :goto_48

    .line 3655
    :cond_47
    move v0, v4

    .line 3658
    .end local v4    # "magBitLength":I
    :goto_48
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/math/BigInteger;->bitLength:I

    .line 3660
    .end local v2    # "m":[I
    .end local v3    # "len":I
    :cond_4c
    return v0
.end method

.method public whitelist test-api byteValueExact()B
    .registers 3

    .line 4805
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1f

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1f

    .line 4806
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 4807
    .local v0, "value":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1f

    .line 4808
    invoke-virtual {p0}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    return v1

    .line 4810
    .end local v0    # "value":I
    :cond_1f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of byte range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api clearBit(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 3560
    if-ltz p1, :cond_35

    .line 3563
    ushr-int/lit8 v0, p1, 0x5

    .line 3564
    .local v0, "intNum":I
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    ushr-int/lit8 v2, v2, 0x5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 3566
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v4, v1

    if-ge v2, v4, :cond_24

    .line 3567
    array-length v4, v1

    sub-int/2addr v4, v2

    sub-int/2addr v4, v3

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v5

    aput v5, v1, v4

    .line 3566
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3569
    .end local v2    # "i":I
    :cond_24
    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    aget v4, v1, v2

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v3, v5

    not-int v3, v3

    and-int/2addr v3, v4

    aput v3, v1, v2

    .line 3571
    invoke-static {v1}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 3561
    .end local v0    # "intNum":I
    .end local v1    # "result":[I
    :cond_35
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist compareMagnitude(J)I
    .registers 19
    .param p1, "val"    # J

    .line 3779
    move-wide/from16 v0, p1

    .line 3780
    move-object/from16 v2, p0

    iget-object v3, v2, Ljava/math/BigInteger;->mag:[I

    .line 3781
    .local v3, "m1":[I
    array-length v4, v3

    .line 3782
    .local v4, "len":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v4, v5, :cond_c

    .line 3783
    return v6

    .line 3785
    :cond_c
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gez v7, :cond_13

    .line 3786
    neg-long v0, v0

    .line 3788
    .end local p1    # "val":J
    .local v0, "val":J
    :cond_13
    const/16 v7, 0x20

    ushr-long v7, v0, v7

    long-to-int v7, v7

    .line 3789
    .local v7, "highWord":I
    const/4 v8, 0x0

    const/4 v9, -0x1

    const-wide v10, 0xffffffffL

    if-nez v7, :cond_3b

    .line 3790
    if-ge v4, v6, :cond_24

    .line 3791
    return v9

    .line 3792
    :cond_24
    if-le v4, v6, :cond_27

    .line 3793
    return v6

    .line 3794
    :cond_27
    aget v5, v3, v8

    .line 3795
    .local v5, "a":I
    long-to-int v12, v0

    .line 3796
    .local v12, "b":I
    if-eq v5, v12, :cond_3a

    .line 3797
    int-to-long v13, v5

    and-long/2addr v13, v10

    move/from16 p1, v7

    .end local v7    # "highWord":I
    .local p1, "highWord":I
    int-to-long v6, v12

    and-long/2addr v6, v10

    cmp-long v6, v13, v6

    if-gez v6, :cond_38

    move v6, v9

    goto :goto_39

    :cond_38
    const/4 v6, 0x1

    :goto_39
    return v6

    .line 3799
    .end local p1    # "highWord":I
    .restart local v7    # "highWord":I
    :cond_3a
    return v8

    .line 3801
    .end local v5    # "a":I
    .end local v12    # "b":I
    :cond_3b
    move/from16 p1, v7

    .end local v7    # "highWord":I
    .restart local p1    # "highWord":I
    if-ge v4, v5, :cond_40

    .line 3802
    return v9

    .line 3803
    :cond_40
    aget v5, v3, v8

    .line 3804
    .restart local v5    # "a":I
    move/from16 v6, p1

    .line 3805
    .local v6, "b":I
    if-eq v5, v6, :cond_52

    .line 3806
    int-to-long v7, v5

    and-long/2addr v7, v10

    int-to-long v12, v6

    and-long/2addr v10, v12

    cmp-long v7, v7, v10

    if-gez v7, :cond_50

    move v15, v9

    goto :goto_51

    :cond_50
    const/4 v15, 0x1

    :goto_51
    return v15

    .line 3808
    :cond_52
    const/4 v7, 0x1

    aget v5, v3, v7

    .line 3809
    long-to-int v6, v0

    .line 3810
    if-eq v5, v6, :cond_62

    .line 3811
    int-to-long v12, v5

    and-long/2addr v12, v10

    int-to-long v14, v6

    and-long/2addr v10, v14

    cmp-long v8, v12, v10

    if-gez v8, :cond_61

    move v7, v9

    :cond_61
    return v7

    .line 3813
    :cond_62
    return v8
.end method

.method final blacklist compareMagnitude(Ljava/math/BigInteger;)I
    .registers 17
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3757
    move-object v0, p0

    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    .line 3758
    .local v1, "m1":[I
    array-length v2, v1

    .line 3759
    .local v2, "len1":I
    move-object/from16 v3, p1

    iget-object v4, v3, Ljava/math/BigInteger;->mag:[I

    .line 3760
    .local v4, "m2":[I
    array-length v5, v4

    .line 3761
    .local v5, "len2":I
    const/4 v6, -0x1

    if-ge v2, v5, :cond_d

    .line 3762
    return v6

    .line 3763
    :cond_d
    const/4 v7, 0x1

    if-le v2, v5, :cond_11

    .line 3764
    return v7

    .line 3765
    :cond_11
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_12
    if-ge v8, v2, :cond_30

    .line 3766
    aget v9, v1, v8

    .line 3767
    .local v9, "a":I
    aget v10, v4, v8

    .line 3768
    .local v10, "b":I
    if-eq v9, v10, :cond_2b

    .line 3769
    int-to-long v11, v9

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    int-to-long v6, v10

    and-long/2addr v6, v13

    cmp-long v6, v11, v6

    if-gez v6, :cond_29

    const/4 v6, -0x1

    goto :goto_2a

    :cond_29
    const/4 v6, 0x1

    :goto_2a
    return v6

    .line 3765
    .end local v9    # "a":I
    .end local v10    # "b":I
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_12

    .line 3771
    .end local v8    # "i":I
    :cond_30
    const/4 v6, 0x0

    return v6
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 125
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3735
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    iget v1, p1, Ljava/math/BigInteger;->signum:I

    if-ne v0, v1, :cond_15

    .line 3736
    packed-switch v0, :pswitch_data_1c

    .line 3742
    :pswitch_9
    const/4 v0, 0x0

    return v0

    .line 3738
    :pswitch_b
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    return v0

    .line 3740
    :pswitch_10
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    return v0

    .line 3745
    :cond_15
    if-le v0, v1, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    return v0

    nop

    :pswitch_data_1c
    .packed-switch -0x1
        :pswitch_10
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist test-api divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2215
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    const/16 v2, 0x28

    if-lt v1, v2, :cond_19

    array-length v0, v0

    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_11

    goto :goto_19

    .line 2219
    :cond_11
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 2217
    :cond_19
    :goto_19
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->divideKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 24
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2259
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    array-length v3, v0

    const/16 v4, 0x28

    if-lt v3, v4, :cond_89

    iget-object v3, v1, Ljava/math/BigInteger;->mag:[I

    array-length v4, v3

    const/16 v5, 0x14

    if-lt v4, v5, :cond_89

    array-length v4, v3

    array-length v0, v0

    sub-int/2addr v4, v0

    if-ge v4, v5, :cond_19

    goto/16 :goto_89

    .line 2264
    :cond_19
    iget v0, v1, Ljava/math/BigInteger;->signum:I

    iget v4, v2, Ljava/math/BigInteger;->signum:I

    const/4 v5, 0x1

    if-ne v0, v4, :cond_22

    move v0, v5

    goto :goto_23

    :cond_22
    const/4 v0, -0x1

    :goto_23
    move v4, v0

    .line 2265
    .local v4, "quotSign":I
    const-wide/16 v6, 0x0

    .local v6, "xBN":J
    const-wide/16 v8, 0x0

    .local v8, "yBN":J
    const-wide/16 v10, 0x0

    .local v10, "quotBN":J
    const-wide/16 v12, 0x0

    .line 2267
    .local v12, "remBN":J
    const/4 v0, 0x0

    :try_start_2d
    invoke-static {v3, v0}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v18
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_7b

    .line 2268
    .end local v6    # "xBN":J
    .local v18, "xBN":J
    :try_start_31
    iget-object v3, v2, Ljava/math/BigInteger;->mag:[I

    invoke-static {v3, v0}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v20
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_77

    .line 2269
    .end local v8    # "yBN":J
    .local v20, "yBN":J
    :try_start_37
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v6

    move-wide v10, v6

    .line 2270
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v6

    move-wide v12, v6

    .line 2271
    move-wide v14, v10

    move-wide/from16 v16, v12

    invoke-static/range {v14 .. v21}, Llibcore/math/NativeBN;->BN_div(JJJJ)V

    .line 2272
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v1, v10, v11}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/math/BigInteger;-><init>(I[I)V

    .line 2274
    .local v3, "quotient":Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    iget v7, v1, Ljava/math/BigInteger;->signum:I

    invoke-direct {v1, v12, v13}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/math/BigInteger;-><init>(I[I)V

    .line 2275
    .local v6, "remainder":Ljava/math/BigInteger;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/math/BigInteger;

    aput-object v3, v7, v0

    aput-object v6, v7, v5
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_71

    move-object v0, v7

    .line 2276
    .local v0, "result":[Ljava/math/BigInteger;
    nop

    .line 2278
    invoke-static/range {v18 .. v19}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2279
    invoke-static/range {v20 .. v21}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2280
    invoke-static {v10, v11}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2281
    invoke-static {v12, v13}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2276
    return-object v0

    .line 2278
    .end local v0    # "result":[Ljava/math/BigInteger;
    .end local v3    # "quotient":Ljava/math/BigInteger;
    .end local v6    # "remainder":Ljava/math/BigInteger;
    :catchall_71
    move-exception v0

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    goto :goto_7c

    .end local v20    # "yBN":J
    .restart local v8    # "yBN":J
    :catchall_77
    move-exception v0

    move-wide/from16 v6, v18

    goto :goto_7c

    .end local v18    # "xBN":J
    .local v6, "xBN":J
    :catchall_7b
    move-exception v0

    :goto_7c
    invoke-static {v6, v7}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2279
    invoke-static {v8, v9}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2280
    invoke-static {v10, v11}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2281
    invoke-static {v12, v13}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2282
    throw v0

    .line 2262
    .end local v4    # "quotSign":I
    .end local v6    # "xBN":J
    .end local v8    # "yBN":J
    .end local v10    # "quotBN":J
    .end local v12    # "remBN":J
    :cond_89
    :goto_89
    invoke-direct/range {p0 .. p1}, Ljava/math/BigInteger;->divideAndRemainderKnuth(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubleValue()D
    .registers 21

    .line 4252
    move-object/from16 v0, p0

    iget v1, v0, Ljava/math/BigInteger;->signum:I

    if-nez v1, :cond_9

    .line 4253
    const-wide/16 v1, 0x0

    return-wide v1

    .line 4256
    :cond_9
    iget-object v1, v0, Ljava/math/BigInteger;->mag:[I

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x5

    const/4 v4, 0x0

    aget v1, v1, v4

    invoke-static {v1}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v1

    add-int/2addr v2, v1

    sub-int/2addr v2, v3

    .line 4259
    .local v2, "exponent":I
    const/16 v1, 0x3f

    if-ge v2, v1, :cond_23

    .line 4260
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    return-wide v3

    .line 4261
    :cond_23
    const/16 v1, 0x3ff

    if-le v2, v1, :cond_31

    .line 4262
    iget v1, v0, Ljava/math/BigInteger;->signum:I

    if-lez v1, :cond_2e

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_30

    :cond_2e
    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_30
    return-wide v3

    .line 4275
    :cond_31
    add-int/lit8 v1, v2, -0x35

    .line 4281
    .local v1, "shift":I
    and-int/lit8 v5, v1, 0x1f

    .line 4282
    .local v5, "nBits":I
    rsub-int/lit8 v6, v5, 0x20

    .line 4286
    .local v6, "nBits2":I
    if-nez v5, :cond_40

    .line 4287
    iget-object v7, v0, Ljava/math/BigInteger;->mag:[I

    aget v8, v7, v4

    .line 4288
    .local v8, "highBits":I
    aget v7, v7, v3

    .local v7, "lowBits":I
    goto :goto_59

    .line 4290
    .end local v7    # "lowBits":I
    .end local v8    # "highBits":I
    :cond_40
    iget-object v7, v0, Ljava/math/BigInteger;->mag:[I

    aget v8, v7, v4

    ushr-int/2addr v8, v5

    .line 4291
    .restart local v8    # "highBits":I
    aget v9, v7, v4

    shl-int/2addr v9, v6

    aget v10, v7, v3

    ushr-int/2addr v10, v5

    or-int/2addr v9, v10

    .line 4292
    .local v9, "lowBits":I
    if-nez v8, :cond_58

    .line 4293
    move v8, v9

    .line 4294
    aget v10, v7, v3

    shl-int/2addr v10, v6

    const/4 v11, 0x2

    aget v7, v7, v11

    ushr-int/2addr v7, v5

    or-int/2addr v7, v10

    .end local v9    # "lowBits":I
    .restart local v7    # "lowBits":I
    goto :goto_59

    .line 4292
    .end local v7    # "lowBits":I
    .restart local v9    # "lowBits":I
    :cond_58
    move v7, v9

    .line 4298
    .end local v9    # "lowBits":I
    .restart local v7    # "lowBits":I
    :goto_59
    int-to-long v9, v8

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    const/16 v13, 0x20

    shl-long/2addr v9, v13

    int-to-long v13, v7

    and-long/2addr v11, v13

    or-long/2addr v9, v11

    .line 4301
    .local v9, "twiceSignifFloor":J
    shr-long v11, v9, v3

    .line 4302
    .local v11, "signifFloor":J
    const-wide v13, 0xfffffffffffffL

    and-long/2addr v11, v13

    .line 4311
    const-wide/16 v13, 0x1

    and-long v15, v9, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_89

    and-long v15, v11, v13

    cmp-long v15, v15, v17

    if-nez v15, :cond_88

    .line 4312
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v15

    if-ge v15, v1, :cond_89

    :cond_88
    goto :goto_8a

    :cond_89
    move v3, v4

    .line 4313
    .local v3, "increment":Z
    :goto_8a
    if-eqz v3, :cond_8e

    add-long/2addr v13, v11

    goto :goto_8f

    :cond_8e
    move-wide v13, v11

    .line 4314
    .local v13, "signifRounded":J
    :goto_8f
    add-int/lit16 v4, v2, 0x3ff

    move/from16 v16, v1

    move v15, v2

    .end local v1    # "shift":I
    .end local v2    # "exponent":I
    .local v15, "exponent":I
    .local v16, "shift":I
    int-to-long v1, v4

    const/16 v4, 0x34

    shl-long/2addr v1, v4

    .line 4316
    .local v1, "bits":J
    add-long/2addr v1, v13

    .line 4324
    iget v4, v0, Ljava/math/BigInteger;->signum:I

    move/from16 v17, v3

    .end local v3    # "increment":Z
    .local v17, "increment":Z
    int-to-long v3, v4

    const-wide/high16 v18, -0x8000000000000000L

    and-long v3, v3, v18

    or-long/2addr v1, v3

    .line 4325
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    return-wide v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "x"    # Ljava/lang/Object;

    .line 3826
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 3827
    return v0

    .line 3829
    :cond_4
    instance-of v1, p1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3830
    return v2

    .line 3832
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/math/BigInteger;

    .line 3833
    .local v1, "xInt":Ljava/math/BigInteger;
    iget v3, v1, Ljava/math/BigInteger;->signum:I

    iget v4, p0, Ljava/math/BigInteger;->signum:I

    if-eq v3, v4, :cond_14

    .line 3834
    return v2

    .line 3836
    :cond_14
    iget-object v3, p0, Ljava/math/BigInteger;->mag:[I

    .line 3837
    .local v3, "m":[I
    array-length v4, v3

    .line 3838
    .local v4, "len":I
    iget-object v5, v1, Ljava/math/BigInteger;->mag:[I

    .line 3839
    .local v5, "xm":[I
    array-length v6, v5

    if-eq v4, v6, :cond_1d

    .line 3840
    return v2

    .line 3842
    :cond_1d
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1e
    if-ge v6, v4, :cond_2a

    .line 3843
    aget v7, v5, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_27

    .line 3844
    return v2

    .line 3842
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 3846
    .end local v6    # "i":I
    :cond_2a
    return v0
.end method

.method public whitelist test-api flipBit(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 3584
    if-ltz p1, :cond_31

    .line 3587
    ushr-int/lit8 v0, p1, 0x5

    .line 3588
    .local v0, "intNum":I
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 3590
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_21

    .line 3591
    array-length v3, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3590
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3593
    .end local v2    # "i":I
    :cond_21
    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    aget v3, v1, v2

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v4, v5

    xor-int/2addr v3, v4

    aput v3, v1, v2

    .line 3595
    invoke-static {v1}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 3585
    .end local v0    # "intNum":I
    .end local v1    # "result":[I
    :cond_31
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api floatValue()F
    .registers 12

    .line 4168
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_6

    .line 4169
    const/4 v0, 0x0

    return v0

    .line 4172
    :cond_6
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x5

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-static {v0}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v0

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    .line 4175
    .local v1, "exponent":I
    const/16 v0, 0x3f

    if-ge v1, v0, :cond_20

    .line 4176
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    return v0

    .line 4177
    :cond_20
    const/16 v0, 0x7f

    if-le v1, v0, :cond_2e

    .line 4178
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-lez v0, :cond_2b

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2d

    :cond_2b
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_2d
    return v0

    .line 4191
    :cond_2e
    add-int/lit8 v0, v1, -0x18

    .line 4197
    .local v0, "shift":I
    and-int/lit8 v4, v0, 0x1f

    .line 4198
    .local v4, "nBits":I
    rsub-int/lit8 v5, v4, 0x20

    .line 4200
    .local v5, "nBits2":I
    if-nez v4, :cond_3b

    .line 4201
    iget-object v6, p0, Ljava/math/BigInteger;->mag:[I

    aget v6, v6, v3

    .local v6, "twiceSignifFloor":I
    goto :goto_4b

    .line 4203
    .end local v6    # "twiceSignifFloor":I
    :cond_3b
    iget-object v6, p0, Ljava/math/BigInteger;->mag:[I

    aget v7, v6, v3

    ushr-int/2addr v7, v4

    .line 4204
    .local v7, "twiceSignifFloor":I
    if-nez v7, :cond_4a

    .line 4205
    aget v8, v6, v3

    shl-int/2addr v8, v5

    aget v6, v6, v2

    ushr-int/2addr v6, v4

    or-int/2addr v6, v8

    .end local v7    # "twiceSignifFloor":I
    .restart local v6    # "twiceSignifFloor":I
    goto :goto_4b

    .line 4204
    .end local v6    # "twiceSignifFloor":I
    .restart local v7    # "twiceSignifFloor":I
    :cond_4a
    move v6, v7

    .line 4209
    .end local v7    # "twiceSignifFloor":I
    .restart local v6    # "twiceSignifFloor":I
    :goto_4b
    shr-int/lit8 v7, v6, 0x1

    .line 4210
    .local v7, "signifFloor":I
    const v8, 0x7fffff

    and-int/2addr v7, v8

    .line 4219
    and-int/lit8 v8, v6, 0x1

    if-eqz v8, :cond_64

    and-int/lit8 v8, v7, 0x1

    if-nez v8, :cond_63

    .line 4220
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    if-ge v8, v0, :cond_64

    :cond_63
    goto :goto_65

    :cond_64
    move v2, v3

    .line 4221
    .local v2, "increment":Z
    :goto_65
    if-eqz v2, :cond_6a

    add-int/lit8 v3, v7, 0x1

    goto :goto_6b

    :cond_6a
    move v3, v7

    .line 4222
    .local v3, "signifRounded":I
    :goto_6b
    add-int/lit8 v8, v1, 0x7f

    shl-int/lit8 v8, v8, 0x17

    .line 4224
    .local v8, "bits":I
    add-int/2addr v8, v3

    .line 4232
    iget v9, p0, Ljava/math/BigInteger;->signum:I

    const/high16 v10, -0x80000000

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    .line 4233
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    return v9
.end method

.method public whitelist test-api gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2497
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_9

    .line 2498
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2499
    :cond_9
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_12

    .line 2500
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 2502
    :cond_12
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 2503
    .local v0, "a":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 2505
    .local v1, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v1}, Ljava/math/MutableBigInteger;->hybridGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    .line 2507
    .local v2, "result":Ljava/math/MutableBigInteger;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api getLowestSetBit()I
    .registers 6

    .line 3607
    iget v0, p0, Ljava/math/BigInteger;->lowestSetBit:I

    add-int/lit8 v0, v0, -0x2

    .line 3608
    .local v0, "lsb":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_26

    .line 3609
    const/4 v0, 0x0

    .line 3610
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-nez v1, :cond_f

    .line 3611
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 3615
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-direct {p0, v1}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-nez v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3617
    :cond_1a
    shl-int/lit8 v2, v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 3619
    .end local v1    # "i":I
    .end local v3    # "b":I
    :goto_22
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/math/BigInteger;->lowestSetBit:I

    .line 3621
    :cond_26
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 3880
    const/4 v0, 0x0

    .line 3882
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 3883
    mul-int/lit8 v3, v0, 0x1f

    int-to-long v3, v3

    aget v2, v2, v1

    int-to-long v5, v2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v0, v3

    .line 3882
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3885
    .end local v1    # "i":I
    :cond_18
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public whitelist test-api intValue()I
    .registers 3

    .line 4124
    const/4 v0, 0x0

    .line 4125
    .local v0, "result":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/math/BigInteger;->getInt(I)I

    move-result v0

    .line 4126
    return v0
.end method

.method public whitelist test-api intValueExact()I
    .registers 3

    .line 4765
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_13

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_13

    .line 4766
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 4768
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of int range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isProbablePrime(I)Z
    .registers 5
    .param p1, "certainty"    # I

    .line 3708
    const/4 v0, 0x1

    if-gtz p1, :cond_4

    .line 3709
    return v0

    .line 3710
    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    .line 3711
    .local v1, "w":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3712
    return v0

    .line 3713
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_27

    .line 3716
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v0

    return v0

    .line 3714
    :cond_27
    :goto_27
    return v0
.end method

.method blacklist javaIncrement([I)[I
    .registers 6
    .param p1, "val"    # [I

    .line 3412
    const/4 v0, 0x0

    .line 3413
    .local v0, "lastSum":I
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_11

    if-nez v0, :cond_11

    .line 3414
    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p1, v1

    move v0, v3

    .line 3413
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 3415
    .end local v1    # "i":I
    :cond_11
    if-nez v0, :cond_1a

    .line 3416
    array-length v1, p1

    add-int/2addr v1, v2

    new-array p1, v1, [I

    .line 3417
    const/4 v1, 0x0

    aput v2, p1, v1

    .line 3419
    :cond_1a
    return-object p1
.end method

.method public whitelist test-api longValue()J
    .registers 10

    .line 4145
    const-wide/16 v0, 0x0

    .line 4147
    .local v0, "result":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_19

    .line 4148
    const/16 v3, 0x20

    shl-long v3, v0, v3

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    add-long v0, v3, v5

    .line 4147
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 4149
    .end local v2    # "i":I
    :cond_19
    return-wide v0
.end method

.method public whitelist test-api longValueExact()J
    .registers 3

    .line 4746
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_13

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_13

    .line 4747
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 4749
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of long range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3868
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3857
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    return-object v0
.end method

.method public whitelist test-api mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "m"    # Ljava/math/BigInteger;

    .line 2622
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-lez v0, :cond_13

    .line 2625
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 2626
    .local v0, "result":Ljava/math/BigInteger;
    iget v1, v0, Ljava/math/BigInteger;->signum:I

    if-ltz v1, :cond_e

    move-object v1, v0

    goto :goto_12

    :cond_e
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :goto_12
    return-object v1

    .line 2623
    .end local v0    # "result":Ljava/math/BigInteger;
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "m"    # Ljava/math/BigInteger;

    .line 3252
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 3255
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3256
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3259
    :cond_10
    move-object v2, p0

    .line 3260
    .local v2, "modVal":Ljava/math/BigInteger;
    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v3, :cond_1b

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_1f

    .line 3261
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 3263
    :cond_1f
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3264
    return-object v0

    .line 3266
    :cond_26
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, v2}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 3267
    .local v0, "a":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 3269
    .local v3, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v3}, Ljava/math/MutableBigInteger;->mutableModInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 3270
    .local v4, "result":Ljava/math/MutableBigInteger;
    invoke-virtual {v4, v1}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 3253
    .end local v0    # "a":Ljava/math/MutableBigInteger;
    .end local v2    # "modVal":Ljava/math/BigInteger;
    .end local v3    # "b":Ljava/math/MutableBigInteger;
    .end local v4    # "result":Ljava/math/MutableBigInteger;
    :cond_39
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 28
    .param p1, "exponent"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;

    .line 2672
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v2, Ljava/math/BigInteger;->signum:I

    if-lez v3, :cond_194

    .line 2676
    iget v3, v0, Ljava/math/BigInteger;->signum:I

    if-nez v3, :cond_19

    .line 2677
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_18
    return-object v3

    .line 2679
    :cond_19
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2680
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_29
    return-object v3

    .line 2682
    :cond_2a
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget v5, v0, Ljava/math/BigInteger;->signum:I

    if-ltz v5, :cond_37

    .line 2683
    return-object v4

    .line 2685
    :cond_37
    sget-object v5, Ljava/math/BigInteger;->negConst:[Ljava/math/BigInteger;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_51

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_51

    .line 2686
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    move-object v3, v4

    :cond_50
    return-object v3

    .line 2689
    :cond_51
    iget v5, v0, Ljava/math/BigInteger;->signum:I

    if-gez v5, :cond_57

    move v5, v6

    goto :goto_58

    :cond_57
    move v5, v7

    :goto_58
    move v8, v5

    .local v8, "invertResult":Z
    if-eqz v5, :cond_61

    .line 2690
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    move-object v5, v0

    .end local p1    # "exponent":Ljava/math/BigInteger;
    .local v0, "exponent":Ljava/math/BigInteger;
    goto :goto_62

    .line 2689
    .end local v0    # "exponent":Ljava/math/BigInteger;
    .restart local p1    # "exponent":Ljava/math/BigInteger;
    :cond_61
    move-object v5, v0

    .line 2692
    .end local p1    # "exponent":Ljava/math/BigInteger;
    .local v5, "exponent":Ljava/math/BigInteger;
    :goto_62
    iget v0, v1, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_6f

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_6d

    goto :goto_6f

    .line 2693
    :cond_6d
    move-object v0, v1

    goto :goto_73

    :cond_6f
    :goto_6f
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_73
    move-object v9, v0

    .line 2697
    .local v9, "base":Ljava/math/BigInteger;
    const/4 v10, 0x3

    .line 2698
    .local v10, "BORINGSSL_MOD_EXP_THRESHOLD":I
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v11, 0x3

    if-lt v0, v11, :cond_e5

    .line 2699
    const-wide/16 v3, 0x0

    .local v3, "baseBN":J
    const-wide/16 v11, 0x0

    .local v11, "expBN":J
    const-wide/16 v13, 0x0

    .local v13, "modBN":J
    const-wide/16 v15, 0x0

    .line 2701
    .local v15, "resultBN":J
    :try_start_83
    iget-object v0, v9, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v7}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v19
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_d7

    .line 2702
    .end local v3    # "baseBN":J
    .local v19, "baseBN":J
    :try_start_89
    iget-object v0, v5, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v7}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v21
    :try_end_8f
    .catchall {:try_start_89 .. :try_end_8f} :catchall_d3

    .line 2703
    .end local v11    # "expBN":J
    .local v21, "expBN":J
    :try_start_8f
    iget-object v0, v2, Ljava/math/BigInteger;->mag:[I

    invoke-static {v0, v7}, Ljava/math/BigInteger;->bigEndInts2NewBN([IZ)J

    move-result-wide v23
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_cd

    .line 2704
    .end local v13    # "modBN":J
    .local v23, "modBN":J
    :try_start_95
    invoke-static {}, Llibcore/math/NativeBN;->BN_new()J

    move-result-wide v3
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_c5

    .line 2705
    .end local v15    # "resultBN":J
    .local v3, "resultBN":J
    move-wide/from16 v17, v3

    :try_start_9b
    invoke-static/range {v17 .. v24}, Llibcore/math/NativeBN;->BN_mod_exp(JJJJ)V

    .line 2706
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v1, v3, v4}, Ljava/math/BigInteger;->bn2BigEndInts(J)[I

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/math/BigInteger;-><init>(I[I)V

    .line 2708
    .local v0, "result":Ljava/math/BigInteger;
    if-eqz v8, :cond_ae

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6
    :try_end_ad
    .catchall {:try_start_9b .. :try_end_ad} :catchall_bc

    goto :goto_af

    :cond_ae
    move-object v6, v0

    .line 2710
    :goto_af
    invoke-static/range {v19 .. v20}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2711
    invoke-static/range {v21 .. v22}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2712
    invoke-static/range {v23 .. v24}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2713
    invoke-static {v3, v4}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2708
    return-object v6

    .line 2710
    .end local v0    # "result":Ljava/math/BigInteger;
    :catchall_bc
    move-exception v0

    move-wide v15, v3

    move-wide/from16 v3, v19

    move-wide/from16 v11, v21

    move-wide/from16 v13, v23

    goto :goto_d8

    .end local v3    # "resultBN":J
    .restart local v15    # "resultBN":J
    :catchall_c5
    move-exception v0

    move-wide/from16 v3, v19

    move-wide/from16 v11, v21

    move-wide/from16 v13, v23

    goto :goto_d8

    .end local v23    # "modBN":J
    .restart local v13    # "modBN":J
    :catchall_cd
    move-exception v0

    move-wide/from16 v3, v19

    move-wide/from16 v11, v21

    goto :goto_d8

    .end local v21    # "expBN":J
    .restart local v11    # "expBN":J
    :catchall_d3
    move-exception v0

    move-wide/from16 v3, v19

    goto :goto_d8

    .end local v19    # "baseBN":J
    .local v3, "baseBN":J
    :catchall_d7
    move-exception v0

    :goto_d8
    invoke-static {v3, v4}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2711
    invoke-static {v11, v12}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2712
    invoke-static {v13, v14}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2713
    invoke-static/range {v15 .. v16}, Llibcore/math/NativeBN;->BN_free(J)V

    .line 2714
    throw v0

    .line 2717
    .end local v3    # "baseBN":J
    .end local v11    # "expBN":J
    .end local v13    # "modBN":J
    .end local v15    # "resultBN":J
    :cond_e5
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 2718
    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;->oddModPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0    # "result":Ljava/math/BigInteger;
    goto/16 :goto_18b

    .line 2727
    .end local v0    # "result":Ljava/math/BigInteger;
    :cond_f1
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    .line 2729
    .local v0, "p":I
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 2730
    .local v6, "m1":Ljava/math/BigInteger;
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 2733
    .local v7, "m2":Ljava/math/BigInteger;
    iget v11, v1, Ljava/math/BigInteger;->signum:I

    if-ltz v11, :cond_10a

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_108

    goto :goto_10a

    .line 2734
    :cond_108
    move-object v11, v1

    goto :goto_10e

    :cond_10a
    :goto_10a
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 2737
    .local v11, "base2":Ljava/math/BigInteger;
    :goto_10e
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    goto :goto_119

    .line 2738
    :cond_115
    invoke-direct {v11, v5, v6}, Ljava/math/BigInteger;->oddModPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    :goto_119
    move-object v3, v4

    .line 2741
    .local v3, "a1":Ljava/math/BigInteger;
    invoke-direct {v9, v5, v0}, Ljava/math/BigInteger;->modPow2(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 2744
    .local v4, "a2":Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 2745
    .local v12, "y1":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 2747
    .local v13, "y2":Ljava/math/BigInteger;
    iget-object v14, v2, Ljava/math/BigInteger;->mag:[I

    array-length v14, v14

    const/high16 v15, 0x2000000

    if-ge v14, v15, :cond_147

    .line 2748
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    move-object v0, v14

    .local v14, "result":Ljava/math/BigInteger;
    goto :goto_18b

    .line 2750
    .end local v14    # "result":Ljava/math/BigInteger;
    :cond_147
    new-instance v14, Ljava/math/MutableBigInteger;

    invoke-direct {v14}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2751
    .local v14, "t1":Ljava/math/MutableBigInteger;
    new-instance v15, Ljava/math/MutableBigInteger;

    move/from16 p1, v0

    .end local v0    # "p":I
    .local p1, "p":I
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, v12}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v15, v0, v14}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2752
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2753
    .local v0, "t2":Ljava/math/MutableBigInteger;
    new-instance v15, Ljava/math/MutableBigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v13}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v15, v1, v0}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2754
    invoke-virtual {v14, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2755
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2756
    .local v1, "q":Ljava/math/MutableBigInteger;
    new-instance v15, Ljava/math/MutableBigInteger;

    invoke-direct {v15, v2}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v14, v15, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/MutableBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    move-object v0, v15

    .line 2760
    .end local v1    # "q":Ljava/math/MutableBigInteger;
    .end local v3    # "a1":Ljava/math/BigInteger;
    .end local v4    # "a2":Ljava/math/BigInteger;
    .end local v6    # "m1":Ljava/math/BigInteger;
    .end local v7    # "m2":Ljava/math/BigInteger;
    .end local v11    # "base2":Ljava/math/BigInteger;
    .end local v12    # "y1":Ljava/math/BigInteger;
    .end local v13    # "y2":Ljava/math/BigInteger;
    .end local v14    # "t1":Ljava/math/MutableBigInteger;
    .end local p1    # "p":I
    .local v0, "result":Ljava/math/BigInteger;
    :goto_18b
    if-eqz v8, :cond_192

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_193

    :cond_192
    move-object v1, v0

    :goto_193
    return-object v1

    .line 2673
    .end local v0    # "result":Ljava/math/BigInteger;
    .end local v5    # "exponent":Ljava/math/BigInteger;
    .end local v8    # "invertResult":Z
    .end local v9    # "base":Ljava/math/BigInteger;
    .end local v10    # "BORINGSSL_MOD_EXP_THRESHOLD":I
    .local p1, "exponent":Ljava/math/BigInteger;
    :cond_194
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v3, "BigInteger: modulus not positive"

    invoke-direct {v1, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist multiply(J)Ljava/math/BigInteger;
    .registers 28
    .param p1, "v"    # J

    .line 1645
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_be

    iget v5, v0, Ljava/math/BigInteger;->signum:I

    if-nez v5, :cond_10

    goto/16 :goto_be

    .line 1647
    :cond_10
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v1, v6

    if-nez v6, :cond_1f

    .line 1648
    invoke-static/range {p1 .. p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 1649
    :cond_1f
    cmp-long v6, v1, v3

    if-lez v6, :cond_24

    goto :goto_25

    :cond_24
    neg-int v5, v5

    .line 1650
    .local v5, "rsign":I
    :goto_25
    cmp-long v6, v1, v3

    if-gez v6, :cond_2a

    .line 1651
    neg-long v1, v1

    .line 1652
    .end local p1    # "v":J
    .local v1, "v":J
    :cond_2a
    const/16 v6, 0x20

    ushr-long v7, v1, v6

    .line 1653
    .local v7, "dh":J
    const-wide v9, 0xffffffffL

    and-long v11, v1, v9

    .line 1655
    .local v11, "dl":J
    iget-object v13, v0, Ljava/math/BigInteger;->mag:[I

    array-length v13, v13

    .line 1656
    .local v13, "xlen":I
    iget-object v14, v0, Ljava/math/BigInteger;->mag:[I

    .line 1657
    .local v14, "value":[I
    cmp-long v15, v7, v3

    if-nez v15, :cond_41

    add-int/lit8 v15, v13, 0x1

    goto :goto_43

    :cond_41
    add-int/lit8 v15, v13, 0x2

    :goto_43
    new-array v15, v15, [I

    .line 1658
    .local v15, "rmag":[I
    const-wide/16 v16, 0x0

    .line 1659
    .local v16, "carry":J
    array-length v3, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 1660
    .local v3, "rstart":I
    add-int/lit8 v18, v13, -0x1

    move-wide/from16 v23, v16

    move/from16 v16, v5

    move-wide/from16 v4, v23

    .end local v5    # "rsign":I
    .local v4, "carry":J
    .local v16, "rsign":I
    .local v18, "i":I
    :goto_52
    if-ltz v18, :cond_6f

    .line 1661
    aget v6, v14, v18

    move-wide/from16 v19, v1

    .end local v1    # "v":J
    .local v19, "v":J
    int-to-long v0, v6

    and-long/2addr v0, v9

    mul-long/2addr v0, v11

    add-long/2addr v0, v4

    .line 1662
    .local v0, "product":J
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "rstart":I
    .local v2, "rstart":I
    long-to-int v6, v0

    aput v6, v15, v3

    .line 1663
    const/16 v3, 0x20

    ushr-long v4, v0, v3

    .line 1660
    .end local v0    # "product":J
    add-int/lit8 v18, v18, -0x1

    const/16 v6, 0x20

    move-object/from16 v0, p0

    move v3, v2

    move-wide/from16 v1, v19

    goto :goto_52

    .end local v2    # "rstart":I
    .end local v19    # "v":J
    .restart local v1    # "v":J
    .restart local v3    # "rstart":I
    :cond_6f
    move-wide/from16 v19, v1

    .line 1665
    .end local v1    # "v":J
    .end local v18    # "i":I
    .restart local v19    # "v":J
    long-to-int v0, v4

    aput v0, v15, v3

    .line 1666
    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-eqz v2, :cond_a8

    .line 1667
    const-wide/16 v0, 0x0

    .line 1668
    .end local v4    # "carry":J
    .local v0, "carry":J
    array-length v2, v15

    add-int/lit8 v2, v2, -0x2

    .line 1669
    .end local v3    # "rstart":I
    .restart local v2    # "rstart":I
    add-int/lit8 v3, v13, -0x1

    move-wide v4, v0

    .end local v0    # "carry":J
    .local v3, "i":I
    .restart local v4    # "carry":J
    :goto_82
    if-ltz v3, :cond_a0

    .line 1670
    aget v0, v14, v3

    int-to-long v0, v0

    and-long/2addr v0, v9

    mul-long/2addr v0, v7

    aget v6, v15, v2

    move-wide/from16 v21, v7

    .end local v7    # "dh":J
    .local v21, "dh":J
    int-to-long v6, v6

    and-long/2addr v6, v9

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    .line 1672
    .local v0, "product":J
    add-int/lit8 v6, v2, -0x1

    .end local v2    # "rstart":I
    .local v6, "rstart":I
    long-to-int v7, v0

    aput v7, v15, v2

    .line 1673
    const/16 v7, 0x20

    ushr-long v4, v0, v7

    .line 1669
    .end local v0    # "product":J
    add-int/lit8 v3, v3, -0x1

    move v2, v6

    move-wide/from16 v7, v21

    goto :goto_82

    .end local v6    # "rstart":I
    .end local v21    # "dh":J
    .restart local v2    # "rstart":I
    .restart local v7    # "dh":J
    :cond_a0
    move-wide/from16 v21, v7

    .line 1675
    .end local v3    # "i":I
    .end local v7    # "dh":J
    .restart local v21    # "dh":J
    const/4 v0, 0x0

    long-to-int v1, v4

    aput v1, v15, v0

    move v3, v2

    goto :goto_aa

    .line 1666
    .end local v2    # "rstart":I
    .end local v21    # "dh":J
    .local v3, "rstart":I
    .restart local v7    # "dh":J
    :cond_a8
    move-wide/from16 v21, v7

    .line 1677
    .end local v7    # "dh":J
    .restart local v21    # "dh":J
    :goto_aa
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_b6

    .line 1678
    array-length v0, v15

    const/4 v1, 0x1

    invoke-static {v15, v1, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v15

    .line 1679
    :cond_b6
    new-instance v0, Ljava/math/BigInteger;

    move/from16 v1, v16

    .end local v16    # "rsign":I
    .local v1, "rsign":I
    invoke-direct {v0, v15, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1646
    .end local v1    # "rsign":I
    .end local v3    # "rstart":I
    .end local v4    # "carry":J
    .end local v11    # "dl":J
    .end local v13    # "xlen":I
    .end local v14    # "value":[I
    .end local v15    # "rmag":[I
    .end local v19    # "v":J
    .end local v21    # "dh":J
    .restart local p1    # "v":J
    :cond_be
    :goto_be
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1497
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api negate()Ljava/math/BigInteger;
    .registers 4

    .line 2596
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method public whitelist test-api nextProbablePrime()Ljava/math/BigInteger;
    .registers 11

    .line 791
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-ltz v0, :cond_e8

    .line 795
    if-eqz v0, :cond_e5

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_e5

    .line 798
    :cond_10
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 801
    .local v1, "result":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x5f

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x0

    if-ge v2, v3, :cond_bb

    .line 804
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 805
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 809
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_a4

    .line 810
    sget-object v0, Ljava/math/BigInteger;->SMALL_PRIME_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 811
    .local v2, "r":J
    const-wide/16 v6, 0x3

    rem-long v6, v2, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x5

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x7

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0xb

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0xd

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x11

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x13

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x17

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x1d

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x1f

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x25

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-eqz v0, :cond_9d

    const-wide/16 v6, 0x29

    rem-long v6, v2, v6

    cmp-long v0, v6, v8

    if-nez v0, :cond_a4

    .line 814
    :cond_9d
    sget-object v0, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 815
    goto :goto_2a

    .line 820
    .end local v2    # "r":J
    :cond_a4
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_ac

    .line 821
    return-object v1

    .line 824
    :cond_ac
    invoke-virtual {v1, v5, v4}, Ljava/math/BigInteger;->primeToCertainty(ILjava/util/Random;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 825
    return-object v1

    .line 827
    :cond_b3
    sget-object v0, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto/16 :goto_2a

    .line 832
    :cond_bb
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 833
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 836
    :cond_c5
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Ljava/math/BigInteger;->getPrimeSearchLen(I)I

    move-result v0

    .line 839
    .local v0, "searchLen":I
    :goto_cd
    new-instance v2, Ljava/math/BitSieve;

    invoke-direct {v2, v1, v0}, Ljava/math/BitSieve;-><init>(Ljava/math/BigInteger;I)V

    .line 840
    .local v2, "searchSieve":Ljava/math/BitSieve;
    invoke-virtual {v2, v1, v5, v4}, Ljava/math/BitSieve;->retrieve(Ljava/math/BigInteger;ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v3

    .line 842
    .local v3, "candidate":Ljava/math/BigInteger;
    if-eqz v3, :cond_d9

    .line 843
    return-object v3

    .line 844
    :cond_d9
    mul-int/lit8 v6, v0, 0x2

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 845
    .end local v2    # "searchSieve":Ljava/math/BitSieve;
    .end local v3    # "candidate":Ljava/math/BigInteger;
    goto :goto_cd

    .line 796
    .end local v0    # "searchLen":I
    .end local v1    # "result":Ljava/math/BigInteger;
    :cond_e5
    :goto_e5
    sget-object v0, Ljava/math/BigInteger;->TWO:Ljava/math/BigInteger;

    return-object v0

    .line 792
    :cond_e8
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api not()Ljava/math/BigInteger;
    .registers 4

    .line 3483
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    new-array v0, v0, [I

    .line 3484
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_18

    .line 3485
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    not-int v2, v2

    aput v2, v0, v1

    .line 3484
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3487
    .end local v1    # "i":I
    :cond_18
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3450
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3451
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 3452
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3453
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 3451
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3455
    .end local v1    # "i":I
    :cond_28
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api pow(I)Ljava/math/BigInteger;
    .registers 24
    .param p1, "exponent"    # I

    .line 2373
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_111

    .line 2376
    iget v2, v0, Ljava/math/BigInteger;->signum:I

    if-nez v2, :cond_11

    .line 2377
    if-nez v1, :cond_f

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_10

    :cond_f
    move-object v2, v0

    :goto_10
    return-object v2

    .line 2380
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    .line 2386
    .local v2, "partToSquare":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v3

    .line 2387
    .local v3, "powersOfTwo":I
    int-to-long v4, v3

    int-to-long v6, v1

    mul-long/2addr v4, v6

    .line 2388
    .local v4, "bitsToShiftLong":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_26

    .line 2389
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 2391
    :cond_26
    long-to-int v6, v4

    .line 2396
    .local v6, "bitsToShift":I
    const/4 v7, 0x1

    if-lez v3, :cond_4a

    .line 2397
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 2398
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    .line 2399
    .local v8, "remainingBits":I
    if-ne v8, v7, :cond_5e

    .line 2400
    iget v9, v0, Ljava/math/BigInteger;->signum:I

    if-gez v9, :cond_43

    and-int/lit8 v9, v1, 0x1

    if-ne v9, v7, :cond_43

    .line 2401
    sget-object v7, Ljava/math/BigInteger;->NEGATIVE_ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 2403
    :cond_43
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 2407
    .end local v8    # "remainingBits":I
    :cond_4a
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    .line 2408
    .restart local v8    # "remainingBits":I
    if-ne v8, v7, :cond_5e

    .line 2409
    iget v9, v0, Ljava/math/BigInteger;->signum:I

    if-gez v9, :cond_5b

    and-int/lit8 v9, v1, 0x1

    if-ne v9, v7, :cond_5b

    .line 2410
    sget-object v7, Ljava/math/BigInteger;->NEGATIVE_ONE:Ljava/math/BigInteger;

    return-object v7

    .line 2412
    :cond_5b
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object v7

    .line 2420
    :cond_5e
    int-to-long v9, v8

    int-to-long v11, v1

    mul-long/2addr v9, v11

    .line 2424
    .local v9, "scaleFactor":J
    iget-object v11, v2, Ljava/math/BigInteger;->mag:[I

    array-length v12, v11

    if-ne v12, v7, :cond_c8

    const-wide/16 v12, 0x3e

    cmp-long v14, v9, v12

    if-gtz v14, :cond_c8

    .line 2426
    iget v14, v0, Ljava/math/BigInteger;->signum:I

    if-gez v14, :cond_76

    and-int/lit8 v14, v1, 0x1

    if-ne v14, v7, :cond_76

    const/4 v14, -0x1

    goto :goto_77

    :cond_76
    move v14, v7

    .line 2427
    .local v14, "newSign":I
    :goto_77
    const-wide/16 v15, 0x1

    .line 2428
    .local v15, "result":J
    const/16 v17, 0x0

    aget v11, v11, v17

    int-to-long v12, v11

    const-wide v19, 0xffffffffL

    and-long v11, v12, v19

    .line 2430
    .local v11, "baseToPow2":J
    move/from16 v13, p1

    .line 2433
    .local v13, "workingExponent":I
    :goto_87
    if-eqz v13, :cond_9c

    .line 2434
    move-object/from16 v19, v2

    .end local v2    # "partToSquare":Ljava/math/BigInteger;
    .local v19, "partToSquare":Ljava/math/BigInteger;
    and-int/lit8 v2, v13, 0x1

    if-ne v2, v7, :cond_90

    .line 2435
    mul-long/2addr v15, v11

    .line 2438
    :cond_90
    ushr-int/lit8 v2, v13, 0x1

    move v13, v2

    if-eqz v2, :cond_99

    .line 2439
    mul-long/2addr v11, v11

    move-object/from16 v2, v19

    goto :goto_87

    .line 2438
    :cond_99
    move-object/from16 v2, v19

    goto :goto_87

    .line 2444
    .end local v19    # "partToSquare":Ljava/math/BigInteger;
    .restart local v2    # "partToSquare":Ljava/math/BigInteger;
    :cond_9c
    move-object/from16 v19, v2

    .end local v2    # "partToSquare":Ljava/math/BigInteger;
    .restart local v19    # "partToSquare":Ljava/math/BigInteger;
    if-lez v3, :cond_bf

    .line 2445
    move-wide/from16 v20, v4

    .end local v4    # "bitsToShiftLong":J
    .local v20, "bitsToShiftLong":J
    int-to-long v4, v6

    add-long/2addr v4, v9

    const-wide/16 v17, 0x3e

    cmp-long v2, v4, v17

    if-gtz v2, :cond_b4

    .line 2446
    shl-long v4, v15, v6

    move v2, v8

    .end local v8    # "remainingBits":I
    .local v2, "remainingBits":I
    int-to-long v7, v14

    mul-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 2448
    .end local v2    # "remainingBits":I
    .restart local v8    # "remainingBits":I
    :cond_b4
    int-to-long v4, v14

    mul-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 2451
    .end local v20    # "bitsToShiftLong":J
    .restart local v4    # "bitsToShiftLong":J
    :cond_bf
    move-wide/from16 v20, v4

    .end local v4    # "bitsToShiftLong":J
    .restart local v20    # "bitsToShiftLong":J
    int-to-long v4, v14

    mul-long/2addr v4, v15

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 2424
    .end local v11    # "baseToPow2":J
    .end local v13    # "workingExponent":I
    .end local v14    # "newSign":I
    .end local v15    # "result":J
    .end local v19    # "partToSquare":Ljava/math/BigInteger;
    .end local v20    # "bitsToShiftLong":J
    .local v2, "partToSquare":Ljava/math/BigInteger;
    .restart local v4    # "bitsToShiftLong":J
    :cond_c8
    move-object/from16 v19, v2

    move-wide/from16 v20, v4

    move v2, v8

    .line 2454
    .end local v4    # "bitsToShiftLong":J
    .end local v8    # "remainingBits":I
    .local v2, "remainingBits":I
    .restart local v19    # "partToSquare":Ljava/math/BigInteger;
    .restart local v20    # "bitsToShiftLong":J
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    int-to-long v4, v4

    int-to-long v11, v1

    mul-long/2addr v4, v11

    const-wide/16 v11, 0x20

    div-long/2addr v4, v11

    const-wide/32 v11, 0x4000000

    cmp-long v4, v4, v11

    if-lez v4, :cond_e1

    .line 2455
    invoke-static {}, Ljava/math/BigInteger;->reportOverflow()V

    .line 2461
    :cond_e1
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 2463
    .local v4, "answer":Ljava/math/BigInteger;
    move/from16 v5, p1

    move v8, v5

    move-object v5, v4

    move-object/from16 v4, v19

    .line 2465
    .end local v19    # "partToSquare":Ljava/math/BigInteger;
    .local v4, "partToSquare":Ljava/math/BigInteger;
    .local v5, "answer":Ljava/math/BigInteger;
    .local v8, "workingExponent":I
    :cond_e9
    :goto_e9
    if-eqz v8, :cond_fd

    .line 2466
    and-int/lit8 v11, v8, 0x1

    if-ne v11, v7, :cond_f3

    .line 2467
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 2470
    :cond_f3
    ushr-int/lit8 v11, v8, 0x1

    move v8, v11

    if-eqz v11, :cond_e9

    .line 2471
    invoke-direct {v4}, Ljava/math/BigInteger;->square()Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_e9

    .line 2476
    :cond_fd
    if-lez v3, :cond_103

    .line 2477
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 2480
    :cond_103
    iget v11, v0, Ljava/math/BigInteger;->signum:I

    if-gez v11, :cond_110

    and-int/lit8 v11, v1, 0x1

    if-ne v11, v7, :cond_110

    .line 2481
    invoke-virtual {v5}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    return-object v7

    .line 2483
    :cond_110
    return-object v5

    .line 2374
    .end local v2    # "remainingBits":I
    .end local v3    # "powersOfTwo":I
    .end local v4    # "partToSquare":Ljava/math/BigInteger;
    .end local v5    # "answer":Ljava/math/BigInteger;
    .end local v6    # "bitsToShift":I
    .end local v8    # "workingExponent":I
    .end local v9    # "scaleFactor":J
    .end local v20    # "bitsToShiftLong":J
    :cond_111
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Negative exponent"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist primeToCertainty(ILjava/util/Random;)Z
    .registers 8
    .param p1, "certainty"    # I
    .param p2, "random"    # Ljava/util/Random;

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "rounds":I
    const v1, 0x7ffffffe

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 876
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 877
    .local v3, "sizeInBits":I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_21

    .line 878
    const/16 v0, 0x32

    .line 879
    if-ge v1, v0, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    move v2, v0

    :goto_1b
    move v0, v2

    .line 880
    invoke-direct {p0, v0, p2}, Ljava/math/BigInteger;->passesMillerRabin(ILjava/util/Random;)Z

    move-result v2

    return v2

    .line 883
    :cond_21
    const/16 v4, 0x100

    if-ge v3, v4, :cond_28

    .line 884
    const/16 v0, 0x1b

    goto :goto_3d

    .line 885
    :cond_28
    const/16 v4, 0x200

    if-ge v3, v4, :cond_2f

    .line 886
    const/16 v0, 0xf

    goto :goto_3d

    .line 887
    :cond_2f
    const/16 v4, 0x300

    if-ge v3, v4, :cond_36

    .line 888
    const/16 v0, 0x8

    goto :goto_3d

    .line 889
    :cond_36
    const/16 v4, 0x400

    if-ge v3, v4, :cond_3c

    .line 890
    const/4 v0, 0x4

    goto :goto_3d

    .line 892
    :cond_3c
    const/4 v0, 0x2

    .line 894
    :goto_3d
    if-ge v1, v0, :cond_41

    move v4, v1

    goto :goto_42

    :cond_41
    move v4, v0

    :goto_42
    move v0, v4

    .line 896
    invoke-direct {p0, v0, p2}, Ljava/math/BigInteger;->passesMillerRabin(ILjava/util/Random;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-direct {p0}, Ljava/math/BigInteger;->passesLucasLehmer()Z

    move-result v4

    if-eqz v4, :cond_50

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    return v2
.end method

.method public whitelist test-api remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 2312
    iget-object v0, p1, Ljava/math/BigInteger;->mag:[I

    array-length v1, v0

    const/16 v2, 0x28

    if-lt v1, v2, :cond_17

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    array-length v1, v1

    array-length v0, v0

    sub-int/2addr v1, v0

    if-ge v1, v2, :cond_f

    goto :goto_17

    .line 2316
    :cond_f
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 2314
    :cond_17
    :goto_17
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->remainderKnuth(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api setBit(I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "n"    # I

    .line 3536
    if-ltz p1, :cond_31

    .line 3539
    ushr-int/lit8 v0, p1, 0x5

    .line 3540
    .local v0, "intNum":I
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 3542
    .local v1, "result":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_21

    .line 3543
    array-length v3, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3542
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 3545
    .end local v2    # "i":I
    :cond_21
    array-length v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v4

    aget v3, v1, v2

    and-int/lit8 v5, p1, 0x1f

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 3547
    invoke-static {v1}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 3537
    .end local v0    # "intNum":I
    .end local v1    # "result":[I
    :cond_31
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api shiftLeft(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # I

    .line 3286
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 3287
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3288
    :cond_7
    if-lez p1, :cond_17

    .line 3289
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, p1}, Ljava/math/BigInteger;->shiftLeft([II)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 3290
    :cond_17
    if-nez p1, :cond_1a

    .line 3291
    return-object p0

    .line 3295
    :cond_1a
    neg-int v0, p1

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->shiftRightImpl(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api shiftRight(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # I

    .line 3346
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 3347
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 3348
    :cond_7
    if-lez p1, :cond_e

    .line 3349
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->shiftRightImpl(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3350
    :cond_e
    if-nez p1, :cond_11

    .line 3351
    return-object p0

    .line 3355
    :cond_11
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    neg-int v2, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->shiftLeft([II)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0
.end method

.method public whitelist test-api shortValueExact()S
    .registers 3

    .line 4784
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1f

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1f

    .line 4785
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 4786
    .local v0, "value":I
    const/16 v1, -0x8000

    if-lt v0, v1, :cond_1f

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1f

    .line 4787
    invoke-virtual {p0}, Ljava/math/BigInteger;->shortValue()S

    move-result v1

    return v1

    .line 4789
    .end local v0    # "value":I
    :cond_1f
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger out of short range"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api signum()I
    .registers 2

    .line 2606
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    return v0
.end method

.method public whitelist test-api subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 1439
    iget v0, p1, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_5

    .line 1440
    return-object p0

    .line 1441
    :cond_5
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-nez v1, :cond_e

    .line 1442
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1443
    :cond_e
    if-eq v0, v1, :cond_20

    .line 1444
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->add([I[I)[I

    move-result-object v1

    iget v2, p0, Ljava/math/BigInteger;->signum:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 1446
    :cond_20
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareMagnitude(Ljava/math/BigInteger;)I

    move-result v0

    .line 1447
    .local v0, "cmp":I
    if-nez v0, :cond_29

    .line 1448
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 1449
    :cond_29
    if-lez v0, :cond_34

    iget-object v1, p0, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p1, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    goto :goto_3c

    .line 1450
    :cond_34
    iget-object v1, p1, Ljava/math/BigInteger;->mag:[I

    iget-object v2, p0, Ljava/math/BigInteger;->mag:[I

    invoke-static {v1, v2}, Ljava/math/BigInteger;->subtract([I[I)[I

    move-result-object v1

    :goto_3c
    nop

    .line 1451
    .local v1, "resultMag":[I
    invoke-static {v1}, Ljava/math/BigInteger;->trustedStripLeadingZeroInts([I)[I

    move-result-object v1

    .line 1452
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->signum:I

    if-ne v0, v3, :cond_49

    const/4 v3, 0x1

    goto :goto_4a

    :cond_49
    const/4 v3, -0x1

    :goto_4a
    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method public whitelist test-api testBit(I)Z
    .registers 5
    .param p1, "n"    # I

    .line 3521
    if-ltz p1, :cond_13

    .line 3524
    ushr-int/lit8 v0, p1, 0x5

    invoke-direct {p0, v0}, Ljava/math/BigInteger;->getInt(I)I

    move-result v0

    and-int/lit8 v1, p1, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    return v2

    .line 3522
    :cond_13
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative bit address"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toByteArray()[B
    .registers 8

    .line 4092
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    .line 4093
    .local v0, "byteLen":I
    new-array v1, v0, [B

    .line 4095
    .local v1, "byteArray":[B
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    const/4 v3, 0x4

    .local v3, "bytesCopied":I
    const/4 v4, 0x0

    .local v4, "nextInt":I
    const/4 v5, 0x0

    .local v5, "intIndex":I
    :goto_f
    if-ltz v2, :cond_27

    .line 4096
    const/4 v6, 0x4

    if-ne v3, v6, :cond_1d

    .line 4097
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "intIndex":I
    .local v6, "intIndex":I
    invoke-direct {p0, v5}, Ljava/math/BigInteger;->getInt(I)I

    move-result v4

    .line 4098
    const/4 v3, 0x1

    move v5, v6

    goto :goto_21

    .line 4100
    .end local v6    # "intIndex":I
    .restart local v5    # "intIndex":I
    :cond_1d
    ushr-int/lit8 v4, v4, 0x8

    .line 4101
    add-int/lit8 v3, v3, 0x1

    .line 4103
    :goto_21
    int-to-byte v6, v4

    aput-byte v6, v1, v2

    .line 4095
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 4105
    .end local v2    # "i":I
    .end local v3    # "bytesCopied":I
    .end local v4    # "nextInt":I
    .end local v5    # "intIndex":I
    :cond_27
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 4074
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString(I)Ljava/lang/String;
    .registers 5
    .param p1, "radix"    # I

    .line 3906
    iget v0, p0, Ljava/math/BigInteger;->signum:I

    if-nez v0, :cond_7

    .line 3907
    const-string v0, "0"

    return-object v0

    .line 3908
    :cond_7
    const/4 v0, 0x2

    if-lt p1, v0, :cond_e

    const/16 v0, 0x24

    if-le p1, v0, :cond_10

    .line 3909
    :cond_e
    const/16 p1, 0xa

    .line 3912
    :cond_10
    iget-object v0, p0, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_1c

    .line 3913
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->smallToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3917
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3918
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Ljava/math/BigInteger;->signum:I

    const/4 v2, 0x0

    if-gez v1, :cond_33

    .line 3919
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v0, p1, v2}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 3920
    const/16 v1, 0x2d

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 3923
    :cond_33
    invoke-static {p0, v0, p1, v2}, Ljava/math/BigInteger;->toString(Ljava/math/BigInteger;Ljava/lang/StringBuilder;II)V

    .line 3925
    :goto_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3467
    invoke-direct {p0}, Ljava/math/BigInteger;->intLength()I

    move-result v0

    invoke-direct {p1}, Ljava/math/BigInteger;->intLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    .line 3468
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 3469
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->getInt(I)I

    move-result v2

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 3470
    invoke-direct {p1, v3}, Ljava/math/BigInteger;->getInt(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 3468
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3472
    .end local v1    # "i":I
    :cond_28
    invoke-static {v0}, Ljava/math/BigInteger;->valueOf([I)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method
