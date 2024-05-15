.class final synthetic Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic $INST$0:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

.field public static final synthetic $INST$1:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

.field public static final synthetic $INST$2:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->lambda$-java_time_format_DateTimeFormatter_61156(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Period;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->lambda$-java_time_format_DateTimeFormatter_63118(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$2(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/time/temporal/TemporalAccessor;

    .prologue
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder;->lambda$-java_time_format_DateTimeFormatterBuilder_6842(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;-><init>(B)V

    sput-object v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$INST$0:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    new-instance v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;-><init>(B)V

    sput-object v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$INST$1:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    new-instance v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;-><init>(B)V

    sput-object v0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$INST$2:Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$id:B

    return-void
.end method


# virtual methods
.method public final queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 3

    .prologue
    iget-byte v0, p0, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$m$0(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct {p0, p1}, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$m$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_15
    invoke-direct {p0, p1}, Ljava/time/format/-$Lambda$j8BjRHFvnsAjgkxE0mjQfJ-QL-Y;->$m$2(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
