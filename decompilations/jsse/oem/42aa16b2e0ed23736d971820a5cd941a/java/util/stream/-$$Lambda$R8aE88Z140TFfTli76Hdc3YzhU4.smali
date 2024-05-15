.class public final synthetic Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;->INSTANCE:Ljava/util/stream/-$$Lambda$R8aE88Z140TFfTli76Hdc3YzhU4;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->sum(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
