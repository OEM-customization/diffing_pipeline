.class Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultValueParser"
.end annotation


# instance fields
.field private final greylist-max-o field:Ljava/time/temporal/TemporalField;

.field private final greylist-max-o value:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalField;J)V
    .registers 4
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2373
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljava/time/temporal/TemporalField;

    .line 2374
    iput-wide p2, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    .line 2375
    return-void
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 2378
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 11
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 2382
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljava/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2383
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljava/time/temporal/TemporalField;

    iget-wide v3, p0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    move-object v1, p1

    move v5, p3

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/time/format/DateTimeParseContext;->setParsedField(Ljava/time/temporal/TemporalField;JII)I

    .line 2385
    :cond_12
    return p3
.end method
