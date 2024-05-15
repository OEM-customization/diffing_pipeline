.class public final synthetic Ljava/util/stream/-$$Lambda$IntPipeline$R-E7oGjPWog3HR9X-8MdhU1ZGRE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$R-E7oGjPWog3HR9X-8MdhU1ZGRE;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$IntPipeline$R-E7oGjPWog3HR9X-8MdhU1ZGRE;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$IntPipeline$R-E7oGjPWog3HR9X-8MdhU1ZGRE;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$IntPipeline$R-E7oGjPWog3HR9X-8MdhU1ZGRE;->INSTANCE:Ljava/util/stream/-$$Lambda$IntPipeline$R-E7oGjPWog3HR9X-8MdhU1ZGRE;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/stream/IntPipeline;->lambda$distinct$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
