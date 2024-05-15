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
.field private final greylist-max-o textStyle:Ljava/time/format/TextStyle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/format/TextStyle;)V
    .registers 2
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 4371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4373
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    .line 4374
    return-void
.end method

.method private greylist-max-o getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 4433
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 4434
    .local v0, "displayNames":Landroid/icu/text/LocaleDisplayNames;
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calendar"

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/LocaleDisplayNames;->keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4435
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_16

    move-object v2, v1

    goto :goto_1a

    :cond_16
    invoke-interface {p1}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v2

    :goto_1a
    return-object v2
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4378
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/chrono/Chronology;

    .line 4379
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    if-nez v0, :cond_e

    .line 4380
    const/4 v1, 0x0

    return v1

    .line 4382
    :cond_e
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v1, :cond_1a

    .line 4383
    invoke-interface {v0}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 4385
    :cond_1a
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4387
    :goto_25
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 19
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4393
    move-object v0, p0

    move/from16 v7, p3

    if-ltz v7, :cond_5d

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v7, v1, :cond_5d

    .line 4396
    invoke-static {}, Ljava/time/chrono/Chronology;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v8

    .line 4397
    .local v8, "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    const/4 v1, 0x0

    .line 4398
    .local v1, "bestMatch":Ljava/time/chrono/Chronology;
    const/4 v2, -0x1

    .line 4399
    .local v2, "matchLen":I
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v1

    move v11, v2

    .end local v1    # "bestMatch":Ljava/time/chrono/Chronology;
    .end local v2    # "matchLen":I
    .local v10, "bestMatch":Ljava/time/chrono/Chronology;
    .local v11, "matchLen":I
    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/time/chrono/Chronology;

    .line 4401
    .local v12, "chrono":Ljava/time/chrono/Chronology;
    iget-object v1, v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljava/time/format/TextStyle;

    if-nez v1, :cond_2e

    .line 4402
    invoke-interface {v12}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .local v1, "name":Ljava/lang/String;
    goto :goto_37

    .line 4404
    .end local v1    # "name":Ljava/lang/String;
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v12, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 4406
    .local v13, "name":Ljava/lang/String;
    :goto_37
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    .line 4407
    .local v14, "nameLen":I
    if-le v14, v11, :cond_50

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v13

    move v6, v14

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 4408
    move-object v1, v12

    .line 4409
    .end local v10    # "bestMatch":Ljava/time/chrono/Chronology;
    .local v1, "bestMatch":Ljava/time/chrono/Chronology;
    move v2, v14

    move-object v10, v1

    move v11, v2

    .line 4411
    .end local v1    # "bestMatch":Ljava/time/chrono/Chronology;
    .end local v12    # "chrono":Ljava/time/chrono/Chronology;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "nameLen":I
    .restart local v10    # "bestMatch":Ljava/time/chrono/Chronology;
    :cond_50
    goto :goto_17

    .line 4412
    :cond_51
    if-nez v10, :cond_55

    .line 4413
    not-int v1, v7

    return v1

    .line 4415
    :cond_55
    move-object/from16 v1, p1

    invoke-virtual {v1, v10}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/chrono/Chronology;)V

    .line 4416
    add-int v2, v7, v11

    return v2

    .line 4393
    .end local v8    # "chronos":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/chrono/Chronology;>;"
    .end local v10    # "bestMatch":Ljava/time/chrono/Chronology;
    .end local v11    # "matchLen":I
    :cond_5d
    move-object/from16 v1, p1

    .line 4394
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method
