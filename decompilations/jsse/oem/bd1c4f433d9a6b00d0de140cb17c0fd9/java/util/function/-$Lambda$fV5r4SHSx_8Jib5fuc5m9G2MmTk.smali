.class final synthetic Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/function/UnaryOperator;->lambda$-java_util_function_UnaryOperator_2074(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;-><init>()V

    sput-object v0, Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;->$INST$0:Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$fV5r4SHSx_8Jib5fuc5m9G2MmTk;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
