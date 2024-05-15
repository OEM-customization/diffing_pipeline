.class public final enum Ljava/math/RoundingMode;
.super Ljava/lang/Enum;
.source "RoundingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/math/RoundingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/math/RoundingMode;

.field public static final enum whitelist test-api CEILING:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api DOWN:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api FLOOR:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api HALF_DOWN:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api HALF_EVEN:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api HALF_UP:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api UNNECESSARY:Ljava/math/RoundingMode;

.field public static final enum whitelist test-api UP:Ljava/math/RoundingMode;


# instance fields
.field final blacklist oldMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 118
    new-instance v0, Ljava/math/RoundingMode;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 142
    new-instance v1, Ljava/math/RoundingMode;

    const-string v3, "DOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 167
    new-instance v3, Ljava/math/RoundingMode;

    const-string v5, "CEILING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 192
    new-instance v5, Ljava/math/RoundingMode;

    const-string v7, "FLOOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 219
    new-instance v7, Ljava/math/RoundingMode;

    const-string v9, "HALF_UP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 245
    new-instance v9, Ljava/math/RoundingMode;

    const-string v11, "HALF_DOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 278
    new-instance v11, Ljava/math/RoundingMode;

    const-string v13, "HALF_EVEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 302
    new-instance v13, Ljava/math/RoundingMode;

    const-string v15, "UNNECESSARY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Ljava/math/RoundingMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    .line 93
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/math/RoundingMode;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "oldMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 314
    iput p3, p0, Ljava/math/RoundingMode;->oldMode:I

    .line 315
    return-void
.end method

.method public static whitelist test-api valueOf(I)Ljava/math/RoundingMode;
    .registers 3
    .param p0, "rm"    # I

    .line 326
    packed-switch p0, :pswitch_data_24

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :pswitch_b
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    return-object v0

    .line 347
    :pswitch_e
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    return-object v0

    .line 344
    :pswitch_11
    sget-object v0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    return-object v0

    .line 341
    :pswitch_14
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    return-object v0

    .line 338
    :pswitch_17
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    return-object v0

    .line 335
    :pswitch_1a
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    return-object v0

    .line 332
    :pswitch_1d
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    return-object v0

    .line 329
    :pswitch_20
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    const-class v0, Ljava/math/RoundingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/math/RoundingMode;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/math/RoundingMode;
    .registers 1

    .line 93
    sget-object v0, Ljava/math/RoundingMode;->$VALUES:[Ljava/math/RoundingMode;

    invoke-virtual {v0}, [Ljava/math/RoundingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/RoundingMode;

    return-object v0
.end method
