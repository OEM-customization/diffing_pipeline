.class public final synthetic Ljava/util/stream/-$$Lambda$ReferencePipeline$mk6xSsLZAKvG89IyN8pzBoM6otw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$ReferencePipeline$mk6xSsLZAKvG89IyN8pzBoM6otw;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$ReferencePipeline$mk6xSsLZAKvG89IyN8pzBoM6otw;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$ReferencePipeline$mk6xSsLZAKvG89IyN8pzBoM6otw;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$ReferencePipeline$mk6xSsLZAKvG89IyN8pzBoM6otw;->INSTANCE:Ljava/util/stream/-$$Lambda$ReferencePipeline$mk6xSsLZAKvG89IyN8pzBoM6otw;

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

    invoke-static {p1}, Ljava/util/stream/ReferencePipeline;->lambda$count$2(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method
