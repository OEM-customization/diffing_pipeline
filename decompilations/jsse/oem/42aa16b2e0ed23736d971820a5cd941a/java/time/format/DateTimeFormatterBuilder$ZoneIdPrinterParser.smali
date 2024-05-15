.class Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;
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
    name = "ZoneIdPrinterParser"
.end annotation


# static fields
.field private static volatile greylist-max-o cachedPrefixTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o cachedPrefixTreeCI:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o description:Ljava/lang/String;

.field private final greylist-max-o query:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .registers 3
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3867
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<Ljava/time/ZoneId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3868
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    .line 3869
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    .line 3870
    return-void
.end method

.method private greylist-max-o parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I
    .registers 12
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "prefixPos"    # I
    .param p4, "position"    # I
    .param p5, "parser"    # Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .line 3970
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3971
    .local v0, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p4, v1, :cond_1a

    .line 3972
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3973
    return p4

    .line 3977
    :cond_1a
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_36

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3978
    const-string v1, "GMT0"

    invoke-static {v1}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3979
    add-int/lit8 v1, p4, 0x1

    return v1

    .line 3983
    :cond_36
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_7b

    .line 3984
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_7b

    .line 3989
    :cond_49
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v1

    .line 3990
    .local v1, "newContext":Ljava/time/format/DateTimeParseContext;
    invoke-virtual {p5, v1, p2, p4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 3992
    .local v2, "endPos":I
    if-gez v2, :cond_61

    .line 3993
    :try_start_53
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    if-ne p5, v3, :cond_59

    .line 3994
    not-int v3, p3

    return v3

    .line 3996
    :cond_59
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3997
    return p4

    .line 3999
    :cond_61
    sget-object v3, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v3}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    .line 4000
    .local v3, "offset":I
    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v4

    .line 4001
    .local v4, "zoneOffset":Ljava/time/ZoneOffset;
    invoke-static {v0, v4}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V
    :try_end_77
    .catch Ljava/time/DateTimeException; {:try_start_53 .. :try_end_77} :catch_78

    .line 4002
    return v2

    .line 4003
    .end local v3    # "offset":I
    .end local v4    # "zoneOffset":Ljava/time/ZoneOffset;
    :catch_78
    move-exception v3

    .line 4004
    .local v3, "dte":Ljava/time/DateTimeException;
    not-int v4, p3

    return v4

    .line 3985
    .end local v1    # "newContext":Ljava/time/format/DateTimeParseContext;
    .end local v2    # "endPos":I
    .end local v3    # "dte":Ljava/time/DateTimeException;
    :cond_7b
    :goto_7b
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3986
    return p4
.end method


# virtual methods
.method public greylist-max-o format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .line 3874
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 3875
    .local v0, "zone":Ljava/time/ZoneId;
    if-nez v0, :cond_c

    .line 3876
    const/4 v1, 0x0

    return v1

    .line 3878
    :cond_c
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3879
    const/4 v1, 0x1

    return v1
.end method

.method protected greylist-max-o getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 8
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .line 3890
    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v0

    .line 3891
    .local v0, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 3892
    .local v1, "regionIdsSize":I
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3893
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_13

    :cond_11
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .line 3894
    .local v2, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :goto_13
    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_56

    .line 3895
    :cond_21
    monitor-enter p0

    .line 3896
    :try_start_22
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_2d

    :cond_2b
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    :goto_2d
    move-object v2, v3

    .line 3897
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_55

    .line 3898
    :cond_3c
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    .line 3899
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 3900
    sput-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    goto :goto_55

    .line 3902
    :cond_53
    sput-object v2, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .line 3905
    :cond_55
    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_22 .. :try_end_56} :catchall_5d

    .line 3907
    :cond_56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    return-object v3

    .line 3905
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method public greylist-max-o parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 16
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .line 3917
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3918
    .local v0, "length":I
    if-gt p3, v0, :cond_c4

    .line 3921
    if-ne p3, v0, :cond_a

    .line 3922
    not-int v1, p3

    return v1

    .line 3926
    :cond_a
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 3927
    .local v1, "nextChar":C
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_b8

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_18

    goto/16 :goto_b8

    .line 3929
    :cond_18
    add-int/lit8 v2, p3, 0x2

    if-lt v0, v2, :cond_8b

    .line 3930
    add-int/lit8 v2, p3, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 3931
    .local v2, "nextNextChar":C
    const/16 v3, 0x55

    invoke-virtual {p1, v1, v3}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    const/16 v4, 0x54

    if-eqz v3, :cond_5e

    invoke-virtual {p1, v2, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 3932
    add-int/lit8 v3, p3, 0x3

    if-lt v0, v3, :cond_51

    add-int/lit8 v3, p3, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x43

    invoke-virtual {p1, v3, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 3933
    add-int/lit8 v8, p3, 0x3

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v3

    return v3

    .line 3935
    :cond_51
    add-int/lit8 v8, p3, 0x2

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v3

    return v3

    .line 3936
    :cond_5e
    const/16 v3, 0x47

    invoke-virtual {p1, v1, v3}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_8b

    add-int/lit8 v3, p3, 0x3

    if-lt v0, v3, :cond_8b

    const/16 v3, 0x4d

    .line 3937
    invoke-virtual {p1, v2, v3}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_8b

    add-int/lit8 v3, p3, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3, v4}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 3938
    add-int/lit8 v8, p3, 0x3

    sget-object v9, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v3

    return v3

    .line 3943
    .end local v2    # "nextNextChar":C
    :cond_8b
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    .line 3944
    .local v2, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3945
    .local v3, "ppos":Ljava/text/ParsePosition;
    invoke-virtual {v2, p2, v3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v4

    .line 3946
    .local v4, "parsedZoneId":Ljava/lang/String;
    if-nez v4, :cond_ac

    .line 3947
    const/16 v5, 0x5a

    invoke-virtual {p1, v1, v5}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 3948
    sget-object v5, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v5}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3949
    add-int/lit8 v5, p3, 0x1

    return v5

    .line 3951
    :cond_aa
    not-int v5, p3

    return v5

    .line 3953
    :cond_ac
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3954
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    return v5

    .line 3928
    .end local v2    # "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .end local v3    # "ppos":Ljava/text/ParsePosition;
    .end local v4    # "parsedZoneId":Ljava/lang/String;
    :cond_b8
    :goto_b8
    sget-object v11, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move v10, p3

    invoke-direct/range {v6 .. v11}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v2

    return v2

    .line 3919
    .end local v1    # "nextChar":C
    :cond_c4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 4010
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
