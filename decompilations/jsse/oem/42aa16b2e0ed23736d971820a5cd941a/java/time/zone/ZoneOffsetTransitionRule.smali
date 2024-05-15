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
.field private static final whitelist serialVersionUID:J = 0x5f9acf201199524bL


# instance fields
.field private final greylist-max-o dom:B

.field private final greylist-max-o dow:Ljava/time/DayOfWeek;

.field private final greylist-max-o month:Ljava/time/Month;

.field private final greylist-max-o offsetAfter:Ljava/time/ZoneOffset;

.field private final greylist-max-o offsetBefore:Ljava/time/ZoneOffset;

.field private final greylist-max-o standardOffset:Ljava/time/ZoneOffset;

.field private final greylist-max-o time:Ljava/time/LocalTime;

.field private final greylist-max-o timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field private final greylist-max-o timeEndOfDay:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
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

    .line 222
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

.method public static whitelist core-platform-api test-api of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 26
    .param p0, "month"    # Ljava/time/Month;
    .param p1, "dayOfMonthIndicator"    # I
    .param p2, "dayOfWeek"    # Ljava/time/DayOfWeek;
    .param p3, "time"    # Ljava/time/LocalTime;
    .param p4, "timeEndOfDay"    # Z
    .param p5, "timeDefnition"    # Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .param p6, "standardOffset"    # Ljava/time/ZoneOffset;
    .param p7, "offsetBefore"    # Ljava/time/ZoneOffset;
    .param p8, "offsetAfter"    # Ljava/time/ZoneOffset;

    .line 181
    move/from16 v10, p1

    move-object/from16 v11, p3

    const-string v0, "month"

    move-object/from16 v12, p0

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    const-string v0, "time"

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    const-string v0, "timeDefnition"

    move-object/from16 v13, p5

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v0, "standardOffset"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string v0, "offsetBefore"

    move-object/from16 v15, p7

    invoke-static {v15, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "offsetAfter"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    const/16 v0, -0x1c

    if-lt v10, v0, :cond_63

    const/16 v0, 0x1f

    if-gt v10, v0, :cond_63

    if-eqz v10, :cond_63

    .line 190
    if-eqz p4, :cond_49

    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {v11, v0}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_49

    .line 191
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time must be midnight when end of day flag is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_49
    :goto_49
    new-instance v16, Ljava/time/zone/ZoneOffsetTransitionRule;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ljava/time/zone/ZoneOffsetTransitionRule;-><init>(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v16

    .line 188
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Day of month indicator must be between -28 and 31 inclusive excluding zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 19
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 342
    .local v0, "data":I
    ushr-int/lit8 v1, v0, 0x1c

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v1

    .line 343
    .local v1, "month":Ljava/time/Month;
    const/high16 v2, 0xfc00000

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x16

    add-int/lit8 v11, v2, -0x20

    .line 344
    .local v11, "dom":I
    const/high16 v2, 0x380000

    and-int/2addr v2, v0

    ushr-int/lit8 v12, v2, 0x13

    .line 345
    .local v12, "dowByte":I
    if-nez v12, :cond_1a

    const/4 v2, 0x0

    goto :goto_1e

    :cond_1a
    invoke-static {v12}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v2

    :goto_1e
    move-object v4, v2

    .line 346
    .local v4, "dow":Ljava/time/DayOfWeek;
    const v2, 0x7c000

    and-int/2addr v2, v0

    ushr-int/lit8 v13, v2, 0xe

    .line 347
    .local v13, "timeByte":I
    invoke-static {}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->values()[Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    move-result-object v2

    and-int/lit16 v3, v0, 0x3000

    ushr-int/lit8 v3, v3, 0xc

    aget-object v14, v2, v3

    .line 348
    .local v14, "defn":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    and-int/lit16 v2, v0, 0xff0

    ushr-int/lit8 v15, v2, 0x4

    .line 349
    .local v15, "stdByte":I
    and-int/lit8 v2, v0, 0xc

    ushr-int/lit8 v7, v2, 0x2

    .line 350
    .local v7, "beforeByte":I
    and-int/lit8 v6, v0, 0x3

    .line 351
    .local v6, "afterByte":I
    const/16 v2, 0x1f

    const/4 v3, 0x0

    if-ne v13, v2, :cond_48

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    goto :goto_4e

    :cond_48
    rem-int/lit8 v2, v13, 0x18

    invoke-static {v2, v3}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v2

    :goto_4e
    move-object v5, v2

    .line 352
    .local v5, "time":Ljava/time/LocalTime;
    const/16 v2, 0xff

    if-ne v15, v2, :cond_58

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_5c

    :cond_58
    add-int/lit8 v2, v15, -0x80

    mul-int/lit16 v2, v2, 0x384

    :goto_5c
    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v8, v2

    .line 353
    .local v8, "std":Ljava/time/ZoneOffset;
    const/4 v2, 0x3

    if-ne v7, v2, :cond_69

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    goto :goto_70

    :cond_69
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    mul-int/lit16 v10, v7, 0x708

    add-int/2addr v9, v10

    :goto_70
    invoke-static {v9}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v9

    .line 354
    .local v9, "before":Ljava/time/ZoneOffset;
    if-ne v6, v2, :cond_7b

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    goto :goto_82

    :cond_7b
    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    mul-int/lit16 v10, v6, 0x708

    add-int/2addr v2, v10

    :goto_82
    invoke-static {v2}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v2

    move-object v10, v2

    .line 355
    .local v10, "after":Ljava/time/ZoneOffset;
    const/16 v2, 0x18

    if-ne v13, v2, :cond_8f

    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_91

    :cond_8f
    move/from16 v16, v3

    :goto_91
    move-object v2, v1

    move v3, v11

    move/from16 v17, v6

    .end local v6    # "afterByte":I
    .local v17, "afterByte":I
    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "beforeByte":I
    .local v16, "beforeByte":I
    move-object v7, v14

    invoke-static/range {v2 .. v10}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v2

    return-object v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 291
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api createTransition(I)Ljava/time/zone/ZoneOffsetTransition;
    .registers 8
    .param p1, "year"    # I

    .line 484
    iget-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-gez v0, :cond_27

    .line 485
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/time/Month;->length(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-byte v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 486
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v1, :cond_39

    .line 487
    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_39

    .line 490
    .end local v0    # "date":Ljava/time/LocalDate;
    :cond_27
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-static {p1, v1, v0}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v0

    .line 491
    .restart local v0    # "date":Ljava/time/LocalDate;
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-eqz v1, :cond_39

    .line 492
    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    .line 495
    :cond_39
    :goto_39
    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_43

    .line 496
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 498
    :cond_43
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 499
    .local v1, "localDT":Ljava/time/LocalDateTime;
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2, v1, v3, v4}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->createDateTime(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 500
    .local v2, "transition":Ljava/time/LocalDateTime;
    new-instance v3, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-direct {v3, v2, v4, v5}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v3
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherRule"    # Ljava/lang/Object;

    .line 514
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 515
    return v0

    .line 517
    :cond_4
    instance-of v1, p1, Ljava/time/zone/ZoneOffsetTransitionRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    .line 518
    move-object v1, p1

    check-cast v1, Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 519
    .local v1, "other":Ljava/time/zone/ZoneOffsetTransitionRule;
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    if-ne v3, v4, :cond_53

    iget-byte v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    iget-byte v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    .line 521
    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-boolean v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    iget-boolean v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-ne v3, v4, :cond_53

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    .line 523
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 524
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    iget-object v4, v1, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    .line 525
    invoke-virtual {v3, v4}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move v0, v2

    .line 519
    :goto_54
    return v0

    .line 527
    .end local v1    # "other":Ljava/time/zone/ZoneOffsetTransitionRule;
    :cond_55
    return v2
.end method

.method public whitelist core-platform-api test-api getDayOfMonthIndicator()I
    .registers 2

    .line 392
    iget-byte v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    return v0
.end method

.method public whitelist core-platform-api test-api getDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 408
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getLocalTime()Ljava/time/LocalTime;
    .registers 2

    .line 420
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMonth()Ljava/time/Month;
    .registers 2

    .line 370
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getOffsetAfter()Ljava/time/ZoneOffset;
    .registers 2

    .line 470
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getOffsetBefore()Ljava/time/ZoneOffset;
    .registers 2

    .line 461
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getStandardOffset()Ljava/time/ZoneOffset;
    .registers 2

    .line 452
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTimeDefinition()Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2

    .line 443
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 537
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0xf

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    .line 538
    invoke-virtual {v1}, Ljava/time/Month;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 539
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v1, :cond_21

    const/4 v1, 0x7

    goto :goto_25

    :cond_21
    invoke-virtual {v1}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v1

    :goto_25
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 540
    .local v0, "hash":I
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 541
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    .line 540
    return v1
.end method

.method public whitelist core-platform-api test-api isMidnightEndOfDay()Z
    .registers 2

    .line 431
    iget-boolean v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 6

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "TransitionRule["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v1, v2}, Ljava/time/ZoneOffset;->compareTo(Ljava/time/ZoneOffset;)I

    move-result v1

    if-lez v1, :cond_17

    const-string v1, "Gap "

    goto :goto_19

    :cond_17
    const-string v1, "Overlap "

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    const/16 v2, 0x20

    if-eqz v1, :cond_94

    .line 557
    iget-byte v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    const/4 v4, -0x1

    if-ne v3, v4, :cond_51

    .line 558
    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or before last day of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 559
    :cond_51
    if-gez v3, :cond_76

    .line 560
    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or before last day minus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 562
    :cond_76
    invoke-virtual {v1}, Ljava/time/DayOfWeek;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on or after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 565
    :cond_94
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v1}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    :goto_a5
    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v1, :cond_b1

    const-string v1, "24:00"

    goto :goto_b7

    :cond_b1
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v1}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    const-string v1, ", standard offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 16
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-boolean v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v0, :cond_8

    const v0, 0x15180

    goto :goto_e

    :cond_8
    iget-object v0, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v0

    .line 302
    .local v0, "timeSecs":I
    :goto_e
    iget-object v1, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->standardOffset:Ljava/time/ZoneOffset;

    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    .line 303
    .local v1, "stdOffset":I
    iget-object v2, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v2}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    sub-int/2addr v2, v1

    .line 304
    .local v2, "beforeDiff":I
    iget-object v3, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v3, v1

    .line 305
    .local v3, "afterDiff":I
    rem-int/lit16 v4, v0, 0xe10

    const/16 v5, 0x1f

    if-nez v4, :cond_36

    iget-boolean v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeEndOfDay:Z

    if-eqz v4, :cond_2f

    const/16 v4, 0x18

    goto :goto_37

    :cond_2f
    iget-object v4, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->time:Ljava/time/LocalTime;

    invoke-virtual {v4}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    goto :goto_37

    :cond_36
    move v4, v5

    .line 306
    .local v4, "timeByte":I
    :goto_37
    rem-int/lit16 v6, v1, 0x384

    const/16 v7, 0xff

    if-nez v6, :cond_42

    div-int/lit16 v6, v1, 0x384

    add-int/lit16 v6, v6, 0x80

    goto :goto_43

    :cond_42
    move v6, v7

    .line 307
    .local v6, "stdOffsetByte":I
    :goto_43
    const/16 v8, 0xe10

    const/4 v9, 0x3

    const/16 v10, 0x708

    if-eqz v2, :cond_51

    if-eq v2, v10, :cond_51

    if-ne v2, v8, :cond_4f

    goto :goto_51

    :cond_4f
    move v11, v9

    goto :goto_53

    :cond_51
    :goto_51
    div-int/lit16 v11, v2, 0x708

    .line 308
    .local v11, "beforeByte":I
    :goto_53
    if-eqz v3, :cond_5c

    if-eq v3, v10, :cond_5c

    if-ne v3, v8, :cond_5a

    goto :goto_5c

    :cond_5a
    move v8, v9

    goto :goto_5e

    :cond_5c
    :goto_5c
    div-int/lit16 v8, v3, 0x708

    .line 309
    .local v8, "afterByte":I
    :goto_5e
    iget-object v10, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dow:Ljava/time/DayOfWeek;

    if-nez v10, :cond_64

    const/4 v10, 0x0

    goto :goto_68

    :cond_64
    invoke-virtual {v10}, Ljava/time/DayOfWeek;->getValue()I

    move-result v10

    .line 310
    .local v10, "dowByte":I
    :goto_68
    iget-object v12, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->month:Ljava/time/Month;

    invoke-virtual {v12}, Ljava/time/Month;->getValue()I

    move-result v12

    shl-int/lit8 v12, v12, 0x1c

    iget-byte v13, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->dom:B

    add-int/lit8 v13, v13, 0x20

    shl-int/lit8 v13, v13, 0x16

    add-int/2addr v12, v13

    shl-int/lit8 v13, v10, 0x13

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0xe

    add-int/2addr v12, v13

    iget-object v13, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->timeDefinition:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 314
    invoke-virtual {v13}, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v13

    shl-int/lit8 v13, v13, 0xc

    add-int/2addr v12, v13

    shl-int/lit8 v13, v6, 0x4

    add-int/2addr v12, v13

    shl-int/lit8 v13, v11, 0x2

    add-int/2addr v12, v13

    add-int/2addr v12, v8

    .line 318
    .local v12, "b":I
    invoke-interface {p1, v12}, Ljava/io/DataOutput;->writeInt(I)V

    .line 319
    if-ne v4, v5, :cond_95

    .line 320
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 322
    :cond_95
    if-ne v6, v7, :cond_9a

    .line 323
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 325
    :cond_9a
    if-ne v11, v9, :cond_a5

    .line 326
    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetBefore:Ljava/time/ZoneOffset;

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 328
    :cond_a5
    if-ne v8, v9, :cond_b0

    .line 329
    iget-object v5, p0, Ljava/time/zone/ZoneOffsetTransitionRule;->offsetAfter:Ljava/time/ZoneOffset;

    invoke-virtual {v5}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 331
    :cond_b0
    return-void
.end method
