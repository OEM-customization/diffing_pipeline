.class final synthetic Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic $INST$0:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$1:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$2:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$3:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$4:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$5:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$6:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$7:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$8:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

.field public static final synthetic $INST$9:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/Instant;->-java_time_Instant-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/LocalDate;->-java_time_LocalDate-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/LocalDateTime;->-java_time_LocalDateTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$3(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/LocalTime;->-java_time_LocalTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$4(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/MonthDay;->-java_time_MonthDay-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$5(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/OffsetDateTime;->-java_time_OffsetDateTime-mthref-1(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetDateTime;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$6(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/OffsetTime;->-java_time_OffsetTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$7(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/Year;->-java_time_Year-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$8(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/YearMonth;->-java_time_YearMonth-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$9(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/ZonedDateTime;->-java_time_ZonedDateTime-mthref-0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$0:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$1:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$2:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$3:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$4:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$5:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$6:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$7:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$8:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    new-instance v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;-><init>(B)V

    sput-object v0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$INST$9:Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$id:B

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$id:B

    packed-switch v0, :pswitch_data_3e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$2(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1a
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$3(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1f
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$4(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_24
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$5(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_29
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$6(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2e
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$7(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_33
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$8(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_38
    invoke-direct {p0, p1}, Ljava/time/-$Lambda$O4_RxJbNUbAPd8V96UPf6lwKRd8;->$m$9(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method
