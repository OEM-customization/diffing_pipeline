.class public final Ljava/time/ZoneOffset;
.super Ljava/time/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/ZoneId;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/ZoneOffset;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Ljava/time/ZoneOffset;

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTC:Ljava/time/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 149
    const v0, -0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MIN:Ljava/time/ZoneOffset;

    .line 153
    const v0, 0xfd20

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    sput-object v0, Ljava/time/ZoneOffset;->MAX:Ljava/time/ZoneOffset;

    .line 124
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "totalSeconds"    # I

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/time/ZoneId;-><init>()V

    .line 434
    iput p1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    .line 435
    invoke-static {p1}, Ljava/time/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    .line 436
    return-void
.end method

.method private static buildId(I)Ljava/lang/String;
    .registers 9
    .param p0, "totalSeconds"    # I

    .prologue
    const/16 v7, 0xa

    .line 439
    if-nez p0, :cond_8

    .line 440
    const-string/jumbo v5, "Z"

    return-object v5

    .line 442
    :cond_8
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 443
    .local v3, "absTotalSeconds":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v4, "buf":Ljava/lang/StringBuilder;
    div-int/lit16 v0, v3, 0xe10

    .line 445
    .local v0, "absHours":I
    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    .line 446
    .local v1, "absMinutes":I
    if-gez p0, :cond_4e

    const-string/jumbo v5, "-"

    :goto_1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 447
    if-ge v0, v7, :cond_52

    const-string/jumbo v5, "0"

    .line 446
    :goto_25
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 448
    if-ge v1, v7, :cond_56

    const-string/jumbo v5, ":0"

    .line 446
    :goto_32
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    rem-int/lit8 v2, v3, 0x3c

    .line 450
    .local v2, "absSeconds":I
    if-eqz v2, :cond_49

    .line 451
    if-ge v2, v7, :cond_5a

    const-string/jumbo v5, ":0"

    :goto_42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    :cond_49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 446
    .end local v2    # "absSeconds":I
    :cond_4e
    const-string/jumbo v5, "+"

    goto :goto_1c

    .line 447
    :cond_52
    const-string/jumbo v5, ""

    goto :goto_25

    .line 448
    :cond_56
    const-string/jumbo v5, ":"

    goto :goto_32

    .line 451
    .restart local v2    # "absSeconds":I
    :cond_5a
    const-string/jumbo v5, ":"

    goto :goto_42
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    .line 338
    const-string/jumbo v1, "temporal"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    .line 340
    .local v0, "offset":Ljava/time/ZoneOffset;
    if-nez v0, :cond_3f

    .line 341
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    const-string/jumbo v3, " of type "

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_3f
    return-object v0
.end method

.method public static of(Ljava/lang/String;)Ljava/time/ZoneOffset;
    .registers 12
    .param p0, "offsetId"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2d

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 197
    const-string/jumbo v5, "offsetId"

    invoke-static {p0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    sget-object v5, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/ZoneOffset;

    .line 200
    .local v3, "offset":Ljava/time/ZoneOffset;
    if-eqz v3, :cond_17

    .line 201
    return-object v3

    .line 206
    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_c2

    .line 235
    :pswitch_1e
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    :pswitch_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 210
    :pswitch_58
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 211
    .local v1, "hours":I
    const/4 v2, 0x0

    .line 212
    .local v2, "minutes":I
    const/4 v4, 0x0

    .line 237
    .local v4, "seconds":I
    :goto_5e
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 238
    .local v0, "first":C
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_b2

    if-eq v0, v10, :cond_b2

    .line 239
    new-instance v5, Ljava/time/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    .end local v0    # "first":C
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_82
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 216
    .restart local v1    # "hours":I
    invoke-static {p0, v6, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 217
    .restart local v2    # "minutes":I
    const/4 v4, 0x0

    .line 218
    .restart local v4    # "seconds":I
    goto :goto_5e

    .line 220
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_8c
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 221
    .restart local v1    # "hours":I
    invoke-static {p0, v9, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 222
    .restart local v2    # "minutes":I
    const/4 v4, 0x0

    .line 223
    .restart local v4    # "seconds":I
    goto :goto_5e

    .line 225
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_96
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 226
    .restart local v1    # "hours":I
    invoke-static {p0, v6, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 227
    .restart local v2    # "minutes":I
    const/4 v5, 0x5

    invoke-static {p0, v5, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v4

    .restart local v4    # "seconds":I
    goto :goto_5e

    .line 230
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_a4
    invoke-static {p0, v8, v7}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 231
    .restart local v1    # "hours":I
    invoke-static {p0, v9, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 232
    .restart local v2    # "minutes":I
    const/4 v5, 0x7

    invoke-static {p0, v5, v8}, Ljava/time/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v4

    .restart local v4    # "seconds":I
    goto :goto_5e

    .line 241
    .restart local v0    # "first":C
    :cond_b2
    if-ne v0, v10, :cond_bc

    .line 242
    neg-int v5, v1

    neg-int v6, v2

    neg-int v7, v4

    invoke-static {v5, v6, v7}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 244
    :cond_bc
    invoke-static {v1, v2, v4}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 206
    nop

    :pswitch_data_c2
    .packed-switch 0x2
        :pswitch_38
        :pswitch_58
        :pswitch_1e
        :pswitch_82
        :pswitch_8c
        :pswitch_96
        :pswitch_1e
        :pswitch_a4
    .end packed-switch
.end method

.method public static ofHours(I)Ljava/time/ZoneOffset;
    .registers 2
    .param p0, "hours"    # I

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-static {p0, v0, v0}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutes(II)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "hours"    # I
    .param p1, "minutes"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/time/ZoneOffset;->ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutesSeconds(III)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    .line 311
    invoke-static {p0, p1, p2}, Ljava/time/ZoneOffset;->validate(III)V

    .line 312
    invoke-static {p0, p1, p2}, Ljava/time/ZoneOffset;->totalSeconds(III)I

    move-result v0

    .line 313
    .local v0, "totalSeconds":I
    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method public static ofTotalSeconds(I)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "totalSeconds"    # I

    .prologue
    .line 408
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xfd20

    if-le v2, v3, :cond_12

    .line 409
    new-instance v2, Ljava/time/DateTimeException;

    const-string/jumbo v3, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_12
    rem-int/lit16 v2, p0, 0x384

    if-nez v2, :cond_40

    .line 412
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 413
    .local v1, "totalSecs":Ljava/lang/Integer;
    sget-object v2, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneOffset;

    .line 414
    .local v0, "result":Ljava/time/ZoneOffset;
    if-nez v0, :cond_3f

    .line 415
    new-instance v0, Ljava/time/ZoneOffset;

    .end local v0    # "result":Ljava/time/ZoneOffset;
    invoke-direct {v0, p0}, Ljava/time/ZoneOffset;-><init>(I)V

    .line 416
    .restart local v0    # "result":Ljava/time/ZoneOffset;
    sget-object v2, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v2, Ljava/time/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/time/ZoneOffset;
    check-cast v0, Ljava/time/ZoneOffset;

    .line 418
    .restart local v0    # "result":Ljava/time/ZoneOffset;
    sget-object v2, Ljava/time/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_3f
    return-object v0

    .line 422
    .end local v0    # "result":Ljava/time/ZoneOffset;
    .end local v1    # "totalSecs":Ljava/lang/Integer;
    :cond_40
    new-instance v2, Ljava/time/ZoneOffset;

    invoke-direct {v2, p0}, Ljava/time/ZoneOffset;-><init>(I)V

    return-object v2
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IZ)I
    .registers 9
    .param p0, "offsetId"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "precededByColon"    # Z

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 257
    if-eqz p2, :cond_2a

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_2a

    .line 258
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_2a
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 261
    .local v0, "ch1":C
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 262
    .local v1, "ch2":C
    if-lt v0, v4, :cond_38

    if-le v0, v5, :cond_52

    .line 263
    :cond_38
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_52
    if-lt v1, v4, :cond_38

    if-gt v1, v5, :cond_38

    .line 265
    add-int/lit8 v2, v0, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v1, -0x30

    add-int/2addr v2, v3

    return v2
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 790
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_11

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    mul-int/lit16 v1, v0, 0x384

    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    goto :goto_10
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static totalSeconds(III)I
    .registers 5
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    .line 394
    mul-int/lit16 v0, p0, 0xe10

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method private static validate(III)V
    .registers 6
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    const/16 v2, 0x3b

    const/16 v1, 0x12

    .line 357
    const/16 v0, -0x12

    if-lt p0, v0, :cond_a

    if-le p0, v1, :cond_2b

    .line 358
    :cond_a
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zone offset hours not in valid range: value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string/jumbo v2, " is not in the range -18 to 18"

    .line 358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2b
    if-lez p0, :cond_3a

    .line 362
    if-ltz p1, :cond_31

    if-gez p2, :cond_5a

    .line 363
    :cond_31
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_3a
    if-gez p0, :cond_49

    .line 366
    if-gtz p1, :cond_40

    if-lez p2, :cond_5a

    .line 367
    :cond_40
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_49
    if-lez p1, :cond_56

    if-gez p2, :cond_56

    .line 370
    :cond_4d
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_56
    if-gez p1, :cond_5a

    if-gtz p2, :cond_4d

    .line 372
    :cond_5a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_85

    .line 373
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zone offset minutes not in valid range: abs(value) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    const-string/jumbo v2, " is not in the range 0 to 59"

    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_85
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_b0

    .line 377
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zone offset seconds not in valid range: abs(value) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, " is not in the range 0 to 59"

    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_b0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_cb

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_c2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_cb

    .line 381
    :cond_c2
    new-instance v0, Ljava/time/DateTimeException;

    const-string/jumbo v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_cb
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 760
    new-instance v0, Ljava/time/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/Temporal;

    .prologue
    .line 679
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 682
    check-cast p1, Ljava/time/ZoneOffset;

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/time/ZoneOffset;)I
    .registers 4
    .param p1, "other"    # Ljava/time/ZoneOffset;

    .prologue
    .line 698
    iget v0, p1, Ljava/time/ZoneOffset;->totalSeconds:I

    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 713
    if-ne p0, p1, :cond_5

    .line 714
    return v0

    .line 716
    :cond_5
    instance-of v2, p1, Ljava/time/ZoneOffset;

    if-eqz v2, :cond_14

    .line 717
    iget v2, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    check-cast p1, Ljava/time/ZoneOffset;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v3, p1, Ljava/time/ZoneOffset;->totalSeconds:I

    if-ne v2, v3, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    .line 719
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_14
    return v1
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 585
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_7

    .line 586
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0

    .line 587
    :cond_7
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_25

    .line 588
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_25
    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 617
    sget-object v0, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v0, :cond_8

    .line 618
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    int-to-long v0, v0

    return-wide v0

    .line 619
    :cond_8
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_26

    .line 620
    new-instance v0, Ljava/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_26
    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRules()Ljava/time/zone/ZoneRules;
    .registers 2

    .prologue
    .line 499
    invoke-static {p0}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSeconds()I
    .registers 2

    .prologue
    .line 468
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 729
    iget v0, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    const/4 v0, 0x0

    .line 524
    instance-of v1, p1, Ljava/time/temporal/ChronoField;

    if-eqz v1, :cond_b

    .line 525
    sget-object v1, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    if-ne p1, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    .line 527
    :cond_b
    if-eqz p1, :cond_11

    invoke-interface {p1, p0}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v0

    :cond_11
    return v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_c

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 648
    :cond_c
    return-object p0

    .line 650
    :cond_d
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .prologue
    .line 555
    invoke-super {p0, p1}, Ljava/time/temporal/TemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Ljava/time/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 776
    invoke-virtual {p0, p1}, Ljava/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 777
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 5
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    iget v1, p0, Ljava/time/ZoneOffset;->totalSeconds:I

    .line 781
    .local v1, "offsetSecs":I
    rem-int/lit16 v2, v1, 0x384

    if-nez v2, :cond_13

    div-int/lit16 v0, v1, 0x384

    .line 782
    .local v0, "offsetByte":I
    :goto_8
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 783
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_12

    .line 784
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 786
    :cond_12
    return-void

    .line 781
    .end local v0    # "offsetByte":I
    :cond_13
    const/16 v0, 0x7f

    .restart local v0    # "offsetByte":I
    goto :goto_8
.end method
