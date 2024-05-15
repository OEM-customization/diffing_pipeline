.class public final synthetic Ljava/util/stream/-$$Lambda$LongPipeline$HjmjwoQcQfPYnTF2E4GrQONBjyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$LongPipeline$HjmjwoQcQfPYnTF2E4GrQONBjyM;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$LongPipeline$HjmjwoQcQfPYnTF2E4GrQONBjyM;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$LongPipeline$HjmjwoQcQfPYnTF2E4GrQONBjyM;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$LongPipeline$HjmjwoQcQfPYnTF2E4GrQONBjyM;->INSTANCE:Ljava/util/stream/-$$Lambda$LongPipeline$HjmjwoQcQfPYnTF2E4GrQONBjyM;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsLong(J)J
    .registers 3

    invoke-static {p1, p2}, Ljava/util/stream/LongPipeline;->lambda$count$4(J)J

    move-result-wide p1

    return-wide p1
.end method
