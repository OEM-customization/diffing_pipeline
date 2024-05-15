.class public final Ljava/time/temporal/WeekFields;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/temporal/WeekFields$ComputedDayOfField;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/time/temporal/WeekFields;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist core-platform-api test-api ISO:Ljava/time/temporal/WeekFields;

.field public static final whitelist core-platform-api test-api SUNDAY_START:Ljava/time/temporal/WeekFields;

.field public static final whitelist core-platform-api test-api WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

.field private static final whitelist serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field private final transient greylist-max-o dayOfWeek:Ljava/time/temporal/TemporalField;

.field private final greylist-max-o firstDayOfWeek:Ljava/time/DayOfWeek;

.field private final greylist-max-o minimalDays:I

.field private final transient greylist-max-o weekBasedYear:Ljava/time/temporal/TemporalField;

.field private final transient greylist-max-o weekOfMonth:Ljava/time/temporal/TemporalField;

.field private final transient greylist-max-o weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

.field private final transient greylist-max-o weekOfYear:Ljava/time/temporal/TemporalField;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 191
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 205
    new-instance v0, Ljava/time/temporal/WeekFields;

    sget-object v2, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-direct {v0, v2, v1}, Ljava/time/temporal/WeekFields;-><init>(Ljava/time/DayOfWeek;I)V

    sput-object v0, Ljava/time/temporal/WeekFields;->ISO:Ljava/time/temporal/WeekFields;

    .line 214
    sget-object v0, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Ljava/time/temporal/WeekFields;->SUNDAY_START:Ljava/time/temporal/WeekFields;

    .line 232
    sget-object v0, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    sput-object v0, Ljava/time/temporal/WeekFields;->WEEK_BASED_YEARS:Ljava/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/DayOfWeek;I)V
    .registers 5
    .param p1, "firstDayOfWeek"    # Ljava/time/DayOfWeek;
    .param p2, "minimalDaysInFirstWeek"    # I

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofDayOfWeekField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    .line 254
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfMonthField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfMonth:Ljava/time/temporal/TemporalField;

    .line 258
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfYear:Ljava/time/temporal/TemporalField;

    .line 266
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekOfWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    .line 274
    invoke-static {p0}, Ljava/time/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYearField(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    .line 335
    const-string v0, "firstDayOfWeek"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    const/4 v0, 0x1

    if-lt p2, v0, :cond_31

    const/4 v0, 0x7

    if-gt p2, v0, :cond_31

    .line 339
    iput-object p1, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    .line 340
    iput p2, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    .line 341
    return-void

    .line 337
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist access$000(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .registers 2
    .param p0, "x0"    # Ljava/time/temporal/WeekFields;

    .line 179
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .registers 2
    .param p0, "x0"    # Ljava/time/temporal/WeekFields;

    .line 179
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method static synthetic blacklist access$200(Ljava/time/temporal/WeekFields;)Ljava/time/temporal/TemporalField;
    .registers 2
    .param p0, "x0"    # Ljava/time/temporal/WeekFields;

    .line 179
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;
    .registers 5
    .param p0, "firstDayOfWeek"    # Ljava/time/DayOfWeek;
    .param p1, "minimalDaysInFirstWeek"    # I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/WeekFields;

    .line 318
    .local v1, "rules":Ljava/time/temporal/WeekFields;
    if-nez v1, :cond_31

    .line 319
    new-instance v2, Ljava/time/temporal/WeekFields;

    invoke-direct {v2, p0, p1}, Ljava/time/temporal/WeekFields;-><init>(Ljava/time/DayOfWeek;I)V

    move-object v1, v2

    .line 320
    sget-object v2, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v2, Ljava/time/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/time/temporal/WeekFields;

    .line 323
    :cond_31
    return-object v1
.end method

.method public static whitelist core-platform-api test-api of(Ljava/util/Locale;)Ljava/time/temporal/WeekFields;
    .registers 8
    .param p0, "locale"    # Ljava/util/Locale;

    .line 286
    const-string v0, "locale"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 289
    .local v0, "ulocale":Landroid/icu/util/ULocale;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "region":Ljava/lang/String;
    invoke-static {v2}, Landroid/icu/util/Calendar;->getWeekDataForRegion(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object v3

    .line 291
    .local v3, "weekData":Landroid/icu/util/Calendar$WeekData;
    sget-object v4, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    iget v5, v3, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    sub-int/2addr v5, v1

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v1

    .line 292
    .local v1, "dow":Ljava/time/DayOfWeek;
    iget v4, v3, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-static {v1, v4}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v4

    return-object v4
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 356
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 357
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    if-eqz v0, :cond_18

    .line 361
    iget v0, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_10

    const/4 v1, 0x7

    if-gt v0, v1, :cond_10

    .line 364
    return-void

    .line 362
    :cond_10
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_18
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "firstDayOfWeek is null"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 375
    :try_start_0
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    iget v1, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    invoke-static {v0, v1}, Ljava/time/temporal/WeekFields;->of(Ljava/time/DayOfWeek;I)Ljava/time/temporal/WeekFields;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 376
    :catch_9
    move-exception v0

    .line 377
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid serialized WeekFields: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api dayOfWeek()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 429
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->dayOfWeek:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .line 627
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 628
    return v0

    .line 630
    :cond_4
    instance-of v1, p1, Ljava/time/temporal/WeekFields;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 631
    invoke-virtual {p0}, Ljava/time/temporal/WeekFields;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0

    .line 633
    :cond_16
    return v2
.end method

.method public whitelist core-platform-api test-api getFirstDayOfWeek()Ljava/time/DayOfWeek;
    .registers 2

    .line 392
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMinimalDaysInFirstWeek()I
    .registers 2

    .line 406
    iget v0, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 643
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v0}, Ljava/time/DayOfWeek;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeekFields["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/temporal/WeekFields;->firstDayOfWeek:Ljava/time/DayOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ljava/time/temporal/WeekFields;->minimalDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api weekBasedYear()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 612
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekBasedYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist core-platform-api test-api weekOfMonth()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 475
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfMonth:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist core-platform-api test-api weekOfWeekBasedYear()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 570
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfWeekBasedYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method

.method public whitelist core-platform-api test-api weekOfYear()Ljava/time/temporal/TemporalField;
    .registers 2

    .line 520
    iget-object v0, p0, Ljava/time/temporal/WeekFields;->weekOfYear:Ljava/time/temporal/TemporalField;

    return-object v0
.end method
