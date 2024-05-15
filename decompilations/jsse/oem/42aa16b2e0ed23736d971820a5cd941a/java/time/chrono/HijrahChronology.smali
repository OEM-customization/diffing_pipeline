.class public final Ljava/time/chrono/HijrahChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final whitelist core-platform-api test-api INSTANCE:Ljava/time/chrono/HijrahChronology;

.field private static final greylist-max-o KEY_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o KEY_ISO_START:Ljava/lang/String; = "iso-start"

.field private static final greylist-max-o KEY_TYPE:Ljava/lang/String; = "type"

.field private static final greylist-max-o KEY_VERSION:Ljava/lang/String; = "version"

.field private static final greylist-max-o PROP_PREFIX:Ljava/lang/String; = "calendar.hijrah."

.field private static final greylist-max-o PROP_TYPE_SUFFIX:Ljava/lang/String; = ".type"

.field private static final transient greylist-max-o calendarProperties:Ljava/util/Properties;

.field private static final whitelist serialVersionUID:J = 0x2b668b59cb61d531L


# instance fields
.field private final transient greylist-max-o calendarType:Ljava/lang/String;

.field private transient greylist-max-o hijrahEpochMonthStartDays:[I

.field private transient greylist-max-o hijrahStartEpochMonth:I

.field private volatile transient greylist-max-o initComplete:Z

.field private transient greylist-max-o maxEpochDay:I

.field private transient greylist-max-o maxMonthLength:I

.field private transient greylist-max-o maxYearLength:I

.field private transient greylist-max-o minEpochDay:I

.field private transient greylist-max-o minMonthLength:I

.field private transient greylist-max-o minYearLength:I

.field private final transient greylist-max-o typeId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 303
    :try_start_0
    invoke-static {}, Lsun/util/calendar/BaseCalendar;->getCalendarProperties()Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_39

    .line 306
    nop

    .line 309
    :try_start_7
    new-instance v0, Ljava/time/chrono/HijrahChronology;

    const-string v1, "Hijrah-umalqura"

    invoke-direct {v0, v1}, Ljava/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    .line 311
    const-string v1, "Hijrah"

    invoke-static {v0, v1}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;

    .line 312
    sget-object v0, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    const-string v1, "islamic"

    invoke-static {v0, v1}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;Ljava/lang/String;)Ljava/time/chrono/Chronology;
    :try_end_1c
    .catch Ljava/time/DateTimeException; {:try_start_7 .. :try_end_1c} :catch_21

    .line 318
    nop

    .line 319
    invoke-static {}, Ljava/time/chrono/HijrahChronology;->registerVariants()V

    .line 320
    return-void

    .line 313
    :catch_21
    move-exception v0

    .line 315
    .local v0, "ex":Ljava/time/DateTimeException;
    const-string v1, "java.time.chrono"

    invoke-static {v1}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v1

    .line 316
    .local v1, "logger":Lsun/util/logging/PlatformLogger;
    const-string v2, "Unable to initialize Hijrah calendar: Hijrah-umalqura"

    invoke-virtual {v1, v2, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/time/DateTimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    const-string v4, "Unable to initialize Hijrah-umalqura calendar"

    invoke-direct {v2, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 304
    .end local v0    # "ex":Ljava/time/DateTimeException;
    .end local v1    # "logger":Lsun/util/logging/PlatformLogger;
    :catch_39
    move-exception v0

    .line 305
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Can\'t initialize lib/calendars.properties"

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/time/DateTimeException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 360
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar.hijrah."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "propName":Ljava/lang/String;
    sget-object v1, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "calType":Ljava/lang/String;
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 368
    iput-object p1, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    .line 369
    iput-object v1, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    .line 370
    return-void

    .line 366
    :cond_32
    new-instance v2, Ljava/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendarType is missing or empty for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    .end local v0    # "propName":Ljava/lang/String;
    .end local v1    # "calType":Ljava/lang/String;
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "calendar id is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkCalendarInit()V
    .registers 2

    .line 386
    iget-boolean v0, p0, Ljava/time/chrono/HijrahChronology;->initComplete:Z

    if-nez v0, :cond_a

    .line 387
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->loadCalendarData()V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/time/chrono/HijrahChronology;->initComplete:Z

    .line 390
    :cond_a
    return-void
.end method

.method private greylist-max-o createEpochMonths(IIILjava/util/Map;)[I
    .registers 15
    .param p1, "epochDay"    # I
    .param p2, "minYear"    # I
    .param p3, "maxYear"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;)[I"
        }
    .end annotation

    .line 987
    .local p4, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xc

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 990
    .local v0, "numMonths":I
    const/4 v2, 0x0

    .line 991
    .local v2, "epochMonth":I
    new-array v3, v0, [I

    .line 992
    .local v3, "epochMonths":[I
    const v4, 0x7fffffff

    iput v4, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    .line 993
    const/high16 v4, -0x80000000

    iput v4, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 996
    move v4, p2

    .local v4, "year":I
    :goto_16
    if-gt v4, p3, :cond_62

    .line 997
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 998
    .local v5, "months":[I
    const/4 v6, 0x0

    .local v6, "month":I
    :goto_23
    if-ge v6, v1, :cond_5f

    .line 999
    aget v7, v5, v6

    .line 1000
    .local v7, "length":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "epochMonth":I
    .local v8, "epochMonth":I
    aput p1, v3, v2

    .line 1002
    const/16 v2, 0x1d

    if-lt v7, v2, :cond_48

    const/16 v2, 0x20

    if-gt v7, v2, :cond_48

    .line 1005
    add-int/2addr p1, v7

    .line 1006
    iget v2, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    .line 1007
    iget v2, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    .line 998
    .end local v7    # "length":I
    add-int/lit8 v6, v6, 0x1

    move v2, v8

    goto :goto_23

    .line 1003
    .restart local v7    # "length":I
    :cond_48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid month length in year: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 996
    .end local v5    # "months":[I
    .end local v6    # "month":I
    .end local v7    # "length":I
    .end local v8    # "epochMonth":I
    .restart local v2    # "epochMonth":I
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1012
    .end local v4    # "year":I
    :cond_62
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "epochMonth":I
    .local v1, "epochMonth":I
    aput p1, v3, v2

    .line 1014
    array-length v2, v3

    if-ne v1, v2, :cond_6a

    .line 1019
    return-object v3

    .line 1015
    :cond_6a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did not fill epochMonths exactly: ndx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " should be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o epochDayToEpochMonth(I)I
    .registers 4
    .param p1, "epochDay"    # I

    .line 785
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 786
    .local v0, "ndx":I
    if-gez v0, :cond_b

    .line 787
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 789
    :cond_b
    return v0
.end method

.method private greylist-max-o epochMonthLength(I)I
    .registers 4
    .param p1, "epochMonth"    # I

    .line 855
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    aget v0, v0, p1

    sub-int/2addr v1, v0

    return v1
.end method

.method private greylist-max-o epochMonthToEpochDay(I)I
    .registers 3
    .param p1, "epochMonth"    # I

    .line 829
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    aget v0, v0, p1

    return v0
.end method

.method private greylist-max-o epochMonthToMonth(I)I
    .registers 3
    .param p1, "epochMonth"    # I

    .line 819
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private greylist-max-o epochMonthToYear(I)I
    .registers 3
    .param p1, "epochMonth"    # I

    .line 799
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private greylist-max-o loadCalendarData()V
    .registers 19

    move-object/from16 v1, p0

    .line 899
    :try_start_2
    sget-object v0, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar.hijrah."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 900
    .local v2, "resourceName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource missing for calendar: calendar.hijrah."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 901
    invoke-static {v2}, Ljava/time/chrono/HijrahChronology;->readConfigProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    move-object v3, v0

    .line 903
    .local v3, "props":Ljava/util/Properties;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    .line 904
    .local v4, "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const v0, 0x7fffffff

    .line 905
    .local v0, "minYear":I
    const/high16 v5, -0x80000000

    .line 906
    .local v5, "maxYear":I
    const/4 v6, 0x0

    .line 907
    .local v6, "id":Ljava/lang/String;
    const/4 v7, 0x0

    .line 908
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x0

    .line 909
    .local v8, "version":Ljava/lang/String;
    const/4 v9, 0x0

    .line 910
    .local v9, "isoStart":I
    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v0

    .end local v0    # "minYear":I
    .local v5, "minYear":I
    .local v6, "maxYear":I
    .local v7, "id":Ljava/lang/String;
    .local v8, "type":Ljava/lang/String;
    .local v9, "version":Ljava/lang/String;
    .local v11, "isoStart":I
    :goto_54
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v13, v0

    .line 911
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 912
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v0, -0x429ec6e6

    const/16 v17, 0x0

    const/4 v12, 0x2

    if-eq v15, v0, :cond_a2

    const/16 v0, 0xd1b

    if-eq v15, v0, :cond_97

    const v0, 0x368f3a

    if-eq v15, v0, :cond_8d

    const v0, 0x14f51cd8

    if-eq v15, v0, :cond_83

    :cond_82
    goto :goto_ac

    :cond_83
    const-string v0, "version"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move v0, v12

    goto :goto_ad

    :cond_8d
    const-string v0, "type"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_ad

    :cond_97
    const-string v0, "id"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    move/from16 v0, v17

    goto :goto_ad

    :cond_a2
    const-string v0, "iso-start"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a8} :catch_1cb

    if-eqz v0, :cond_82

    const/4 v0, 0x3

    goto :goto_ad

    :goto_ac
    const/4 v0, -0x1

    :goto_ad
    if-eqz v0, :cond_12e

    const/4 v15, 0x1

    if-eq v0, v15, :cond_123

    if-eq v0, v12, :cond_118

    const/4 v15, 0x3

    if-eq v0, v15, :cond_f6

    .line 930
    :try_start_b7
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 931
    .local v0, "year":I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/time/chrono/HijrahChronology;->parseMonths(Ljava/lang/String;)[I

    move-result-object v12

    .line 932
    .local v12, "months":[I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v4, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    move v6, v15

    .line 934
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v15
    :try_end_d9
    .catch Ljava/lang/NumberFormatException; {:try_start_b7 .. :try_end_d9} :catch_de
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_d9} :catch_1cb

    move v5, v15

    .line 937
    .end local v0    # "year":I
    .end local v12    # "months":[I
    move-object/from16 v17, v2

    move-object v12, v3

    goto :goto_138

    .line 935
    :catch_de
    move-exception v0

    .line 936
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_df
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad key: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v10

    .line 923
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_f6
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/time/chrono/HijrahChronology;->parseYMD(Ljava/lang/String;)[I

    move-result-object v0

    .line 924
    .local v0, "ymd":[I
    aget v15, v0, v17

    const/16 v16, 0x1

    aget v12, v0, v16

    move-object/from16 v17, v2

    const/16 v16, 0x2

    .end local v2    # "resourceName":Ljava/lang/String;
    .local v17, "resourceName":Ljava/lang/String;
    aget v2, v0, v16

    invoke-static {v15, v12, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    move-object v12, v3

    .end local v3    # "props":Ljava/util/Properties;
    .local v12, "props":Ljava/util/Properties;
    invoke-virtual {v2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    long-to-int v2, v2

    .line 925
    .end local v11    # "isoStart":I
    .local v2, "isoStart":I
    move v11, v2

    goto :goto_138

    .line 920
    .end local v0    # "ymd":[I
    .end local v12    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    .local v2, "resourceName":Ljava/lang/String;
    .restart local v3    # "props":Ljava/util/Properties;
    .restart local v11    # "isoStart":I
    :cond_118
    move-object/from16 v17, v2

    move-object v12, v3

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "props":Ljava/util/Properties;
    .restart local v12    # "props":Ljava/util/Properties;
    .restart local v17    # "resourceName":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 921
    .end local v9    # "version":Ljava/lang/String;
    .local v0, "version":Ljava/lang/String;
    move-object v9, v0

    goto :goto_138

    .line 917
    .end local v0    # "version":Ljava/lang/String;
    .end local v12    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "props":Ljava/util/Properties;
    .restart local v9    # "version":Ljava/lang/String;
    :cond_123
    move-object/from16 v17, v2

    move-object v12, v3

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "props":Ljava/util/Properties;
    .restart local v12    # "props":Ljava/util/Properties;
    .restart local v17    # "resourceName":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 918
    .end local v8    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    move-object v8, v0

    goto :goto_138

    .line 914
    .end local v0    # "type":Ljava/lang/String;
    .end local v12    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "props":Ljava/util/Properties;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_12e
    move-object/from16 v17, v2

    move-object v12, v3

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "props":Ljava/util/Properties;
    .restart local v12    # "props":Ljava/util/Properties;
    .restart local v17    # "resourceName":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 915
    .end local v7    # "id":Ljava/lang/String;
    .local v0, "id":Ljava/lang/String;
    move-object v7, v0

    .line 939
    .end local v0    # "id":Ljava/lang/String;
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v14    # "key":Ljava/lang/String;
    .restart local v7    # "id":Ljava/lang/String;
    :goto_138
    move-object v3, v12

    move-object/from16 v2, v17

    goto/16 :goto_54

    .line 941
    .end local v12    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "props":Ljava/util/Properties;
    :cond_13d
    move-object/from16 v17, v2

    move-object v12, v3

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "props":Ljava/util/Properties;
    .restart local v12    # "props":Ljava/util/Properties;
    .restart local v17    # "resourceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 944
    invoke-virtual/range {p0 .. p0}, Ljava/time/chrono/HijrahChronology;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 947
    if-eqz v9, :cond_195

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_195

    .line 950
    if-eqz v11, :cond_18d

    .line 955
    mul-int/lit8 v0, v5, 0xc

    iput v0, v1, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    .line 956
    iput v11, v1, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    .line 957
    invoke-direct {v1, v11, v5, v6, v4}, Ljava/time/chrono/HijrahChronology;->createEpochMonths(IIILjava/util/Map;)[I

    move-result-object v0

    iput-object v0, v1, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    .line 958
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v0, v0, v2

    iput v0, v1, Ljava/time/chrono/HijrahChronology;->maxEpochDay:I

    .line 961
    move v0, v5

    .local v0, "year":I
    :goto_172
    if-ge v0, v6, :cond_18b

    .line 962
    invoke-virtual {v1, v0}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v2

    .line 963
    .local v2, "length":I
    iget v3, v1, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    .line 964
    iget v3, v1, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    .line 961
    .end local v2    # "length":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_172

    .line 971
    .end local v0    # "year":I
    .end local v4    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v5    # "minYear":I
    .end local v6    # "maxYear":I
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "version":Ljava/lang/String;
    .end local v11    # "isoStart":I
    .end local v12    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    :cond_18b
    nop

    .line 972
    return-void

    .line 951
    .restart local v4    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .restart local v5    # "minYear":I
    .restart local v6    # "maxYear":I
    .restart local v7    # "id":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    .restart local v9    # "version":Ljava/lang/String;
    .restart local v11    # "isoStart":I
    .restart local v12    # "props":Ljava/util/Properties;
    .restart local v17    # "resourceName":Ljava/lang/String;
    :cond_18d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration does not contain a ISO start date"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v0

    .line 948
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Configuration does not contain a version"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v0

    .line 945
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_19d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration is for a different calendar type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v0

    .line 942
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :cond_1b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration is for a different calendar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    throw v0
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_1cb} :catch_1cb

    .line 966
    .end local v4    # "years":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v5    # "minYear":I
    .end local v6    # "maxYear":I
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "version":Ljava/lang/String;
    .end local v11    # "isoStart":I
    .end local v12    # "props":Ljava/util/Properties;
    .end local v17    # "resourceName":Ljava/lang/String;
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    :catch_1cb
    move-exception v0

    .line 968
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "java.time.chrono"

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    .line 969
    .local v2, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to initialize Hijrah calendar proxy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    new-instance v3, Ljava/time/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to initialize HijrahCalendar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o parseMonths(Ljava/lang/String;)[I
    .registers 9
    .param p1, "line"    # Ljava/lang/String;

    .line 1031
    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 1032
    .local v1, "months":[I
    const-string v2, "\\s"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "numbers":[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v0, :cond_3b

    .line 1036
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v0, :cond_3a

    .line 1038
    :try_start_10
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1c} :catch_20

    .line 1041
    nop

    .line 1036
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1039
    :catch_20
    move-exception v0

    .line 1040
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1043
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v3    # "i":I
    :cond_3a
    return-object v1

    .line 1034
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong number of months on line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parseYMD(Ljava/lang/String;)[I
    .registers 7
    .param p1, "string"    # Ljava/lang/String;

    .line 1054
    const-string v0, "date must be yyyy-MM-dd"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1056
    const/4 v1, 0x4

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_4c

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_4c

    .line 1059
    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 1060
    .local v3, "ymd":[I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v3, v4

    .line 1061
    const/4 v1, 0x1

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    .line 1062
    const/4 v1, 0x2

    const/16 v2, 0x8

    const/16 v4, 0xa

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v1

    .line 1063
    return-object v3

    .line 1057
    .end local v3    # "ymd":[I
    :cond_4c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/chrono/HijrahChronology;
    .end local p1    # "string":Ljava/lang/String;
    throw v1
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_52} :catch_52

    .line 1064
    .restart local p0    # "this":Ljava/time/chrono/HijrahChronology;
    .restart local p1    # "string":Ljava/lang/String;
    :catch_52
    move-exception v1

    .line 1065
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static greylist-max-o readConfigProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 5
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 880
    .local v0, "props":Ljava/util/Properties;
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 881
    .local v1, "is":Ljava/io/InputStream;
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_12

    .line 882
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 883
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_11
    return-object v0

    .line 880
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_12
    move-exception v2

    if-eqz v1, :cond_1d

    :try_start_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    throw v2
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1093
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o registerVariants()V
    .registers 7

    .line 327
    sget-object v0, Ljava/time/chrono/HijrahChronology;->calendarProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "name":Ljava/lang/String;
    const-string v2, "calendar.hijrah."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 329
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "id":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2f

    .line 331
    goto :goto_a

    .line 333
    :cond_2f
    sget-object v3, Ljava/time/chrono/HijrahChronology;->INSTANCE:Ljava/time/chrono/HijrahChronology;

    invoke-virtual {v3}, Ljava/time/chrono/HijrahChronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 334
    goto :goto_a

    .line 338
    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/time/chrono/HijrahChronology;

    invoke-direct {v3, v2}, Ljava/time/chrono/HijrahChronology;-><init>(Ljava/lang/String;)V

    .line 339
    .local v3, "chrono":Ljava/time/chrono/HijrahChronology;
    invoke-static {v3}, Ljava/time/chrono/AbstractChronology;->registerChrono(Ljava/time/chrono/Chronology;)Ljava/time/chrono/Chronology;
    :try_end_44
    .catch Ljava/time/DateTimeException; {:try_start_3c .. :try_end_44} :catch_46

    .line 344
    nop

    .end local v3    # "chrono":Ljava/time/chrono/HijrahChronology;
    goto :goto_61

    .line 340
    :catch_46
    move-exception v3

    .line 342
    .local v3, "ex":Ljava/time/DateTimeException;
    const-string v4, "java.time.chrono"

    invoke-static {v4}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v4

    .line 343
    .local v4, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to initialize Hijrah calendar: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "ex":Ljava/time/DateTimeException;
    .end local v4    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_61
    :goto_61
    goto :goto_a

    .line 347
    :cond_62
    return-void
.end method

.method private greylist-max-o yearMonthToDayOfYear(II)I
    .registers 6
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .line 841
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    .line 842
    .local v0, "epochMonthFirst":I
    add-int v1, v0, p2

    invoke-direct {p0, v1}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    .line 843
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 842
    return v1
.end method

.method private greylist-max-o yearToEpochMonth(I)I
    .registers 4
    .param p1, "year"    # I

    .line 809
    mul-int/lit8 v0, p1, 0xc

    iget v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahStartEpochMonth:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method greylist-max-o checkValidDayOfYear(I)V
    .registers 5
    .param p1, "dayOfYear"    # I

    .line 623
    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 626
    return-void

    .line 624
    :cond_a
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah day of year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o checkValidMonth(I)V
    .registers 5
    .param p1, "month"    # I

    .line 629
    const/4 v0, 0x1

    if-lt p1, v0, :cond_8

    const/16 v0, 0xc

    if-gt p1, v0, :cond_8

    .line 632
    return-void

    .line 630
    :cond_8
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah month: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o checkValidYear(J)I
    .registers 6
    .param p1, "prolepticYear"    # J

    .line 616
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_14

    .line 619
    long-to-int v0, p1

    return v0

    .line 617
    :cond_14
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Hijrah year: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api date(III)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/ChronoLocalDate;
    .registers 5

    .line 217
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api date(III)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 453
    invoke-static {p0, p1, p2, p3}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api date(Ljava/time/chrono/Era;III)Ljava/time/chrono/HijrahDate;
    .registers 6
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "month"    # I
    .param p4, "dayOfMonth"    # I

    .line 438
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3, p4}, Ljava/time/chrono/HijrahChronology;->date(III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 520
    instance-of v0, p1, Ljava/time/chrono/HijrahDate;

    if-eqz v0, :cond_8

    .line 521
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0

    .line 523
    :cond_8
    sget-object v0, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/time/temporal/TemporalAccessor;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api dateEpochDay(J)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 217
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->dateEpochDay(J)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api dateEpochDay(J)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p1, "epochDay"    # J

    .line 500
    invoke-static {p0, p1, p2}, Ljava/time/chrono/HijrahDate;->ofEpochDay(Ljava/time/chrono/HijrahChronology;J)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api dateNow()Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 217
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->dateNow()Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoLocalDate;
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api dateNow()Ljava/time/chrono/HijrahDate;
    .registers 2

    .line 505
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "clock"    # Ljava/time/Clock;

    .line 515
    invoke-static {p1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/HijrahDate;
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 510
    invoke-static {p1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->dateNow(Ljava/time/Clock;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api dateYearDay(II)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 217
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist core-platform-api test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/ChronoLocalDate;
    .registers 4

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/chrono/HijrahChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api dateYearDay(II)Ljava/time/chrono/HijrahDate;
    .registers 7
    .param p1, "prolepticYear"    # I
    .param p2, "dayOfYear"    # I

    .line 484
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Ljava/time/chrono/HijrahDate;->of(Ljava/time/chrono/HijrahChronology;III)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    .line 485
    .local v0, "date":Ljava/time/chrono/HijrahDate;
    invoke-virtual {v0}, Ljava/time/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    if-gt p2, v1, :cond_13

    .line 488
    add-int/lit8 v1, p2, -0x1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/time/chrono/HijrahDate;->plusDays(J)Ljava/time/chrono/HijrahDate;

    move-result-object v1

    return-object v1

    .line 486
    :cond_13
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dayOfYear: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/HijrahDate;
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I
    .param p3, "dayOfYear"    # I

    .line 469
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Ljava/time/chrono/HijrahChronology;->dateYearDay(II)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api eraOf(I)Ljava/time/chrono/Era;
    .registers 2

    .line 217
    invoke-virtual {p0, p1}, Ljava/time/chrono/HijrahChronology;->eraOf(I)Ljava/time/chrono/HijrahEra;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api eraOf(I)Ljava/time/chrono/HijrahEra;
    .registers 4
    .param p1, "eraValue"    # I

    .line 565
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 567
    sget-object v0, Ljava/time/chrono/HijrahEra;->AH:Ljava/time/chrono/HijrahEra;

    return-object v0

    .line 569
    :cond_6
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "invalid Hijrah era"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api eras()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .line 575
    invoke-static {}, Ljava/time/chrono/HijrahEra;->values()[Ljava/time/chrono/HijrahEra;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 420
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->calendarType:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getDayOfYear(II)I
    .registers 4
    .param p1, "prolepticYear"    # I
    .param p2, "month"    # I

    .line 691
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method greylist-max-o getEpochDay(III)J
    .registers 8
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .line 670
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 671
    invoke-virtual {p0, p2}, Ljava/time/chrono/HijrahChronology;->checkValidMonth(I)V

    .line 672
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 673
    .local v0, "epochMonth":I
    if-ltz v0, :cond_3d

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 677
    const/4 v1, 0x1

    if-lt p3, v1, :cond_26

    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->getMonthLength(II)I

    move-result v1

    if-gt p3, v1, :cond_26

    .line 680
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    add-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1

    .line 678
    :cond_26
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah day of month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 674
    :cond_3d
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getHijrahDateInfo(I)[I
    .registers 10
    .param p1, "epochDay"    # I

    .line 643
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 644
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minEpochDay:I

    if-lt p1, v0, :cond_2e

    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxEpochDay:I

    if-ge p1, v0, :cond_2e

    .line 648
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->epochDayToEpochMonth(I)I

    move-result v0

    .line 649
    .local v0, "epochMonth":I
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v1

    .line 650
    .local v1, "year":I
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToMonth(I)I

    move-result v2

    .line 651
    .local v2, "month":I
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToEpochDay(I)I

    move-result v3

    .line 652
    .local v3, "day1":I
    sub-int v4, p1, v3

    .line 654
    .local v4, "date":I
    const/4 v5, 0x3

    new-array v5, v5, [I

    .line 655
    .local v5, "dateInfo":[I
    const/4 v6, 0x0

    aput v1, v5, v6

    .line 656
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 657
    const/4 v6, 0x2

    add-int/lit8 v7, v4, 0x1

    aput v7, v5, v6

    .line 658
    return-object v5

    .line 645
    .end local v0    # "epochMonth":I
    .end local v1    # "year":I
    .end local v2    # "month":I
    .end local v3    # "day1":I
    .end local v4    # "date":I
    .end local v5    # "dateInfo":[I
    :cond_2e
    new-instance v0, Ljava/time/DateTimeException;

    const-string v1, "Hijrah date out of range"

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getId()Ljava/lang/String;
    .registers 2

    .line 404
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getMaximumDayOfYear()I
    .registers 2

    .line 763
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxYearLength:I

    return v0
.end method

.method greylist-max-o getMaximumMonthLength()I
    .registers 2

    .line 745
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->maxMonthLength:I

    return v0
.end method

.method greylist-max-o getMaximumYear()I
    .registers 2

    .line 736
    iget-object v0, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method greylist-max-o getMinimumMonthLength()I
    .registers 2

    .line 754
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minMonthLength:I

    return v0
.end method

.method greylist-max-o getMinimumYear()I
    .registers 2

    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthToYear(I)I

    move-result v0

    return v0
.end method

.method greylist-max-o getMonthLength(II)I
    .registers 7
    .param p1, "prolepticYear"    # I
    .param p2, "monthOfYear"    # I

    .line 702
    invoke-direct {p0, p1}, Ljava/time/chrono/HijrahChronology;->yearToEpochMonth(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 703
    .local v0, "epochMonth":I
    if-ltz v0, :cond_13

    iget-object v1, p0, Ljava/time/chrono/HijrahChronology;->hijrahEpochMonthStartDays:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 707
    invoke-direct {p0, v0}, Ljava/time/chrono/HijrahChronology;->epochMonthLength(I)I

    move-result v1

    return v1

    .line 704
    :cond_13
    new-instance v1, Ljava/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Hijrah date, year: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", month: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getSmallestMaximumDayOfYear()I
    .registers 2

    .line 772
    iget v0, p0, Ljava/time/chrono/HijrahChronology;->minYearLength:I

    return v0
.end method

.method greylist-max-o getYearLength(I)I
    .registers 3
    .param p1, "prolepticYear"    # I

    .line 718
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Ljava/time/chrono/HijrahChronology;->yearMonthToDayOfYear(II)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isLeapYear(J)Z
    .registers 7
    .param p1, "prolepticYear"    # J

    .line 547
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 548
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_22

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-lez v0, :cond_17

    goto :goto_22

    .line 551
    :cond_17
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/time/chrono/HijrahChronology;->getYearLength(I)I

    move-result v0

    .line 552
    .local v0, "len":I
    const/16 v2, 0x162

    if-le v0, v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 549
    .end local v0    # "len":I
    :cond_22
    :goto_22
    return v1
.end method

.method public whitelist core-platform-api test-api localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 529
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api prolepticYear(Ljava/time/chrono/Era;I)I
    .registers 5
    .param p1, "era"    # Ljava/time/chrono/Era;
    .param p2, "yearOfEra"    # I

    .line 557
    instance-of v0, p1, Ljava/time/chrono/HijrahEra;

    if-eqz v0, :cond_5

    .line 560
    return p2

    .line 558
    :cond_5
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Era must be HijrahEra"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/ChronoField;

    .line 581
    invoke-direct {p0}, Ljava/time/chrono/HijrahChronology;->checkCalendarInit()V

    .line 582
    instance-of v0, p1, Ljava/time/temporal/ChronoField;

    if-eqz v0, :cond_52

    .line 583
    move-object v0, p1

    .line 584
    .local v0, "f":Ljava/time/temporal/ChronoField;
    sget-object v1, Ljava/time/chrono/HijrahChronology$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x1

    packed-switch v1, :pswitch_data_58

    .line 597
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 595
    :pswitch_1a
    invoke-static {v2, v3, v2, v3}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 593
    :pswitch_1f
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumYear()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumYear()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 590
    :pswitch_2e
    const-wide/16 v4, 0x5

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 588
    :pswitch_35
    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumDayOfYear()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 586
    :pswitch_3f
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMinimumMonthLength()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0}, Ljava/time/chrono/HijrahChronology;->getMaximumMonthLength()I

    move-result v1

    int-to-long v8, v1

    invoke-static/range {v2 .. v9}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v1

    return-object v1

    .line 600
    .end local v0    # "f":Ljava/time/temporal/ChronoField;
    :cond_52
    invoke-virtual {p1}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_35
        :pswitch_2e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method public bridge synthetic whitelist core-platform-api test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;
    .registers 3

    .line 217
    invoke-virtual {p0, p1, p2}, Ljava/time/chrono/HijrahChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/HijrahDate;
    .registers 4
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/chrono/HijrahDate;"
        }
    .end annotation

    .line 606
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/HijrahDate;

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1083
    invoke-super {p0}, Ljava/time/chrono/AbstractChronology;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Instant;",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 541
    invoke-super {p0, p1, p2}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .registers 3
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "Ljava/time/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .line 535
    invoke-super {p0, p1}, Ljava/time/chrono/AbstractChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0
.end method
