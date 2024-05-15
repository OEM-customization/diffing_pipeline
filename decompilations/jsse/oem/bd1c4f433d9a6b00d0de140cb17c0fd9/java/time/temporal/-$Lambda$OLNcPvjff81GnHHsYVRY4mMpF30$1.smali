.class final synthetic Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/Temporal;

    .prologue
    iget-object v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/UnaryOperator;

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$-java_time_temporal_TemporalAdjusters_6256(Ljava/util/function/UnaryOperator;Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$1;->$m$0(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method
