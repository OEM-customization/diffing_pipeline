.class final synthetic Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic $INST$0:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

.field public static final synthetic $INST$1:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

.field public static final synthetic $INST$2:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

.field public static final synthetic $INST$3:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

.field public static final synthetic $INST$4:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

.field public static final synthetic $INST$5:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

.field public static final synthetic $INST$6:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_16312(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_16487(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_16671(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalUnit;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_16950(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$4(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_17282(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$5(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_17553(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$6(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$-java_time_temporal_TemporalQueries_17862(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$0:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$1:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$2:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$3:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$4:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$5:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    new-instance v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;-><init>(B)V

    sput-object v0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$INST$6:Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$id:B

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$id:B

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$2(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$3(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1f
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$4(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_24
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$5(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_29
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$Tdj786c1ErPPulwwPKXine_EWQE;->$m$6(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
    .end packed-switch
.end method
