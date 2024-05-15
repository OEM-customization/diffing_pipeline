.class public final synthetic Ljava/util/stream/-$$Lambda$LongPipeline$doop4YO9hzEFGaLnLB3xKA404M4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$LongPipeline$doop4YO9hzEFGaLnLB3xKA404M4;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$LongPipeline$doop4YO9hzEFGaLnLB3xKA404M4;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$LongPipeline$doop4YO9hzEFGaLnLB3xKA404M4;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$LongPipeline$doop4YO9hzEFGaLnLB3xKA404M4;->INSTANCE:Ljava/util/stream/-$$Lambda$LongPipeline$doop4YO9hzEFGaLnLB3xKA404M4;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsLong(Ljava/lang/Object;)J
    .registers 4

    check-cast p1, Ljava/lang/Long;

    invoke-static {p1}, Ljava/util/stream/LongPipeline;->lambda$distinct$0(Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method
