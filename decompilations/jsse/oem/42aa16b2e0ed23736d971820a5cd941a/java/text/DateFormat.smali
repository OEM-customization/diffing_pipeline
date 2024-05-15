.class public abstract Ljava/text/DateFormat;
.super Ljava/text/Format;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormat$Field;
    }
.end annotation


# static fields
.field public static final whitelist core-platform-api test-api AM_PM_FIELD:I = 0xe

.field public static final whitelist core-platform-api test-api DATE_FIELD:I = 0x3

.field public static final whitelist core-platform-api test-api DAY_OF_WEEK_FIELD:I = 0x9

.field public static final whitelist core-platform-api test-api DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final whitelist core-platform-api test-api DAY_OF_YEAR_FIELD:I = 0xa

.field public static final whitelist core-platform-api test-api DEFAULT:I = 0x2

.field public static final whitelist core-platform-api test-api ERA_FIELD:I = 0x0

.field public static final whitelist core-platform-api test-api FULL:I = 0x0

.field public static final whitelist core-platform-api test-api HOUR0_FIELD:I = 0x10

.field public static final whitelist core-platform-api test-api HOUR1_FIELD:I = 0xf

.field public static final whitelist core-platform-api test-api HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final whitelist core-platform-api test-api HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final whitelist core-platform-api test-api LONG:I = 0x1

.field public static final whitelist core-platform-api test-api MEDIUM:I = 0x2

.field public static final whitelist core-platform-api test-api MILLISECOND_FIELD:I = 0x8

.field public static final whitelist core-platform-api test-api MINUTE_FIELD:I = 0x6

.field public static final whitelist core-platform-api test-api MONTH_FIELD:I = 0x2

.field public static final whitelist core-platform-api test-api SECOND_FIELD:I = 0x7

.field public static final whitelist core-platform-api test-api SHORT:I = 0x3

.field public static final whitelist core-platform-api test-api TIMEZONE_FIELD:I = 0x11

.field public static final whitelist core-platform-api test-api WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final whitelist core-platform-api test-api WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final whitelist core-platform-api test-api YEAR_FIELD:I = 0x1

.field public static greylist is24Hour:Ljava/lang/Boolean; = null

.field private static final whitelist serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field protected whitelist core-platform-api test-api calendar:Ljava/util/Calendar;

.field protected whitelist core-platform-api test-api numberFormat:Ljava/text/NumberFormat;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 827
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private static greylist-max-o get(IIILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 7
    .param p0, "timeStyle"    # I
    .param p1, "dateStyle"    # I
    .param p2, "flags"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .line 792
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x3

    if-eqz v0, :cond_21

    .line 793
    if-ltz p0, :cond_a

    if-gt p0, v1, :cond_a

    goto :goto_22

    .line 794
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal time style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_21
    const/4 p0, -0x1

    .line 799
    :goto_22
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_42

    .line 800
    if-ltz p1, :cond_2b

    if-gt p1, v1, :cond_2b

    goto :goto_43

    .line 801
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_42
    const/4 p1, -0x1

    .line 817
    :goto_43
    :try_start_43
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V
    :try_end_48
    .catch Ljava/util/MissingResourceException; {:try_start_43 .. :try_end_48} :catch_49

    return-object v0

    .line 818
    :catch_49
    move-exception v0

    .line 819
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d/yy h:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static whitelist core-platform-api test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 626
    invoke-static {}, Llibcore/icu/ICU;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getDateInstance()Ljava/text/DateFormat;
    .registers 3

    .line 502
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getDateInstance(I)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 519
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, p0, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 533
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getDateTimeInstance()Ljava/text/DateFormat;
    .registers 3

    .line 548
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v1, v1, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getDateTimeInstance(II)Ljava/text/DateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .line 568
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, p0, v1, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 582
    const/4 v0, 0x3

    invoke-static {p1, p0, v0, p2}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getInstance()Ljava/text/DateFormat;
    .registers 1

    .line 592
    const/4 v0, 0x3

    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getTimeInstance()Ljava/text/DateFormat;
    .registers 4

    .line 456
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getTimeInstance(I)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I

    .line 473
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .registers 4
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 487
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final greylist-max-o core-platform-api set24HourTimePref(Ljava/lang/Boolean;)V
    .registers 1
    .param p0, "is24Hour"    # Ljava/lang/Boolean;

    .line 611
    sput-object p0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    .line 612
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 3

    .line 773
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 774
    .local v0, "other":Ljava/text/DateFormat;
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 775
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    iput-object v1, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 776
    return-object v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 757
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 758
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5e

    .line 759
    :cond_12
    move-object v2, p1

    check-cast v2, Ljava/text/DateFormat;

    .line 760
    .local v2, "other":Ljava/text/DateFormat;
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 761
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 762
    invoke-virtual {v3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 763
    invoke-virtual {v3}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->isLenient()Z

    move-result v4

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 764
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iget-object v4, v2, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v4, v2, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 765
    invoke-virtual {v3, v4}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v1

    .line 760
    :goto_5d
    return v0

    .line 758
    .end local v2    # "other":Ljava/text/DateFormat;
    :cond_5e
    :goto_5e
    return v1
.end method

.method public final whitelist core-platform-api test-api format(Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 341
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    invoke-virtual {p0, p1, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method public final whitelist core-platform-api test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 300
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_c

    .line 301
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 302
    :cond_c
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_21

    .line 303
    new-instance v0, Ljava/util/Date;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 306
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot format given Object as a Date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist core-platform-api test-api format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public whitelist core-platform-api test-api getCalendar()Ljava/util/Calendar;
    .registers 2

    .line 651
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getNumberFormat()Ljava/text/NumberFormat;
    .registers 2

    .line 670
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 704
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 2

    .line 749
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isLenient()Z
    .registers 2

    .line 742
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 359
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 360
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 361
    .local v1, "result":Ljava/util/Date;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-eqz v2, :cond_f

    .line 364
    return-object v1

    .line 362
    :cond_f
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public abstract whitelist core-platform-api test-api parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public whitelist core-platform-api test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 420
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api setCalendar(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .line 641
    iput-object p1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 642
    return-void
.end method

.method public whitelist core-platform-api test-api setLenient(Z)V
    .registers 3
    .param p1, "lenient"    # Z

    .line 726
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 727
    return-void
.end method

.method public whitelist core-platform-api test-api setNumberFormat(Ljava/text/NumberFormat;)V
    .registers 2
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .line 660
    iput-object p1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 661
    return-void
.end method

.method public whitelist core-platform-api test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 690
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 691
    return-void
.end method
