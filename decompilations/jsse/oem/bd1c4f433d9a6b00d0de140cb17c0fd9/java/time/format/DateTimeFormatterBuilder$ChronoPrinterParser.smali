.class final Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChronoPrinterParser"
.end annotation


# instance fields
.field private final textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljava/time/format/TextStyle;)V
    .registers 2
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .prologue
    .line 4310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4312
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 4313
    return-void
.end method

.method private getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 4370
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 4371
    .local v0, "displayNames":Landroid/icu/text/LocaleDisplayNames;
    const-string/jumbo v2, "calendar"

    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4372
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_16

    .end local v1    # "name":Ljava/lang/String;
    :goto_15
    return-object v1

    .restart local v1    # "name":Ljava/lang/String;
    :cond_16
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 4317
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 4318
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_e

    .line 4319
    const/4 v1, 0x0

    return v1

    .line 4321
    :cond_e
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v1, :cond_1b

    .line 4322
    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4326
    :goto_19
    const/4 v1, 0x1

    return v1

    .line 4324
    :cond_1b
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 15
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 4332
    if-ltz p3, :cond_9

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_f

    .line 4333
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 4335
    :cond_f
    invoke-static {}, Ljava/time/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v9

    .line 4336
    .local v9, "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    const/4 v6, 0x0

    .line 4337
    .local v6, "bestMatch":Ljava/time/chrono/Chronology;
    const/4 v10, -0x1

    .line 4338
    .local v10, "matchLen":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v6    # "bestMatch":Ljava/time/chrono/Chronology;
    .local v8, "chrono$iterator":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/time/chrono/Chronology;

    .line 4340
    .local v7, "chrono":Ljava/time/chrono/Chronology;
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v0, :cond_3f

    .line 4341
    invoke-interface {v7}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    .line 4345
    .local v3, "name":Ljava/lang/String;
    :goto_2d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 4346
    .local v5, "nameLen":I
    if-le v5, v10, :cond_19

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4347
    move-object v6, v7

    .line 4348
    .local v6, "bestMatch":Ljava/time/chrono/Chronology;
    move v10, v5

    goto :goto_19

    .line 4343
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "nameLen":I
    .end local v6    # "bestMatch":Ljava/time/chrono/Chronology;
    :cond_3f
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_2d

    .line 4351
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "chrono":Ljava/time/chrono/Chronology;
    :cond_48
    if-nez v6, :cond_4c

    .line 4352
    not-int v0, p3

    return v0

    .line 4354
    :cond_4c
    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/chrono/Chronology;)V

    .line 4355
    add-int v0, p3, v10

    return v0
.end method
