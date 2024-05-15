.class final synthetic Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/Temporal;

    .prologue
    iget v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->-$f0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$-java_time_temporal_TemporalAdjusters_17076(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/Temporal;

    .prologue
    iget v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->-$f0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$-java_time_temporal_TemporalAdjusters_18421(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/Temporal;

    .prologue
    iget v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->-$f0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$-java_time_temporal_TemporalAdjusters_19758(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/Temporal;

    .prologue
    iget v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->-$f0:I

    invoke-static {v0, p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$-java_time_temporal_TemporalAdjusters_21123(ILjava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(BI)V
    .registers 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->$id:B

    iput p2, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->-$f0:I

    return-void
.end method


# virtual methods
.method public final adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->$m$0(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->$m$1(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->$m$2(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0, p1}, Ljava/time/temporal/-$Lambda$OLNcPvjff81GnHHsYVRY4mMpF30$2;->$m$3(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
