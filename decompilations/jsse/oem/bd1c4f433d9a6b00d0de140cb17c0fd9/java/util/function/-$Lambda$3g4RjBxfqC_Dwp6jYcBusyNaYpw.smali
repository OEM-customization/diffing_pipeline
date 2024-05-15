.class final synthetic Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;


# direct methods
.method private final synthetic $m$0(J)J
    .registers 6
    .param p1, "arg0"    # J

    .prologue
    invoke-static {p1, p2}, Ljava/util/function/LongUnaryOperator;->lambda$-java_util_function_LongUnaryOperator_3638(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;-><init>()V

    sput-object v0, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;->$INST$0:Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(J)J
    .registers 6

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/util/function/-$Lambda$3g4RjBxfqC_Dwp6jYcBusyNaYpw;->$m$0(J)J

    move-result-wide v0

    return-wide v0
.end method
