.class public final Ljava/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/Collectors$CollectorImpl;,
        Ljava/util/stream/Collectors$Partition;
    }
.end annotation


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -java_util_stream_Collectors-mthref-0(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 213
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-1()Ljava/util/List;
    .registers 1

    .prologue
    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-10(Ljava/util/StringJoiner;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-11(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-12(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collectors$1OptionalBox;
    .registers 2

    .prologue
    .line 716
    new-instance v0, Ljava/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljava/util/stream/Collectors$1OptionalBox;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-13(Ljava/util/stream/Collectors$1OptionalBox;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Ljava/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-14()Ljava/util/Map;
    .registers 1

    .prologue
    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-15()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .prologue
    .line 967
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-16()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .prologue
    .line 1008
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-17()Ljava/util/Map;
    .registers 1

    .prologue
    .line 1212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-18()Ljava/util/Map;
    .registers 1

    .prologue
    .line 1271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-19()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .prologue
    .line 1375
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-2(Ljava/util/List;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 230
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-20()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .prologue
    .line 1429
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-21()Ljava/util/IntSummaryStatistics;
    .registers 1

    .prologue
    .line 1492
    new-instance v0, Ljava/util/IntSummaryStatistics;

    invoke-direct {v0}, Ljava/util/IntSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-22()Ljava/util/LongSummaryStatistics;
    .registers 1

    .prologue
    .line 1512
    new-instance v0, Ljava/util/LongSummaryStatistics;

    invoke-direct {v0}, Ljava/util/LongSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-23()Ljava/util/DoubleSummaryStatistics;
    .registers 1

    .prologue
    .line 1532
    new-instance v0, Ljava/util/DoubleSummaryStatistics;

    invoke-direct {v0}, Ljava/util/DoubleSummaryStatistics;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-3()Ljava/util/Set;
    .registers 1

    .prologue
    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-4(Ljava/util/Set;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 251
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-5()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-6(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-7(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -java_util_stream_Collectors-mthref-8(Ljava/util/StringJoiner;Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method static synthetic -java_util_stream_Collectors-mthref-9(Ljava/util/StringJoiner;Ljava/util/StringJoiner;)Ljava/util/StringJoiner;
    .registers 3

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap0()Ljava/util/function/Function;
    .registers 1

    invoke-static {}, Ljava/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 107
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    .line 108
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 109
    sget-object v2, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 107
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 106
    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 111
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    .line 112
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 111
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 110
    sput-object v0, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 114
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 113
    sput-object v0, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 116
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    .line 117
    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    .line 116
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 115
    sput-object v0, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 104
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static averagingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$0:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 630
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$0:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$0:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 633
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 628
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static averagingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$1:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 575
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$1:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$1:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 577
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 573
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static averagingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$2:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 593
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$2:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$2:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 595
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 591
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/function/Supplier",
            "<[TT;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method private static castingIdentity()Ljava/util/function/Function;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function",
            "<TI;TR;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$3:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 138
    return-object v0
.end method

.method public static collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 8
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
            "Ljava/util/stream/Collector",
            "<TT;TA;TR;>;",
            "Ljava/util/function/Function",
            "<TR;TRR;>;)",
            "Ljava/util/stream/Collector",
            "<TT;TA;TRR;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<TT;TA;TR;>;"
    .local p1, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TR;TRR;>;"
    invoke-interface {p0}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v5

    .line 381
    .local v5, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 382
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 383
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 390
    :cond_15
    :goto_15
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 391
    invoke-interface {p0}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v2

    .line 392
    invoke-interface {p0}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    .line 393
    invoke-interface {p0}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v4

    .line 390
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0

    .line 385
    :cond_2f
    invoke-static {v5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v5

    .line 386
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 387
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    goto :goto_15
.end method

.method static computeFinalSum([D)D
    .registers 9
    .param p0, "summands"    # [D

    .prologue
    .line 554
    const/4 v4, 0x0

    aget-wide v4, p0, v4

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    add-double v2, v4, v6

    .line 555
    .local v2, "tmp":D
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-wide v0, p0, v4

    .line 556
    .local v0, "simpleSum":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 557
    return-wide v0

    .line 559
    :cond_1a
    return-wide v2
.end method

.method public static counting()Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$4:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    sget-object v2, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$3:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 13
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
            "Ljava/util/Map",
            "<TK;TD;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    .prologue
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    const/4 v5, 0x0

    .line 904
    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v8

    .line 905
    .local v8, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    .line 906
    .local v6, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;

    invoke-direct {v2, v5, p0, v8, v6}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 911
    .local v2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/Map<TK;TA;>;TT;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v3

    .line 913
    .local v3, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/Map<TK;TA;>;>;"
    move-object v9, p1

    .line 915
    .local v9, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<TK;TA;>;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 916
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0

    .line 920
    :cond_2b
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v7

    .line 921
    .local v7, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    invoke-direct {v4, v5, v7}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>(BLjava/lang/Object;)V

    .line 927
    .local v4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<TK;TA;>;TM;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;TD;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$3:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 853
    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$4:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 967
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 13
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
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TD;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    .prologue
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    const/4 v5, 0x1

    .line 1055
    invoke-interface {p2}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v8

    .line 1056
    .local v8, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    .line 1057
    .local v6, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v3

    .line 1059
    .local v3, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    move-object v9, p1

    .line 1061
    .local v9, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1062
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;

    invoke-direct {v2, v5, p0, v8, v6}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1078
    .local v2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :goto_23
    invoke-interface {p2}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1079
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, p1, v2, v3, v1}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0

    .line 1069
    .end local v2    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :cond_37
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;

    const/4 v0, 0x2

    invoke-direct {v2, v0, p0, v8, v6}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v2    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    goto :goto_23

    .line 1083
    :cond_3e
    invoke-interface {p2}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v7

    .line 1084
    .local v7, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    invoke-direct {v4, v5, v7}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>(BLjava/lang/Object;)V

    .line 1090
    .local v4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TM;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TD;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$5:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 1008
    invoke-static {p0, v0, p1}, Ljava/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining()Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$6:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    sget-object v2, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$0:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$4:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$5:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 267
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 264
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 3
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;
    .registers 9
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
            "Ljava/util/stream/Collector",
            "<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    .line 299
    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$6;

    invoke-direct {v1, p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$1:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$5:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$6:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 301
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 298
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_10371(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    .prologue
    .line 252
    .local p0, "left":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "right":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_10963(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "r1"    # Ljava/lang/StringBuilder;
    .param p1, "r2"    # Ljava/lang/StringBuilder;

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_12527(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/StringJoiner;
    .registers 4
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;

    .prologue
    .line 299
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_13304(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7

    .prologue
    .line 319
    .local p0, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    .local p1, "m1":Ljava/util/Map;, "TM;"
    .local p2, "m2":Ljava/util/Map;, "TM;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3, p0}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_8

    .line 321
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_20
    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_15131(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 355
    .local p0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "r":Ljava/lang/Object;, "TA;"
    .local p3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_17830(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3

    .prologue
    .line 413
    .local p0, "e":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19768()[I
    .registers 1

    .prologue
    .line 466
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19802(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .registers 6
    .param p1, "a"    # [I

    .prologue
    .line 467
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19863([I[I)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v2, 0x0

    .line 468
    aget v0, p0, v2

    aget v1, p1, v2

    add-int/2addr v0, v1

    aput v0, p0, v2

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_19918([I)Ljava/lang/Integer;
    .registers 2
    .param p0, "a"    # [I

    .prologue
    .line 469
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20488()[J
    .registers 1

    .prologue
    .line 484
    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20523(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 9
    .param p1, "a"    # [J

    .prologue
    .line 485
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20585([J[J)[J
    .registers 7
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v4, 0x0

    .line 486
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_20640([J)Ljava/lang/Long;
    .registers 3
    .param p0, "a"    # [J

    .prologue
    .line 487
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22029()[D
    .registers 1

    .prologue
    .line 517
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22066(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 9
    .param p1, "a"    # [D

    .prologue
    .line 518
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 519
    const/4 v0, 0x2

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22206([D[D)[D
    .registers 7
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .prologue
    const/4 v4, 0x2

    .line 520
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 521
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-double/2addr v0, v2

    aput-wide v0, p0, v4

    .line 522
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_22374([D)Ljava/lang/Double;
    .registers 3
    .param p0, "a"    # [D

    .prologue
    .line 523
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24382()[J
    .registers 1

    .prologue
    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24417(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .registers 9
    .param p1, "a"    # [J

    .prologue
    .line 575
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24486([J[J)[J
    .registers 8
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 576
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-long/2addr v0, v2

    aput-wide v0, p0, v5

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_24555([J)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [J

    .prologue
    const/4 v4, 0x1

    .line 577
    aget-wide v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const-wide/16 v0, 0x0

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-double v0, v0

    aget-wide v2, p0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_b
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25178()[J
    .registers 1

    .prologue
    .line 592
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25213(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .registers 9
    .param p1, "a"    # [J

    .prologue
    .line 593
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aget-wide v2, p1, v0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25283([J[J)[J
    .registers 8
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 594
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-long/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-long/2addr v0, v2

    aput-wide v0, p0, v5

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_25352([J)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [J

    .prologue
    const/4 v4, 0x1

    .line 595
    aget-wide v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const-wide/16 v0, 0x0

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-double v0, v0

    aget-wide v2, p0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_b
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27029()[D
    .registers 1

    .prologue
    .line 629
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27066(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .registers 9
    .param p1, "a"    # [D

    .prologue
    .line 630
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v2, p1, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    aget-wide v2, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v4

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27185([D[D)[D
    .registers 8
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 631
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava/util/stream/Collectors;->sumWithCompensation([DD)[D

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    add-double/2addr v0, v2

    aput-wide v0, p0, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    add-double/2addr v0, v2

    aput-wide v0, p0, v5

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_27314([D)Ljava/lang/Double;
    .registers 6
    .param p0, "a"    # [D

    .prologue
    const/4 v4, 0x2

    const-wide/16 v0, 0x0

    .line 632
    aget-wide v2, p0, v4

    cmpl-double v2, v2, v0

    if-nez v2, :cond_e

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-static {p0}, Ljava/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    aget-wide v2, p0, v4

    div-double/2addr v0, v2

    goto :goto_9
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28557(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 660
    aget-object v0, p1, v1

    invoke-interface {p0, v0, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28614(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    .prologue
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .line 661
    aget-object v0, p1, v2

    aget-object v1, p2, v2

    invoke-interface {p0, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28684([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 662
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_28841(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 668
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_30747(Ljava/util/stream/Collectors$1OptionalBox;Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/stream/Collectors$1OptionalBox;
    .registers 3
    .param p0, "a"    # Ljava/util/stream/Collectors$1OptionalBox;
    .param p1, "b"    # Ljava/util/stream/Collectors$1OptionalBox;

    .prologue
    .line 717
    iget-boolean v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_9
    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_30822(Ljava/util/stream/Collectors$1OptionalBox;)Ljava/util/Optional;
    .registers 2
    .param p0, "a"    # Ljava/util/stream/Collectors$1OptionalBox;

    .prologue
    .line 718
    iget-object v0, p0, Ljava/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_32880(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "a":[Ljava/lang/Object;, "[TU;"
    .local p3, "t":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 761
    aget-object v0, p2, v2

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, v2

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_32951(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    .prologue
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TU;"
    .local p2, "b":[Ljava/lang/Object;, "[TU;"
    const/4 v2, 0x0

    .line 762
    aget-object v0, p1, v2

    aget-object v1, p2, v2

    invoke-interface {p0, v0, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v2

    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_33021([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 763
    .local p0, "a":[Ljava/lang/Object;, "[TU;"
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_40369(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 907
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    .local p3, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TA;>;"
    .local p4, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "element cannot be mapped to a null key"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 908
    .local v1, "key":Ljava/lang/Object;, "TK;"
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>(BLjava/lang/Object;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    .line 909
    .local v0, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v0, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_40537(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 908
    .local p0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_41242(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .registers 5

    .prologue
    .line 922
    .local p0, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    .local p1, "intermediate":Ljava/util/Map;, "Ljava/util/Map<TK;TA;>;"
    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$2;-><init>(BLjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 924
    move-object v0, p1

    .line 925
    .local v0, "castResult":Ljava/util/Map;, "TM;"
    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_41300(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 922
    .local p0, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TA;"
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_48670(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 1063
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    .local p3, "m":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TA;>;"
    .local p4, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "element cannot be mapped to a null key"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1064
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>(BLjava/lang/Object;)V

    invoke-interface {p3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1065
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_48852(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1064
    .local p0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49016(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 1070
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p2, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    .local p3, "m":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TA;>;"
    .local p4, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "element cannot be mapped to a null key"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1071
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>(BLjava/lang/Object;)V

    invoke-interface {p3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1072
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    monitor-enter v1

    .line 1073
    :try_start_16
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-void

    .line 1072
    :catchall_1b
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49198(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1071
    .local p0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49796(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .registers 5

    .prologue
    .line 1085
    .local p0, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    .local p1, "intermediate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TA;>;"
    new-instance v1, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$2;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$2;-><init>(BLjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 1087
    move-object v0, p1

    .line 1088
    .local v0, "castResult":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    return-object p1
.end method

.method static synthetic lambda$-java_util_stream_Collectors_49854(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1085
    .local p0, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TA;"
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_52253(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Ljava/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1139
    .local p0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p2, "result":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TA;>;"
    .local p3, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    :goto_8
    invoke-interface {p0, v0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_c
    iget-object v0, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    goto :goto_8
.end method

.method static synthetic lambda$-java_util_stream_Collectors_52471(Ljava/util/function/BinaryOperator;Ljava/util/stream/Collectors$Partition;Ljava/util/stream/Collectors$Partition;)Ljava/util/stream/Collectors$Partition;
    .registers 7

    .prologue
    .line 1142
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    .local p1, "left":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TA;>;"
    .local p2, "right":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TA;>;"
    new-instance v0, Ljava/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljava/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1143
    iget-object v2, p1, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Ljava/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {p0, v2, v3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1142
    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_52675(Ljava/util/stream/Collector;)Ljava/util/stream/Collectors$Partition;
    .registers 4

    .prologue
    .line 1145
    .local p0, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
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

    .line 1145
    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_53066(Ljava/util/stream/Collector;Ljava/util/stream/Collectors$Partition;)Ljava/util/Map;
    .registers 6

    .prologue
    .line 1152
    .local p0, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    .local p1, "par":Ljava/util/stream/Collectors$Partition;, "Ljava/util/stream/Collectors$Partition<TA;>;"
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

    .line 1152
    invoke-direct {v0, v1, v2}, Ljava/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_5845(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 133
    .local p0, "u":Ljava/lang/Object;, "TT;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Duplicate key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_6048(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .prologue
    .line 138
    .local p0, "i":Ljava/lang/Object;, "TI;"
    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_62004(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1320
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "map":Ljava/util/Map;, "TM;"
    .local p4, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1321
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1320
    invoke-interface {p3, v0, v1, p2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_70477(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1472
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "map":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    .local p4, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1473
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1472
    invoke-interface {p3, v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_71492(Ljava/util/function/ToIntFunction;Ljava/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .registers 4
    .param p1, "r"    # Ljava/util/IntSummaryStatistics;

    .prologue
    .line 1493
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_71550(Ljava/util/IntSummaryStatistics;Ljava/util/IntSummaryStatistics;)Ljava/util/IntSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/IntSummaryStatistics;
    .param p1, "r"    # Ljava/util/IntSummaryStatistics;

    .prologue
    .line 1494
    invoke-virtual {p0, p1}, Ljava/util/IntSummaryStatistics;->combine(Ljava/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_72369(Ljava/util/function/ToLongFunction;Ljava/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .registers 5
    .param p1, "r"    # Ljava/util/LongSummaryStatistics;

    .prologue
    .line 1513
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_72428(Ljava/util/LongSummaryStatistics;Ljava/util/LongSummaryStatistics;)Ljava/util/LongSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/LongSummaryStatistics;
    .param p1, "r"    # Ljava/util/LongSummaryStatistics;

    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Ljava/util/LongSummaryStatistics;->combine(Ljava/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_73255(Ljava/util/function/ToDoubleFunction;Ljava/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .registers 5
    .param p1, "r"    # Ljava/util/DoubleSummaryStatistics;

    .prologue
    .line 1533
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$-java_util_stream_Collectors_73316(Ljava/util/DoubleSummaryStatistics;Ljava/util/DoubleSummaryStatistics;)Ljava/util/DoubleSummaryStatistics;
    .registers 2
    .param p0, "l"    # Ljava/util/DoubleSummaryStatistics;
    .param p1, "r"    # Ljava/util/DoubleSummaryStatistics;

    .prologue
    .line 1534
    invoke-virtual {p0, p1}, Ljava/util/DoubleSummaryStatistics;->combine(Ljava/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_8700(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2

    .prologue
    .line 214
    .local p0, "r1":Ljava/util/Collection;, "TC;"
    .local p1, "r2":Ljava/util/Collection;, "TC;"
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$-java_util_stream_Collectors_9491(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 231
    .local p0, "left":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "right":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private static mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map",
            "<TK;TV;>;>(",
            "Ljava/util/function/BinaryOperator",
            "<TV;>;)",
            "Ljava/util/function/BinaryOperator",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    new-instance v0, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public static mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 9
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
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/stream/Collector",
            "<-TU;TA;TR;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TR;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    .line 354
    .local v6, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    .line 355
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v6, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 356
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v4

    .line 357
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v5

    .line 354
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;)Ljava/util/stream/Collector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1110
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate",
            "<-TT;>;",
            "Ljava/util/stream/Collector",
            "<-TT;TA;TD;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    const/4 v0, 0x1

    .line 1137
    invoke-interface {p1}, Ljava/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v6

    .line 1138
    .local v6, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;

    invoke-direct {v2, v0, v6, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 1140
    .local v2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/stream/Collectors$Partition<TA;>;TT;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v7

    .line 1141
    .local v7, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    new-instance v3, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;

    invoke-direct {v3, v0, v7}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;-><init>(BLjava/lang/Object;)V

    .line 1144
    .local v3, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    new-instance v1, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;

    const/4 v0, 0x3

    invoke-direct {v1, v0, p1}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;-><init>(BLjava/lang/Object;)V

    .line 1147
    .local v1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    invoke-interface {p1}, Ljava/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v5, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1148
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0

    .line 1151
    :cond_2d
    new-instance v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;

    const/4 v0, 0x5

    invoke-direct {v4, v0, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$3;-><init>(BLjava/lang/Object;)V

    .line 1154
    .local v4, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/stream/Collectors$Partition<TA;>;Ljava/util/Map<Ljava/lang/Boolean;TD;>;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TT;>;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    .line 659
    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    .line 660
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    .line 661
    new-instance v3, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;-><init>(BLjava/lang/Object;)V

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$7:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 663
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 658
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TU;>;"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "identity":Ljava/lang/Object;, "TU;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    .line 760
    invoke-static {p0}, Ljava/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    .line 761
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p2, p1}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$4;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 762
    new-instance v3, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;

    const/4 v4, 0x3

    invoke-direct {v3, v4, p2}, Ljava/util/stream/-$Lambda$s-muF8cTY6kf2DcLR-Ys2NMV7bA;-><init>(BLjava/lang/Object;)V

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$8:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 763
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 759
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static reducing(Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Optional",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    .line 716
    new-instance v1, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Ljava/util/stream/-$Lambda$F2FxWS-_sj37qqP78wv60F_s_Zw;-><init>(BLjava/lang/Object;)V

    sget-object v2, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$2:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$6:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$9:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 718
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 715
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method static sumWithCompensation([DD)[D
    .registers 14
    .param p0, "intermediateSum"    # [D
    .param p1, "value"    # D

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 539
    aget-wide v6, p0, v9

    sub-double v2, p1, v6

    .line 540
    .local v2, "tmp":D
    aget-wide v0, p0, v8

    .line 541
    .local v0, "sum":D
    add-double v4, v0, v2

    .line 542
    .local v4, "velvel":D
    sub-double v6, v4, v0

    sub-double/2addr v6, v2

    aput-wide v6, p0, v9

    .line 543
    aput-wide v4, p0, v8

    .line 544
    return-object p0
.end method

.method public static summarizingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$7:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 1533
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$7:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 1534
    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 1531
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$8:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 1493
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$8:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 1494
    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 1491
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1511
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$9:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 1513
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$9:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 1514
    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 1511
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$10:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 518
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$10:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$10:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 524
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 516
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$11:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 467
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$11:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$11:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 469
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 465
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/Collector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction",
            "<-TT;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$12:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 485
    new-instance v2, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;

    const/16 v3, 0x9

    invoke-direct {v2, v3, p0}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$1;-><init>(BLjava/lang/Object;)V

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$12:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    sget-object v4, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;->$INST$12:Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0;

    .line 487
    sget-object v5, Ljava/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 483
    invoke-direct/range {v0 .. v5}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v0
.end method

.method private static throwingMerger()Ljava/util/function/BinaryOperator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$13:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 133
    return-object v0
.end method

.method public static toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection",
            "<TT;>;>(",
            "Ljava/util/function/Supplier",
            "<TC;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TC;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "collectionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TC;>;"
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$3:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    sget-object v2, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$14:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 215
    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 213
    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TU;>;>;"
        }
    .end annotation

    .prologue
    .line 1375
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$13:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TU;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$14:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 1429
    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
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
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    .prologue
    .line 1472
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1474
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toList()Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$15:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    sget-object v2, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$4:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$15:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 232
    sget-object v4, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 230
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;TU;>;>;"
        }
    .end annotation

    .prologue
    .line 1212
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$16:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Map",
            "<TK;TU;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    sget-object v0, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$17:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    .line 1271
    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
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
            "Ljava/util/Map",
            "<TK;TU;>;>(",
            "Ljava/util/function/Function",
            "<-TT;+TK;>;",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator",
            "<TU;>;",
            "Ljava/util/function/Supplier",
            "<TM;>;)",
            "Ljava/util/stream/Collector",
            "<TT;*TM;>;"
        }
    .end annotation

    .prologue
    .line 1320
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1, p2}, Ljava/util/stream/-$Lambda$qTstLJg88fs2C3g6LH-R51vCVP0$5;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1322
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Ljava/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toSet()Ljava/util/stream/Collector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector",
            "<TT;*",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;->$INST$18:Ljava/util/stream/-$Lambda$PVrT5KMXWM352lNCiKPCMdt2xL8;

    sget-object v2, Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;->$INST$5:Ljava/util/stream/-$Lambda$Y1nWb7oHyESmWtTUR-RlHqf5IfU;

    sget-object v3, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$16:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 253
    sget-object v4, Ljava/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 251
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method
