.class public final Ljava/time/zone/ZoneOffsetTransitionRule;
.super Ljava/lang/Object;
.source "ZoneOffsetTransitionRule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final dom:B

.field private final dow:Ljava/time/DayOfWeek;

.field private final month:Ljava/time/Month;

.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;

.field private final standardOffset:Ljava/time/ZoneOffset;

.field private final time:Ljava/time/LocalTime;

.field private final timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final timeEndOfDay:Z


# direct methods
.method constructor <init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .registers 11
    .param p1, "month"    # Ljava/time/Month;
    .param p2, "dayOfMonthIndicator"    # I
    .param p3, "dayOfWeek"    # Ljava/time/DayOfWeek;
    .param p4, "time"    # Ljava/time/LocalTime;
    .param p5, "timeEndOfDay"    # Z
    .param p6, "timeDefnition"    # Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p7, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p8, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p9, "offsetAfter"    # Ljava/time/ZoneOffset;

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    .line 224
    int-to-byte v0, p2

    iput-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    .line 225
    iput-object p3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    .line 226
    iput-object p4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    .line 227
    iput-boolean p5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    .line 228
    iput-object p6, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 229
    iput-object p7, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 230
    iput-object p8, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 231
    iput-object p9, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 232
    return-void
.end method

.method public static of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 20
    .param p0, "month"    # Ljava/time/Month;
    .param p1, "dayOfMonthIndicator"    # I
    .param p2, "dayOfWeek"    # Ljava/time/DayOfWeek;
    .param p3, "time"    # Ljava/time/LocalTime;
    .param p4, "timeEndOfDay"    # Z
    .param p5, "timeDefnition"    # Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p6, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p7, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p8, "offsetAfter"    # Ljava/time/ZoneOffset;

    .prologue
    .line 181
    const-string/jumbo v1, "month"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v1, "time"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v1, "timeDefnition"

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v1, "standardOffset"

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v1, "offsetBefore"

    move-object/from16 v0, p7

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v1, "offsetAfter"

    move-object/from16 v0, p8

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const/16 v1, -0x1c

    if-lt p1, v1, :cond_34

    const/16 v1, 0x1f

    if-le p1, v1, :cond_3d

    .line 188
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_3d
    if-eqz p1, :cond_34

    .line 190
    if-eqz p4, :cond_52

    sget-object v1, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {p3, v1}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Time must be midnight when end of day flag is true"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_52
    new-instance v1, Ljava/time/zone/ZoneOffsetTransitionRule;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;-><init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v1
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 21
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    .line 342
    .local v13, "data":I
    ushr-int/lit8 v6, v13, 0x1c

    invoke-static {v6}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v2

    .line 343
    .local v2, "month":Ljava/time/Month;
    const/high16 v6, 0xfc00000

    and-int/2addr v6, v13

    ushr-int/lit8 v6, v6, 0x16

    add-int/lit8 v3, v6, -0x20

    .line 344
    .local v3, "dom":I
    const/high16 v6, 0x380000

    and-int/2addr v6, v13

    ushr-int/lit8 v14, v6, 0x13

    .line 345
    .local v14, "dowByte":I
    if-nez v14, :cond_74

    const/4 v4, 0x0

    .line 346
    :goto_19
    const v6, 0x7c000

    and-int/2addr v6, v13

    ushr-int/lit8 v16, v6, 0xe

    .line 347
    .local v16, "timeByte":I
    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v6

    and-int/lit16 v0, v13, 0x3000

    move/from16 v17, v0

    ushr-int/lit8 v17, v17, 0xc

    aget-object v7, v6, v17

    .line 348
    .local v7, "defn":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    and-int/lit16 v6, v13, 0xff0

    ushr-int/lit8 v15, v6, 0x4

    .line 349
    .local v15, "stdByte":I
    and-int/lit8 v6, v13, 0xc

    ushr-int/lit8 v12, v6, 0x2

    .line 350
    .local v12, "beforeByte":I
    and-int/lit8 v11, v13, 0x3

    .line 351
    .local v11, "afterByte":I
    const/16 v6, 0x1f

    move/from16 v0, v16

    if-ne v0, v6, :cond_79

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v5

    .line 352
    .local v5, "time":Ljava/time/LocalTime;
    :goto_46
    const/16 v6, 0xff

    if-ne v15, v6, :cond_84

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v8

    .line 353
    .local v8, "std":Ljava/time/ZoneOffset;
    :goto_52
    const/4 v6, 0x3

    if-ne v12, v6, :cond_8d

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    .line 354
    .local v9, "before":Ljava/time/ZoneOffset;
    :goto_5d
    const/4 v6, 0x3

    if-ne v11, v6, :cond_9c

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v10

    .line 355
    .local v10, "after":Ljava/time/ZoneOffset;
    :goto_68
    const/16 v6, 0x18

    move/from16 v0, v16

    if-ne v0, v6, :cond_ab

    const/4 v6, 0x1

    :goto_6f
    invoke-static/range {v2 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v6

    return-object v6

    .line 345
    .end local v5    # "time":Ljava/time/LocalTime;
    .end local v7    # "defn":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .end local v8    # "std":Ljava/time/ZoneOffset;
    .end local v9    # "before":Ljava/time/ZoneOffset;
    .end local v10    # "after":Ljava/time/ZoneOffset;
    .end local v11    # "afterByte":I
    .end local v12    # "beforeByte":I
    .end local v15    # "stdByte":I
    .end local v16    # "timeByte":I
    :cond_74
    invoke-static {v14}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v4

    .local v4, "dow":Ljava/time/DayOfWeek;
    goto :goto_19

    .line 351
    .end local v4    # "dow":Ljava/time/DayOfWeek;
    .restart local v7    # "defn":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .restart local v11    # "afterByte":I
    .restart local v12    # "beforeByte":I
    .restart local v15    # "stdByte":I
    .restart local v16    # "timeByte":I
    :cond_79
    rem-int/lit8 v6, v16, 0x18

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v5

    .restart local v5    # "time":Ljava/time/LocalTime;
    goto :goto_46

    .line 352
    :cond_84
    add-int/lit8 v6, v15, -0x80

    mul-int/lit16 v6, v6, 0x384

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v8

    .restart local v8    # "std":Ljava/time/ZoneOffset;
    goto :goto_52

    .line 353
    :cond_8d
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    mul-int/lit16 v0, v12, 0x708

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    .restart local v9    # "before":Ljava/time/ZoneOffset;
    goto :goto_5d

    .line 354
    :cond_9c
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    mul-int/lit16 v0, v11, 0x708

    move/from16 v17, v0

    add-int v6, v6, v17

    invoke-static {v6}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v10

    .restart local v10    # "after":Ljava/time/ZoneOffset;
    goto :goto_68

    .line 355
    :cond_ab
    const/4 v6, 0x0

    goto :goto_6f
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
    .line 242
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 291
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public createTransition(I)Ljava/time/zone/ZoneOffsetTransition;
    .registers 10
    .param p1, "year"    # I

    .prologue
    .line 484
    iget-byte v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v3, :cond_4e

    .line 485
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/time/Month;->length(Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-byte v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v4, v5

    invoke-static {p1, v3, v4}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 486
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v3, :cond_2a

    .line 487
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v3}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    .line 495
    :cond_2a
    :goto_2a
    iget-boolean v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v3, :cond_34

    .line 496
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 498
    :cond_34
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-static {v0, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 499
    .local v1, "localDT":Ljava/time/LocalDateTime;
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v3, v1, v4, v5}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 500
    .local v2, "transition":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v3

    .line 490
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v1    # "localDT":Ljava/time/LocalDateTime;
    .end local v2    # "transition":Ljava/time/LocalDateTime;
    :cond_4e
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-byte v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-static {p1, v3, v4}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 491
    .restart local v0    # "date":Ljava/time/LocalDate;
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v3, :cond_2a

    .line 492
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-static {v3}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_2a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "otherRule"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 514
    if-ne p1, p0, :cond_5

    .line 515
    const/4 v1, 0x1

    return v1

    .line 517
    :cond_5
    instance-of v2, p1, Ljava/time/zone/ZoneOffsetTransitionRule;

    if-eqz v2, :cond_51

    move-object v0, p1

    .line 518
    check-cast v0, Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 519
    .local v0, "other":Ljava/time/zone/ZoneOffsetTransitionRule;
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    if-ne v2, v3, :cond_50

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v2, v3, :cond_50

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-ne v2, v3, :cond_50

    .line 520
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v2, v3, :cond_50

    .line 521
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v2, v3}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 519
    if-eqz v2, :cond_50

    .line 522
    iget-boolean v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v2, v3, :cond_50

    .line 523
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 519
    if-eqz v2, :cond_50

    .line 524
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v3}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 519
    if-eqz v2, :cond_50

    .line 525
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v2, v0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 519
    :cond_50
    return v1

    .line 527
    .end local v0    # "other":Ljava/time/zone/ZoneOffsetTransitionRule;
    :cond_51
    return v1
.end method

.method public getDayOfMonthIndicator()I
    .registers 2

    .prologue
    .line 392
    iget-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public getLocalTime()Ljava/time/LocalTime;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public getMonth()Ljava/time/Month;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    return-object v0
.end method

.method public getOffsetAfter()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getStandardOffset()Ljava/time/ZoneOffset;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public getTimeDefinition()Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 537
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v2

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    :goto_b
    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xf

    .line 538
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->ordinal()I

    move-result v2

    shl-int/lit8 v2, v2, 0xb

    .line 537
    add-int/2addr v1, v2

    .line 538
    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v2, v2, 0x20

    shl-int/lit8 v2, v2, 0x5

    .line 537
    add-int/2addr v2, v1

    .line 539
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v1, :cond_46

    const/4 v1, 0x7

    :goto_23
    shl-int/lit8 v1, v1, 0x2

    .line 537
    add-int/2addr v1, v2

    .line 539
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v2

    .line 537
    add-int v0, v1, v2

    .line 540
    .local v0, "hash":I
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    .line 541
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    .line 540
    xor-int/2addr v1, v2

    .line 541
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    .line 540
    xor-int/2addr v1, v2

    return v1

    .line 537
    .end local v0    # "hash":I
    :cond_44
    const/4 v1, 0x0

    goto :goto_b

    .line 539
    :cond_46
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    goto :goto_23
.end method

.method public isMidnightEndOfDay()Z
    .registers 2

    .prologue
    .line 431
    iget-boolean v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 554
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v3}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v1

    if-lez v1, :cond_91

    const-string/jumbo v1, "Gap "

    .line 553
    :goto_1b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    const-string/jumbo v2, " to "

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 555
    const-string/jumbo v2, ", "

    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v1, :cond_ea

    .line 557
    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_95

    .line 558
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on or before last day of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :goto_5b
    const-string/jumbo v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_ff

    const-string/jumbo v1, "24:00"

    :goto_69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 568
    const-string/jumbo v2, " "

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 568
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 569
    const-string/jumbo v2, ", standard offset "

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 569
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 570
    const/16 v2, 0x5d

    .line 567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 554
    :cond_91
    const-string/jumbo v1, "Overlap "

    goto :goto_1b

    .line 559
    :cond_95
    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v1, :cond_c4

    .line 560
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on or before last day minus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 562
    :cond_c4
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on or after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v2}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_5b

    .line 565
    :cond_ea
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_5b

    .line 567
    :cond_ff
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_69
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 16
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xe10

    const/16 v11, 0x708

    const/4 v12, 0x3

    .line 301
    iget-boolean v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v10, :cond_93

    const v9, 0x15180

    .line 302
    .local v9, "timeSecs":I
    :goto_c
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    .line 303
    .local v6, "stdOffset":I
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    sub-int v4, v10, v6

    .line 304
    .local v4, "beforeDiff":I
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    sub-int v1, v10, v6

    .line 305
    .local v1, "afterDiff":I
    rem-int/lit16 v10, v9, 0xe10

    if-nez v10, :cond_a2

    iget-boolean v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v10, :cond_9b

    const/16 v8, 0x18

    .line 306
    .local v8, "timeByte":I
    :goto_2c
    rem-int/lit16 v10, v6, 0x384

    if-nez v10, :cond_a5

    div-int/lit16 v10, v6, 0x384

    add-int/lit16 v7, v10, 0x80

    .line 307
    .local v7, "stdOffsetByte":I
    :goto_34
    if-eqz v4, :cond_38

    if-ne v4, v11, :cond_a8

    :cond_38
    div-int/lit16 v3, v4, 0x708

    .line 308
    .local v3, "beforeByte":I
    :goto_3a
    if-eqz v1, :cond_3e

    if-ne v1, v11, :cond_ac

    :cond_3e
    div-int/lit16 v0, v1, 0x708

    .line 309
    .local v0, "afterByte":I
    :goto_40
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v10, :cond_b0

    const/4 v5, 0x0

    .line 310
    .local v5, "dowByte":I
    :goto_45
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v10}, Ljava/time/Month;->getValue()I

    move-result v10

    shl-int/lit8 v10, v10, 0x1c

    .line 311
    iget-byte v11, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v11, v11, 0x20

    shl-int/lit8 v11, v11, 0x16

    .line 310
    add-int/2addr v10, v11

    .line 312
    shl-int/lit8 v11, v5, 0x13

    .line 310
    add-int/2addr v10, v11

    .line 313
    shl-int/lit8 v11, v8, 0xe

    .line 310
    add-int/2addr v10, v11

    .line 314
    iget-object v11, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v11}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v11

    shl-int/lit8 v11, v11, 0xc

    .line 310
    add-int/2addr v10, v11

    .line 315
    shl-int/lit8 v11, v7, 0x4

    .line 310
    add-int/2addr v10, v11

    .line 316
    shl-int/lit8 v11, v3, 0x2

    .line 310
    add-int/2addr v10, v11

    add-int v2, v10, v0

    .line 318
    .local v2, "b":I
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    const/16 v10, 0x1f

    if-ne v8, v10, :cond_75

    .line 320
    invoke-interface {p1, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 322
    :cond_75
    const/16 v10, 0xff

    if-ne v7, v10, :cond_7c

    .line 323
    invoke-interface {p1, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 325
    :cond_7c
    if-ne v3, v12, :cond_87

    .line 326
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    .line 328
    :cond_87
    if-ne v0, v12, :cond_92

    .line 329
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/io/DataOutput;->writeInt(I)V

    .line 331
    :cond_92
    return-void

    .line 301
    .end local v0    # "afterByte":I
    .end local v1    # "afterDiff":I
    .end local v2    # "b":I
    .end local v3    # "beforeByte":I
    .end local v4    # "beforeDiff":I
    .end local v5    # "dowByte":I
    .end local v6    # "stdOffset":I
    .end local v7    # "stdOffsetByte":I
    .end local v8    # "timeByte":I
    .end local v9    # "timeSecs":I
    :cond_93
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v10}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v9

    .restart local v9    # "timeSecs":I
    goto/16 :goto_c

    .line 305
    .restart local v1    # "afterDiff":I
    .restart local v4    # "beforeDiff":I
    .restart local v6    # "stdOffset":I
    :cond_9b
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v10}, Ljava/time/LocalTime;->getHour()I

    move-result v8

    .restart local v8    # "timeByte":I
    goto :goto_2c

    .end local v8    # "timeByte":I
    :cond_a2
    const/16 v8, 0x1f

    .restart local v8    # "timeByte":I
    goto :goto_2c

    .line 306
    :cond_a5
    const/16 v7, 0xff

    .restart local v7    # "stdOffsetByte":I
    goto :goto_34

    .line 307
    :cond_a8
    if-eq v4, v13, :cond_38

    const/4 v3, 0x3

    .restart local v3    # "beforeByte":I
    goto :goto_3a

    .line 308
    :cond_ac
    if-eq v1, v13, :cond_3e

    const/4 v0, 0x3

    .restart local v0    # "afterByte":I
    goto :goto_40

    .line 309
    :cond_b0
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    invoke-virtual {v10}, Ljava/time/DayOfWeek;->getValue()I

    move-result v5

    .restart local v5    # "dowByte":I
    goto :goto_45
.end method
