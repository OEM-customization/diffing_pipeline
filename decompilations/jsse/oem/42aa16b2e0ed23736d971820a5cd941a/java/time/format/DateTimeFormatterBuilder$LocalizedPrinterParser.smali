.class final Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
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
    name = "LocalizedPrinterParser"
.end annotation


# static fields
.field private static final greylist-max-o FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o dateStyle:Ljava/time/format/FormatStyle;

.field private final greylist-max-o timeStyle:Ljava/time/format/FormatStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 4434
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V
    .registers 3
    .param p1, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 4445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4447
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    .line 4448
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    .line 4449
    return-void
.end method

.method private greylist-max-o formatter(Ljava/util/Locale;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;

    .line 4475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4476
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeFormatter;

    .line 4477
    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    if-nez v1, :cond_53

    .line 4478
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    invoke-static {v2, v3, p2, p1}, Ljava/time/format/DateTimeFormatterBuilder;->getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 4479
    .local v2, "pattern":Ljava/lang/String;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v3}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    .line 4480
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/format/DateTimeFormatter;

    .line 4481
    .local v3, "old":Ljava/time/format/DateTimeFormatter;
    if-eqz v3, :cond_53

    .line 4482
    move-object v1, v3

    .line 4485
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "old":Ljava/time/format/DateTimeFormatter;
    :cond_53
    return-object v1
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 6
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 4453
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getTemporal()Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/Chronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 4454
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    invoke-virtual {p1}, Ljava/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->formatter(Ljava/util/Locale;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 7
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 4459
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getEffectiveChronology()Ljava/time/chrono/Chronology;

    move-result-object v0

    .line 4460
    .local v0, "chrono":Ljava/time/chrono/Chronology;
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->formatter(Ljava/util/Locale;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 4490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Localized("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljava/time/format/FormatStyle;

    const-string v2, ""

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4491
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljava/time/format/FormatStyle;

    if-eqz v1, :cond_1f

    move-object v2, v1

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4490
    return-object v0
.end method