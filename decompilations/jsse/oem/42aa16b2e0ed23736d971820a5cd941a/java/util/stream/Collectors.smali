.class public final Ljava/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Collectors$Partition;,
        Ljava/util/stream/Collectors$CollectorImpl;
    }
.end annotation


# static fields
.field static final greylist-max-o CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 107
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 110
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 111
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 113
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 114
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 115
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 116
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Ljava/util/function/Function;
    .registers 1

    .line 104
    invoke-static {}, Ljava/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api averagingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 628
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$bL3PuvFDr85ZCgwmUxFPHSRIrgE;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$bL3PuvFDr85ZCgwmUxFPHSRIrgE;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$kPvxljbEEMQktNHySoxXCZ-5cu4;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$kPvxljbEEMQktNHySoxXCZ-5cu4;-><init>(Ljava/util/function/ToDoubleFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$KLie-yPxAsuZwFd2lh-9gJpGlzE;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$KLie-yPxAsuZwFd2lh-9gJpGlzE;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$xmuLwoAlFtOfbPB5C1jdMenPWHE;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$xmuLwoAlFtOfbPB5C1jdMenPWHE;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static whitelist core-platform-api test-api averagingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 573
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$WTLZnkfYyw3lURYA1kkAz43vGhw;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$WTLZnkfYyw3lURYA1kkAz43vGhw;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$5sBFPk12YoFTd83smSoPj46DB_A;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$5sBFPk12YoFTd83smSoPj46DB_A;-><init>(Ljava/util/function/ToIntFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$ZKsdGxiJ4anQHtwhYmSwD0W3jAc;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$ZKsdGxiJ4anQHtwhYmSwD0W3jAc;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$8wf84PB5r3lvvid-SVfjAcFbHXg;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$8wf84PB5r3lvvid-SVfjAcFbHXg;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static whitelist core-platform-api test-api averagingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 591
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$bqboixg1w_Miq-JsFAc1-DEO_aI;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$bqboixg1w_Miq-JsFAc1-DEO_aI;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$AI86aRAtMJ_TFLEAd-UERhgg-kI;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$AI86aRAtMJ_TFLEAd-UERhgg-kI;-><init>(Ljava/util/function/ToLongFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$jubWCCHaIIJ_0UWKVLWqWh9ZDdk;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$jubWCCHaIIJ_0UWKVLWqWh9ZDdk;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$J_JAZ0tPN2SF0mqc6rtXc_aK03k;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$J_JAZ0tPN2SF0mqc6rtXc_aK03k;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static greylist-max-o boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/function/Supplier<",
            "[TT;>;"
        }
    .end annotation

    .line 668
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$EsYSkkQ7p405z0qsCjjJsUR3Wfk;

    invoke-direct {v0, p0}, Ljava/util/stream/-$$Lambda$Collectors$EsYSkkQ7p405z0qsCjjJsUR3Wfk;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static greylist-max-o castingIdentity()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TI;TR;>;"
        }
    .end annotation

    .line 138
    sget-object v0, Ljava/util/stream/-$$Lambda$Collectors$f0IPpRuyw9HZC8FIP30mNjUUUhw;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$f0IPpRuyw9HZC8FIP30mNjUUUhw;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "TT;TA;TR;>;",
            "Ljava/util/function/Function<",
            "TR;TRR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;TA;TRR;>;"
        }
    .end annotation

    .line 380
    .local p0, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<TT;TA;TR;>;"
    .local p1, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TR;TRR;>;"
    invoke-interface {p0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 381
    .local v0, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 382
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 383
    sget-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    goto :goto_23

    .line 385
    :cond_16
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 386
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 390
    :cond_23
    :goto_23
    new-instance v7, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    .line 391
    invoke-interface {p0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v3

    .line 392
    invoke-interface {p0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    .line 393
    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v5

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 390
    return-object v7
.end method

.method static greylist-max-o computeFinalSum([D)D
    .registers 6
    .param p0, "summands"    # [D

    .line 554
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 555
    .local v0, "tmp":D
    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    .line 556
    .local v2, "simpleSum":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 557
    return-wide v2

    .line 559
    :cond_18
    return-wide v0
.end method

.method public static whitelist core-platform-api test-api counting()Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 413
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;

    sget-object v2, Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;->INSTANCE:Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;

    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 805
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 904
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    .line 905
    .local v0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 906
    .local v1, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v8, Ljava/util/stream/-$$Lambda$Collectors$F7-we3W7I2plNaGHqh_d2lzmvho;

    move-object v9, p0

    .local v8, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/Map<TK;TA;>;TT;>;"
    invoke-direct {v8, p0, v0, v1}, Ljava/util/stream/-$$Lambda$Collectors$F7-we3W7I2plNaGHqh_d2lzmvho;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    .line 911
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v10

    .line 913
    .local v10, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/Map<TK;TA;>;>;"
    move-object/from16 v11, p1

    .line 915
    .local v11, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<TK;TA;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 916
    new-instance v2, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v11, v8, v10, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 920
    :cond_2c
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v12

    .line 921
    .local v12, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v13, Ljava/util/stream/-$$Lambda$Collectors$xODDB9V1Y7uzjD3f8OY1Ck4IN4k;

    .local v13, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<TK;TA;>;TM;>;"
    invoke-direct {v13, v12}, Ljava/util/stream/-$$Lambda$Collectors$xODDB9V1Y7uzjD3f8OY1Ck4IN4k;-><init>(Ljava/util/function/Function;)V

    .line 927
    new-instance v14, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v7, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v2, v14

    move-object v3, v11

    move-object v4, v8

    move-object v5, v10

    move-object v6, v13

    invoke-direct/range {v2 .. v7}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v14
.end method

.method public static whitelist core-platform-api test-api groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 853
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$ry7iWszBr7beYy31SdRxibDyciQ;->INSTANCE:Ljava/util/stream/-$$Lambda$ry7iWszBr7beYy31SdRxibDyciQ;

    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api groupingByConcurrent(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 967
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;->INSTANCE:Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1055
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    move-object v0, p0

    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 1056
    .local v1, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v2

    .line 1057
    .local v2, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v3

    .line 1059
    .local v3, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    move-object/from16 v10, p1

    .line 1061
    .local v10, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1062
    new-instance v4, Ljava/util/stream/-$$Lambda$Collectors$AfO_bLozmdhHTtbBN7DysDzpfYM;

    .local v4, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    invoke-direct {v4, p0, v1, v2}, Ljava/util/stream/-$$Lambda$Collectors$AfO_bLozmdhHTtbBN7DysDzpfYM;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v11, v4

    goto :goto_2c

    .line 1069
    .end local v4    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :cond_26
    new-instance v4, Ljava/util/stream/-$$Lambda$Collectors$TRHsqgEycZfemtQqwivCY4ecHDM;

    .restart local v4    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    invoke-direct {v4, p0, v1, v2}, Ljava/util/stream/-$$Lambda$Collectors$TRHsqgEycZfemtQqwivCY4ecHDM;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v11, v4

    .line 1078
    .end local v4    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    .local v11, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :goto_2c
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1079
    new-instance v4, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v4, v10, v11, v3, v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v4

    .line 1083
    :cond_40
    invoke-interface/range {p2 .. p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v12

    .line 1084
    .local v12, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v13, Ljava/util/stream/-$$Lambda$Collectors$oKi5061mJjDn56eRJcmESyO7x9k;

    .local v13, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TM;>;"
    invoke-direct {v13, v12}, Ljava/util/stream/-$$Lambda$Collectors$oKi5061mJjDn56eRJcmESyO7x9k;-><init>(Ljava/util/function/Function;)V

    .line 1090
    new-instance v14, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v9, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v4, v14

    move-object v5, v10

    move-object v6, v11

    move-object v7, v3

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v14
.end method

.method public static whitelist core-platform-api test-api groupingByConcurrent(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1008
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;->INSTANCE:Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;

    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api joining()Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;->INSTANCE:Ljava/util/stream/-$$Lambda$cfwqIEDg0Z3A7MGDNrQPTyjrF9M;

    sget-object v2, Ljava/util/stream/-$$Lambda$o8baRh54JSyOHAKgObeucNn1Zos;->INSTANCE:Ljava/util/stream/-$$Lambda$o8baRh54JSyOHAKgObeucNn1Zos;

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$Fu6GEjokQxdzbR0jNzU39-PLUqs;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$Fu6GEjokQxdzbR0jNzU39-PLUqs;

    sget-object v4, Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;->INSTANCE:Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static whitelist core-platform-api test-api joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 2
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    const-string v0, ""

    invoke-static {p0, v0, v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 10
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/stream/-$$Lambda$Collectors$pzPeDl3rCgtNVSeZPHZk5f2se60;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget-object v2, Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;->INSTANCE:Ljava/util/stream/-$$Lambda$Drw47GGUtPrz9CklhlT0v26u-5c;

    sget-object v3, Ljava/util/stream/-$$Lambda$i0Jl5dMkfWphZviqg6QdkkWPWRI;->INSTANCE:Ljava/util/stream/-$$Lambda$i0Jl5dMkfWphZviqg6QdkkWPWRI;

    sget-object v4, Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;->INSTANCE:Ljava/util/stream/-$$Lambda$okJigbB9kSn__oCZ5Do9uFNyF6A;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static synthetic blacklist lambda$averagingDouble$30()[D
    .registers 1

    .line 629
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingDouble$31(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 630
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$averagingDouble$32([D[D)[D
    .registers 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 631
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$averagingDouble$33([D)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [D

    .line 632
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_a

    goto :goto_12

    :cond_a
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_12
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingInt$22()[J
    .registers 1

    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingInt$23(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 575
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$averagingInt$24([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 576
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$averagingInt$25([J)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [J

    .line 577
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingLong$26()[J
    .registers 1

    .line 592
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$averagingLong$27(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 593
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$averagingLong$28([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 594
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$averagingLong$29([J)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [J

    .line 595
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_c
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_15
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$boxSupplier$37(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .param p0, "identity"    # Ljava/lang/Object;

    .line 668
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic blacklist lambda$castingIdentity$1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "i"    # Ljava/lang/Object;

    .line 138
    return-object p0
.end method

.method static synthetic blacklist lambda$counting$9(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .param p0, "e"    # Ljava/lang/Object;

    .line 413
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingBy$44(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 908
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingBy$45(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/Map;
    .param p4, "t"    # Ljava/lang/Object;

    .line 907
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 908
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/stream/-$$Lambda$Collectors$f68RHYk8qNU7alEHPPrPoFuCJO4;

    invoke-direct {v1, p1}, Ljava/util/stream/-$$Lambda$Collectors$f68RHYk8qNU7alEHPPrPoFuCJO4;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 909
    .local v1, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 910
    return-void
.end method

.method static synthetic blacklist lambda$groupingBy$46(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 922
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingBy$47(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/Map;

    .line 922
    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$hNSw8Kk0nIafeklCUz0r3g25T08;

    invoke-direct {v0, p0}, Ljava/util/stream/-$$Lambda$Collectors$hNSw8Kk0nIafeklCUz0r3g25T08;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 924
    move-object v0, p1

    .line 925
    .local v0, "castResult":Ljava/util/Map;, "TM;"
    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$48(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1064
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$49(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1063
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1064
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/stream/-$$Lambda$Collectors$eESkXUxzUQd_kZxyXI8noD7gpIw;

    invoke-direct {v1, p1}, Ljava/util/stream/-$$Lambda$Collectors$eESkXUxzUQd_kZxyXI8noD7gpIw;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1065
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    return-void
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$50(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1071
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$51(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 8
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1070
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1071
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Ljava/util/stream/-$$Lambda$Collectors$WGmHV8Rrm8a3qqTLJPLQv6fpb8o;

    invoke-direct {v1, p1}, Ljava/util/stream/-$$Lambda$Collectors$WGmHV8Rrm8a3qqTLJPLQv6fpb8o;-><init>(Ljava/util/function/Supplier;)V

    invoke-interface {p3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1072
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    monitor-enter v1

    .line 1073
    :try_start_14
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1074
    monitor-exit v1

    .line 1075
    return-void

    .line 1074
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$52(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1085
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$groupingByConcurrent$53(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .registers 3
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/concurrent/ConcurrentMap;

    .line 1085
    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$h1ksXokknmXSWBYxKkYfY6ov7ME;

    invoke-direct {v0, p0}, Ljava/util/stream/-$$Lambda$Collectors$h1ksXokknmXSWBYxKkYfY6ov7ME;-><init>(Ljava/util/function/Function;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 1087
    move-object v0, p1

    .line 1088
    .local v0, "castResult":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    return-object v0
.end method

.method static synthetic blacklist lambda$joining$5(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "r1"    # Ljava/lang/StringBuilder;
    .param p1, "r2"    # Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic blacklist lambda$joining$6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .registers 4
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;

    .line 299
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$mapMerger$7(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p1, "m1"    # Ljava/util/Map;
    .param p2, "m2"    # Ljava/util/Map;

    .line 319
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 320
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3, p0}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_8

    .line 321
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_20
    return-object p1
.end method

.method static synthetic blacklist lambda$mapping$8(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "mapper"    # Ljava/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 355
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$partitioningBy$54(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljava/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .registers 5
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "result"    # Ljava/util/stream/Collectors$Partition;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1139
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_b

    :cond_9
    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_b
    invoke-interface {p0, v0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$partitioningBy$55(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;
    .registers 7
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "left"    # Ljava/util/stream/Collectors$Partition;
    .param p2, "right"    # Ljava/util/stream/Collectors$Partition;

    .line 1142
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 1143
    invoke-interface {p0, v2, v3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1142
    return-object v0
.end method

.method static synthetic blacklist lambda$partitioningBy$56(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;
    .registers 4
    .param p0, "downstream"    # Ljava/util/stream/Collector;

    .line 1145
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1146
    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1145
    return-object v0
.end method

.method static synthetic blacklist lambda$partitioningBy$57(Ljava/util/stream/Collector;Ljava/util/stream/Collectors$Partition;)Ljava/util/Map;
    .registers 6
    .param p0, "downstream"    # Ljava/util/stream/Collector;
    .param p1, "par"    # Ljava/util/stream/Collectors$Partition;

    .line 1152
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1153
    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    iget-object v3, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1152
    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$34(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .line 660
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$reducing$35(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 661
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic blacklist lambda$reducing$36([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "a"    # [Ljava/lang/Object;

    .line 662
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$38(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;
    .registers 2
    .param p0, "op"    # Ljava/util/function/BinaryOperator;

    .line 716
    new-instance v0, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$1OptionalBox;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$39(Ljava/util/stream/Collectors$1OptionalBox;Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/stream/Collectors$1OptionalBox;
    .registers 3
    .param p0, "a"    # Ljava/util/stream/Collectors$1OptionalBox;
    .param p1, "b"    # Ljava/util/stream/Collectors$1OptionalBox;

    .line 717
    iget-boolean v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method static synthetic blacklist lambda$reducing$40(Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/Optional;
    .registers 2
    .param p0, "a"    # Ljava/util/stream/Collectors$1OptionalBox;

    .line 718
    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$reducing$41(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "mapper"    # Ljava/util/function/Function;
    .param p2, "a"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 761
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    return-void
.end method

.method static synthetic blacklist lambda$reducing$42(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 762
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic blacklist lambda$reducing$43([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "a"    # [Ljava/lang/Object;

    .line 763
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summarizingDouble$64(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "r"    # Ljava/util/DoubleSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1533
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic blacklist lambda$summarizingDouble$65(Ljava/util/DoubleSummaryStatistics;Ljava/util/DoubleSummaryStatistics;)Ljava/util/DoubleSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/DoubleSummaryStatistics;
    .param p1, "r"    # Ljava/util/DoubleSummaryStatistics;

    .line 1534
    invoke-virtual {p0, p1}, Ljava/util/DoubleSummaryStatistics;->combine(Ljava/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$summarizingInt$60(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .registers 4
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "r"    # Ljava/util/IntSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1493
    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic blacklist lambda$summarizingInt$61(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/IntSummaryStatistics;
    .param p1, "r"    # Ljava/util/IntSummaryStatistics;

    .line 1494
    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$summarizingLong$62(Ljava/util/function/ToLongFunction;Ljava/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .registers 5
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "r"    # Ljava/util/LongSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1513
    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic blacklist lambda$summarizingLong$63(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/LongSummaryStatistics;
    .param p1, "r"    # Ljava/util/LongSummaryStatistics;

    .line 1514
    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic blacklist lambda$summingDouble$18()[D
    .registers 1

    .line 517
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic blacklist lambda$summingDouble$19(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 518
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 519
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$summingDouble$20([D[D)[D
    .registers 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 520
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 521
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 522
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summingDouble$21([D)Ljava/lang/Double;
    .registers 3
    .param p0, "a"    # [D

    .line 523
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summingInt$10()[I
    .registers 1

    .line 466
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic blacklist lambda$summingInt$11(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .registers 6
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # [I
    .param p2, "t"    # Ljava/lang/Object;

    .line 467
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$summingInt$12([I[I)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 468
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$summingInt$13([I)Ljava/lang/Integer;
    .registers 2
    .param p0, "a"    # [I

    .line 469
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$summingLong$14()[J
    .registers 1

    .line 484
    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic blacklist lambda$summingLong$15(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 8
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 485
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic blacklist lambda$summingLong$16([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 486
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic blacklist lambda$summingLong$17([J)Ljava/lang/Long;
    .registers 3
    .param p0, "a"    # [J

    .line 487
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$throwingMerger$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "u"    # Ljava/lang/Object;
    .param p1, "v"    # Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Duplicate key %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$toCollection$2(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .param p0, "r1"    # Ljava/util/Collection;
    .param p1, "r2"    # Ljava/util/Collection;

    .line 214
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toConcurrentMap$59(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1472
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1473
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1472
    invoke-interface {p3, v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$toList$3(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 231
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic blacklist lambda$toMap$58(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1320
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1321
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1320
    invoke-interface {p3, v0, v1, p2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$toSet$4(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .param p0, "left"    # Ljava/util/Set;
    .param p1, "right"    # Ljava/util/Set;

    .line 252
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static greylist-max-o mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 318
    .local p0, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$TzSZZBK0laNSWMge_uuxANwkkMo;

    invoke-direct {v0, p0}, Ljava/util/stream/-$$Lambda$Collectors$TzSZZBK0laNSWMge_uuxANwkkMo;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 353
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 354
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;

    invoke-direct {v3, v0, p0}, Ljava/util/stream/-$$Lambda$Collectors$vmLceJDpkkH4HVeqPcL08DnO8yg;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V

    .line 356
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 357
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 354
    return-object v7
.end method

.method public static whitelist core-platform-api test-api maxBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 451
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api minBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 432
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1110
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 1137
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 1138
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v7, Ljava/util/stream/-$$Lambda$Collectors$DPpNNyj-GqDgBuGvO0w_46Z3Jl8;

    .local v7, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/stream/Collectors$Partition<TA;>;TT;>;"
    invoke-direct {v7, v0, p0}, Ljava/util/stream/-$$Lambda$Collectors$DPpNNyj-GqDgBuGvO0w_46Z3Jl8;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;)V

    .line 1140
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v8

    .line 1141
    .local v8, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    new-instance v9, Ljava/util/stream/-$$Lambda$Collectors$GYNZB08upNxJa3yuZVQ1065S1eU;

    .local v9, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    invoke-direct {v9, v8}, Ljava/util/stream/-$$Lambda$Collectors$GYNZB08upNxJa3yuZVQ1065S1eU;-><init>(Ljava/util/function/BinaryOperator;)V

    .line 1144
    new-instance v10, Ljava/util/stream/-$$Lambda$Collectors$IFopD1JhOBkpZfx3JTKDGTwaQTo;

    .local v10, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    invoke-direct {v10, p1}, Ljava/util/stream/-$$Lambda$Collectors$IFopD1JhOBkpZfx3JTKDGTwaQTo;-><init>(Ljava/util/stream/Collector;)V

    .line 1147
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1148
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v2, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, v10, v7, v9, v2}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1

    .line 1151
    :cond_2b
    new-instance v11, Ljava/util/stream/-$$Lambda$Collectors$chTZg9lp1htTW8rBDwbte7J-EOo;

    .local v11, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/stream/Collectors$Partition<TA;>;Ljava/util/Map<Ljava/lang/Boolean;TD;>;>;"
    invoke-direct {v11, p1}, Ljava/util/stream/-$$Lambda$Collectors$chTZg9lp1htTW8rBDwbte7J-EOo;-><init>(Ljava/util/stream/Collector;)V

    .line 1154
    new-instance v12, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v6, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v1, v12

    move-object v2, v10

    move-object v3, v7

    move-object v4, v9

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static whitelist core-platform-api test-api reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 658
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    .line 659
    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$hPhWWwdsY4xpBbhcwNVuU8dcJDw;

    invoke-direct {v2, p1}, Ljava/util/stream/-$$Lambda$Collectors$hPhWWwdsY4xpBbhcwNVuU8dcJDw;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Ljava/util/stream/-$$Lambda$Collectors$ad8ZNOGiSpsXDY-HtABmtE9E1UA;

    invoke-direct {v3, p1}, Ljava/util/stream/-$$Lambda$Collectors$ad8ZNOGiSpsXDY-HtABmtE9E1UA;-><init>(Ljava/util/function/BinaryOperator;)V

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$il2gZbqqrAa81yW3okSBWeJddGk;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$il2gZbqqrAa81yW3okSBWeJddGk;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 658
    return-object v6
.end method

.method public static whitelist core-platform-api test-api reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TU;>;"
        }
    .end annotation

    .line 759
    .local p0, "identity":Ljava/lang/Object;, "TU;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    .line 760
    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;

    invoke-direct {v2, p2, p1}, Ljava/util/stream/-$$Lambda$Collectors$PTd6jsJ7t0481HRFfH8tnGifDqw;-><init>(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;)V

    new-instance v3, Ljava/util/stream/-$$Lambda$Collectors$xWcI8qM0AfOYfxDSjg08D8ztBFg;

    invoke-direct {v3, p2}, Ljava/util/stream/-$$Lambda$Collectors$xWcI8qM0AfOYfxDSjg08D8ztBFg;-><init>(Ljava/util/function/BinaryOperator;)V

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 759
    return-object v6
.end method

.method public static whitelist core-platform-api test-api reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 715
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava/util/stream/-$$Lambda$Collectors$BwzHl6O1mjAgxLE58ctIeFoVBAM;

    invoke-direct {v1, p0}, Ljava/util/stream/-$$Lambda$Collectors$BwzHl6O1mjAgxLE58ctIeFoVBAM;-><init>(Ljava/util/function/BinaryOperator;)V

    sget-object v2, Ljava/util/stream/-$$Lambda$S-3JQ3-ufQOqvkvYGc3Sza-87R0;->INSTANCE:Ljava/util/stream/-$$Lambda$S-3JQ3-ufQOqvkvYGc3Sza-87R0;

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$o_hw0Qu0KMLozTwiY9jr8AKG0_0;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$o_hw0Qu0KMLozTwiY9jr8AKG0_0;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$o91A-j5OVnHv9w5Hj_r9fFUMiDY;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static greylist-max-o sumWithCompensation([DD)[D
    .registers 13
    .param p0, "intermediateSum"    # [D
    .param p1, "value"    # D

    .line 539
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double v1, p1, v1

    .line 540
    .local v1, "tmp":D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    .line 541
    .local v4, "sum":D
    add-double v6, v4, v1

    .line 542
    .local v6, "velvel":D
    sub-double v8, v6, v4

    sub-double/2addr v8, v1

    aput-wide v8, p0, v0

    .line 543
    aput-wide v6, p0, v3

    .line 544
    return-object p0
.end method

.method public static whitelist core-platform-api test-api summarizingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1531
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$745FUy7cYwYu7KrMQTYh2DNqh1I;->INSTANCE:Ljava/util/stream/-$$Lambda$745FUy7cYwYu7KrMQTYh2DNqh1I;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$0hO4kVeN9EGHZquOI_a_qZ75htQ;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$0hO4kVeN9EGHZquOI_a_qZ75htQ;-><init>(Ljava/util/function/ToDoubleFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$oMCfAR-_eVSty8GsYzK5sec1Kag;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$oMCfAR-_eVSty8GsYzK5sec1Kag;

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api summarizingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1491
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;->INSTANCE:Ljava/util/stream/-$$Lambda$_Ea_sNpqZAwihIOCRBaP7hHgWWI;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$49j2hRW8u6KMoxsVt77YSpMRb1g;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$49j2hRW8u6KMoxsVt77YSpMRb1g;-><init>(Ljava/util/function/ToIntFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$HtCSWMKsL2vCjP_AudE9j5Li4Q4;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$HtCSWMKsL2vCjP_AudE9j5Li4Q4;

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api summarizingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1511
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$kZuTETptiPwvB1J27Na7j760aLU;->INSTANCE:Ljava/util/stream/-$$Lambda$kZuTETptiPwvB1J27Na7j760aLU;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$xyNVxvHgGD7IIanzX9Sm9NxmODA;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$xyNVxvHgGD7IIanzX9Sm9NxmODA;-><init>(Ljava/util/function/ToLongFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$GoEBVVc1WwW27RacBqhtFczthrA;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$GoEBVVc1WwW27RacBqhtFczthrA;

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api summingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 516
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$8qmKppCC_QJwGcQ9bUPPu3l-5Bg;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$8qmKppCC_QJwGcQ9bUPPu3l-5Bg;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$zuotCFMPpEd_pFOpcqCzvWNwmcE;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$zuotCFMPpEd_pFOpcqCzvWNwmcE;-><init>(Ljava/util/function/ToDoubleFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static whitelist core-platform-api test-api summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 465
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$LdN_EEy4nb6271v6ZFmttzZvNwg;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$LdN_EEy4nb6271v6ZFmttzZvNwg;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$PkbZGUBauY6-u1ZrRakcFQjTln0;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$PkbZGUBauY6-u1ZrRakcFQjTln0;-><init>(Ljava/util/function/ToIntFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$_Q0YP_0ibAqPtQetwby3vyMbjys;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$_Q0YP_0ibAqPtQetwby3vyMbjys;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static whitelist core-platform-api test-api summingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 483
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$Collectors$l57H1aRUHKWOcUoknXahrBTCBzM;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$l57H1aRUHKWOcUoknXahrBTCBzM;

    new-instance v2, Ljava/util/stream/-$$Lambda$Collectors$jDXjrt99im0xRBROpkCAqoLkqR4;

    invoke-direct {v2, p0}, Ljava/util/stream/-$$Lambda$Collectors$jDXjrt99im0xRBROpkCAqoLkqR4;-><init>(Ljava/util/function/ToLongFunction;)V

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$efY8VAGaEUr4IwuGz_Jkpfl5lH8;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$efY8VAGaEUr4IwuGz_Jkpfl5lH8;

    sget-object v4, Ljava/util/stream/-$$Lambda$Collectors$P--H40qXgNc8jDetutxHAPBu2pw;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$P--H40qXgNc8jDetutxHAPBu2pw;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static greylist-max-o throwingMerger()Ljava/util/function/BinaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 133
    sget-object v0, Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/util/function/Supplier<",
            "TC;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 213
    .local p0, "collectionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TC;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$sKPaOkcQePGTRevrwmKVVhCTmTo;->INSTANCE:Ljava/util/stream/-$$Lambda$sKPaOkcQePGTRevrwmKVVhCTmTo;

    sget-object v2, Ljava/util/stream/-$$Lambda$Collectors$iab6bVO3ydceISRiUEq_MRHYzoU;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$iab6bVO3ydceISRiUEq_MRHYzoU;

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1375
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;->INSTANCE:Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1429
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;->INSTANCE:Ljava/util/stream/-$$Lambda$lG52Z65fM3qwbieoOBUupMhmr2E;

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1471
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$ZHtBI7Du2F_qzRSEqDnG6y4R0Lw;

    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/-$$Lambda$Collectors$ZHtBI7Du2F_qzRSEqDnG6y4R0Lw;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1474
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static whitelist core-platform-api test-api toList()Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$yTqQxkqu88ZhKI6fWaTTLwOLF60;->INSTANCE:Ljava/util/stream/-$$Lambda$yTqQxkqu88ZhKI6fWaTTLwOLF60;

    sget-object v2, Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;->INSTANCE:Ljava/util/stream/-$$Lambda$ihOtgw0eLCrsEBOphyN7SwoAlDg;

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$0y_EMl863H_U7B4kxyGscB4vAag;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$0y_EMl863H_U7B4kxyGscB4vAag;

    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1212
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$$Lambda$ry7iWszBr7beYy31SdRxibDyciQ;->INSTANCE:Ljava/util/stream/-$$Lambda$ry7iWszBr7beYy31SdRxibDyciQ;

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1271
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    sget-object v0, Ljava/util/stream/-$$Lambda$ry7iWszBr7beYy31SdRxibDyciQ;->INSTANCE:Ljava/util/stream/-$$Lambda$ry7iWszBr7beYy31SdRxibDyciQ;

    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1319
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$nKlT6uFghrTzWO44dlFAJFeRr34;

    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    invoke-direct {v0, p0, p1, p2}, Ljava/util/stream/-$$Lambda$Collectors$nKlT6uFghrTzWO44dlFAJFeRr34;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1322
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static whitelist core-platform-api test-api toSet()Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;->INSTANCE:Ljava/util/stream/-$$Lambda$r-8H_R_mZJjp9wd0XTLoEAHMNQ0;

    sget-object v2, Ljava/util/stream/-$$Lambda$uJ6CkL42Bk73jN5EzP0Fx7o1eVA;->INSTANCE:Ljava/util/stream/-$$Lambda$uJ6CkL42Bk73jN5EzP0Fx7o1eVA;

    sget-object v3, Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;

    sget-object v4, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method
