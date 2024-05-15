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
.field private static volatile cachedPrefixTree:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile cachedPrefixTreeCI:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final query:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V
    .registers 3
    .param p2, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/ZoneId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3817
    .local p1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<Ljava/time/ZoneId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3818
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    .line 3819
    iput-object p2, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    .line 3820
    return-void
.end method

.method private parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I
    .registers 14
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "prefixPos"    # I
    .param p4, "position"    # I
    .param p5, "parser"    # Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    .prologue
    const/16 v7, 0x30

    .line 3920
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3921
    .local v4, "prefix":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lt p4, v6, :cond_1c

    .line 3922
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3923
    return p4

    .line 3927
    :cond_1c
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_38

    const-string/jumbo v6, "GMT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 3928
    const-string/jumbo v6, "GMT0"

    invoke-static {v6}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3929
    add-int/lit8 v6, p4, 0x1

    return v6

    .line 3933
    :cond_38
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_4a

    .line 3934
    invoke-interface {p2, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x5a

    invoke-virtual {p1, v6, v7}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v6

    .line 3933
    if-eqz v6, :cond_52

    .line 3935
    :cond_4a
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3936
    return p4

    .line 3939
    :cond_52
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->copy()Ljava/time/format/DateTimeParseContext;

    move-result-object v2

    .line 3940
    .local v2, "newContext":Ljava/time/format/DateTimeParseContext;
    invoke-virtual {p5, v2, p2, p4}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 3942
    .local v1, "endPos":I
    if-gez v1, :cond_6a

    .line 3943
    :try_start_5c
    sget-object v6, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    if-ne p5, v6, :cond_62

    .line 3944
    not-int v6, p3

    return v6

    .line 3946
    :cond_62
    invoke-static {v4}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3947
    return p4

    .line 3949
    :cond_6a
    sget-object v6, Ljava/time/temporal/ChronoField;->OFFSET_SECONDS:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v6}, Ljava/time/format/DateTimeParseContext;->getParsed(Ljava/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v3, v6

    .line 3950
    .local v3, "offset":I
    invoke-static {v3}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v5

    .line 3951
    .local v5, "zoneOffset":Ljava/time/ZoneOffset;
    invoke-static {v4, v5}, Ljava/time/ZoneId;->ofOffset(Ljava/lang/String;Ljava/time/ZoneOffset;)Ljava/time/ZoneId;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V
    :try_end_80
    .catch Ljava/time/DateTimeException; {:try_start_5c .. :try_end_80} :catch_81

    .line 3952
    return v1

    .line 3953
    .end local v3    # "offset":I
    .end local v5    # "zoneOffset":Ljava/time/ZoneOffset;
    :catch_81
    move-exception v0

    .line 3954
    .local v0, "dte":Ljava/time/DateTimeException;
    not-int v6, p3

    return v6
.end method


# virtual methods
.method public format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p1, "context"    # Ljava/time/format/DateTimePrintContext;
    .param p2, "buf"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3824
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->query:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {p1, v1}, Ljava/time/format/DateTimePrintContext;->getValue(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 3825
    .local v0, "zone":Ljava/time/ZoneId;
    if-nez v0, :cond_c

    .line 3826
    const/4 v1, 0x0

    return v1

    .line 3828
    :cond_c
    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    const/4 v1, 0x1

    return v1
.end method

.method protected getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 8
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;

    .prologue
    .line 3840
    invoke-static {}, Ljava/time/zone/ZoneRulesProvider;->getAvailableZoneIds()Ljava/util/Set;

    move-result-object v2

    .line 3841
    .local v2, "regionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    .line 3842
    .local v3, "regionIdsSize":I
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 3843
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;

    .line 3844
    .local v0, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :goto_10
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_4c

    .line 3845
    :cond_1e
    monitor-enter p0

    .line 3846
    :try_start_1f
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_56

    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_5f

    move-object v1, v0

    .line 3847
    .end local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    .local v1, "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :goto_28
    if-eqz v1, :cond_36

    :try_start_2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_5a

    .line 3848
    :cond_36
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p1}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljava/util/Set;Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_2a .. :try_end_43} :catchall_62

    .line 3849
    .end local v1    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    .restart local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :try_start_43
    invoke-virtual {p1}, Ljava/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 3850
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTree:Ljava/util/Map$Entry;
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_5f

    :goto_4b
    monitor-exit p0

    .line 3857
    :cond_4c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    return-object v4

    .line 3843
    .end local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :cond_53
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    .restart local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    goto :goto_10

    .line 3846
    :cond_56
    :try_start_56
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;

    move-object v1, v0

    .end local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    .restart local v1    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    goto :goto_28

    :cond_5a
    move-object v0, v1

    .line 3847
    .end local v1    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    .restart local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    goto :goto_4b

    .line 3852
    :cond_5c
    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->cachedPrefixTreeCI:Ljava/util/Map$Entry;
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_5f

    goto :goto_4b

    .line 3845
    :catchall_5f
    move-exception v4

    :goto_60
    monitor-exit p0

    throw v4

    .end local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    .restart local v1    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    :catchall_62
    move-exception v4

    move-object v0, v1

    .end local v1    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    .restart local v0    # "cached":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;>;"
    goto :goto_60
.end method

.method public parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 16
    .param p1, "context"    # Ljava/time/format/DateTimeParseContext;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "position"    # I

    .prologue
    const/16 v1, 0x54

    .line 3867
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 3868
    .local v6, "length":I
    if-le p3, v6, :cond_e

    .line 3869
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3871
    :cond_e
    if-ne p3, v6, :cond_12

    .line 3872
    not-int v0, p3

    return v0

    .line 3876
    :cond_12
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 3877
    .local v7, "nextChar":C
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_1e

    const/16 v0, 0x2d

    if-ne v7, v0, :cond_2a

    .line 3878
    :cond_1e
    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    .line 3879
    :cond_2a
    add-int/lit8 v0, p3, 0x2

    if-lt v6, v0, :cond_9b

    .line 3880
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 3881
    .local v8, "nextNextChar":C
    const/16 v0, 0x55

    invoke-virtual {p1, v7, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1, v8, v1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 3882
    add-int/lit8 v0, p3, 0x3

    if-lt v6, v0, :cond_61

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    invoke-virtual {p1, v0, v1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3883
    add-int/lit8 v4, p3, 0x3

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    .line 3885
    :cond_61
    add-int/lit8 v4, p3, 0x2

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    .line 3886
    :cond_6e
    const/16 v0, 0x47

    invoke-virtual {p1, v7, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_9b

    add-int/lit8 v0, p3, 0x3

    if-lt v6, v0, :cond_9b

    .line 3887
    const/16 v0, 0x4d

    invoke-virtual {p1, v8, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    .line 3886
    if-eqz v0, :cond_9b

    .line 3887
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0, v1}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    .line 3886
    if-eqz v0, :cond_9b

    .line 3888
    add-int/lit8 v4, p3, 0x3

    sget-object v5, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->parseOffsetBased(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;IILjava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;)I

    move-result v0

    return v0

    .line 3893
    .end local v8    # "nextNextChar":C
    :cond_9b
    invoke-virtual {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->getTree(Ljava/time/format/DateTimeParseContext;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v11

    .line 3894
    .local v11, "tree":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    new-instance v10, Ljava/text/ParsePosition;

    invoke-direct {v10, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3895
    .local v10, "ppos":Ljava/text/ParsePosition;
    invoke-virtual {v11, p2, v10}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    .line 3896
    .local v9, "parsedZoneId":Ljava/lang/String;
    if-nez v9, :cond_bc

    .line 3897
    const/16 v0, 0x5a

    invoke-virtual {p1, v7, v0}, Ljava/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 3898
    sget-object v0, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3899
    add-int/lit8 v0, p3, 0x1

    return v0

    .line 3901
    :cond_ba
    not-int v0, p3

    return v0

    .line 3903
    :cond_bc
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeParseContext;->setParsed(Ljava/time/ZoneId;)V

    .line 3904
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3960
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;->description:Ljava/lang/String;

    return-object v0
.end method
